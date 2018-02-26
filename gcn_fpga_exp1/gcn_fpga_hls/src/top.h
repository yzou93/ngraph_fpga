#ifndef _TOP_H
#define _TOP_H

#include "stdint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "mat_mult.h"

using namespace hls;

void top(stream<float> &node_in_strm, stream<edge_info> &edge_strm, stream<uint64_t> &metadata_strm, stream<float> &node_out_strm, float wt[1433][16]);

#endif
