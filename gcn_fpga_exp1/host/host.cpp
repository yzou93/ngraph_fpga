#include <riffa.h>
#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <cstdint>
#include <fstream>
#include <sstream>
#include <string.h>
#include <iostream>
#include <cassert>
#include <math.h>
#include <algorithm>

#ifdef TIME_MEASURE
#include <time.h>
#include <sys/timeb.h>
#endif

uint64_t ClockGetTime(){
	timespec ts;
	clock_gettime(CLOCK_REALTIME, &ts);
	return (uint64_t)ts.tv_sec * 1000000LL + (uint64_t)ts.tv_nsec / 1000LL;
}

using namespace std;

#define NUM_THREADS 5//node, edge, msg, metadata

float *node_in_buf;//channel 0
float *node_out_buf;
// float *msg_in_buf;//channel 2
// float *msg_out_buf;
uint64_t *edge_buf;//channel 1
uint64_t *meta_buf;//channel 3

#define NODE_IN 0
#define NODE_OUT 1
#define EDGE 2
// #define MSG 3
#define META 4

uint64_t msg_offset[85][85];

fpga_t *fpga;

void* meta_thread(void *arg){
	int num_sent = fpga_send(fpga, 3, (void*)meta_buf, 85 * 85 * 2, 0, 0, 0);
#ifndef TIME_MEASURE
	printf ("meta thread sent %d words\n", num_sent);
#endif
	pthread_exit(NULL);
}

void* node_in_thread(void *arg){
	int num_sent = fpga_send(fpga, 0, (void*)node_in_buf, 2720 * 1433 * 85, 0, 0, 0);
#ifndef TIME_MEASURE
	printf ("node_in thread sent %d words\n", num_sent);
#endif
	pthread_exit(NULL);
}

void* node_out_thread(void *arg){
	int num_recv = fpga_recv(fpga, 0, (void*)node_out_buf, 2720 * 16, 0);
#ifndef TIME_MEASURE
	printf ("node_out thread received %d words\n", num_recv);
#endif
	pthread_exit(NULL);
}

// void* msg_thread(void *arg){
// 	float *addr = msg_in_buf;
// 	int num_recv = fpga_recv(fpga, 2, (void*)msg_out_buf, 108360 * 17, 0);
// #ifndef TIME_MEASURE
// 	printf ("msg thread received %d words\n", num_recv);
// #endif
// 	//reorder messages
// 	for (int dst = 0; dst < 39; dst++){
// 		for (int src = 0; src < 39; src++){
// 			uint64_t offset = msg_offset[src][dst];
// 			uint64_t num_msg = (meta_buf[src * 39 + dst] << 32) >> 32;
// 			// cout << offset << endl;
// 			// cout << num_msg << endl;
// 			// cout << src << ":" << dst << endl;
// 			// exit(0);
// 			memcpy(addr, msg_out_buf + offset, num_msg * 17);
// 			addr += num_msg * 17;
// 		}
// 	}
// 	int num_sent = fpga_send(fpga, 2, (void*)msg_in_buf, 108360 * 17, 0, 0, 0);
// #ifndef TIME_MEASURE
// 	printf ("msg thread sent %d words\n", num_sent);
// #endif
// 	pthread_exit(NULL);
// }

void* edge_thread(void *arg){
	int num_sent = fpga_send(fpga, 1, (void*)edge_buf, 13264 * 2, 0, 0, 0);
#ifndef TIME_MEASURE
	printf ("edge thread sent %d words\n", num_sent);
#endif
	pthread_exit(NULL);
}

// uint64_t mb(uint64_t* start, uint64_t len){
// 	uint64_t counter = 0;
// 	uint64_t dst;
// 	if (len == 0){
// 		return 0;
// 	} else {
// 		for (int i = 0; i < len; i++){
// 			if (i == 0){
// 				dst = ((*(start++) >> 15) << 49) >> 49;
// 			}
// 			if (i == len - 1){
// 				if (((*(start++) >> 15) << 49) >> 49 == dst)
// 					counter += 1;
// 				else
// 					counter += 2;
// 			}
// 			else{
// 				if (((*(start++) >> 15) << 49) >> 49 != dst){
// 					dst = ((*(start) >> 15) << 49) >> 49;
// 					counter += 1;
// 				}
// 			}
// 		}
// 	}
// 	return counter;
// }
//
// //Sort function
// bool compare(uint64_t edge1, uint64_t edge2){
// 	uint64_t dst1 = ((edge1 >> 15) << 49) >> 49;
// 	uint64_t dst2 = ((edge2 >> 15) << 49) >> 49;
// 	return dst1 < dst2;
// }

