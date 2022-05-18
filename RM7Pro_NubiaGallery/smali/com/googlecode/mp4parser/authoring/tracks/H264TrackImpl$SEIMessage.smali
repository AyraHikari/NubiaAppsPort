.class public Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;
.super Ljava/lang/Object;
.source "H264TrackImpl.java"


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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 587
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 563
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    .line 564
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 588
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 589
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    .line 590
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->available()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_e

    .line 593
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    .line 594
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 595
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    .line 598
    iget v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    .line 599
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    goto :goto_1

    .line 602
    :cond_0
    iget v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    add-int/2addr v7, v5

    iput v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    .line 603
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    if-ne v5, v6, :cond_1

    .line 607
    iget v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v7, v5

    iput v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 608
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    goto :goto_2

    .line 611
    :cond_1
    iget v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    sub-int v5, v3, v4

    if-lt v5, v6, :cond_c

    .line 613
    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 614
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz v5, :cond_a

    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-boolean v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v5, :cond_a

    .line 615
    :cond_2
    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    new-array v5, v5, [B

    move-object/from16 v7, p2

    .line 616
    invoke-virtual {v7, v5}, Ljava/io/InputStream;->read([B)I

    .line 617
    iget v8, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v4, v8

    .line 618
    new-instance v8, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    .line 619
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v5, :cond_4

    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v5, :cond_3

    goto :goto_3

    .line 624
    :cond_3
    iput-boolean v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    goto :goto_4

    .line 620
    :cond_4
    :goto_3
    iput-boolean v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    .line 621
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_removal_delay_length_minus1:I

    add-int/2addr v5, v6

    const-string v9, "SEI: cpb_removal_delay"

    invoke-virtual {v8, v5, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->cpb_removal_delay:I

    .line 622
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->dpb_output_delay_length_minus1:I

    add-int/2addr v5, v6

    const-string v9, "SEI: dpb_removal_delay"

    invoke-virtual {v8, v5, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    .line 626
    :goto_4
    iget-object v5, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-boolean v5, v5, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v5, :cond_d

    const/4 v5, 0x4

    const-string v9, "SEI: pic_struct"

    .line 627
    invoke-virtual {v8, v5, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->pic_struct:I

    const/4 v9, 0x2

    packed-switch v5, :pswitch_data_0

    move v5, v6

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

    .line 650
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pic_timing SEI: clock_timestamp_flag["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    if-eqz v11, :cond_9

    const-string v11, "pic_timing SEI: ct_type"

    .line 652
    invoke-virtual {v8, v9, v11}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->ct_type:I

    const-string v11, "pic_timing SEI: nuit_field_based_flag"

    .line 653
    invoke-virtual {v8, v6, v11}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->nuit_field_based_flag:I

    const/4 v11, 0x5

    const-string v12, "pic_timing SEI: counting_type"

    .line 654
    invoke-virtual {v8, v11, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->counting_type:I

    const-string v12, "pic_timing SEI: full_timestamp_flag"

    .line 655
    invoke-virtual {v8, v6, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    const-string v12, "pic_timing SEI: discontinuity_flag"

    .line 656
    invoke-virtual {v8, v6, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->discontinuity_flag:I

    const-string v12, "pic_timing SEI: cnt_dropped_flag"

    .line 657
    invoke-virtual {v8, v6, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->cnt_dropped_flag:I

    const/16 v12, 0x8

    const-string v13, "pic_timing SEI: n_frames"

    .line 658
    invoke-virtual {v8, v12, v13}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    .line 659
    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    const-string v13, "pic_timing SEI: hours_value"

    const-string v14, "pic_timing SEI: minutes_value"

    const-string v15, "pic_timing SEI: seconds_value"

    const/4 v1, 0x6

    if-ne v12, v6, :cond_5

    .line 660
    invoke-virtual {v8, v1, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->seconds_value:I

    .line 661
    invoke-virtual {v8, v1, v14}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->minutes_value:I

    .line 662
    invoke-virtual {v8, v11, v13}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->hours_value:I

    goto :goto_7

    :cond_5
    const-string v12, "pic_timing SEI: seconds_flag"

    .line 664
    invoke-virtual {v8, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 665
    invoke-virtual {v8, v1, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->seconds_value:I

    const-string v12, "pic_timing SEI: minutes_flag"

    .line 666
    invoke-virtual {v8, v12}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 667
    invoke-virtual {v8, v1, v14}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->minutes_value:I

    const-string v1, "pic_timing SEI: hours_flag"

    .line 668
    invoke-virtual {v8, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 669
    invoke-virtual {v8, v11, v13}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->hours_value:I

    .line 675
    :cond_6
    :goto_7
    iget-object v1, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    const/16 v11, 0x18

    if-eqz v1, :cond_7

    .line 676
    iget-object v1, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v1, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset_length:I

    goto :goto_8

    .line 677
    :cond_7
    iget-object v1, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v1, :cond_8

    .line 678
    iget-object v1, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v1, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset_length:I

    goto :goto_8

    .line 680
    :cond_8
    iput v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset_length:I

    :goto_8
    const-string v1, "pic_timing SEI: time_offset"

    .line 682
    invoke-virtual {v8, v11, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset:I

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_a
    move-object/from16 v7, p2

    const/4 v1, 0x0

    .line 689
    :goto_9
    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    if-ge v1, v5, :cond_d

    .line 690
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 v7, p2

    const/4 v1, 0x0

    .line 695
    :goto_a
    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    if-ge v1, v5, :cond_d

    .line 696
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_c
    move-object/from16 v7, p2

    move v4, v3

    .line 703
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

    nop

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

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEIMessage{payloadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->payloadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 713
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v1, :cond_1

    .line 715
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpb_removal_delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->cpb_removal_delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dpb_removal_delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-boolean v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v1, :cond_2

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pic_struct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->pic_struct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    if-eqz v1, :cond_2

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ct_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->ct_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nuit_field_based_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->nuit_field_based_flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", counting_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->counting_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", full_timestamp_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discontinuity_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->discontinuity_flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnt_dropped_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->cnt_dropped_flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", n_frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seconds_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->seconds_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutes_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->minutes_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hours_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->hours_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time_offset_length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->time_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
