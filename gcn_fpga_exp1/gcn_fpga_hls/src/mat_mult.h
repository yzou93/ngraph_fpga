#ifndef _MAT_MULT_H
#define _MAT_MULT_H

#include "ap_int.h"

typedef struct{
  ap_uint<12> src;
  ap_uint<12> dst;
  float c;
} edge_info;

void mat_mult(float node_bram[512][500], edge_info edge, float wt[500][16], float res_node[16]);

#endif
