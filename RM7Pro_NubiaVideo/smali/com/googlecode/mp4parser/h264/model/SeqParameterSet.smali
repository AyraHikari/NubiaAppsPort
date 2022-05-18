.class public Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
.super Lcom/googlecode/mp4parser/h264/model/BitstreamElement;
.source "SourceFile"


# instance fields
.field public bit_depth_chroma_minus8:I

.field public bit_depth_luma_minus8:I

.field public chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

.field public constraint_set_0_flag:Z

.field public constraint_set_1_flag:Z

.field public constraint_set_2_flag:Z

.field public constraint_set_3_flag:Z

.field public delta_pic_order_always_zero_flag:Z

.field public direct_8x8_inference_flag:Z

.field public entropy_coding_mode_flag:Z

.field public field_pic_flag:Z

.field public frame_crop_bottom_offset:I

.field public frame_crop_left_offset:I

.field public frame_crop_right_offset:I

.field public frame_crop_top_offset:I

.field public frame_cropping_flag:Z

.field public frame_mbs_only_flag:Z

.field public gaps_in_frame_num_value_allowed_flag:Z

.field public level_idc:I

.field public log2_max_frame_num_minus4:I

.field public log2_max_pic_order_cnt_lsb_minus4:I

.field public mb_adaptive_frame_field_flag:Z

.field public num_ref_frames:I

.field public num_ref_frames_in_pic_order_cnt_cycle:I

