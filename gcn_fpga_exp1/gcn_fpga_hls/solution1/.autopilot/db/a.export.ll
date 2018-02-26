; ModuleID = '/home/yuzou/gcn_fpga_exp1/gcn_fpga_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@top_str = internal unnamed_addr constant [4 x i8] c"top\00"
@memset_node_out_bram = internal unnamed_addr constant [21 x i8] c"memset_node_out_bram\00"
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a8]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str48 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str47 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str46 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str45 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str44 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str43 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str42 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str40 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str38 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str37 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str36 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str35 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str34 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [7 x i8] c"ROM_1P\00", align 1
@p_str19 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"ap_memory\00", align 1

define void @top(float* %node_in_strm_V, i12* %edge_strm_V_src_V, i12* %edge_strm_V_dst_V, float* %edge_strm_V_c, i64* %metadata_strm_V, float* %node_out_strm_V, [22928 x float]* %wt) {
  call void (...)* @_ssdm_op_SpecInterface(float* %node_out_strm_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str43, i32 0, i32 0, [1 x i8]* @p_str44, [1 x i8]* @p_str45, [1 x i8]* @p_str46, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str47, [1 x i8]* @p_str48)
  call void (...)* @_ssdm_op_SpecInterface(i64* %metadata_strm_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str37, i32 0, i32 0, [1 x i8]* @p_str38, [1 x i8]* @p_str39, [1 x i8]* @p_str40, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str41, [1 x i8]* @p_str42)
  call void (...)* @_ssdm_op_SpecInterface(float* %edge_strm_V_c, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str31, i32 0, i32 0, [1 x i8]* @p_str32, [1 x i8]* @p_str33, [1 x i8]* @p_str34, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str35, [1 x i8]* @p_str36)
  call void (...)* @_ssdm_op_SpecInterface(i12* %edge_strm_V_dst_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str25, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str29, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i12* %edge_strm_V_src_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str19, i32 0, i32 0, [1 x i8]* @p_str20, [1 x i8]* @p_str21, [1 x i8]* @p_str22, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str23, [1 x i8]* @p_str24)
  call void (...)* @_ssdm_op_SpecInterface(float* %node_in_strm_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str13, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str15, [1 x i8]* @p_str16, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str17, [1 x i8]* @p_str18)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %node_in_strm_V), !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i12* %edge_strm_V_src_V), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i12* %edge_strm_V_dst_V), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(float* %edge_strm_V_c), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %metadata_strm_V), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(float* %node_out_strm_V), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap([22928 x float]* %wt), !map !72
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @top_str) nounwind
  %node_in_bram = alloca [45856 x float], align 4
  %node_in_bram_addr = getelementptr [45856 x float]* %node_in_bram, i64 0, i64 0
  %node_out_bram = alloca [512 x float], align 4
  call void (...)* @_ssdm_op_SpecInterface([22928 x float]* %wt, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 22928, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([22928 x float]* %wt, [1 x i8]* @p_str1, [7 x i8]* @p_str2, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %dst = phi i7 [ 0, %0 ], [ %dst_1, %.loopexit.loopexit ]
  %exitcond1 = icmp eq i7 %dst, -43
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 85, i64 85, i64 85)
  %dst_1 = add i7 %dst, 1
  br i1 %exitcond1, label %6, label %meminst.preheader

meminst.preheader:                                ; preds = %.loopexit
  br label %meminst

meminst:                                          ; preds = %meminst.preheader, %meminst23
  %invdar = phi i5 [ %indvarinc, %meminst23 ], [ 0, %meminst.preheader ]
  %indvarinc = add i5 %invdar, 1
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  br label %meminst24

meminst24:                                        ; preds = %meminst24, %meminst
  %invdar1 = phi i4 [ 0, %meminst ], [ %indvarinc1, %meminst24 ]
  %indvarinc1 = add i4 %invdar1, 1
  %tmp = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %invdar, i4 %invdar1)
  %tmp_1 = zext i9 %tmp to i64
  %node_out_bram_addr = getelementptr [512 x float]* %node_out_bram, i64 0, i64 %tmp_1
  store float 0.000000e+00, float* %node_out_bram_addr, align 4
  %tmp_2 = icmp eq i4 %invdar1, -1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopName([21 x i8]* @memset_node_out_bram) nounwind
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_2, label %meminst23, label %meminst24