int main(int argc, char* argv[]){
	fpga_info_list info;
	int option;

	if (argc < 2){
		printf ("%s <argument>, <0> is list info, <1> reset, <2> start operation\n", argv[0]);
		return -1;
	}

	option = atoi(argv[1]);

	if (option == 0){
		if (fpga_list(&info) != 0){
			printf ("Error populating fpga_info_list\n");
			return -1;
		}
		printf ("Number of devices: %d\n", info.num_fpgas);
	} else if (option == 1){
		if (argc < 3){
			printf ("Usage: %s %d <fpga id>\n", argv[0], option);
			return -1;
		}

		int id = atoi(argv[2]);

		fpga = fpga_open(id);
		if (fpga == NULL){
			printf ("Could not get FPGA %d\n", id);
			return -1;
		}

		fpga_reset(fpga);

		fpga_close(fpga);
	} else if (option == 2){
		// //msg_out_buf
		// msg_out_buf = (float*)malloc(108360 * 17 * sizeof(float));
		// msg_in_buf = (float*)malloc(108360 * 17 * sizeof(float));

		//node_out_buf
		node_out_buf = (float*)malloc(2720 * 16 * sizeof(float));

		//load metadata
		meta_buf = (uint64_t*)malloc(85 * 85 * 2 * sizeof(uint64_t));
		cout << "loading metadata" << endl;
		ifstream infile1("data/num_edge");
		string line;
		uint64_t offset = 0;
		for (int src = 0; src < 85; src++){
			for (int dst = 0; dst < 85; dst++){
				getline(infile1, line);
				char *pch = strtok((char*)line.c_str(), "\n\t\r");
				uint64_t metadata = atoi(pch);
				msg_offset[src][dst] = offset;
				offset += metadata * 17;
				metadata = (metadata << 32) | metadata;
				meta_buf[src * 85 + dst] = metadata;
				meta_buf[85 * 85 + dst * 85 + src] = metadata;
			}
		}

		//load node data
		node_in_buf = (float*)malloc(2720 * 1433 * 85 * sizeof(float));
		for (int i = 0; i < 2720 * 1433 * 85; i++){
			node_in_buf[i] = 0.5;
		}

		//load edge data
		edge_buf = (uint64_t*)malloc(13264 * sizeof(uint64_t));
		uint64_t *edge_pt = edge_buf;
		cout << "loading edges" << endl;
		for (int src_intv = 0; src_intv < 85; src_intv++){
			for (int dst_intv = 0; dst_intv < 85; dst_intv++){
				ostringstream temp;
				temp << "data/edge_" << src_intv << "_" << dst_intv;
				//Open file
				ifstream infile(temp.str().c_str());
				string line;
				while (getline(infile, line)){
					char *pch = strtok((char*)line.c_str(), ",\n\t\r");
					uint32_t src_node = atoi(pch);
                    pch = strtok(NULL, ",\n\t\r");
                    uint32_t dst_node = atoi(pch);
                    pch = strtok(NULL, ",\n\t\r");
                    float c = atof(pch);
                    uint64_t edge = 0;

                    edge = *((uint32_t*)&c);
                    edge = (edge << 12) | dst_node;
                    edge = (edge << 12) | src_node;


                    *(edge_pt++) = edge;
				}
			}
		}

		// uint64_t t0 = ClockGetTime();
		// uint64_t *first = edge_buf;
		// for (int src = 0; src < 39; src++){
		// 	for (int dst = 0; dst < 39; dst++){
		// 		sort(first, first + (meta_buf[src * 39 + dst] >> 32), compare);
		// 		first += (meta_buf[src * 39 + dst] >> 32);
		// 	}
		// }
		// cout << "Preprocessing time: " << (ClockGetTime() - t0) << " us" << endl;
		//
		// uint64_t *mb_first = edge_buf;
		// uint64_t counter = 0;
		// for (int src = 0; src < 39; src++){
		// 	for (int dst = 0; dst < 39; dst++){
		// 		counter += mb(mb_first, (meta_buf[src * 39 + dst] >> 32));
		// 		mb_first += meta_buf[src * 39 + dst] >> 32;
		// 	}
		// }
		// cout << "MB benefit: " << counter << endl;

        // //check meta buf
        // for (int i = 0; i < 5; i++){
        //     cout << (meta_buf[i] >> 32)  << ((meta_buf[i] << 32) >> 32) << endl;
        // }

		//create thread
		fpga = fpga_open(0);
		fpga_reset(fpga);

		pthread_t thread[NUM_THREADS];
		pthread_attr_t attr;
		int rc, t;
		void* status;

		//Intialization
		pthread_attr_init(&attr);
		pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

		uint64_t t1 = ClockGetTime();

#ifndef TIME_MEASURE
		cout << "creating thread node_in" << endl;
#endif
		pthread_create(&thread[NODE_IN], &attr, node_in_thread, NULL);
// #ifndef TIME_MEASURE
// 		cout << "creating thread msg" << endl;
// #endif
// 		pthread_create(&thread[MSG], &attr, msg_thread, NULL);
#ifndef TIME_MEASURE
		cout << "creating thread edge" << endl;
#endif
		pthread_create(&thread[EDGE], &attr, edge_thread, NULL);
#ifndef TIME_MEASURE
		cout << "creating thread meta" << endl;
#endif
		pthread_create(&thread[META], &attr, meta_thread, NULL);
#ifndef TIME_MEASURE
		cout << "creating thread node_out" << endl;
#endif
		pthread_create(&thread[NODE_OUT], &attr, node_out_thread, NULL);

		pthread_attr_destroy(&attr);

		pthread_join(thread[NODE_IN], &status);
		pthread_join(thread[META], &status);
		pthread_join(thread[EDGE], &status);
		// pthread_join(thread[MSG], &status);
		pthread_join(thread[NODE_OUT], &status);

		cout << "Elapsed Time: " << (ClockGetTime() - t1) << " us" << endl;
	}
}