.field public offsetForRefFrame:[I

.field public offset_for_non_ref_pic:I

.field public offset_for_top_to_bottom_field:I

.field public pic_height_in_map_units_minus1:I

.field public pic_order_cnt_type:I

.field public pic_width_in_mbs_minus1:I

.field public profile_idc:I

.field public qpprime_y_zero_transform_bypass_flag:Z

.field public residual_color_transform_flag:Z

.field public scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

.field public seq_parameter_set_id:I

.field public vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

.field public weighted_bipred_idc:I

.field public weighted_pred_flag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/model/BitstreamElement;-><init>()V

    return-void
.end method

.method private static ReadVUIParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/VUIParameters;
    .locals 5

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/h264/model/VUIParameters;-><init>()V

    const-string v1, "VUI: aspect_ratio_info_present_flag"

    .line 2
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio_info_present_flag:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const-string v1, "VUI: aspect_ratio"

    .line 3
    invoke-virtual {p0, v2, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/model/AspectRatio;->fromValue(I)Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    .line 4
    sget-object v3, Lcom/googlecode/mp4parser/h264/model/AspectRatio;->Extended_SAR:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    if-ne v1, v3, :cond_0

    const/16 v1, 0x10

    const-string v3, "VUI: sar_width"

    .line 5
    invoke-virtual {p0, v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->sar_width:I

    const-string v3, "VUI: sar_height"

    .line 6
    invoke-virtual {p0, v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->sar_height:I

    :cond_0
    const-string v1, "VUI: overscan_info_present_flag"

    .line 7
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_info_present_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "VUI: overscan_appropriate_flag"

    .line 8
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_appropriate_flag:Z

    :cond_1
    const-string v1, "VUI: video_signal_type_present_flag"

    .line 9
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_signal_type_present_flag:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    const-string v3, "VUI: video_format"

    .line 10
    invoke-virtual {p0, v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_format:I

    const-string v1, "VUI: video_full_range_flag"

    .line 11
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_full_range_flag:Z

    const-string v1, "VUI: colour_description_present_flag"

    .line 12
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_description_present_flag:Z

    if-eqz v1, :cond_2

    const-string v1, "VUI: colour_primaries"

    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_primaries:I

    const-string v1, "VUI: transfer_characteristics"

    .line 14
    invoke-virtual {p0, v2, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->transfer_characteristics:I

    const-string v1, "VUI: matrix_coefficients"

    .line 15
    invoke-virtual {p0, v2, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->matrix_coefficients:I

    :cond_2
    const-string v1, "VUI: chroma_loc_info_present_flag"

    .line 16
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_loc_info_present_flag:Z

    if-eqz v1, :cond_3

    const-string v1, "VUI chroma_sample_loc_type_top_field"

    .line 17
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_sample_loc_type_top_field:I

    const-string v1, "VUI chroma_sample_loc_type_bottom_field"

    .line 18
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_sample_loc_type_bottom_field:I

    :cond_3
    const-string v1, "VUI: timing_info_present_flag"

    .line 19
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->timing_info_present_flag:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    const-string v2, "VUI: num_units_in_tick"

    .line 20
    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->num_units_in_tick:I

    const-string v2, "VUI: time_scale"

    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->time_scale:I

    const-string v1, "VUI: fixed_frame_rate_flag"

    .line 22
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->fixed_frame_rate_flag:Z

    :cond_4
    const-string v1, "VUI: nal_hrd_parameters_present_flag"

    .line 23
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-static {p0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->readHRDParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    move-result-object v2

    iput-object v2, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    :cond_5
    const-string v2, "VUI: vcl_hrd_parameters_present_flag"

    .line 25
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    invoke-static {p0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->readHRDParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    move-result-object v3

    iput-object v3, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    :cond_6
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    const-string v1, "VUI: low_delay_hrd_flag"

    .line 27
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->low_delay_hrd_flag:Z

    :cond_8
    const-string v1, "VUI: pic_struct_present_flag"

    .line 28
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    const-string v1, "VUI: bitstream_restriction_flag"

    .line 29
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 30
    new-instance v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;-><init>()V

    iput-object v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    const-string v2, "VUI: motion_vectors_over_pic_boundaries_flag"

    .line 31
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->motion_vectors_over_pic_boundaries_flag:Z

    .line 32
    iget-object v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    const-string v2, "VUI max_bytes_per_pic_denom"

    .line 33
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_bytes_per_pic_denom:I

    .line 34
    iget-object v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    const-string v2, "VUI max_bits_per_mb_denom"

    .line 35
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_bits_per_mb_denom:I

    .line 36
    iget-object v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    const-string v2, "VUI log2_max_mv_length_horizontal"

    .line 37
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->log2_max_mv_length_horizontal:I

    .line 38
    iget-object v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    const-string v2, "VUI log2_max_mv_length_vertical"

    .line 39
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->log2_max_mv_length_vertical:I

    .line 40
    iget-object v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    const-string v2, "VUI num_reorder_frames"

    .line 41
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->num_reorder_frames:I

    .line 42
    iget-object v1, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    const-string v2, "VUI max_dec_frame_buffering"

    .line 43
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_dec_frame_buffering:I

    :cond_9
    return-object v0
.end method

.method public static read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
    .locals 5

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;-><init>()V

    const/16 v1, 0x8

    const-string v2, "SPS: profile_idc"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const-string v2, "SPS: constraint_set_0_flag"

    .line 4
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_0_flag:Z

    const-string v2, "SPS: constraint_set_1_flag"

    .line 5
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_1_flag:Z

    const-string v2, "SPS: constraint_set_2_flag"

    .line 6
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_2_flag:Z

    const-string v2, "SPS: constraint_set_3_flag"

    .line 7
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_3_flag:Z

    const/4 v2, 0x4

    const-string v3, "SPS: reserved_zero_4bits"

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    const-string v2, "SPS: level_idc"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    const-string v1, "SPS: seq_parameter_set_id"

    .line 10
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    .line 11
    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x90

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_420:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    iput-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "SPS: chroma_format_idc"

    .line 13
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    .line 14
    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->fromId(I)Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    .line 15
    sget-object v2, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_444:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    if-ne v1, v2, :cond_2

    const-string v1, "SPS: residual_color_transform_flag"

    .line 16
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    :cond_2
    const-string v1, "SPS: bit_depth_luma_minus8"

    .line 17
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    const-string v1, "SPS: bit_depth_chroma_minus8"

    .line 18
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    const-string v1, "SPS: qpprime_y_zero_transform_bypass_flag"

    .line 19
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->qpprime_y_zero_transform_bypass_flag:Z

    const-string v1, "SPS: seq_scaling_matrix_present_lag"

    .line 20
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    invoke-static {v0, p0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->readScalingListMatrix(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V

    :cond_3
    :goto_1
    const-string v1, "SPS: log2_max_frame_num_minus4"

    .line 22
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_frame_num_minus4:I

    const-string v1, "SPS: pic_order_cnt_type"

    .line 23
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-nez v1, :cond_4

    const-string v1, "SPS: log2_max_pic_order_cnt_lsb_minus4"

    .line 24
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const-string v1, "SPS: delta_pic_order_always_zero_flag"

    .line 25
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->delta_pic_order_always_zero_flag:Z

    const-string v1, "SPS: offset_for_non_ref_pic"

    .line 26
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_non_ref_pic:I

    const-string v1, "SPS: offset_for_top_to_bottom_field"

    .line 27
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_top_to_bottom_field:I

    const-string v1, "SPS: num_ref_frames_in_pic_order_cnt_cycle"

    .line 28
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    .line 29
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    const/4 v1, 0x0

    .line 30
    :goto_2
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    if-ge v1, v2, :cond_5

    .line 31
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPS: offsetForRefFrame ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const-string v1, "SPS: num_ref_frames"

    .line 33
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames:I

    const-string v1, "SPS: gaps_in_frame_num_value_allowed_flag"

    .line 34
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->gaps_in_frame_num_value_allowed_flag:Z

    const-string v1, "SPS: pic_width_in_mbs_minus1"

    .line 35
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    const-string v1, "SPS: pic_height_in_map_units_minus1"

    .line 36
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    const-string v1, "SPS: frame_mbs_only_flag"

    .line 37
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-nez v1, :cond_6

    const-string v1, "SPS: mb_adaptive_frame_field_flag"

    .line 38
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->mb_adaptive_frame_field_flag:Z

    :cond_6
    const-string v1, "SPS: direct_8x8_inference_flag"

    .line 39
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->direct_8x8_inference_flag:Z

    const-string v1, "SPS: frame_cropping_flag"

    .line 40
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    if-eqz v1, :cond_7

    const-string v1, "SPS: frame_crop_left_offset"

    .line 41
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    const-string v1, "SPS: frame_crop_right_offset"

    .line 42
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    const-string v1, "SPS: frame_crop_top_offset"

    .line 43
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    const-string v1, "SPS: frame_crop_bottom_offset"

    .line 44
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    :cond_7
    const-string v1, "SPS: vui_parameters_present_flag"

    .line 45
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 46
    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->ReadVUIParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    .line 47
    :cond_8
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readTrailingBits()V

    return-object p0
.end method

.method private static readHRDParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/HRDParameters;
    .locals 4

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/h264/model/HRDParameters;-><init>()V

    const-string v1, "SPS: cpb_cnt_minus1"

    .line 2
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    const/4 v1, 0x4

    const-string v2, "HRD: bit_rate_scale"

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_scale:I

    const-string v2, "HRD: cpb_size_scale"

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_scale:I

    .line 5
    iget v1, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_value_minus1:[I

    add-int/lit8 v2, v1, 0x1

    .line 6
    new-array v2, v2, [I

    iput-object v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_value_minus1:[I

    add-int/lit8 v1, v1, 0x1

    .line 7
    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cbr_flag:[Z

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    if-gt v1, v2, :cond_0

    .line 9
    iget-object v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_value_minus1:[I

    const-string v3, "HRD: bit_rate_value_minus1"

    .line 10
    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 11
    iget-object v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_value_minus1:[I

    const-string v3, "HRD: cpb_size_value_minus1"

    .line 12
    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 13
    iget-object v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cbr_flag:[Z

    const-string v3, "HRD: cbr_flag"

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const-string v2, "HRD: initial_cpb_removal_delay_length_minus1"

    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->initial_cpb_removal_delay_length_minus1:I

    const-string v2, "HRD: cpb_removal_delay_length_minus1"

    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_removal_delay_length_minus1:I

    const-string v2, "HRD: dpb_output_delay_length_minus1"

    .line 16
    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->dpb_output_delay_length_minus1:I

    const-string v2, "HRD: time_offset_length"

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int p0, v1

    iput p0, v0, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    return-object v0
.end method

.method private static readScalingListMatrix(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;-><init>()V

    iput-object v0, p1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    const-string v2, "SPS: seqScalingListPresentFlag"

    .line 2
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    new-array v3, v1, [Lcom/googlecode/mp4parser/h264/model/ScalingList;

    iput-object v3, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    new-array v1, v1, [Lcom/googlecode/mp4parser/h264/model/ScalingList;

    .line 4
    iput-object v1, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    const/16 v1, 0x10

    .line 5
    invoke-static {p0, v1}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->read(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;I)Lcom/googlecode/mp4parser/h264/model/ScalingList;

    move-result-object v1

    aput-object v1, v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, -0x6

    const/16 v3, 0x40

    .line 6
    invoke-static {p0, v3}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->read(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;I)Lcom/googlecode/mp4parser/h264/model/ScalingList;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeHRDParameters(Lcom/googlecode/mp4parser/h264/model/HRDParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    const-string v1, "HRD: cpb_cnt_minus1"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 2
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_scale:I

    int-to-long v0, v0

    const/4 v2, 0x4

    const-string v3, "HRD: bit_rate_scale"

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_scale:I

    int-to-long v0, v0

    const-string v3, "HRD: cpb_size_scale"

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    if-gt v0, v1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_value_minus1:[I

    aget v1, v1, v0

    const-string v2, "HRD: "

    invoke-virtual {p2, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 6
    iget-object v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_value_minus1:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 7
    iget-object v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cbr_flag:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->initial_cpb_removal_delay_length_minus1:I

    int-to-long v0, v0

    const/4 v2, 0x5

    const-string v3, "HRD: initial_cpb_removal_delay_length_minus1"

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 9
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_removal_delay_length_minus1:I

    int-to-long v0, v0

    const-string v3, "HRD: cpb_removal_delay_length_minus1"

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 10
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->dpb_output_delay_length_minus1:I

    int-to-long v0, v0

    const-string v3, "HRD: dpb_output_delay_length_minus1"

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 11
    iget p1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    int-to-long v0, p1

    const-string p1, "HRD: time_offset_length"

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    return-void
.end method

.method private writeVUIParameters(Lcom/googlecode/mp4parser/h264/model/VUIParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio_info_present_flag:Z

    const-string v1, "VUI: aspect_ratio_info_present_flag"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 2
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio_info_present_flag:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/model/AspectRatio;->getValue()I

    move-result v0

    int-to-long v2, v0

    const-string v0, "VUI: aspect_ratio"

    invoke-virtual {p2, v2, v3, v1, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    sget-object v2, Lcom/googlecode/mp4parser/h264/model/AspectRatio;->Extended_SAR:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    if-ne v0, v2, :cond_0

    .line 5
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->sar_width:I

    int-to-long v2, v0

    const/16 v0, 0x10

    const-string v4, "VUI: sar_width"

    invoke-virtual {p2, v2, v3, v0, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 6
    iget v2, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->sar_height:I

    int-to-long v2, v2

    const-string v4, "VUI: sar_height"

    invoke-virtual {p2, v2, v3, v0, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_info_present_flag:Z

    const-string v2, "VUI: overscan_info_present_flag"

    invoke-virtual {p2, v0, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 8
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_info_present_flag:Z

    if-eqz v0, :cond_1

    .line 9
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_appropriate_flag:Z

    const-string v2, "VUI: overscan_appropriate_flag"

    invoke-virtual {p2, v0, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 10
    :cond_1
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_signal_type_present_flag:Z

    const-string v2, "VUI: video_signal_type_present_flag"

    invoke-virtual {p2, v0, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 11
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_signal_type_present_flag:Z

    if-eqz v0, :cond_2

    .line 12
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_format:I

    int-to-long v2, v0

    const/4 v0, 0x3

    const-string v4, "VUI: video_format"

    invoke-virtual {p2, v2, v3, v0, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 13
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_full_range_flag:Z

    const-string v2, "VUI: video_full_range_flag"

    invoke-virtual {p2, v0, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 14
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_description_present_flag:Z

    const-string v2, "VUI: colour_description_present_flag"

    invoke-virtual {p2, v0, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 15
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_description_present_flag:Z

    if-eqz v0, :cond_2

    .line 16
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_primaries:I

    int-to-long v2, v0

    const-string v0, "VUI: colour_primaries"

    invoke-virtual {p2, v2, v3, v1, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 17
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->transfer_characteristics:I

    int-to-long v2, v0

    const-string v0, "VUI: transfer_characteristics"

    invoke-virtual {p2, v2, v3, v1, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 18
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->matrix_coefficients:I

    int-to-long v2, v0

    const-string v0, "VUI: matrix_coefficients"

    invoke-virtual {p2, v2, v3, v1, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 19
    :cond_2
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_loc_info_present_flag:Z

    const-string v1, "VUI: chroma_loc_info_present_flag"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 20
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_loc_info_present_flag:Z

    if-eqz v0, :cond_3

    .line 21
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_sample_loc_type_top_field:I

    const-string v1, "VUI: chroma_sample_loc_type_top_field"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 22
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_sample_loc_type_bottom_field:I

    const-string v1, "VUI: chroma_sample_loc_type_bottom_field"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 23
    :cond_3
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->timing_info_present_flag:Z

    const-string v1, "VUI: timing_info_present_flag"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 24
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->timing_info_present_flag:Z

    if-eqz v0, :cond_4

    .line 25
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->num_units_in_tick:I

    int-to-long v0, v0

    const/16 v2, 0x20

    const-string v3, "VUI: num_units_in_tick"

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 26
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->time_scale:I

    int-to-long v0, v0

    const-string v3, "VUI: time_scale"

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 27
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->fixed_frame_rate_flag:Z

    const-string v1, "VUI: fixed_frame_rate_flag"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 28
    :cond_4
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    const-string v3, "VUI: "

    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 29
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_6

    .line 30
    invoke-direct {p0, v0, p2}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->writeHRDParameters(Lcom/googlecode/mp4parser/h264/model/HRDParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    .line 31
    :cond_6
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 32
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_8

    .line 33
    invoke-direct {p0, v0, p2}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->writeHRDParameters(Lcom/googlecode/mp4parser/h264/model/HRDParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    .line 34
    :cond_8
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_a

    .line 35
    :cond_9
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->low_delay_hrd_flag:Z

    const-string v4, "VUI: low_delay_hrd_flag"

    .line 36
    invoke-virtual {p2, v0, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 37
    :cond_a
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    const-string v4, "VUI: pic_struct_present_flag"

    invoke-virtual {p2, v0, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 38
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    invoke-virtual {p2, v1, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 39
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    if-eqz v0, :cond_c

    .line 40
    iget-boolean v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->motion_vectors_over_pic_boundaries_flag:Z

    const-string v1, "VUI: motion_vectors_over_pic_boundaries_flag"

    .line 41
    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 42
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_bytes_per_pic_denom:I

    const-string v1, "VUI: max_bytes_per_pic_denom"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 43
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_bits_per_mb_denom:I

    const-string v1, "VUI: max_bits_per_mb_denom"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 44
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->log2_max_mv_length_horizontal:I

    const-string v1, "VUI: log2_max_mv_length_horizontal"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 45
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->log2_max_mv_length_vertical:I

    const-string v1, "VUI: log2_max_mv_length_vertical"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 46
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->num_reorder_frames:I

    const-string v1, "VUI: num_reorder_frames"

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 47
    iget-object p1, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget p1, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_dec_frame_buffering:I

    const-string v0, "VUI: max_dec_frame_buffering"

    invoke-virtual {p2, p1, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeqParameterSet{ \n        pic_order_cnt_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        field_pic_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->field_pic_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        delta_pic_order_always_zero_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->delta_pic_order_always_zero_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        weighted_pred_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->weighted_pred_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        weighted_bipred_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->weighted_bipred_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        entropy_coding_mode_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->entropy_coding_mode_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        mb_adaptive_frame_field_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->mb_adaptive_frame_field_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        direct_8x8_inference_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->direct_8x8_inference_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        chroma_format_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \n        log2_max_frame_num_minus4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_frame_num_minus4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        log2_max_pic_order_cnt_lsb_minus4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        pic_height_in_map_units_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        pic_width_in_mbs_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        bit_depth_luma_minus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        bit_depth_chroma_minus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        qpprime_y_zero_transform_bypass_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->qpprime_y_zero_transform_bypass_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        profile_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        constraint_set_0_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_0_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        constraint_set_1_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_1_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        constraint_set_2_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_2_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        constraint_set_3_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_3_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        level_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        seq_parameter_set_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        residual_color_transform_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        offset_for_non_ref_pic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_non_ref_pic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        offset_for_top_to_bottom_field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_top_to_bottom_field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        num_ref_frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        gaps_in_frame_num_value_allowed_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->gaps_in_frame_num_value_allowed_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        frame_mbs_only_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        frame_cropping_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \n        frame_crop_left_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        frame_crop_right_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        frame_crop_top_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        frame_crop_bottom_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n        offsetForRefFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \n        vuiParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \n        scalingMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \n        num_ref_frames_in_pic_order_cnt_cycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    int-to-long v1, p1

    const/16 p1, 0x8

    const-string v3, "SPS: profile_idc"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 3
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_0_flag:Z

    const-string v2, "SPS: constraint_set_0_flag"

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_1_flag:Z

    const-string v2, "SPS: constraint_set_1_flag"

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_2_flag:Z

    const-string v2, "SPS: constraint_set_2_flag"

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_3_flag:Z

    const-string v2, "SPS: constraint_set_3_flag"

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x4

    const-string v4, "SPS: reserved"

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    int-to-long v1, v1

    const-string v3, "SPS: level_idc"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    const-string v2, "SPS: seq_parameter_set_id"

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 10
    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "SPS: "

    const/16 v5, 0x64

    if-eq v1, v5, :cond_0

    const/16 v5, 0x6e

    if-eq v1, v5, :cond_0

    const/16 v5, 0x7a

    if-eq v1, v5, :cond_0

    const/16 v5, 0x90

    if-ne v1, v5, :cond_7

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v1

    const-string v5, "SPS: chroma_format_idc"

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    sget-object v5, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_444:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    if-ne v1, v5, :cond_1

    .line 13
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    const-string v5, "SPS: residual_color_transform_flag"

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 14
    :cond_1
    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 15
    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 16
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->qpprime_y_zero_transform_bypass_flag:Z

    const-string v5, "SPS: qpprime_y_zero_transform_bypass_flag"

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_7

    const/4 v5, 0x6

    if-ge v1, v5, :cond_4

    .line 19
    iget-object v5, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    invoke-virtual {v0, v5, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 20
    iget-object v5, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v6, v5, v1

    if-eqz v6, :cond_6

    .line 21
    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->write(Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    goto :goto_4

    .line 22
    :cond_4
    iget-object v5, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v6, v1, -0x6

    aget-object v5, v5, v6

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    invoke-virtual {v0, v5, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 23
    iget-object v5, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v7, v5, v6

    if-eqz v7, :cond_6

    .line 24
    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->write(Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_7
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_frame_num_minus4:I

    const-string v1, "SPS: log2_max_frame_num_minus4"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 26
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    const-string v1, "SPS: pic_order_cnt_type"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 27
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-nez p1, :cond_8

    .line 28
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    const-string v1, "SPS: log2_max_pic_order_cnt_lsb_minus4"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    goto :goto_6

    :cond_8
    if-ne p1, v3, :cond_9

    .line 29
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->delta_pic_order_always_zero_flag:Z

    const-string v1, "SPS: delta_pic_order_always_zero_flag"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 30
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_non_ref_pic:I

    const-string v1, "SPS: offset_for_non_ref_pic"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 31
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_top_to_bottom_field:I

    const-string v1, "SPS: offset_for_top_to_bottom_field"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    array-length p1, p1

    invoke-virtual {v0, p1, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    move p1, v2

    .line 33
    :goto_5
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    array-length v5, v1

    if-ge p1, v5, :cond_9

    .line 34
    aget v1, v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 35
    :cond_9
    :goto_6
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames:I

    const-string v1, "SPS: num_ref_frames"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 36
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->gaps_in_frame_num_value_allowed_flag:Z

    const-string v1, "SPS: gaps_in_frame_num_value_allowed_flag"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 37
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    const-string v1, "SPS: pic_width_in_mbs_minus1"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 38
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    const-string v1, "SPS: pic_height_in_map_units_minus1"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 39
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    const-string v1, "SPS: frame_mbs_only_flag"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 40
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-nez p1, :cond_a

    .line 41
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->mb_adaptive_frame_field_flag:Z

    const-string v1, "SPS: mb_adaptive_frame_field_flag"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 42
    :cond_a
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->direct_8x8_inference_flag:Z

    const-string v1, "SPS: direct_8x8_inference_flag"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 43
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    const-string v1, "SPS: frame_cropping_flag"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 44
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    if-eqz p1, :cond_b

    .line 45
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    const-string v1, "SPS: frame_crop_left_offset"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 46
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    const-string v1, "SPS: frame_crop_right_offset"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 47
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    const-string v1, "SPS: frame_crop_top_offset"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 48
    iget p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    const-string v1, "SPS: frame_crop_bottom_offset"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 49
    :cond_b
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz p1, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {v0, v2, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz p1, :cond_d

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->writeVUIParameters(Lcom/googlecode/mp4parser/h264/model/VUIParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    .line 52
    :cond_d
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeTrailingBits()V

    return-void
.end method
