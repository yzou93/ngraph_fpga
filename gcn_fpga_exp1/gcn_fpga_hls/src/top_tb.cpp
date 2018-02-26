#include "top.h"
#include "mat_mult.h"

#include <fstream>
#include <sstream>
#include <string.h>
#include <iostream>
#include <stdint.h>
#include <math.h>
#include <algorithm>

using namespace std;

int main(){
	//Push edges in buffer
	cout << "loading edges" << endl;
	stream<edge_info> edge_list;
	for (int src_intv = 0; src_intv < 85; src_intv++){
		for (int dst_intv = 0; dst_intv < 85; dst_intv++){
			ostringstream temp;
			temp << "/home/yuzou/gcn_fpga/data/edge_" << src_intv << "_" << dst_intv;
			//Open file
			ifstream infile(temp.str().c_str());
			string line;
			while (getline(infile, line)){
				char *pch = strtok((char*)line.c_str(), ",\n\t\r");
				edge_info edge;
				edge.src = atoi(pch);
				pch = strtok(NULL, ",\n\t\r");
				edge.dst = atoi(pch);
				pch = strtok(NULL, ",\n\t\r");
				edge.c = atof(pch);

				edge_list.write(edge);
			}
		}
	}

	//Push nodes in buffer
	cout << "loading nodes" << endl;
	stream<float> node_in_list;
	stream<float> node_out_list;
	for (int par = 0; par < 85; par++){
		ostringstream temp;
		temp << "/home/yuzou/gcn_fpga/data/node_" << par;
		//Open file
		ifstream infile(temp.str().c_str());
		string line;
		while (getline(infile, line)){
			char *pch = strtok((char*)line.c_str(), ",\n\t\r");
			while (pch != NULL){
				node_in_list.write(atof(pch));
				pch = strtok(NULL, ",\n\t\r");
			}
		}
	}

	//Message Buffers
	stream<float> msg_in_list;
	stream<float> msg_out_list;

	//Push wt in buffer
	cout << "loading wt" << endl;
	float wt[1433][16];
	int idx = 0;
	ostringstream temp;
	temp << "/home/yuzou/gcn_fpga/data/wt_0";
	//Open file
	ifstream infile(temp.str().c_str());
	string line;
	while (getline(infile, line)){
		char *pch = strtok((char*)line.c_str(), ",\n\t\r");
		while (pch != NULL){
			wt[idx / 16][idx % 16] = atof(pch);
			idx++;
			pch = strtok(NULL, ",\n\t\r");
		}
	}

	//calculate metadata <num_edge, num_msg>
	stream<uint64_t> metadata_strm;
	uint64_t metadata_bram[85][85];
	ifstream infile1("/home/yuzou/gcn_fpga/data/num_edge");
	for (int src = 0; src < 85; src++){
		for (int dst = 0; dst < 85; dst++){
			getline(infile1, line);
			char *pch = strtok((char*)line.c_str(), "\n\t\r");
			uint64_t metadata = atoi(pch);
			metadata = (metadata << 32) | metadata;
			metadata_strm.write(metadata);
			metadata_bram[src][dst] = metadata;
		}
	}
	for (int dst = 0; dst < 85; dst++){
		for (int src = 0; src < 85; src++){
			metadata_strm.write(metadata_bram[src][dst]);
		}
	}

//	top(node_in_list, edge_list, metadata_strm, msg_out_list, msg_in_list, node_out_list, wt);
	top(node_in_list, edge_list, metadata_strm, msg_out_list, msg_out_list, node_out_list, wt);
}
