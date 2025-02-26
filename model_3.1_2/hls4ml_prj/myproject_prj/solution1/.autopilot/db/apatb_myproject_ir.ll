; ModuleID = '/home/hep/lr1424/hls4ml-tutorial_OPENML/model_3.1_2/hls4ml_prj/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<14, 5, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<14, 5, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<14, true>" }
%"struct.ssdm_int<14, true>" = type { i14 }
%"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_int_base<12, true>" }
%"struct.ap_int_base<12, true>" = type { %"struct.ssdm_int<12, true>" }
%"struct.ssdm_int<12, true>" = type { i12 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_myproject_ir(%"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %input_6, %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="5" "partition" %layer20_out) local_unnamed_addr #0 {
entry:
  %input_6_copy3 = alloca i224, align 512
  %layer20_out_copy_0 = alloca i12, align 512
  %layer20_out_copy_1 = alloca i12, align 512
  %layer20_out_copy_2 = alloca i12, align 512
  %layer20_out_copy_3 = alloca i12, align 512
  %layer20_out_copy_4 = alloca i12, align 512
  %0 = bitcast %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"* %input_6 to [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"* %layer20_out to [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_in([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i224* nonnull align 512 %input_6_copy3, [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i12* nonnull align 512 %layer20_out_copy_0, i12* nonnull align 512 %layer20_out_copy_1, i12* nonnull align 512 %layer20_out_copy_2, i12* nonnull align 512 %layer20_out_copy_3, i12* nonnull align 512 %layer20_out_copy_4)
  call void @apatb_myproject_hw(i224* %input_6_copy3, i12* %layer20_out_copy_0, i12* %layer20_out_copy_1, i12* %layer20_out_copy_2, i12* %layer20_out_copy_3, i12* %layer20_out_copy_4)
  call void @copy_back([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %0, i224* %input_6_copy3, [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %1, i12* %layer20_out_copy_0, i12* %layer20_out_copy_1, i12* %layer20_out_copy_2, i12* %layer20_out_copy_3, i12* %layer20_out_copy_4)
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"(i12* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i12* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i12* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i12* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i12* nocapture "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"], [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = bitcast i12* %src.addr.0.0.05 to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i12
  switch i64 %for.loop.idx2, label %dst.addr.0.0.06.case.4 [
    i64 0, label %dst.addr.0.0.06.case.0
    i64 1, label %dst.addr.0.0.06.case.1
    i64 2, label %dst.addr.0.0.06.case.2
    i64 3, label %dst.addr.0.0.06.case.3
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i12 %3, i12* %dst_0, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i12 %3, i12* %dst_1, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i12 %3, i12* %dst_2, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i12 %3, i12* %dst_3, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.4:                           ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 4
  call void @llvm.assume(i1 %4)
  store i12 %3, i12* %dst_4, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.4, %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"(i12* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i12* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i12* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i12* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i12* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #3 {
entry:
  %0 = icmp eq [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"(i12* %dst_0, i12* %dst_1, i12* %dst_2, i12* %dst_3, i12* %dst_4, [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 5)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>.61"([5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i12* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i12* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i12* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i12* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i12* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"], [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx2, label %src.addr.0.0.05.case.4 [
    i64 0, label %src.addr.0.0.05.case.0
    i64 1, label %src.addr.0.0.05.case.1
    i64 2, label %src.addr.0.0.05.case.2
    i64 3, label %src.addr.0.0.05.case.3
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %1 = bitcast i12* %src_0 to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i12
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %4 = bitcast i12* %src_1 to i16*
  %5 = load i16, i16* %4
  %6 = trunc i16 %5 to i12
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %7 = bitcast i12* %src_2 to i16*
  %8 = load i16, i16* %7
  %9 = trunc i16 %8 to i12
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %10 = bitcast i12* %src_3 to i16*
  %11 = load i16, i16* %10
  %12 = trunc i16 %11 to i12
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.4:                           ; preds = %for.loop
  %13 = icmp eq i64 %for.loop.idx2, 4
  call void @llvm.assume(i1 %13)
  %14 = bitcast i12* %src_4 to i16*
  %15 = load i16, i16* %14
  %16 = trunc i16 %15 to i12
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.4, %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %17 = phi i12 [ %3, %src.addr.0.0.05.case.0 ], [ %6, %src.addr.0.0.05.case.1 ], [ %9, %src.addr.0.0.05.case.2 ], [ %12, %src.addr.0.0.05.case.3 ], [ %16, %src.addr.0.0.05.case.4 ]
  store i12 %17, i12* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>.58"([5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i12* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i12* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i12* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i12* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i12* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %src_4) #3 {
entry:
  %0 = icmp eq [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>.61"([5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i12* %src_0, i12* %src_1, i12* %src_2, i12* %src_3, i12* %src_4, i64 5)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>.71"(i224* nocapture "orig.arg.no"="0" "unpacked"="0.0" %dst, i64 %dst_shift, [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"], [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = mul i64 14, %for.loop.idx2
  %2 = add i64 %dst_shift, %1
  %3 = bitcast i14* %src.addr.0.0.05 to i16*
  %4 = load i16, i16* %3
  %5 = trunc i16 %4 to i14
  %6 = load i224, i224* %dst, align 32
  %7 = zext i64 %2 to i224
  %8 = shl i224 16383, %7
  %9 = zext i14 %5 to i224
  %10 = shl i224 %9, %7
  %thr.xor1 = xor i224 %8, -1
  %thr.and2 = and i224 %6, %thr.xor1
  %thr.or3 = or i224 %thr.and2, %10
  store i224 %thr.or3, i224* %dst, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a16struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>.68"(i224* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst, [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>.71"(i224* %dst, i64 0, [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i224* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i12* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i12* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i12* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i12* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i12* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4) #4 {
entry:
  call void @"onebyonecpy_hls.p0a16struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>.68"(i224* align 512 %1, [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"(i12* align 512 %_0, i12* align 512 %_1, i12* align 512 %_2, i12* align 512 %_3, i12* align 512 %_4, [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i224* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0" %src, i64 %src_shift, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %1 = mul i64 14, %for.loop.idx2
  %2 = add i64 %src_shift, %1
  %dst.addr.0.0.06 = getelementptr [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"], [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %3 = load i224, i224* %src, align 32
  %4 = zext i64 %2 to i224
  %5 = lshr i224 %3, %4
  %6 = trunc i224 %5 to i14
  store i14 %6, i14* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a16struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i224* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src) #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i224* %src, i64 0, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i224* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4) #5 {
entry:
  call void @"onebyonecpy_hls.p0a16struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %0, i224* align 512 %1)
  call void @"onebyonecpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>.58"([5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %2, i12* align 512 %_0, i12* align 512 %_1, i12* align 512 %_2, i12* align 512 %_3, i12* align 512 %_4)
  ret void
}

declare void @apatb_myproject_hw(i224*, i12*, i12*, i12*, i12*, i12*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i224* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i12* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4) #5 {
entry:
  call void @"onebyonecpy_hls.p0a5struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>.58"([5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %2, i12* align 512 %_0, i12* align 512 %_1, i12* align 512 %_2, i12* align 512 %_3, i12* align 512 %_4)
  ret void
}

define void @myproject_hw_stub_wrapper(i224*, i12*, i12*, i12*, i12*, i12*) #6 {
entry:
  %6 = alloca [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]
  %7 = alloca [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]
  call void @copy_out([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %6, i224* %0, [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %7, i12* %1, i12* %2, i12* %3, i12* %4, i12* %5)
  %8 = bitcast [16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %6 to %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"*
  %9 = bitcast [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %7 to %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"*
  call void @myproject_hw_stub(%"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"* %8, %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"* %9)
  call void @copy_in([16 x %"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"]* %6, i224* %0, [5 x %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"]* %7, i12* %1, i12* %2, i12* %3, i12* %4, i12* %5)
  ret void
}

declare void @myproject_hw_stub(%"struct.ap_fixed<14, 5, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<12, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { nounwind willreturn }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"1.0", [5 x i12]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15}
!11 = !{!"1.0.0", i12* null}
!12 = !{!"1.0.1", i12* null}
!13 = !{!"1.0.2", i12* null}
!14 = !{!"1.0.3", i12* null}
!15 = !{!"1.0.4", i12* null}
