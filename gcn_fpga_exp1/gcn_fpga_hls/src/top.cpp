#include "top.h"

void top(stream<float> &node_in_strm, stream<edge_info> &edge_strm, stream<uint64_t> &metadata_strm, stream<float> &node_out_strm, float wt[1433][16]){

	//construct an on-chip node_bram
	float node_in_bram[32][1433];
	for (int dst = 0; dst < 85; dst++){
		float node_out_bram[32][16] = {0.0};
		for (int src = 0; src < 85; src++){
			for (int row = 0; row < 32; row++){
				for (int col = 0; col < 1433; col++){
					node_in_bram[row][col] = node_in_strm.read();
				}
			}
			uint64_t num_edge = metadata_strm.read() >> 32;
			for (int i = 0; i < num_edge; i++){
				edge_info edge = edge_strm.read();
				node_out_bram[edge.dst % 32][0] = edge.c + node_in_bram[0][0];
			}
		}
		for (int row = 0; row < 32; row++){
			for (int col = 0; col < 16; col++){
				node_out_strm.write(node_out_bram[row][col]);
			}
		}
	}
}
