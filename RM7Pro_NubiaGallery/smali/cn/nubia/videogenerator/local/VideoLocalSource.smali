.class public Lcn/nubia/videogenerator/local/VideoLocalSource;
.super Lcn/nubia/videogenerator/local/VideoSourceBase;
.source "VideoLocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoLocalSource"


# instance fields
.field private mReadTask:Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;

.field private step:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcn/nubia/videogenerator/local/VideoSourceBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->step:J

    .line 21
    iput-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mPath:Ljava/lang/String;

    .line 22
    new-instance p1, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;

    invoke-direct {p1, p0}, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;-><init>(Lcn/nubia/videogenerator/local/VideoLocalSource;)V

    iput-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mReadTask:Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/videogenerator/local/VideoLocalSource;J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcn/nubia/videogenerator/local/VideoLocalSource;->getDecoderFront(J)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/videogenerator/local/VideoLocalSource;J)I
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcn/nubia/videogenerator/local/VideoLocalSource;->getFront(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/videogenerator/local/VideoLocalSource;)J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->step:J

    return-wide v0
.end method

.method static synthetic access$202(Lcn/nubia/videogenerator/local/VideoLocalSource;J)J
    .locals 0

    .line 15
    iput-wide p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->step:J

    return-wide p1
.end method

.method private getDecoderFront(J)V
    .locals 12

    const-string v0, "VideoLocalSource"

    const-string v1, "start precise adjustment "

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 72
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->IFramePts:J

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFramePts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->IFramePts:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-wide v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->IFramePts:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    .line 75
    iput-wide v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->IFramePts:J

    .line 77
    :cond_0
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const/high16 v1, 0x100000

    .line 78
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move v3, v2

    :goto_0
    const/16 v4, 0x12c

    if-ge v3, v4, :cond_6

    .line 81
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 82
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v1, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x4

    if-ne v5, v6, :cond_1

    const-string p1, "file is eos"

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput v2, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 86
    iput v7, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 87
    iget-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    if-eqz p1, :cond_6

    .line 88
    iget-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    invoke-interface {p1, v1, v4}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_2

    .line 92
    :cond_1
    iget-boolean v6, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 95
    :cond_2
    iget-object v6, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTime = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "realTime =  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-wide v10, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->IFramePts:J

    cmp-long v6, v8, v10

    if-ltz v6, :cond_4

    .line 100
    iput v2, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 101
    iput v7, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 102
    iget-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    invoke-interface {p1, v1, v4}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_3
    const-string p1, "precise adjustment is over"

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 109
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 111
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 113
    :goto_1
    iput v2, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 114
    iget-object v6, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 115
    iput v5, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send decoder data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    if-eqz v5, :cond_5

    .line 119
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    invoke-interface {v5, v1, v4}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 121
    :cond_5
    iget-object v4, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private getFront(J)I
    .locals 5

    const-string v0, "VideoLocalSource"

    const-string v1, "start precise adjustment "

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 43
    iget-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->IFramePts:J

    .line 44
    iget p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mTrimType:I

    const/4 p2, 0x0

    if-nez p1, :cond_2

    const/high16 p1, 0x100000

    .line 45
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 46
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 47
    iget-wide v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->IFramePts:J

    iget-wide v3, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mStartMs:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->step:J

    .line 48
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 50
    :try_start_0
    iget-object v2, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 54
    :goto_0
    iput p2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 55
    iget-wide v2, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mVideoPts:J

    iput-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 56
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 57
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_1

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mVideoDuration:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v2, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v1, p1, v0, v2}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    iget-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    invoke-interface {p1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputError()V

    const/4 p1, -0x1

    return p1

    :cond_2
    :goto_2
    return p2
.end method


# virtual methods
.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExistVideoHead:Z

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mFormat:Landroid/media/MediaFormat;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mReadTask:Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;

    const-string v2, "VideoLocalSource"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    return-void
.end method