meminst23:                                        ; preds = %meminst24
  %tmp_3 = icmp eq i5 %invdar, -1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopName([21 x i8]* @memset_node_out_bram) nounwind
  br i1 %tmp_3, label %.preheader27.preheader, label %meminst

.preheader27.preheader:                           ; preds = %meminst23
  br label %.preheader27

.preheader27.loopexit:                            ; preds = %3
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27.loopexit
  %src = phi i7 [ %src_1, %.preheader27.loopexit ], [ 0, %.preheader27.preheader ]
  %exitcond2 = icmp eq i7 %src, -43
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 85, i64 85, i64 85)
  %src_1 = add i7 %src, 1
  br i1 %exitcond2, label %.preheader20.preheader, label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader27
  br label %.preheader22

.preheader20.preheader:                           ; preds = %.preheader27
  br label %.preheader20

.preheader22.loopexit:                            ; preds = %.preheader21
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22.loopexit
  %row = phi i6 [ %row_2, %.preheader22.loopexit ], [ 0, %.preheader22.preheader ]
  %phi_mul = phi i16 [ %next_mul, %.preheader22.loopexit ], [ 0, %.preheader22.preheader ]
  %next_mul = add i16 %phi_mul, 1433
  %exitcond4 = icmp eq i6 %row, -32
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  %row_2 = add i6 %row, 1
  br i1 %exitcond4, label %2, label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %.preheader22
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader, %1
  %col = phi i11 [ %col_2, %1 ], [ 0, %.preheader21.preheader ]
  %exitcond5 = icmp eq i11 %col, -615
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1433, i64 1433, i64 1433)
  %col_2 = add i11 %col, 1
  br i1 %exitcond5, label %.preheader22.loopexit, label %1

; <label>:1                                       ; preds = %.preheader21
  %tmp_12 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %node_in_strm_V)
  %tmp_10_cast = zext i11 %col to i16
  %tmp_13 = add i16 %phi_mul, %tmp_10_cast
  %tmp_20_cast = zext i16 %tmp_13 to i64
  %node_in_bram_addr_1 = getelementptr [45856 x float]* %node_in_bram, i64 0, i64 %tmp_20_cast
  store float %tmp_12, float* %node_in_bram_addr_1, align 4
  br label %.preheader21

; <label>:2                                       ; preds = %.preheader22
  %tmp_4 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* %metadata_strm_V)
  %node_in_bram_load = load float* %node_in_bram_addr, align 16
  %tmp_s = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp_4, i32 32, i32 63)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %i = phi i32 [ 0, %2 ], [ %i_1, %4 ]
  %exitcond6 = icmp eq i32 %i, %tmp_s
  %i_1 = add nsw i32 %i, 1
  br i1 %exitcond6, label %.preheader27.loopexit, label %4

; <label>:4                                       ; preds = %3
  %empty_13 = call { i12, i12, float } @_ssdm_op_Read.ap_fifo.volatile.i12P.i12P.floatP(i12* %edge_strm_V_src_V, i12* %edge_strm_V_dst_V, float* %edge_strm_V_c)
  %tmp_dst_V = extractvalue { i12, i12, float } %empty_13, 1
  %tmp_c = extractvalue { i12, i12, float } %empty_13, 2
  %tmp_8 = fadd float %tmp_c, %node_in_bram_load
  %tmp_9 = trunc i12 %tmp_dst_V to i5
  %tmp_10 = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %tmp_9, i4 0)
  %tmp_11 = zext i9 %tmp_10 to i64
  %node_out_bram_addr_2 = getelementptr [512 x float]* %node_out_bram, i64 0, i64 %tmp_11
  store float %tmp_8, float* %node_out_bram_addr_2, align 16
  br label %3

.preheader20.loopexit:                            ; preds = %.preheader
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20.loopexit
  %row1 = phi i6 [ %row_1, %.preheader20.loopexit ], [ 0, %.preheader20.preheader ]
  %exitcond3 = icmp eq i6 %row1, -32
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  %row_1 = add i6 %row1, 1
  br i1 %exitcond3, label %.loopexit.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader20
  %tmp_5 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %row1, i4 0)
  %tmp_9_cast = zext i10 %tmp_5 to i11
  br label %.preheader

