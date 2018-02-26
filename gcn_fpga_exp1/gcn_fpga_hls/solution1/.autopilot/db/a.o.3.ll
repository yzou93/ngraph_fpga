; ModuleID = '/home/yuzou/gcn_fpga_exp1/gcn_fpga_hls/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@top_str = internal unnamed_addr constant [4 x i8] c"top\00" ; [#uses=1 type=[4 x i8]*]
@memset_node_out_bram = internal unnamed_addr constant [21 x i8] c"memset_node_out_bram\00" ; [#uses=2 type=[21 x i8]*]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a8] ; [#uses=0 type=[2 x void ()*]*]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535] ; [#uses=0 type=[2 x i32]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=6 type=[8 x i8]*]
@p_str48 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str47 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str46 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str45 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str44 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str43 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str42 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str40 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str38 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str37 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str36 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str35 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str34 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [7 x i8] c"ROM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str19 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=13 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"ap_memory\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=0]
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
  %node_in_bram = alloca [45856 x float], align 4 ; [#uses=2 type=[45856 x float]*]
  %node_in_bram_addr = getelementptr [45856 x float]* %node_in_bram, i64 0, i64 0, !dbg !79 ; [#uses=1 type=float*] [debug line = 18:5]
  %node_out_bram = alloca [512 x float], align 4  ; [#uses=3 type=[512 x float]*]
  call void @llvm.dbg.declare(metadata !{[512 x float]* %node_out_bram}, metadata !632), !dbg !636 ; [debug line = 8:9] [debug variable = node_out_bram]
  call void @llvm.dbg.value(metadata !{float* %node_in_strm_V}, i64 0, metadata !637), !dbg !642 ; [debug line = 3:25] [debug variable = node_in_strm.V]
  call void @llvm.dbg.value(metadata !{i12* %edge_strm_V_src_V}, i64 0, metadata !643), !dbg !656 ; [debug line = 3:58] [debug variable = edge_strm.V.src.V]
  call void @llvm.dbg.value(metadata !{i12* %edge_strm_V_dst_V}, i64 0, metadata !657), !dbg !656 ; [debug line = 3:58] [debug variable = edge_strm.V.dst.V]
  call void @llvm.dbg.value(metadata !{float* %edge_strm_V_c}, i64 0, metadata !658), !dbg !656 ; [debug line = 3:58] [debug variable = edge_strm.V.c]
  call void @llvm.dbg.value(metadata !{i64* %metadata_strm_V}, i64 0, metadata !664), !dbg !669 ; [debug line = 3:87] [debug variable = metadata_strm.V]
  call void @llvm.dbg.value(metadata !{float* %node_out_strm_V}, i64 0, metadata !670), !dbg !672 ; [debug line = 3:117] [debug variable = node_out_strm.V]
  call void @llvm.dbg.value(metadata !{[22928 x float]* %wt}, i64 0, metadata !673), !dbg !677 ; [debug line = 3:138] [debug variable = wt]
  call void (...)* @_ssdm_op_SpecInterface([22928 x float]* %wt, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 22928, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([22928 x float]* %wt, [1 x i8]* @p_str1, [7 x i8]* @p_str2, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.declare(metadata !{[45856 x float]* %node_in_bram}, metadata !678), !dbg !681 ; [debug line = 6:8] [debug variable = node_in_bram]
  br label %.loopexit, !dbg !682                  ; [debug line = 7:18]

.loopexit.loopexit:                               ; preds = %.preheader20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %dst = phi i7 [ 0, %0 ], [ %dst_1, %.loopexit.loopexit ] ; [#uses=2 type=i7]
  %exitcond1 = icmp eq i7 %dst, -43, !dbg !682    ; [#uses=1 type=i1] [debug line = 7:18]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 85, i64 85, i64 85) ; [#uses=0 type=i32]
  %dst_1 = add i7 %dst, 1, !dbg !683              ; [#uses=1 type=i7] [debug line = 7:30]
  call void @llvm.dbg.value(metadata !{i7 %dst_1}, i64 0, metadata !684), !dbg !683 ; [debug line = 7:30] [debug variable = dst]
  br i1 %exitcond1, label %6, label %meminst.preheader, !dbg !682 ; [debug line = 7:18]

meminst.preheader:                                ; preds = %.loopexit
  br label %meminst, !dbg !685                    ; [debug line = 8:38]

meminst:                                          ; preds = %meminst23, %meminst.preheader
  %invdar = phi i5 [ %indvarinc, %meminst23 ], [ 0, %meminst.preheader ] ; [#uses=3 type=i5]
  %indvarinc = add i5 %invdar, 1, !dbg !685       ; [#uses=1 type=i5] [debug line = 8:38]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) ; [#uses=0 type=i32]
  br label %meminst24

meminst24:                                        ; preds = %meminst24, %meminst
  %invdar1 = phi i4 [ 0, %meminst ], [ %indvarinc1, %meminst24 ] ; [#uses=3 type=i4]
  %indvarinc1 = add i4 %invdar1, 1, !dbg !685     ; [#uses=1 type=i4] [debug line = 8:38]
  %tmp = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %invdar, i4 %invdar1) ; [#uses=1 type=i9]
  %tmp_1 = zext i9 %tmp to i64, !dbg !685         ; [#uses=1 type=i64] [debug line = 8:38]
  %node_out_bram_addr = getelementptr [512 x float]* %node_out_bram, i64 0, i64 %tmp_1, !dbg !685 ; [#uses=1 type=float*] [debug line = 8:38]
  store float 0.000000e+00, float* %node_out_bram_addr, align 4, !dbg !685 ; [debug line = 8:38]
  %tmp_2 = icmp eq i4 %invdar1, -1, !dbg !685     ; [#uses=1 type=i1] [debug line = 8:38]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopName([21 x i8]* @memset_node_out_bram) nounwind ; [#uses=0 type=i32]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_2, label %meminst23, label %meminst24, !dbg !685 ; [debug line = 8:38]

meminst23:                                        ; preds = %meminst24
  %tmp_3 = icmp eq i5 %invdar, -1, !dbg !685      ; [#uses=1 type=i1] [debug line = 8:38]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopName([21 x i8]* @memset_node_out_bram) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_3, label %.preheader27.preheader, label %meminst, !dbg !685 ; [debug line = 8:38]

.preheader27.preheader:                           ; preds = %meminst23
  br label %.preheader27, !dbg !686               ; [debug line = 9:19]

.preheader27.loopexit:                            ; preds = %3
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.loopexit, %.preheader27.preheader
  %src = phi i7 [ %src_1, %.preheader27.loopexit ], [ 0, %.preheader27.preheader ] ; [#uses=2 type=i7]
  %exitcond2 = icmp eq i7 %src, -43, !dbg !686    ; [#uses=1 type=i1] [debug line = 9:19]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 85, i64 85, i64 85) ; [#uses=0 type=i32]
  %src_1 = add i7 %src, 1, !dbg !687              ; [#uses=1 type=i7] [debug line = 9:31]
  call void @llvm.dbg.value(metadata !{i7 %src_1}, i64 0, metadata !688), !dbg !687 ; [debug line = 9:31] [debug variable = src]
  br i1 %exitcond2, label %.preheader20.preheader, label %.preheader22.preheader, !dbg !686 ; [debug line = 9:19]

.preheader22.preheader:                           ; preds = %.preheader27
  br label %.preheader22

.preheader20.preheader:                           ; preds = %.preheader27
  br label %.preheader20, !dbg !689               ; [debug line = 21:19]

.preheader22.loopexit:                            ; preds = %.preheader21
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.loopexit, %.preheader22.preheader
  %row = phi i6 [ %row_2, %.preheader22.loopexit ], [ 0, %.preheader22.preheader ] ; [#uses=2 type=i6]
  %phi_mul = phi i16 [ %next_mul, %.preheader22.loopexit ], [ 0, %.preheader22.preheader ] ; [#uses=2 type=i16]
  %next_mul = add i16 %phi_mul, 1433              ; [#uses=1 type=i16]
  %exitcond4 = icmp eq i6 %row, -32, !dbg !691    ; [#uses=1 type=i1] [debug line = 10:20]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) ; [#uses=0 type=i32]
  %row_2 = add i6 %row, 1, !dbg !693              ; [#uses=1 type=i6] [debug line = 10:32]
  call void @llvm.dbg.value(metadata !{i6 %row_2}, i64 0, metadata !694), !dbg !693 ; [debug line = 10:32] [debug variable = row]
  br i1 %exitcond4, label %2, label %.preheader21.preheader, !dbg !691 ; [debug line = 10:20]

.preheader21.preheader:                           ; preds = %.preheader22
  br label %.preheader21, !dbg !695               ; [debug line = 11:21]

.preheader21:                                     ; preds = %1, %.preheader21.preheader
  %col = phi i11 [ %col_2, %1 ], [ 0, %.preheader21.preheader ] ; [#uses=3 type=i11]
  %exitcond5 = icmp eq i11 %col, -615, !dbg !695  ; [#uses=1 type=i1] [debug line = 11:21]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1433, i64 1433, i64 1433) ; [#uses=0 type=i32]
  %col_2 = add i11 %col, 1, !dbg !698             ; [#uses=1 type=i11] [debug line = 11:35]
  br i1 %exitcond5, label %.preheader22.loopexit, label %1, !dbg !695 ; [debug line = 11:21]

; <label>:1                                       ; preds = %.preheader21
  call void @llvm.dbg.value(metadata !{float* %node_in_strm_V}, i64 0, metadata !699), !dbg !704 ; [debug line = 129:56@12:31] [debug variable = stream<float>.V]
  %tmp_12 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %node_in_strm_V), !dbg !707 ; [#uses=1 type=float] [debug line = 131:9@12:31]
  call void @llvm.dbg.value(metadata !{float %tmp_12}, i64 0, metadata !709), !dbg !707 ; [debug line = 131:9@12:31] [debug variable = tmp]
  %tmp_10_cast = zext i11 %col to i16, !dbg !705  ; [#uses=1 type=i16] [debug line = 12:31]
  %tmp_13 = add i16 %phi_mul, %tmp_10_cast, !dbg !705 ; [#uses=1 type=i16] [debug line = 12:31]
  %tmp_20_cast = zext i16 %tmp_13 to i64, !dbg !705 ; [#uses=1 type=i64] [debug line = 12:31]
  %node_in_bram_addr_1 = getelementptr [45856 x float]* %node_in_bram, i64 0, i64 %tmp_20_cast, !dbg !705 ; [#uses=1 type=float*] [debug line = 12:31]
  store float %tmp_12, float* %node_in_bram_addr_1, align 4, !dbg !705 ; [debug line = 12:31]
  call void @llvm.dbg.value(metadata !{i11 %col_2}, i64 0, metadata !710), !dbg !698 ; [debug line = 11:35] [debug variable = col]
  br label %.preheader21, !dbg !698               ; [debug line = 11:35]

; <label>:2                                       ; preds = %.preheader22
  call void @llvm.dbg.value(metadata !{i64* %metadata_strm_V}, i64 0, metadata !711), !dbg !716 ; [debug line = 129:56@15:24] [debug variable = stream<unsigned long>.V]
  %tmp_4 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* %metadata_strm_V), !dbg !718 ; [#uses=1 type=i64] [debug line = 131:9@15:24]
  call void @llvm.dbg.value(metadata !{i64 %tmp_4}, i64 0, metadata !720), !dbg !718 ; [debug line = 131:9@15:24] [debug variable = tmp]
  %node_in_bram_load = load float* %node_in_bram_addr, align 16, !dbg !79 ; [#uses=1 type=float] [debug line = 18:5]
  %tmp_s = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp_4, i32 32, i32 63) ; [#uses=1 type=i32]
  br label %3, !dbg !721                          ; [debug line = 16:18]

; <label>:3                                       ; preds = %4, %2
  %i = phi i32 [ 0, %2 ], [ %i_1, %4 ]            ; [#uses=2 type=i32]
  %exitcond6 = icmp eq i32 %i, %tmp_s, !dbg !721  ; [#uses=1 type=i1] [debug line = 16:18]
  %i_1 = add nsw i32 %i, 1, !dbg !722             ; [#uses=1 type=i32] [debug line = 16:34]
  br i1 %exitcond6, label %.preheader27.loopexit, label %4, !dbg !721 ; [debug line = 16:18]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i12* %edge_strm_V_src_V}, i64 0, metadata !723), !dbg !728 ; [debug line = 129:56@17:22] [debug variable = stream<edge_info>.V.src.V]
  call void @llvm.dbg.value(metadata !{i12* %edge_strm_V_dst_V}, i64 0, metadata !730), !dbg !728 ; [debug line = 129:56@17:22] [debug variable = stream<edge_info>.V.dst.V]
  call void @llvm.dbg.value(metadata !{float* %edge_strm_V_c}, i64 0, metadata !731), !dbg !728 ; [debug line = 129:56@17:22] [debug variable = stream<edge_info>.V.c]
  %empty_13 = call { i12, i12, float } @_ssdm_op_Read.ap_fifo.volatile.i12P.i12P.floatP(i12* %edge_strm_V_src_V, i12* %edge_strm_V_dst_V, float* %edge_strm_V_c), !dbg !733 ; [#uses=2 type={ i12, i12, float }] [debug line = 131:9@17:22]
  %tmp_dst_V = extractvalue { i12, i12, float } %empty_13, 1, !dbg !733 ; [#uses=1 type=i12] [debug line = 131:9@17:22]
  %tmp_c = extractvalue { i12, i12, float } %empty_13, 2, !dbg !733 ; [#uses=1 type=float] [debug line = 131:9@17:22]
  call void @llvm.dbg.value(metadata !{i12 %tmp_dst_V}, i64 0, metadata !735), !dbg !733 ; [debug line = 131:9@17:22] [debug variable = tmp.dst.V]
  call void @llvm.dbg.value(metadata !{float %tmp_c}, i64 0, metadata !737), !dbg !733 ; [debug line = 131:9@17:22] [debug variable = tmp.c]
  %tmp_8 = fadd float %tmp_c, %node_in_bram_load, !dbg !79 ; [#uses=1 type=float] [debug line = 18:5]
  %tmp_9 = trunc i12 %tmp_dst_V to i5             ; [#uses=1 type=i5]
  %tmp_10 = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %tmp_9, i4 0) ; [#uses=1 type=i9]
  %tmp_11 = zext i9 %tmp_10 to i64, !dbg !738     ; [#uses=1 type=i64] [debug line = 18:19]
  %node_out_bram_addr_2 = getelementptr [512 x float]* %node_out_bram, i64 0, i64 %tmp_11, !dbg !738 ; [#uses=1 type=float*] [debug line = 18:19]
  store float %tmp_8, float* %node_out_bram_addr_2, align 16, !dbg !738 ; [debug line = 18:19]
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !739), !dbg !722 ; [debug line = 16:34] [debug variable = i]
  br label %3, !dbg !722                          ; [debug line = 16:34]

.preheader20.loopexit:                            ; preds = %.preheader
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.loopexit, %.preheader20.preheader
  %row1 = phi i6 [ %row_1, %.preheader20.loopexit ], [ 0, %.preheader20.preheader ] ; [#uses=3 type=i6]
  %exitcond3 = icmp eq i6 %row1, -32, !dbg !689   ; [#uses=1 type=i1] [debug line = 21:19]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) ; [#uses=0 type=i32]
  %row_1 = add i6 %row1, 1, !dbg !740             ; [#uses=1 type=i6] [debug line = 21:31]
  call void @llvm.dbg.value(metadata !{i6 %row_1}, i64 0, metadata !741), !dbg !740 ; [debug line = 21:31] [debug variable = row]
  br i1 %exitcond3, label %.loopexit.loopexit, label %.preheader.preheader, !dbg !689 ; [debug line = 21:19]

.preheader.preheader:                             ; preds = %.preheader20
  %tmp_5 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %row1, i4 0) ; [#uses=1 type=i10]
  %tmp_9_cast = zext i10 %tmp_5 to i11, !dbg !742 ; [#uses=1 type=i11] [debug line = 22:20]
  br label %.preheader, !dbg !742                 ; [debug line = 22:20]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %col2 = phi i5 [ %col_1, %5 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i5]
  %exitcond = icmp eq i5 %col2, -16, !dbg !742    ; [#uses=1 type=i1] [debug line = 22:20]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %col_1 = add i5 %col2, 1, !dbg !745             ; [#uses=1 type=i5] [debug line = 22:32]
  br i1 %exitcond, label %.preheader20.loopexit, label %5, !dbg !742 ; [debug line = 22:20]

; <label>:5                                       ; preds = %.preheader
  %tmp_cast = zext i5 %col2 to i11, !dbg !746     ; [#uses=1 type=i11] [debug line = 23:5]
  %tmp_6 = add i11 %tmp_9_cast, %tmp_cast, !dbg !746 ; [#uses=1 type=i11] [debug line = 23:5]
  %tmp_15_cast = zext i11 %tmp_6 to i64, !dbg !746 ; [#uses=1 type=i64] [debug line = 23:5]
  %node_out_bram_addr_1 = getelementptr [512 x float]* %node_out_bram, i64 0, i64 %tmp_15_cast, !dbg !746 ; [#uses=1 type=float*] [debug line = 23:5]
  call void @llvm.dbg.value(metadata !{float* %node_out_strm_V}, i64 0, metadata !748), !dbg !751 ; [debug line = 144:48@23:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %node_out_bram_addr_1}, i64 0, metadata !752), !dbg !753 ; [debug line = 144:74@23:5] [debug variable = din]
  %tmp_7 = load float* %node_out_bram_addr_1, align 4, !dbg !754 ; [#uses=1 type=float] [debug line = 145:31@23:5]
  call void @llvm.dbg.value(metadata !{float %tmp_7}, i64 0, metadata !756), !dbg !754 ; [debug line = 145:31@23:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %node_out_strm_V, float %tmp_7), !dbg !757 ; [debug line = 146:9@23:5]
  call void @llvm.dbg.value(metadata !{i5 %col_1}, i64 0, metadata !758), !dbg !745 ; [debug line = 22:32] [debug variable = col]
  br label %.preheader, !dbg !745                 ; [debug line = 22:32]

; <label>:6                                       ; preds = %.loopexit
  ret void, !dbg !759                             ; [debug line = 27:1]
}

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=26]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1) ; [#uses=0 type=float]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

; [#uses=7]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64*) {
entry:
  %empty = call i64 @_autotb_FifoRead_i64(i64* %0) ; [#uses=1 type=i64]
  ret i64 %empty
}

; [#uses=1]
define weak { i12, i12, float } @_ssdm_op_Read.ap_fifo.volatile.i12P.i12P.floatP(i12*, i12*, float*) {
entry:
  %empty = call i12 @_autotb_FifoRead_i12(i12* %0) ; [#uses=1 type=i12]
  %empty_16 = call i12 @_autotb_FifoRead_i12(i12* %1) ; [#uses=1 type=i12]
  %empty_17 = call float @_autotb_FifoRead_float(float* %2) ; [#uses=1 type=float]
  %mrv_0 = insertvalue { i12, i12, float } undef, i12 %empty, 0 ; [#uses=1 type={ i12, i12, float }]
  %mrv1 = insertvalue { i12, i12, float } %mrv_0, i12 %empty_16, 1 ; [#uses=1 type={ i12, i12, float }]
  %mrv2 = insertvalue { i12, i12, float } %mrv1, float %empty_17, 2 ; [#uses=1 type={ i12, i12, float }]
  ret { i12, i12, float } %mrv2
}

; [#uses=1]
define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0) ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i12.i32.i32(i12, i32, i32) nounwind readnone

; [#uses=1]
define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_18 = trunc i64 %empty to i32             ; [#uses=1 type=i32]
  ret i32 %empty_18
}

; [#uses=2]
define weak i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5, i4) nounwind readnone {
entry:
  %empty = zext i5 %0 to i9                       ; [#uses=1 type=i9]
  %empty_19 = zext i4 %1 to i9                    ; [#uses=1 type=i9]
  %empty_20 = shl i9 %empty, 4                    ; [#uses=1 type=i9]
  %empty_21 = or i9 %empty_20, %empty_19          ; [#uses=1 type=i9]
  ret i9 %empty_21
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6, i4) nounwind readnone {
entry:
  %empty = zext i6 %0 to i10                      ; [#uses=1 type=i10]
  %empty_22 = zext i4 %1 to i10                   ; [#uses=1 type=i10]
  %empty_23 = shl i10 %empty, 4                   ; [#uses=1 type=i10]
  %empty_24 = or i10 %empty_23, %empty_22         ; [#uses=1 type=i10]
  ret i10 %empty_24
}

; [#uses=1]
declare float @_autotb_FifoWrite_float(float*, float)

; [#uses=1]
declare i64 @_autotb_FifoRead_i64(i64*)

; [#uses=2]
declare i12 @_autotb_FifoRead_i12(i12*)

; [#uses=2]
declare float @_autotb_FifoRead_float(float*)

; [#uses=1]
declare void @_GLOBAL__I_a8() nounwind section ".text.startup"

; [#uses=1]
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
!79 = metadata !{i32 18, i32 5, metadata !80, null}
!80 = metadata !{i32 786443, metadata !81, i32 16, i32 38, metadata !88, i32 10} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !82, i32 16, i32 4, metadata !88, i32 9} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !83, i32 9, i32 37, metadata !88, i32 4} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !84, i32 9, i32 3, metadata !88, i32 3} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 7, i32 36, metadata !88, i32 2} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 7, i32 2, metadata !88, i32 1} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 3, i32 151, metadata !88, i32 0} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786478, i32 0, metadata !88, metadata !"top", metadata !"top", metadata !"_Z3topRN3hls6streamIfEERNS0_I9edge_infoEERNS0_ImEES2_PA16_f", metadata !88, i32 3, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !102, i32 3} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786473, metadata !"gcn_fpga_hls/src/top.cpp", metadata !"/home/yuzou/gcn_fpga_exp1", null} ; [ DW_TAG_file_type ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !91, metadata !150, metadata !579, metadata !91, metadata !628}
!91 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_reference_type ]
!92 = metadata !{i32 786434, metadata !93, metadata !"stream<float>", metadata !94, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !95, i32 0, null, metadata !148} ; [ DW_TAG_class_type ]
!93 = metadata !{i32 786489, null, metadata !"hls", metadata !94, i32 69} ; [ DW_TAG_namespace ]
!94 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/hls_stream.h", metadata !"/home/yuzou/gcn_fpga_exp1", null} ; [ DW_TAG_file_type ]
!95 = metadata !{metadata !96, metadata !98, metadata !104, metadata !110, metadata !115, metadata !118, metadata !122, metadata !127, metadata !132, metadata !133, metadata !134, metadata !137, metadata !140, metadata !141, metadata !144}
!96 = metadata !{i32 786445, metadata !92, metadata !"V", metadata !94, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ]
!97 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 786478, i32 0, metadata !92, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 83, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 83} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !101}
!101 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !92} ; [ DW_TAG_pointer_type ]
!102 = metadata !{metadata !103}
!103 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!104 = metadata !{i32 786478, i32 0, metadata !92, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 86, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 86} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !101, metadata !107}
!107 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_const_type ]
!109 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 786478, i32 0, metadata !92, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 91, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !102, i32 91} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{null, metadata !101, metadata !113}
!113 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_reference_type ]
!114 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_const_type ]
!115 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !94, i32 94, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !102, i32 94} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !91, metadata !101, metadata !113}
!118 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !94, i32 101, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 101} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{null, metadata !101, metadata !121}
!121 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_reference_type ]
!122 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !94, i32 105, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 105} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{null, metadata !101, metadata !125}
!125 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_reference_type ]
!126 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_const_type ]
!127 = metadata !{i32 786478, i32 0, metadata !92, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !94, i32 112, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 112} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{metadata !130, metadata !131}
!130 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!131 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !114} ; [ DW_TAG_pointer_type ]
!132 = metadata !{i32 786478, i32 0, metadata !92, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !94, i32 117, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 117} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786478, i32 0, metadata !92, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !94, i32 123, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 123} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786478, i32 0, metadata !92, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !94, i32 129, metadata !135, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 129} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!136 = metadata !{metadata !97, metadata !101}
!137 = metadata !{i32 786478, i32 0, metadata !92, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !94, i32 136, metadata !138, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 136} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!139 = metadata !{metadata !130, metadata !101, metadata !121}
!140 = metadata !{i32 786478, i32 0, metadata !92, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !94, i32 144, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 144} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 786478, i32 0, metadata !92, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !94, i32 150, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 150} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{metadata !130, metadata !101, metadata !125}
!144 = metadata !{i32 786478, i32 0, metadata !92, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !94, i32 157, metadata !145, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 157} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!146 = metadata !{metadata !147, metadata !101}
!147 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!148 = metadata !{metadata !149}
!149 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !97, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!150 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_reference_type ]
!151 = metadata !{i32 786434, metadata !93, metadata !"stream<edge_info>", metadata !94, i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !152, i32 0, null, metadata !577} ; [ DW_TAG_class_type ]
!152 = metadata !{metadata !153, metadata !536, metadata !540, metadata !543, metadata !548, metadata !551, metadata !555, metadata !558, metadata !562, metadata !563, metadata !564, metadata !567, metadata !570, metadata !571, metadata !574}
!153 = metadata !{i32 786445, metadata !151, metadata !"V", metadata !94, i32 163, i64 64, i64 32, i64 0, i32 0, metadata !154} ; [ DW_TAG_member ]
!154 = metadata !{i32 786434, null, metadata !"", metadata !155, i32 6, i64 64, i64 32, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_class_type ]
!155 = metadata !{i32 786473, metadata !"gcn_fpga_hls/src/mat_mult.h", metadata !"/home/yuzou/gcn_fpga_exp1", null} ; [ DW_TAG_file_type ]
!156 = metadata !{metadata !157, metadata !525, metadata !526, metadata !527, metadata !531}
!157 = metadata !{i32 786445, metadata !154, metadata !"src", metadata !155, i32 7, i64 16, i64 16, i64 0, i32 0, metadata !158} ; [ DW_TAG_member ]
!158 = metadata !{i32 786434, null, metadata !"ap_uint<12>", metadata !159, i32 180, i64 16, i64 16, i32 0, i32 0, null, metadata !160, i32 0, null, metadata !524} ; [ DW_TAG_class_type ]
!159 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/ap_int.h", metadata !"/home/yuzou/gcn_fpga_exp1", null} ; [ DW_TAG_file_type ]
!160 = metadata !{metadata !161, metadata !445, metadata !449, metadata !455, metadata !461, metadata !464, metadata !467, metadata !470, metadata !473, metadata !476, metadata !479, metadata !482, metadata !485, metadata !488, metadata !491, metadata !494, metadata !497, metadata !500, metadata !503, metadata !506, metadata !509, metadata !513, metadata !516, metadata !520, metadata !523}
!161 = metadata !{i32 786460, metadata !158, null, metadata !159, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_inheritance ]
!162 = metadata !{i32 786434, null, metadata !"ap_int_base<12, false, true>", metadata !163, i32 1397, i64 16, i64 16, i32 0, i32 0, null, metadata !164, i32 0, null, metadata !442} ; [ DW_TAG_class_type ]
!163 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/ap_int_syn.h", metadata !"/home/yuzou/gcn_fpga_exp1", null} ; [ DW_TAG_file_type ]
!164 = metadata !{metadata !165, metadata !184, metadata !188, metadata !196, metadata !202, metadata !205, metadata !209, metadata !213, metadata !217, metadata !221, metadata !224, metadata !227, metadata !231, metadata !235, metadata !240, metadata !245, metadata !248, metadata !252, metadata !255, metadata !258, metadata !262, metadata !265, metadata !268, metadata !269, metadata !273, metadata !276, metadata !279, metadata !282, metadata !285, metadata !288, metadata !291, metadata !294, metadata !297, metadata !300, metadata !303, metadata !306, metadata !316, metadata !319, metadata !322, metadata !325, metadata !328, metadata !331, metadata !334, metadata !337, metadata !340, metadata !343, metadata !346, metadata !349, metadata !352, metadata !353, metadata !357, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !368, metadata !369, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !380, metadata !381, metadata !382, metadata !385, metadata !386, metadata !389, metadata !390, metadata !394, metadata !398, metadata !399, metadata !402, metadata !403, metadata !407, metadata !408, metadata !409, metadata !410, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !434, metadata !437, metadata !440, metadata !441}
!165 = metadata !{i32 786460, metadata !162, null, metadata !163, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_inheritance ]
!166 = metadata !{i32 786434, null, metadata !"ssdm_int<12 + 1024 * 0, false>", metadata !167, i32 14, i64 16, i64 16, i32 0, i32 0, null, metadata !168, i32 0, null, metadata !180} ; [ DW_TAG_class_type ]
!167 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/yuzou/gcn_fpga_exp1", null} ; [ DW_TAG_file_type ]
!168 = metadata !{metadata !169, metadata !171, metadata !175}
!169 = metadata !{i32 786445, metadata !166, metadata !"V", metadata !167, i32 14, i64 12, i64 16, i64 0, i32 0, metadata !170} ; [ DW_TAG_member ]
!170 = metadata !{i32 786468, null, metadata !"uint12", null, i32 0, i64 12, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!171 = metadata !{i32 786478, i32 0, metadata !166, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !167, i32 14, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 14} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !174}
!174 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !166} ; [ DW_TAG_pointer_type ]
!175 = metadata !{i32 786478, i32 0, metadata !166, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !167, i32 14, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !102, i32 14} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{null, metadata !174, metadata !178}
!178 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_reference_type ]
!179 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_const_type ]
!180 = metadata !{metadata !181, metadata !183}
!181 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !182, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!182 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!183 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !130, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!184 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1438, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1438} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{null, metadata !187}
!187 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !162} ; [ DW_TAG_pointer_type ]
!188 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base<12, false>", metadata !"ap_int_base<12, false>", metadata !"", metadata !163, i32 1450, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !193, i32 0, metadata !102, i32 1450} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{null, metadata !187, metadata !191}
!191 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_reference_type ]
!192 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_const_type ]
!193 = metadata !{metadata !194, metadata !195}
!194 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !182, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!195 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !130, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!196 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base<12, false>", metadata !"ap_int_base<12, false>", metadata !"", metadata !163, i32 1453, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !193, i32 0, metadata !102, i32 1453} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{null, metadata !187, metadata !199}
!199 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_reference_type ]
!200 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_const_type ]
!201 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_volatile_type ]
!202 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1460, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1460} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!204 = metadata !{null, metadata !187, metadata !130}
!205 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1461, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1461} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{null, metadata !187, metadata !208}
!208 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!209 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1462, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1462} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{null, metadata !187, metadata !212}
!212 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!213 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1463, metadata !214, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1463} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{null, metadata !187, metadata !216}
!216 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!217 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1464, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1464} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!219 = metadata !{null, metadata !187, metadata !220}
!220 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!221 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1465, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1465} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{null, metadata !187, metadata !182}
!224 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1466, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1466} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{null, metadata !187, metadata !147}
!227 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1467, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1467} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{null, metadata !187, metadata !230}
!230 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!231 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1468, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1468} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!233 = metadata !{null, metadata !187, metadata !234}
!234 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!235 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1469, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1469} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!237 = metadata !{null, metadata !187, metadata !238}
!238 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !163, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !239} ; [ DW_TAG_typedef ]
!239 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!240 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1470, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1470} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{null, metadata !187, metadata !243}
!243 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !163, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !244} ; [ DW_TAG_typedef ]
!244 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!245 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1471, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1471} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!247 = metadata !{null, metadata !187, metadata !97}
!248 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1472, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !102, i32 1472} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{null, metadata !187, metadata !251}
!251 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!252 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1499, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1499} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!254 = metadata !{null, metadata !187, metadata !107}
!255 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1506, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1506} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!257 = metadata !{null, metadata !187, metadata !107, metadata !208}
!258 = metadata !{i32 786478, i32 0, metadata !162, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EE4readEv", metadata !163, i32 1527, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1527} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!260 = metadata !{metadata !162, metadata !261}
!261 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !201} ; [ DW_TAG_pointer_type ]
!262 = metadata !{i32 786478, i32 0, metadata !162, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EE5writeERKS0_", metadata !163, i32 1533, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1533} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{null, metadata !261, metadata !191}
!265 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EEaSERVKS0_", metadata !163, i32 1545, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1545} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{null, metadata !261, metadata !199}
!268 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EEaSERKS0_", metadata !163, i32 1554, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1554} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSERVKS0_", metadata !163, i32 1577, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1577} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!271 = metadata !{metadata !272, metadata !187, metadata !199}
!272 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_reference_type ]
!273 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSERKS0_", metadata !163, i32 1582, metadata !274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1582} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!275 = metadata !{metadata !272, metadata !187, metadata !191}
!276 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEPKc", metadata !163, i32 1586, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1586} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!278 = metadata !{metadata !272, metadata !187, metadata !107}
!279 = metadata !{i32 786478, i32 0, metadata !162, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEPKca", metadata !163, i32 1594, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1594} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{metadata !272, metadata !187, metadata !107, metadata !208}
!282 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEa", metadata !163, i32 1608, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1608} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{metadata !272, metadata !187, metadata !208}
!285 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEh", metadata !163, i32 1609, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1609} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!287 = metadata !{metadata !272, metadata !187, metadata !212}
!288 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEs", metadata !163, i32 1610, metadata !289, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1610} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!290 = metadata !{metadata !272, metadata !187, metadata !216}
!291 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEt", metadata !163, i32 1611, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1611} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{metadata !272, metadata !187, metadata !220}
!294 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEi", metadata !163, i32 1612, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1612} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{metadata !272, metadata !187, metadata !182}
!297 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEj", metadata !163, i32 1613, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1613} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!299 = metadata !{metadata !272, metadata !187, metadata !147}
!300 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEx", metadata !163, i32 1614, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1614} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!302 = metadata !{metadata !272, metadata !187, metadata !238}
!303 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEy", metadata !163, i32 1615, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1615} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!305 = metadata !{metadata !272, metadata !187, metadata !243}
!306 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEcvtEv", metadata !163, i32 1653, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1653} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!308 = metadata !{metadata !309, metadata !315}
!309 = metadata !{i32 786454, metadata !162, metadata !"RetType", metadata !163, i32 1402, i64 0, i64 0, i64 0, i32 0, metadata !310} ; [ DW_TAG_typedef ]
!310 = metadata !{i32 786454, metadata !311, metadata !"Type", metadata !163, i32 1376, i64 0, i64 0, i64 0, i32 0, metadata !220} ; [ DW_TAG_typedef ]
!311 = metadata !{i32 786434, null, metadata !"retval<2, false>", metadata !163, i32 1375, i64 8, i64 8, i32 0, i32 0, null, metadata !312, i32 0, null, metadata !313} ; [ DW_TAG_class_type ]
!312 = metadata !{i32 0}
!313 = metadata !{metadata !314, metadata !183}
!314 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !182, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!315 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !192} ; [ DW_TAG_pointer_type ]
!316 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_boolEv", metadata !163, i32 1659, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1659} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!318 = metadata !{metadata !130, metadata !315}
!319 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE8to_ucharEv", metadata !163, i32 1660, metadata !320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1660} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!321 = metadata !{metadata !212, metadata !315}
!322 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_charEv", metadata !163, i32 1661, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1661} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{metadata !208, metadata !315}
!325 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_ushortEv", metadata !163, i32 1662, metadata !326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1662} ; [ DW_TAG_subprogram ]
!326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!327 = metadata !{metadata !220, metadata !315}
!328 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE8to_shortEv", metadata !163, i32 1663, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1663} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{metadata !216, metadata !315}
!331 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6to_intEv", metadata !163, i32 1664, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1664} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !182, metadata !315}
!334 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_uintEv", metadata !163, i32 1665, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1665} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{metadata !147, metadata !315}
!337 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_longEv", metadata !163, i32 1666, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1666} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{metadata !230, metadata !315}
!340 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE8to_ulongEv", metadata !163, i32 1667, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1667} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{metadata !234, metadata !315}
!343 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE8to_int64Ev", metadata !163, i32 1668, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1668} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{metadata !238, metadata !315}
!346 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_uint64Ev", metadata !163, i32 1669, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1669} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{metadata !243, metadata !315}
!349 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_doubleEv", metadata !163, i32 1670, metadata !350, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1670} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!351 = metadata !{metadata !251, metadata !315}
!352 = metadata !{i32 786478, i32 0, metadata !162, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6lengthEv", metadata !163, i32 1684, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1684} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786478, i32 0, metadata !162, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi12ELb0ELb1EE6lengthEv", metadata !163, i32 1685, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1685} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{metadata !182, metadata !356}
!356 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !200} ; [ DW_TAG_pointer_type ]
!357 = metadata !{i32 786478, i32 0, metadata !162, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7reverseEv", metadata !163, i32 1690, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1690} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!359 = metadata !{metadata !272, metadata !187}
!360 = metadata !{i32 786478, i32 0, metadata !162, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6iszeroEv", metadata !163, i32 1696, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1696} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 786478, i32 0, metadata !162, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7is_zeroEv", metadata !163, i32 1701, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1701} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786478, i32 0, metadata !162, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE4signEv", metadata !163, i32 1706, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1706} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786478, i32 0, metadata !162, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5clearEi", metadata !163, i32 1714, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1714} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 786478, i32 0, metadata !162, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE6invertEi", metadata !163, i32 1720, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1720} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786478, i32 0, metadata !162, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE4testEi", metadata !163, i32 1728, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1728} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{metadata !130, metadata !315, metadata !182}
!368 = metadata !{i32 786478, i32 0, metadata !162, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEi", metadata !163, i32 1734, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1734} ; [ DW_TAG_subprogram ]
!369 = metadata !{i32 786478, i32 0, metadata !162, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEib", metadata !163, i32 1740, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1740} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{null, metadata !187, metadata !182, metadata !130}
!372 = metadata !{i32 786478, i32 0, metadata !162, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7lrotateEi", metadata !163, i32 1747, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1747} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786478, i32 0, metadata !162, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7rrotateEi", metadata !163, i32 1756, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1756} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786478, i32 0, metadata !162, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7set_bitEib", metadata !163, i32 1764, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1764} ; [ DW_TAG_subprogram ]
!375 = metadata !{i32 786478, i32 0, metadata !162, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7get_bitEi", metadata !163, i32 1769, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1769} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786478, i32 0, metadata !162, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5b_notEv", metadata !163, i32 1774, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1774} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786478, i32 0, metadata !162, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE17countLeadingZerosEv", metadata !163, i32 1781, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1781} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{metadata !182, metadata !187}
!380 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEppEv", metadata !163, i32 1838, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1838} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEmmEv", metadata !163, i32 1842, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1842} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEppEi", metadata !163, i32 1850, metadata !383, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1850} ; [ DW_TAG_subprogram ]
!383 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!384 = metadata !{metadata !192, metadata !187, metadata !182}
!385 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEmmEi", metadata !163, i32 1855, metadata !383, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1855} ; [ DW_TAG_subprogram ]
!386 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEpsEv", metadata !163, i32 1864, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1864} ; [ DW_TAG_subprogram ]
!387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!388 = metadata !{metadata !162, metadata !315}
!389 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEntEv", metadata !163, i32 1870, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1870} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEngEv", metadata !163, i32 1875, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 1875} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!392 = metadata !{metadata !393, metadata !315}
!393 = metadata !{i32 786434, null, metadata !"ap_int_base<13, true, true>", metadata !163, i32 650, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!394 = metadata !{i32 786478, i32 0, metadata !162, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5rangeEii", metadata !163, i32 2005, metadata !395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2005} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!396 = metadata !{metadata !397, metadata !187, metadata !182, metadata !182}
!397 = metadata !{i32 786434, null, metadata !"ap_range_ref<12, false>", metadata !163, i32 923, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!398 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEclEii", metadata !163, i32 2011, metadata !395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2011} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786478, i32 0, metadata !162, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE5rangeEii", metadata !163, i32 2017, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2017} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!401 = metadata !{metadata !397, metadata !315, metadata !182, metadata !182}
!402 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEclEii", metadata !163, i32 2023, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2023} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEixEi", metadata !163, i32 2042, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2042} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{metadata !406, metadata !187, metadata !182}
!406 = metadata !{i32 786434, null, metadata !"ap_bit_ref<12, false>", metadata !163, i32 1193, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!407 = metadata !{i32 786478, i32 0, metadata !162, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEixEi", metadata !163, i32 2056, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2056} ; [ DW_TAG_subprogram ]
!408 = metadata !{i32 786478, i32 0, metadata !162, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3bitEi", metadata !163, i32 2070, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2070} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786478, i32 0, metadata !162, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE3bitEi", metadata !163, i32 2084, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2084} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786478, i32 0, metadata !162, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10and_reduceEv", metadata !163, i32 2264, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2264} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{metadata !130, metadata !187}
!413 = metadata !{i32 786478, i32 0, metadata !162, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE11nand_reduceEv", metadata !163, i32 2267, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2267} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786478, i32 0, metadata !162, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE9or_reduceEv", metadata !163, i32 2270, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2270} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786478, i32 0, metadata !162, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10nor_reduceEv", metadata !163, i32 2273, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2273} ; [ DW_TAG_subprogram ]
!416 = metadata !{i32 786478, i32 0, metadata !162, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10xor_reduceEv", metadata !163, i32 2276, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2276} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 786478, i32 0, metadata !162, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE11xnor_reduceEv", metadata !163, i32 2279, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2279} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786478, i32 0, metadata !162, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10and_reduceEv", metadata !163, i32 2283, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2283} ; [ DW_TAG_subprogram ]
!419 = metadata !{i32 786478, i32 0, metadata !162, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE11nand_reduceEv", metadata !163, i32 2286, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2286} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786478, i32 0, metadata !162, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9or_reduceEv", metadata !163, i32 2289, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2289} ; [ DW_TAG_subprogram ]
!421 = metadata !{i32 786478, i32 0, metadata !162, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10nor_reduceEv", metadata !163, i32 2292, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2292} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786478, i32 0, metadata !162, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10xor_reduceEv", metadata !163, i32 2295, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2295} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 786478, i32 0, metadata !162, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE11xnor_reduceEv", metadata !163, i32 2298, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2298} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !163, i32 2305, metadata !425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2305} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!426 = metadata !{null, metadata !315, metadata !427, metadata !182, metadata !428, metadata !130}
!427 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ]
!428 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !163, i32 602, i64 5, i64 8, i32 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!429 = metadata !{metadata !430, metadata !431, metadata !432, metadata !433}
!430 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!431 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!432 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!433 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!434 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringE8BaseModeb", metadata !163, i32 2332, metadata !435, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2332} ; [ DW_TAG_subprogram ]
!435 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !436, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!436 = metadata !{metadata !427, metadata !315, metadata !428, metadata !130}
!437 = metadata !{i32 786478, i32 0, metadata !162, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringEab", metadata !163, i32 2336, metadata !438, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 2336} ; [ DW_TAG_subprogram ]
!438 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!439 = metadata !{metadata !427, metadata !315, metadata !208, metadata !130}
!440 = metadata !{i32 786478, i32 0, metadata !162, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !163, i32 1397, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !102, i32 1397} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786478, i32 0, metadata !162, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !163, i32 1397, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !102, i32 1397} ; [ DW_TAG_subprogram ]
!442 = metadata !{metadata !443, metadata !183, metadata !444}
!443 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !182, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!444 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !130, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!445 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 183, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 183} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{null, metadata !448}
!448 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !158} ; [ DW_TAG_pointer_type ]
!449 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint<12>", metadata !"ap_uint<12>", metadata !"", metadata !159, i32 185, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !454, i32 0, metadata !102, i32 185} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!451 = metadata !{null, metadata !448, metadata !452}
!452 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !453} ; [ DW_TAG_reference_type ]
!453 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_const_type ]
!454 = metadata !{metadata !194}
!455 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint<12>", metadata !"ap_uint<12>", metadata !"", metadata !159, i32 191, metadata !456, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !454, i32 0, metadata !102, i32 191} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!457 = metadata !{null, metadata !448, metadata !458}
!458 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !459} ; [ DW_TAG_reference_type ]
!459 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !460} ; [ DW_TAG_const_type ]
!460 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_volatile_type ]
!461 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint<12, false>", metadata !"ap_uint<12, false>", metadata !"", metadata !159, i32 226, metadata !462, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !193, i32 0, metadata !102, i32 226} ; [ DW_TAG_subprogram ]
!462 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !463, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!463 = metadata !{null, metadata !448, metadata !191}
!464 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 245, metadata !465, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 245} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !466, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!466 = metadata !{null, metadata !448, metadata !130}
!467 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 246, metadata !468, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 246} ; [ DW_TAG_subprogram ]
!468 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !469, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!469 = metadata !{null, metadata !448, metadata !208}
!470 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 247, metadata !471, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 247} ; [ DW_TAG_subprogram ]
!471 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !472, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!472 = metadata !{null, metadata !448, metadata !212}
!473 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 248, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 248} ; [ DW_TAG_subprogram ]
!474 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !475, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!475 = metadata !{null, metadata !448, metadata !216}
!476 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 249, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 249} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!478 = metadata !{null, metadata !448, metadata !220}
!479 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 250, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 250} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!481 = metadata !{null, metadata !448, metadata !182}
!482 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 251, metadata !483, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 251} ; [ DW_TAG_subprogram ]
!483 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!484 = metadata !{null, metadata !448, metadata !147}
!485 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 252, metadata !486, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 252} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !487, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!487 = metadata !{null, metadata !448, metadata !230}
!488 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 253, metadata !489, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 253} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!490 = metadata !{null, metadata !448, metadata !234}
!491 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 254, metadata !492, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 254} ; [ DW_TAG_subprogram ]
!492 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !493, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!493 = metadata !{null, metadata !448, metadata !244}
!494 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 255, metadata !495, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 255} ; [ DW_TAG_subprogram ]
!495 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !496, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!496 = metadata !{null, metadata !448, metadata !239}
!497 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 256, metadata !498, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 256} ; [ DW_TAG_subprogram ]
!498 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !499, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!499 = metadata !{null, metadata !448, metadata !97}
!500 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 257, metadata !501, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 257} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!502 = metadata !{null, metadata !448, metadata !251}
!503 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 259, metadata !504, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 259} ; [ DW_TAG_subprogram ]
!504 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !505, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!505 = metadata !{null, metadata !448, metadata !107}
!506 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 260, metadata !507, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 260} ; [ DW_TAG_subprogram ]
!507 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!508 = metadata !{null, metadata !448, metadata !107, metadata !208}
!509 = metadata !{i32 786478, i32 0, metadata !158, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi12EEaSERKS0_", metadata !159, i32 263, metadata !510, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 263} ; [ DW_TAG_subprogram ]
!510 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!511 = metadata !{null, metadata !512, metadata !452}
!512 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !460} ; [ DW_TAG_pointer_type ]
!513 = metadata !{i32 786478, i32 0, metadata !158, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi12EEaSERVKS0_", metadata !159, i32 267, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 267} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{null, metadata !512, metadata !458}
!516 = metadata !{i32 786478, i32 0, metadata !158, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi12EEaSERVKS0_", metadata !159, i32 271, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 271} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{metadata !519, metadata !448, metadata !458}
!519 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_reference_type ]
!520 = metadata !{i32 786478, i32 0, metadata !158, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi12EEaSERKS0_", metadata !159, i32 276, metadata !521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 276} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!522 = metadata !{metadata !519, metadata !448, metadata !452}
!523 = metadata !{i32 786478, i32 0, metadata !158, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !159, i32 180, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !102, i32 180} ; [ DW_TAG_subprogram ]
!524 = metadata !{metadata !443}
!525 = metadata !{i32 786445, metadata !154, metadata !"dst", metadata !155, i32 8, i64 16, i64 16, i64 16, i32 0, metadata !158} ; [ DW_TAG_member ]
!526 = metadata !{i32 786445, metadata !154, metadata !"c", metadata !155, i32 9, i64 32, i64 32, i64 32, i32 0, metadata !97} ; [ DW_TAG_member ]
!527 = metadata !{i32 786478, i32 0, metadata !154, metadata !"~", metadata !"~", metadata !"", metadata !155, i32 6, metadata !528, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !102, i32 6} ; [ DW_TAG_subprogram ]
!528 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !529, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!529 = metadata !{null, metadata !530}
!530 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !154} ; [ DW_TAG_pointer_type ]
!531 = metadata !{i32 786478, i32 0, metadata !154, metadata !"", metadata !"", metadata !"", metadata !155, i32 6, metadata !532, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !102, i32 6} ; [ DW_TAG_subprogram ]
!532 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !533, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!533 = metadata !{null, metadata !530, metadata !534}
!534 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !535} ; [ DW_TAG_reference_type ]
!535 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_const_type ]
!536 = metadata !{i32 786478, i32 0, metadata !151, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 83, metadata !537, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 83} ; [ DW_TAG_subprogram ]
!537 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !538, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!538 = metadata !{null, metadata !539}
!539 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !151} ; [ DW_TAG_pointer_type ]
!540 = metadata !{i32 786478, i32 0, metadata !151, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 86, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 86} ; [ DW_TAG_subprogram ]
!541 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!542 = metadata !{null, metadata !539, metadata !107}
!543 = metadata !{i32 786478, i32 0, metadata !151, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 91, metadata !544, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !102, i32 91} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !545, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!545 = metadata !{null, metadata !539, metadata !546}
!546 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_reference_type ]
!547 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_const_type ]
!548 = metadata !{i32 786478, i32 0, metadata !151, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI9edge_infoEaSERKS2_", metadata !94, i32 94, metadata !549, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !102, i32 94} ; [ DW_TAG_subprogram ]
!549 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !550, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!550 = metadata !{metadata !150, metadata !539, metadata !546}
!551 = metadata !{i32 786478, i32 0, metadata !151, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI9edge_infoErsERS1_", metadata !94, i32 101, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 101} ; [ DW_TAG_subprogram ]
!552 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!553 = metadata !{null, metadata !539, metadata !554}
!554 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_reference_type ]
!555 = metadata !{i32 786478, i32 0, metadata !151, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI9edge_infoElsERKS1_", metadata !94, i32 105, metadata !556, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 105} ; [ DW_TAG_subprogram ]
!556 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !557, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!557 = metadata !{null, metadata !539, metadata !534}
!558 = metadata !{i32 786478, i32 0, metadata !151, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI9edge_infoE5emptyEv", metadata !94, i32 112, metadata !559, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 112} ; [ DW_TAG_subprogram ]
!559 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !560, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!560 = metadata !{metadata !130, metadata !561}
!561 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !547} ; [ DW_TAG_pointer_type ]
!562 = metadata !{i32 786478, i32 0, metadata !151, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI9edge_infoE4fullEv", metadata !94, i32 117, metadata !559, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 117} ; [ DW_TAG_subprogram ]
!563 = metadata !{i32 786478, i32 0, metadata !151, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI9edge_infoE4readERS1_", metadata !94, i32 123, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 123} ; [ DW_TAG_subprogram ]
!564 = metadata !{i32 786478, i32 0, metadata !151, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI9edge_infoE4readEv", metadata !94, i32 129, metadata !565, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 129} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!566 = metadata !{metadata !154, metadata !539}
!567 = metadata !{i32 786478, i32 0, metadata !151, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI9edge_infoE7read_nbERS1_", metadata !94, i32 136, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 136} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!569 = metadata !{metadata !130, metadata !539, metadata !554}
!570 = metadata !{i32 786478, i32 0, metadata !151, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI9edge_infoE5writeERKS1_", metadata !94, i32 144, metadata !556, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 144} ; [ DW_TAG_subprogram ]
!571 = metadata !{i32 786478, i32 0, metadata !151, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI9edge_infoE8write_nbERKS1_", metadata !94, i32 150, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 150} ; [ DW_TAG_subprogram ]
!572 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !573, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!573 = metadata !{metadata !130, metadata !539, metadata !534}
!574 = metadata !{i32 786478, i32 0, metadata !151, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamI9edge_infoE4sizeEv", metadata !94, i32 157, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 157} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!576 = metadata !{metadata !147, metadata !539}
!577 = metadata !{metadata !578}
!578 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !154, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!579 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !580} ; [ DW_TAG_reference_type ]
!580 = metadata !{i32 786434, metadata !93, metadata !"stream<unsigned long>", metadata !94, i32 79, i64 64, i64 64, i32 0, i32 0, null, metadata !581, i32 0, null, metadata !626} ; [ DW_TAG_class_type ]
!581 = metadata !{metadata !582, metadata !583, metadata !587, metadata !590, metadata !595, metadata !598, metadata !602, metadata !607, metadata !611, metadata !612, metadata !613, metadata !616, metadata !619, metadata !620, metadata !623}
!582 = metadata !{i32 786445, metadata !580, metadata !"V", metadata !94, i32 163, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_member ]
!583 = metadata !{i32 786478, i32 0, metadata !580, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 83, metadata !584, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 83} ; [ DW_TAG_subprogram ]
!584 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !585, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!585 = metadata !{null, metadata !586}
!586 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !580} ; [ DW_TAG_pointer_type ]
!587 = metadata !{i32 786478, i32 0, metadata !580, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 86, metadata !588, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 86} ; [ DW_TAG_subprogram ]
!588 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !589, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!589 = metadata !{null, metadata !586, metadata !107}
!590 = metadata !{i32 786478, i32 0, metadata !580, metadata !"stream", metadata !"stream", metadata !"", metadata !94, i32 91, metadata !591, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !102, i32 91} ; [ DW_TAG_subprogram ]
!591 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!592 = metadata !{null, metadata !586, metadata !593}
!593 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !594} ; [ DW_TAG_reference_type ]
!594 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !580} ; [ DW_TAG_const_type ]
!595 = metadata !{i32 786478, i32 0, metadata !580, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamImEaSERKS1_", metadata !94, i32 94, metadata !596, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !102, i32 94} ; [ DW_TAG_subprogram ]
!596 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !597, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!597 = metadata !{metadata !579, metadata !586, metadata !593}
!598 = metadata !{i32 786478, i32 0, metadata !580, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamImErsERm", metadata !94, i32 101, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 101} ; [ DW_TAG_subprogram ]
!599 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !600, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!600 = metadata !{null, metadata !586, metadata !601}
!601 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_reference_type ]
!602 = metadata !{i32 786478, i32 0, metadata !580, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamImElsERKm", metadata !94, i32 105, metadata !603, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 105} ; [ DW_TAG_subprogram ]
!603 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !604, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!604 = metadata !{null, metadata !586, metadata !605}
!605 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !606} ; [ DW_TAG_reference_type ]
!606 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_const_type ]
!607 = metadata !{i32 786478, i32 0, metadata !580, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamImE5emptyEv", metadata !94, i32 112, metadata !608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 112} ; [ DW_TAG_subprogram ]
!608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!609 = metadata !{metadata !130, metadata !610}
!610 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !594} ; [ DW_TAG_pointer_type ]
!611 = metadata !{i32 786478, i32 0, metadata !580, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamImE4fullEv", metadata !94, i32 117, metadata !608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 117} ; [ DW_TAG_subprogram ]
!612 = metadata !{i32 786478, i32 0, metadata !580, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamImE4readERm", metadata !94, i32 123, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 123} ; [ DW_TAG_subprogram ]
!613 = metadata !{i32 786478, i32 0, metadata !580, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamImE4readEv", metadata !94, i32 129, metadata !614, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 129} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!615 = metadata !{metadata !234, metadata !586}
!616 = metadata !{i32 786478, i32 0, metadata !580, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamImE7read_nbERm", metadata !94, i32 136, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 136} ; [ DW_TAG_subprogram ]
!617 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !618, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!618 = metadata !{metadata !130, metadata !586, metadata !601}
!619 = metadata !{i32 786478, i32 0, metadata !580, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamImE5writeERKm", metadata !94, i32 144, metadata !603, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 144} ; [ DW_TAG_subprogram ]
!620 = metadata !{i32 786478, i32 0, metadata !580, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamImE8write_nbERKm", metadata !94, i32 150, metadata !621, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 150} ; [ DW_TAG_subprogram ]
!621 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !622, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!622 = metadata !{metadata !130, metadata !586, metadata !605}
!623 = metadata !{i32 786478, i32 0, metadata !580, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamImE4sizeEv", metadata !94, i32 157, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !102, i32 157} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!625 = metadata !{metadata !147, metadata !586}
!626 = metadata !{metadata !627}
!627 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !234, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!628 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !629} ; [ DW_TAG_pointer_type ]
!629 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !97, metadata !630, i32 0, i32 0} ; [ DW_TAG_array_type ]
!630 = metadata !{metadata !631}
!631 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!632 = metadata !{i32 786688, metadata !84, metadata !"node_out_bram", metadata !88, i32 8, metadata !633, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!633 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 16384, i64 32, i32 0, i32 0, metadata !97, metadata !634, i32 0, i32 0} ; [ DW_TAG_array_type ]
!634 = metadata !{metadata !635, metadata !631}
!635 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!636 = metadata !{i32 8, i32 9, metadata !84, null}
!637 = metadata !{i32 790531, metadata !638, metadata !"node_in_strm.V", null, i32 3, metadata !639, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!638 = metadata !{i32 786689, metadata !87, metadata !"node_in_strm", metadata !88, i32 16777219, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!639 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !640} ; [ DW_TAG_pointer_type ]
!640 = metadata !{i32 786438, metadata !93, metadata !"stream<float>", metadata !94, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !641, i32 0, null, metadata !148} ; [ DW_TAG_class_field_type ]
!641 = metadata !{metadata !96}
!642 = metadata !{i32 3, i32 25, metadata !87, null}
!643 = metadata !{i32 790531, metadata !644, metadata !"edge_strm.V.src.V", null, i32 3, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!644 = metadata !{i32 786689, metadata !87, metadata !"edge_strm", metadata !88, i32 33554435, metadata !150, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!645 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !646} ; [ DW_TAG_pointer_type ]
!646 = metadata !{i32 786438, metadata !93, metadata !"stream<edge_info>", metadata !94, i32 79, i64 12, i64 32, i32 0, i32 0, null, metadata !647, i32 0, null, metadata !577} ; [ DW_TAG_class_field_type ]
!647 = metadata !{metadata !648}
!648 = metadata !{i32 786438, null, metadata !"", metadata !155, i32 6, i64 12, i64 32, i32 0, i32 0, null, metadata !649, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!649 = metadata !{metadata !650}
!650 = metadata !{i32 786438, null, metadata !"ap_uint<12>", metadata !159, i32 180, i64 12, i64 16, i32 0, i32 0, null, metadata !651, i32 0, null, metadata !524} ; [ DW_TAG_class_field_type ]
!651 = metadata !{metadata !652}
!652 = metadata !{i32 786438, null, metadata !"ap_int_base<12, false, true>", metadata !163, i32 1397, i64 12, i64 16, i32 0, i32 0, null, metadata !653, i32 0, null, metadata !442} ; [ DW_TAG_class_field_type ]
!653 = metadata !{metadata !654}
!654 = metadata !{i32 786438, null, metadata !"ssdm_int<12 + 1024 * 0, false>", metadata !167, i32 14, i64 12, i64 16, i32 0, i32 0, null, metadata !655, i32 0, null, metadata !180} ; [ DW_TAG_class_field_type ]
!655 = metadata !{metadata !169}
!656 = metadata !{i32 3, i32 58, metadata !87, null}
!657 = metadata !{i32 790531, metadata !644, metadata !"edge_strm.V.dst.V", null, i32 3, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!658 = metadata !{i32 790531, metadata !644, metadata !"edge_strm.V.c", null, i32 3, metadata !659, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!659 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !660} ; [ DW_TAG_pointer_type ]
!660 = metadata !{i32 786438, metadata !93, metadata !"stream<edge_info>", metadata !94, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !661, i32 0, null, metadata !577} ; [ DW_TAG_class_field_type ]
!661 = metadata !{metadata !662}
!662 = metadata !{i32 786438, null, metadata !"", metadata !155, i32 6, i64 32, i64 32, i32 0, i32 0, null, metadata !663, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!663 = metadata !{metadata !526}
!664 = metadata !{i32 790531, metadata !665, metadata !"metadata_strm.V", null, i32 3, metadata !666, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!665 = metadata !{i32 786689, metadata !87, metadata !"metadata_strm", metadata !88, i32 50331651, metadata !579, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!666 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !667} ; [ DW_TAG_pointer_type ]
!667 = metadata !{i32 786438, metadata !93, metadata !"stream<unsigned long>", metadata !94, i32 79, i64 64, i64 64, i32 0, i32 0, null, metadata !668, i32 0, null, metadata !626} ; [ DW_TAG_class_field_type ]
!668 = metadata !{metadata !582}
!669 = metadata !{i32 3, i32 87, metadata !87, null}
!670 = metadata !{i32 790531, metadata !671, metadata !"node_out_strm.V", null, i32 3, metadata !639, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!671 = metadata !{i32 786689, metadata !87, metadata !"node_out_strm", metadata !88, i32 67108867, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!672 = metadata !{i32 3, i32 117, metadata !87, null}
!673 = metadata !{i32 786689, metadata !87, metadata !"wt", null, i32 3, metadata !674, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!674 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 733696, i64 32, i32 0, i32 0, metadata !97, metadata !675, i32 0, i32 0} ; [ DW_TAG_array_type ]
!675 = metadata !{metadata !676, metadata !631}
!676 = metadata !{i32 786465, i64 0, i64 1432}    ; [ DW_TAG_subrange_type ]
!677 = metadata !{i32 3, i32 138, metadata !87, null}
!678 = metadata !{i32 786688, metadata !86, metadata !"node_in_bram", metadata !88, i32 6, metadata !679, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!679 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1467392, i64 32, i32 0, i32 0, metadata !97, metadata !680, i32 0, i32 0} ; [ DW_TAG_array_type ]
!680 = metadata !{metadata !635, metadata !676}
!681 = metadata !{i32 6, i32 8, metadata !86, null}
!682 = metadata !{i32 7, i32 18, metadata !85, null}
!683 = metadata !{i32 7, i32 30, metadata !85, null}
!684 = metadata !{i32 786688, metadata !85, metadata !"dst", metadata !88, i32 7, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!685 = metadata !{i32 8, i32 38, metadata !84, null}
!686 = metadata !{i32 9, i32 19, metadata !83, null}
!687 = metadata !{i32 9, i32 31, metadata !83, null}
!688 = metadata !{i32 786688, metadata !83, metadata !"src", metadata !88, i32 9, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!689 = metadata !{i32 21, i32 19, metadata !690, null}
!690 = metadata !{i32 786443, metadata !84, i32 21, i32 3, metadata !88, i32 11} ; [ DW_TAG_lexical_block ]
!691 = metadata !{i32 10, i32 20, metadata !692, null}
!692 = metadata !{i32 786443, metadata !82, i32 10, i32 4, metadata !88, i32 5} ; [ DW_TAG_lexical_block ]
!693 = metadata !{i32 10, i32 32, metadata !692, null}
!694 = metadata !{i32 786688, metadata !692, metadata !"row", metadata !88, i32 10, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!695 = metadata !{i32 11, i32 21, metadata !696, null}
!696 = metadata !{i32 786443, metadata !697, i32 11, i32 5, metadata !88, i32 7} ; [ DW_TAG_lexical_block ]
!697 = metadata !{i32 786443, metadata !692, i32 10, i32 38, metadata !88, i32 6} ; [ DW_TAG_lexical_block ]
!698 = metadata !{i32 11, i32 35, metadata !696, null}
!699 = metadata !{i32 790531, metadata !700, metadata !"stream<float>.V", null, i32 129, metadata !703, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!700 = metadata !{i32 786689, metadata !701, metadata !"this", metadata !94, i32 16777345, metadata !702, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!701 = metadata !{i32 786478, i32 0, metadata !93, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !94, i32 129, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !134, metadata !102, i32 129} ; [ DW_TAG_subprogram ]
!702 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ]
!703 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !640} ; [ DW_TAG_pointer_type ]
!704 = metadata !{i32 129, i32 56, metadata !701, metadata !705}
!705 = metadata !{i32 12, i32 31, metadata !706, null}
!706 = metadata !{i32 786443, metadata !696, i32 11, i32 41, metadata !88, i32 8} ; [ DW_TAG_lexical_block ]
!707 = metadata !{i32 131, i32 9, metadata !708, metadata !705}
!708 = metadata !{i32 786443, metadata !701, i32 129, i32 63, metadata !94, i32 27} ; [ DW_TAG_lexical_block ]
!709 = metadata !{i32 786688, metadata !708, metadata !"tmp", metadata !94, i32 130, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!710 = metadata !{i32 786688, metadata !696, metadata !"col", metadata !88, i32 11, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!711 = metadata !{i32 790531, metadata !712, metadata !"stream<unsigned long>.V", null, i32 129, metadata !715, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!712 = metadata !{i32 786689, metadata !713, metadata !"this", metadata !94, i32 16777345, metadata !714, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!713 = metadata !{i32 786478, i32 0, metadata !93, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamImE4readEv", metadata !94, i32 129, metadata !614, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !613, metadata !102, i32 129} ; [ DW_TAG_subprogram ]
!714 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !580} ; [ DW_TAG_pointer_type ]
!715 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !667} ; [ DW_TAG_pointer_type ]
!716 = metadata !{i32 129, i32 56, metadata !713, metadata !717}
!717 = metadata !{i32 15, i32 24, metadata !82, null}
!718 = metadata !{i32 131, i32 9, metadata !719, metadata !717}
!719 = metadata !{i32 786443, metadata !713, i32 129, i32 63, metadata !94, i32 26} ; [ DW_TAG_lexical_block ]
!720 = metadata !{i32 786688, metadata !719, metadata !"tmp", metadata !94, i32 130, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!721 = metadata !{i32 16, i32 18, metadata !81, null}
!722 = metadata !{i32 16, i32 34, metadata !81, null}
!723 = metadata !{i32 790531, metadata !724, metadata !"stream<edge_info>.V.src.V", null, i32 129, metadata !727, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!724 = metadata !{i32 786689, metadata !725, metadata !"this", metadata !94, i32 16777345, metadata !726, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!725 = metadata !{i32 786478, i32 0, metadata !93, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI9edge_infoE4readEv", metadata !94, i32 129, metadata !565, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !564, metadata !102, i32 129} ; [ DW_TAG_subprogram ]
!726 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ]
!727 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !646} ; [ DW_TAG_pointer_type ]
!728 = metadata !{i32 129, i32 56, metadata !725, metadata !729}
!729 = metadata !{i32 17, i32 22, metadata !80, null}
!730 = metadata !{i32 790531, metadata !724, metadata !"stream<edge_info>.V.dst.V", null, i32 129, metadata !727, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!731 = metadata !{i32 790531, metadata !724, metadata !"stream<edge_info>.V.c", null, i32 129, metadata !732, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!732 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !660} ; [ DW_TAG_pointer_type ]
!733 = metadata !{i32 131, i32 9, metadata !734, metadata !729}
!734 = metadata !{i32 786443, metadata !725, i32 129, i32 63, metadata !94, i32 23} ; [ DW_TAG_lexical_block ]
!735 = metadata !{i32 790529, metadata !736, metadata !"tmp.dst.V", null, i32 130, metadata !648, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!736 = metadata !{i32 786688, metadata !734, metadata !"tmp", metadata !94, i32 130, metadata !554, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!737 = metadata !{i32 790529, metadata !736, metadata !"tmp.c", null, i32 130, metadata !662, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!738 = metadata !{i32 18, i32 19, metadata !80, null}
!739 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !88, i32 16, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!740 = metadata !{i32 21, i32 31, metadata !690, null}
!741 = metadata !{i32 786688, metadata !690, metadata !"row", metadata !88, i32 21, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!742 = metadata !{i32 22, i32 20, metadata !743, null}
!743 = metadata !{i32 786443, metadata !744, i32 22, i32 4, metadata !88, i32 13} ; [ DW_TAG_lexical_block ]
!744 = metadata !{i32 786443, metadata !690, i32 21, i32 37, metadata !88, i32 12} ; [ DW_TAG_lexical_block ]
!745 = metadata !{i32 22, i32 32, metadata !743, null}
!746 = metadata !{i32 23, i32 5, metadata !747, null}
!747 = metadata !{i32 786443, metadata !743, i32 22, i32 38, metadata !88, i32 14} ; [ DW_TAG_lexical_block ]
!748 = metadata !{i32 790531, metadata !749, metadata !"stream<float>.V", null, i32 144, metadata !703, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!749 = metadata !{i32 786689, metadata !750, metadata !"this", metadata !94, i32 16777360, metadata !702, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!750 = metadata !{i32 786478, i32 0, metadata !93, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !94, i32 144, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !140, metadata !102, i32 144} ; [ DW_TAG_subprogram ]
!751 = metadata !{i32 144, i32 48, metadata !750, metadata !746}
!752 = metadata !{i32 786689, metadata !750, metadata !"din", metadata !94, i32 33554576, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!753 = metadata !{i32 144, i32 74, metadata !750, metadata !746}
!754 = metadata !{i32 145, i32 31, metadata !755, metadata !746}
!755 = metadata !{i32 786443, metadata !750, i32 144, i32 79, metadata !94, i32 15} ; [ DW_TAG_lexical_block ]
!756 = metadata !{i32 786688, metadata !755, metadata !"tmp", metadata !94, i32 145, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!757 = metadata !{i32 146, i32 9, metadata !755, metadata !746}
!758 = metadata !{i32 786688, metadata !743, metadata !"col", metadata !88, i32 22, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!759 = metadata !{i32 27, i32 1, metadata !86, null}
