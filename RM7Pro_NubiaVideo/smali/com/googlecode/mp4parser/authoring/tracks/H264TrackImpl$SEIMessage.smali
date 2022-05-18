.class public Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SEIMessage"
.end annotation


# instance fields
.field clock_timestamp_flag:Z

.field cnt_dropped_flag:I

.field counting_type:I

.field cpb_removal_delay:I

.field ct_type:I

.field discontinuity_flag:I

.field dpb_removal_delay:I

.field full_timestamp_flag:I

.field hours_value:I

.field minutes_value:I

.field n_frames:I

.field nuit_field_based_flag:I

.field payloadSize:I

.field payloadType:I

.field pic_struct:I

.field removal_delay_flag:Z

.field seconds_value:I

.field sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;

.field time_offset:I

.field time_offset_length:I


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    .line 3
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 4
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->available()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_e

    .line 7
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    .line 8
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    .line 10
    iget v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    goto :goto_1

    .line 12
    :cond_0
    iget v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    add-int/2addr v7, v5

    iput v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    if-ne v5, v6, :cond_1

    .line 14
    iget v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v7, v5

    iput v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    goto :goto_2

    .line 16
    :cond_1
    iget v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    sub-int v5, v3, v4

    if-lt v5, v6, :cond_c

    .line 17
    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 18
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz v5, :cond_a

    iget-object v8, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v8, :cond_2

    iget-object v8, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v8, :cond_2

    iget-boolean v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v5, :cond_a

    .line 19
    :cond_2
    new-array v5, v6, [B

    move-object/from16 v6, p2

    .line 20
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    .line 21
    iget v8, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v4, v8

    .line 22
    new-instance v8, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    .line 23
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v9, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v9, :cond_4

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v5, :cond_3

    goto :goto_3

    .line 24
    :cond_3
    iput-boolean v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    goto :goto_4

    .line 25
    :cond_4
    :goto_3
    iput-boolean v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    .line 26
    iget v5, v9, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_removal_delay_length_minus1:I

    add-int/2addr v5, v7

    const-string v9, "SEI: cpb_removal_delay"

    invoke-virtual {v8, v5, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->cpb_removal_delay:I

    .line 27
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->dpb_output_delay_length_minus1:I

    add-int/2addr v5, v7

    const-string v9, "SEI: dpb_removal_delay"

    invoke-virtual {v8, v5, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    .line 28
    :goto_4
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-boolean v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v5, :cond_d

    const/4 v5, 0x4

    const-string v9, "SEI: pic_struct"

    .line 29
    invoke-virtual {v8, v5, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->pic_struct:I

    const/4 v9, 0x2

    packed-switch v5, :pswitch_data_0

    move v5, v7

    goto :goto_5

    :pswitch_0
    const/4 v5, 0x3

    goto :goto_5

    :pswitch_1
    move v5, v9

    :goto_5
    move v10, v1

    :goto_6
    if-ge v10, v5, :cond_d

    .line 30
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pic_timing SEI: clock_timestamp_flag["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    if-eqz v11, :cond_9

    const-string v11, "pic_timing SEI: ct_type"

    .line 31
    invoke-virtual {v8, v9, v11}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->ct_type:I

    const-string v11, "pic_timing SEI: nuit_field_based_flag"

    .line 32
    invoke-virtual {v8, v7, v11}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->nuit_field_based_flag:I

    const/4 v11, 0x5

    const-string v12, "pic_timing SEI: counting_type"

    .line 33
    invoke-virtual {v8, v11, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->counting_type:I

    const-string v12, "pic_timing SEI: full_timestamp_flag"

    .line 34
    invoke-virtual {v8, v7, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    const-string v12, "pic_timing SEI: discontinuity_flag"

    .line 35
    invoke-virtual {v8, v7, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->discontinuity_flag:I

    const-string v12, "pic_timing SEI: cnt_dropped_flag"

    .line 36
    invoke-virtual {v8, v7, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->cnt_dropped_flag:I

    const/16 v12, 0x8

    const-string v13, "pic_timing SEI: n_frames"

    .line 37
    invoke-virtual {v8, v12, v13}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    .line 38
    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    const-string v13, "pic_timing SEI: hours_value"

    const-string v14, "pic_timing SEI: minutes_value"

    const-string v15, "pic_timing SEI: seconds_value"

    const/4 v1, 0x6

    if-ne v12, v7, :cond_5

    .line 39
    invoke-virtual {v8, v1, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->seconds_value:I

    .line 40
    invoke-virtual {v8, v1, v14}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->minutes_value:I

    .line 41
    invoke-virtual {v8, v11, v13}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->hours_value:I

    goto :goto_7

    :cond_5
    const-string v12, "pic_timing SEI: seconds_flag"

    .line 42
    invoke-virtual {v8, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 43
    invoke-virtual {v8, v1, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->seconds_value:I

    const-string v12, "pic_timing SEI: minutes_flag"

    .line 44
    invoke-virtual {v8, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 45
    invoke-virtual {v8, v1, v14}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->minutes_value:I

    const-string v1, "pic_timing SEI: hours_flag"

    .line 46
    invoke-virtual {v8, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 47
    invoke-virtual {v8, v11, v13}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->hours_value:I

    .line 48
    :cond_6
    :goto_7
    iget-object v1, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v11, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    const/16 v12, 0x18

    if-eqz v11, :cond_7

    .line 49
    iget v1, v11, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset_length:I

    goto :goto_8

    .line 50
    :cond_7
    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v1, :cond_8

    .line 51
    iget v1, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset_length:I

    goto :goto_8

    .line 52
    :cond_8
    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset_length:I

    :goto_8
    const-string v1, "pic_timing SEI: time_offset"

    .line 53
    invoke-virtual {v8, v12, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset:I

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_a
    move-object/from16 v6, p2

    const/4 v1, 0x0

    .line 54
    :goto_9
    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    if-ge v1, v5, :cond_d

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 v6, p2

    const/4 v1, 0x0

    .line 56
    :goto_a
    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    if-ge v1, v5, :cond_d

    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_c
    move-object/from16 v6, p2

    move v4, v3

    .line 58
    :cond_d
    invoke-static {}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEIMessage{payloadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v2, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cpb_removal_delay="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->cpb_removal_delay:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dpb_removal_delay="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-boolean v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pic_struct="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->pic_struct:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ct_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->ct_type:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", nuit_field_based_flag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->nuit_field_based_flag:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", counting_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->counting_type:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", full_timestamp_flag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", discontinuity_flag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->discontinuity_flag:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cnt_dropped_flag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->cnt_dropped_flag:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", n_frames="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", seconds_value="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->seconds_value:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minutes_value="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->minutes_value:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hours_value="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->hours_value:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", time_offset_length="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset_length:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", time_offset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