.preheader:                                       ; preds = %5, %.preheader.preheader
  %col2 = phi i5 [ %col_1, %5 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i5 %col2, -16
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %col_1 = add i5 %col2, 1
  br i1 %exitcond, label %.preheader20.loopexit, label %5

; <label>:5                                       ; preds = %.preheader
  %tmp_cast = zext i5 %col2 to i11
  %tmp_6 = add i11 %tmp_9_cast, %tmp_cast
  %tmp_15_cast = zext i11 %tmp_6 to i64
  %node_out_bram_addr_1 = getelementptr [512 x float]* %node_out_bram, i64 0, i64 %tmp_15_cast
  %tmp_7 = load float* %node_out_bram_addr_1, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %node_out_strm_V, float %tmp_7)
  br label %.preheader

; <label>:6                                       ; preds = %.loopexit
  ret void
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64*) {
entry:
  %empty = call i64 @_autotb_FifoRead_i64(i64* %0)
  ret i64 %empty
}

define weak { i12, i12, float } @_ssdm_op_Read.ap_fifo.volatile.i12P.i12P.floatP(i12*, i12*, float*) {
entry:
  %empty = call i12 @_autotb_FifoRead_i12(i12* %0)
  %empty_16 = call i12 @_autotb_FifoRead_i12(i12* %1)
  %empty_17 = call float @_autotb_FifoRead_float(float* %2)
  %mrv_0 = insertvalue { i12, i12, float } undef, i12 %empty, 0
  %mrv1 = insertvalue { i12, i12, float } %mrv_0, i12 %empty_16, 1
  %mrv2 = insertvalue { i12, i12, float } %mrv1, float %empty_17, 2
  ret { i12, i12, float } %mrv2
}

define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0)
  ret float %empty
}

declare i5 @_ssdm_op_PartSelect.i5.i12.i32.i32(i12, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_18 = trunc i64 %empty to i32
  ret i32 %empty_18
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5, i4) nounwind readnone {
entry:
  %empty = zext i5 %0 to i9
  %empty_19 = zext i4 %1 to i9
  %empty_20 = shl i9 %empty, 4
  %empty_21 = or i9 %empty_20, %empty_19
  ret i9 %empty_21
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6, i4) nounwind readnone {
entry:
  %empty = zext i6 %0 to i10
  %empty_22 = zext i4 %1 to i10
  %empty_23 = shl i10 %empty, 4
  %empty_24 = or i10 %empty_23, %empty_22
  ret i10 %empty_24
}

declare float @_autotb_FifoWrite_float(float*, float)

declare i64 @_autotb_FifoRead_i64(i64*)

declare i12 @_autotb_FifoRead_i12(i12*)

declare float @_autotb_FifoRead_float(float*)

declare void @_GLOBAL__I_a8() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !19, !25, !25, !13, !28, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !31, !13, !37, !37, !13, !13, !19, !25, !25, !13, !28, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!39}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<float> &", metadata !"stream<edge_info> &", metadata !"stream<uint64_t> &", metadata !"stream<float> &", metadata !"float [16]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"node_in_strm", metadata !"edge_strm", metadata !"metadata_strm", metadata !"node_out_strm", metadata !"wt"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{null, metadata !20, metadata !21, metadata !29, metadata !23, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"const ap_int_base<32, true> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!31 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 1, i32 1}
!33 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"float [500]*", metadata !"edge_info", metadata !"float [16]*", metadata !"float*"}
!35 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"node_bram", metadata !"edge", metadata !"wt", metadata !"res_node"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !27, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &"}
!39 = metadata !{metadata !40, [2 x i32]* @llvm_global_ctors_0}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"llvm.global_ctors.0", metadata !44, metadata !"", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 1, i32 1}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"node_in_strm.V", metadata !50, metadata !"float", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 0, i32 1}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 11, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"edge_strm.V.src.V", metadata !50, metadata !"uint12", i32 0, i32 11}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 11, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"edge_strm.V.dst.V", metadata !50, metadata !"uint12", i32 0, i32 11}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 31, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"edge_strm.V.c", metadata !50, metadata !"float", i32 0, i32 31}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 63, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"metadata_strm.V", metadata !50, metadata !"long unsigned int", i32 0, i32 63}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 31, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"node_out_strm.V", metadata !50, metadata !"float", i32 0, i32 31}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 31, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"wt", metadata !76, metadata !"float", i32 0, i32 31}
!76 = metadata !{metadata !77, metadata !78}
!77 = metadata !{i32 0, i32 1432, i32 1}
!78 = metadata !{i32 0, i32 15, i32 1}
