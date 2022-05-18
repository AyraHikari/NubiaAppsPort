.class public Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;
    }
.end annotation


# instance fields
.field public bottom_field_flag:Z

.field public colour_plane_id:I

.field public delta_pic_order_cnt_bottom:I

.field public field_pic_flag:Z

.field public first_mb_in_slice:I

.field public frame_num:I

.field public idr_pic_id:I

.field public pic_order_cnt_lsb:I

.field public pic_parameter_set_id:I

.field public slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->field_pic_flag:Z

    .line 3
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->bottom_field_flag:Z

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 5
    new-instance v0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    const-string p1, "SliceHeader: first_mb_in_slice"

    .line 6
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->first_mb_in_slice:I

    const-string p1, "SliceHeader: slice_type"

    .line 7
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 8
    :pswitch_0
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->SI:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->SP:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    goto :goto_0

    .line 10
    :pswitch_2
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->I:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    goto :goto_0

    .line 11
    :pswitch_3
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->B:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    goto :goto_0

    .line 12
    :pswitch_4
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->P:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    :goto_0
    const-string p1, "SliceHeader: pic_parameter_set_id"

    .line 13
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->pic_parameter_set_id:I

    .line 14
    iget-boolean p1, p2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    const-string v1, "SliceHeader: colour_plane_id"

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->colour_plane_id:I

    .line 16
    :cond_0
    iget p1, p2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_frame_num_minus4:I

    add-int/lit8 p1, p1, 0x4

    const-string v1, "SliceHeader: frame_num"

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->frame_num:I

    .line 17
    iget-boolean p1, p2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-nez p1, :cond_1

    const-string p1, "SliceHeader: field_pic_flag"

    .line 18
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->field_pic_flag:Z

    if-eqz p1, :cond_1

    const-string p1, "SliceHeader: bottom_field_flag"

    .line 19
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->bottom_field_flag:Z

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "SliceHeader: idr_pic_id"

    .line 20
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->idr_pic_id:I

    .line 21
    iget p1, p2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-nez p1, :cond_2

    .line 22
    iget p1, p2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    add-int/lit8 p1, p1, 0x4

    const-string p2, "SliceHeader: pic_order_cnt_lsb"

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->pic_order_cnt_lsb:I

    .line 23
    iget-boolean p1, p3, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_order_present_flag:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->field_pic_flag:Z

    if-nez p1, :cond_2

    const-string p1, "SliceHeader: delta_pic_order_cnt_bottom"

    .line 24
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->delta_pic_order_cnt_bottom:I

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SliceHeader{first_mb_in_slice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->first_mb_in_slice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slice_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pic_parameter_set_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->pic_parameter_set_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colour_plane_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->colour_plane_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frame_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->frame_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", field_pic_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->field_pic_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bottom_field_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->bottom_field_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", idr_pic_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->idr_pic_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pic_order_cnt_lsb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->pic_order_cnt_lsb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delta_pic_order_cnt_bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->delta_pic_order_cnt_bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
