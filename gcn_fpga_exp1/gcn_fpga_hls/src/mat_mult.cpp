#include "mat_mult.h"

void mat_mult(float node_bram[512][500], edge_info edge, float wt[500][16], float res_node[16]){
  //parse src, dst, c
  ap_uint<12> src = edge.src;
  ap_uint<12> dst = edge.dst;
  float c = edge.c;

  //pre-calculate src index
  ap_uint<12> src_idx = src % 512;

//  mat_mult_outer: for (int m = 0; m < 16; m++){
//    float res = 0;
//    mat_mult_inner: for (int k = 0; k < 1433; k++){
//      res += 1 / c * node_bram[src_idx][k] * wt[k][m];
//    }
//    res_node[m] = res;
//  }

  res_node[0] = node_bram[src_idx][0];
}
