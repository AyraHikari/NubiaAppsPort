.class public Lcn/nubia/videogenerator/common/AVFrame;
.super Ljava/lang/Object;
.source "AVFrame.java"


# static fields
.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TYPE_SUBTILE:I = 0x4

.field public static final MEDIA_TYPE_VIDEO:I = 0x1


# instance fields
.field public data:[B

.field public frameType:I

.field public info:Landroid/media/MediaCodec$BufferInfo;

.field public isBeginOfStream:Z

.field public isEndOfStream:Z

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 10
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcn/nubia/videogenerator/common/AVFrame;->frameType:I

    .line 14
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->mimeType:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 17
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    .line 18
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->mimeType:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcn/nubia/videogenerator/common/AVFrame;->frameType:I

    return-void
.end method

.method public constructor <init>([BLandroid/media/MediaCodec$BufferInfo;I)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 10
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcn/nubia/videogenerator/common/AVFrame;->frameType:I

    .line 14
    iput-object v0, p0, Lcn/nubia/videogenerator/common/AVFrame;->mimeType:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 24
    iput-object p1, p0, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    .line 25
    iput p3, p0, Lcn/nubia/videogenerator/common/AVFrame;->frameType:I

    return-void
.end method
