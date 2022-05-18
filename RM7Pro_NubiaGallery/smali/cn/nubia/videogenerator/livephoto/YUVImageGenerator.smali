.class public Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;
.super Ljava/lang/Object;
.source "YUVImageGenerator.java"

# interfaces
.implements Lcn/nubia/videogenerator/livephoto/PreviewDataReader$PreviewFrameCallback;


# static fields
.field public static final STATE_RELEASED:I = 0x3

.field public static final STATE_STARTED:I = 0x1

.field public static final STATE_STOPED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "YUVImageGenerator"


# instance fields
.field private mHeight:I

.field mIsGeneratorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOutputCacheDurationMs:I

.field private mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputQueueLength:I

.field private mPreviewDataReader:Lcn/nubia/videogenerator/livephoto/PreviewDataReader;

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mIsGeneratorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mState:I

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mIsGeneratorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onPreviewFrame([B)V
    .locals 5

    .line 52
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mIsGeneratorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcn/nubia/videogenerator/common/AVFrame;

    invoke-direct {v0}, Lcn/nubia/videogenerator/common/AVFrame;-><init>()V

    .line 54
    iput-object p1, v0, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    const/4 v1, 0x1

    .line 55
    iput v1, v0, Lcn/nubia/videogenerator/common/AVFrame;->frameType:I

    .line 56
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 57
    iget-object v2, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 58
    iget-object v1, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 59
    iget-object v1, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    array-length p1, p1

    iput p1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 60
    iget-object p1, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 61
    iget-object p1, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    iget v1, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mOutputQueueLength:I

    if-le p1, v1, :cond_0

    .line 62
    iget-object p1, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object p1, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setCamera(Lcn/nubia/videogenerator/codec/VideoParams;Lcn/nubia/videogenerator/livephoto/PreviewDataReader;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/VideoParams;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mWidth:I

    .line 37
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/VideoParams;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mHeight:I

    .line 38
    iput-object p2, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mPreviewDataReader:Lcn/nubia/videogenerator/livephoto/PreviewDataReader;

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "YUVImageGenerator w/h"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "YUVImageGenerator"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOutputCacheDuration(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mOutputCacheDurationMs:I

    return-void
.end method

.method public setOutputQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public start()V
    .locals 4

    .line 72
    iget v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mOutputCacheDurationMs:I

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mOutputQueueLength:I

    .line 73
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mIsGeneratorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mPreviewDataReader:Lcn/nubia/videogenerator/livephoto/PreviewDataReader;

    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/livephoto/PreviewDataReader;->setPreviewFrameCallback(Lcn/nubia/videogenerator/livephoto/PreviewDataReader$PreviewFrameCallback;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mIsGeneratorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->mPreviewDataReader:Lcn/nubia/videogenerator/livephoto/PreviewDataReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/PreviewDataReader;->setPreviewFrameCallback(Lcn/nubia/videogenerator/livephoto/PreviewDataReader$PreviewFrameCallback;)V

    return-void
.end method
