.class public Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;
.super Ljava/lang/Object;
.source "VUIParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/h264/model/VUIParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitstreamRestriction"
.end annotation


# instance fields
.field public log2_max_mv_length_horizontal:I

.field public log2_max_mv_length_vertical:I

.field public max_bits_per_mb_denom:I

.field public max_bytes_per_pic_denom:I

.field public max_dec_frame_buffering:I

.field public motion_vectors_over_pic_boundaries_flag:Z

.field public num_reorder_frames:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
