.class public Lcn/nubia/videogenerator/codec/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/InputBufferFiller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/codec/Encoder$EncoderTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Encoder"


# instance fields
.field private isEndFrame:Z

.field private isFirstFrame:Z

.field private mAlignVideoHeight:I

.field private mAlignVideoWidth:I

.field private mAudioParams:Lcn/nubia/videogenerator/codec/AudioParams;

.field private mAudioPts:J

.field private mEncodFinishFrameCount:I

.field private mEncodWaitFrameCount:I

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderEndFlag:Z

.field private mEndChangePos:J

.field private mFameInterval:J

.field private mImSlomoVideo:Z

.field private mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLock:Ljava/lang/Object;

.field private mMimeType:Ljava/lang/String;

.field private mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

.field private mPresentationTimeUs:J

.field private mRender:Lcn/nubia/videogenerator/codec/CodecRender;

.field private mSkipCount:I

.field private mStartChangePos:J

.field private mSurface:Landroid/view/Surface;

.field private mVideoFrameSize:I

.field private mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

.field private mVideoPts:J


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/codec/AudioParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    .line 28
    iput-wide v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->mFameInterval:J

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->isFirstFrame:Z

    .line 38
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->isEndFrame:Z

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mPresentationTimeUs:J

    .line 40
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoPts:J

    .line 41
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mStartChangePos:J

    .line 42
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEndChangePos:J

    .line 44
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAudioPts:J

    .line 46
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    .line 47
    iput v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    .line 48
    iput v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodFinishFrameCount:I

    const/16 v3, 0x8

    .line 49
    iput v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSkipCount:I

    .line 50
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoderEndFlag:Z

    .line 51
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mImSlomoVideo:Z

    .line 71
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAudioParams:Lcn/nubia/videogenerator/codec/AudioParams;

    .line 72
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/AudioParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/AudioParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    .line 75
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/AudioParams;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Encoder"

    const-string v0, "create Encoder fail"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->init()V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/videogenerator/codec/VideoParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    .line 28
    iput-wide v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->mFameInterval:J

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->isFirstFrame:Z

    .line 38
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->isEndFrame:Z

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mPresentationTimeUs:J

    .line 40
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoPts:J

    .line 41
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mStartChangePos:J

    .line 42
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEndChangePos:J

    .line 44
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAudioPts:J

    .line 46
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    .line 47
    iput v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    .line 48
    iput v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodFinishFrameCount:I

    const/16 v3, 0x8

    .line 49
    iput v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSkipCount:I

    .line 50
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoderEndFlag:Z

    .line 51
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mImSlomoVideo:Z

    .line 54
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    .line 55
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/VideoParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/VideoParams;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/VideoParams;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoFrameSize:I

    .line 57
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->calculateVideoAlignSize()V

    .line 58
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/VideoParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    .line 59
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/VideoParams;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object p1

    .line 60
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/VideoParams;->getMtkHighFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "recorder"

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    :cond_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/VideoParams;->getMtkSlowFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enc-nonRefP"

    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    :cond_1
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 67
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/videogenerator/codec/Encoder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->startEncode()V

    return-void
.end method

.method private calculateVideoAlignSize()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/VideoParams;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoWidth:I

    .line 187
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 189
    iput v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoWidth:I

    .line 192
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/VideoParams;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoHeight:I

    .line 193
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 195
    iput v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoHeight:I

    :cond_1
    return-void
.end method

.method private drainEncoder(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "Encoder"

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sending EOS to encoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 258
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 263
    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 265
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_1
    iget-object v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 267
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 268
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v1, -0x1

    if-ne v2, v1, :cond_4

    .line 271
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_f

    .line 272
    iget v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_2
    if-nez p1, :cond_3

    .line 275
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_3
    iget v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_4
    const/4 v1, -0x2

    if-ne v2, v1, :cond_5

    .line 281
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_2
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 283
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    iget-wide v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mPresentationTimeUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 285
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/codec/Encoder;->notifyOutputFormatChanged(Landroid/media/MediaFormat;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 283
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    if-gez v2, :cond_6

    const-string v0, "Encoder"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_6
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    .line 291
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 292
    :try_start_4
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 294
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 295
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 300
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 301
    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 303
    :cond_7
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    .line 304
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 307
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    const-string v6, "video/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 308
    iget-wide v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mPresentationTimeUs:J

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 309
    iget-wide v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mPresentationTimeUs:J

    iget-wide v8, p0, Lcn/nubia/videogenerator/codec/Encoder;->mFameInterval:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mPresentationTimeUs:J

    .line 310
    invoke-direct {p0, v1, v0}, Lcn/nubia/videogenerator/codec/Encoder;->notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 311
    :cond_8
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 312
    iget-wide v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAudioPts:J

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 313
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->getMuxFlags()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 314
    iget-wide v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAudioPts:J

    const-wide/32 v8, 0x3d090000

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAudioParams:Lcn/nubia/videogenerator/codec/AudioParams;

    .line 315
    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/AudioParams;->getSampleRate()I

    move-result v3

    int-to-long v10, v3

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAudioPts:J

    .line 317
    :cond_9
    invoke-direct {p0, v1, v0}, Lcn/nubia/videogenerator/codec/Encoder;->notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 319
    :cond_a
    :goto_1
    iget v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodFinishFrameCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodFinishFrameCount:I

    .line 323
    :cond_b
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_5
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 325
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 326
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    if-nez p1, :cond_c

    const-string p1, "Encoder"

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reached end of stream unexpectedly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    const-string p1, "Encoder"

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end of stream reached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_2
    iget-boolean p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoderEndFlag:Z

    if-eqz p1, :cond_d

    .line 333
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->notifyOutputComplete()V

    .line 335
    :cond_d
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    .line 338
    :cond_e
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodFinishFrameCount:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    const-string v1, "video/"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Encoder"

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " encoder data is over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_3
    return-void

    :catchall_2
    move-exception p1

    .line 325
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 297
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoderOutputBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p1

    .line 294
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 267
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1
.end method

.method private encodeData()V
    .locals 2

    .line 376
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->queueInputBuffer()V

    .line 378
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->isEndFrame:Z

    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/codec/Encoder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 382
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    invoke-interface {v0}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputError()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getMuxFlags()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    invoke-interface {v0}, Lcn/nubia/videogenerator/common/OutputListener;->isMuxerStarted()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private declared-synchronized notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyOutputComplete()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOutputFormatChanged format changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encoder"

    .line 363
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private queueInputBuffer()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->isFirstFrame:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->getMuxFlags()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_5

    const/4 v1, 0x0

    .line 206
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->isFirstFrame:Z

    .line 207
    iget-object v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/videogenerator/common/AVFrame;

    .line 208
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 212
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    array-length v4, v4

    iget v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoFrameSize:I

    if-le v4, v6, :cond_3

    .line 216
    iget v4, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoWidth:I

    iget-object v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v6}, Lcn/nubia/videogenerator/codec/VideoParams;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    :goto_0
    if-ge v1, v4, :cond_1

    .line 218
    iget-object v6, v2, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    iget-object v7, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v7}, Lcn/nubia/videogenerator/codec/VideoParams;->getWidth()I

    move-result v7

    invoke-virtual {v3, v6, v1, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 217
    iget v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoWidth:I

    add-int/2addr v1, v6

    goto :goto_0

    .line 221
    :cond_1
    iget v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoHeight:I

    iget v4, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoWidth:I

    mul-int/2addr v1, v4

    .line 222
    iget-object v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v6}, Lcn/nubia/videogenerator/codec/VideoParams;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    :goto_1
    if-ge v1, v4, :cond_2

    .line 224
    iget-object v6, v2, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    iget-object v7, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v7}, Lcn/nubia/videogenerator/codec/VideoParams;->getWidth()I

    move-result v7

    invoke-virtual {v3, v6, v1, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 223
    iget v6, p0, Lcn/nubia/videogenerator/codec/Encoder;->mAlignVideoWidth:I

    add-int/2addr v1, v6

    goto :goto_1

    .line 226
    :cond_2
    iget v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoFrameSize:I

    goto :goto_2

    .line 229
    :cond_3
    iget-object v1, v2, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    iget-object v1, v2, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_2
    move v7, v1

    .line 233
    iget-object v1, v2, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_4

    iget-object v1, v2, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    .line 235
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-object v1, v2, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_3

    :cond_4
    const-string v1, "Encoder"

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EOS received in fillInputBufferInner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-object v1, v2, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, v2, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x1

    .line 245
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->isEndFrame:Z

    .line 248
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startEncode()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 389
    iget-boolean v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->isEndFrame:Z

    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/codec/Encoder;->drainEncoder(Z)V

    .line 391
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    :goto_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    .line 395
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/Encoder;->encodeData()V

    .line 400
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    .line 391
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 432
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 435
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 437
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public errorInput()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    invoke-interface {v0}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputError()V

    return-void
.end method

.method public fillInputBuffer(Z)V
    .locals 1

    .line 144
    iget v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    .line 146
    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->fillInputBufferInner(Z)V

    return-void
.end method

.method public fillInputBufferAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 152
    new-instance v0, Lcn/nubia/videogenerator/common/AVFrame;

    invoke-direct {v0}, Lcn/nubia/videogenerator/common/AVFrame;-><init>()V

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    .line 154
    iput-object p2, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 155
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 156
    iget p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    return-void
.end method

.method public fillInputBufferInner(Z)V
    .locals 2

    .line 174
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->drainEncoder(Z)V

    .line 178
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getParams()Lcn/nubia/videogenerator/codec/VideoParams;
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 165
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getVideoPts()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mPresentationTimeUs:J

    return-wide v0
.end method

.method public isBufferUpperLimit(I)Z
    .locals 2

    .line 136
    iget v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodFinishFrameCount:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmptyOfInputQueue()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodFinishFrameCount:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 4

    .line 441
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 442
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-string v1, "Encoder"

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " release"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 447
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 448
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 450
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 452
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    .line 453
    iget-object v2, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 455
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    .line 458
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 458
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public resetEncoderFrameCount()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodWaitFrameCount:I

    .line 162
    iput v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncodFinishFrameCount:I

    return-void
.end method

.method public setEncoderEndFlag(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoderEndFlag:Z

    return-void
.end method

.method public setFrameInterval(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mFameInterval:J

    return-void
.end method

.method public setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    return-void
.end method

.method public setRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 93
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/codec/CodecRender;->setFiller(Lcn/nubia/videogenerator/common/InputBufferFiller;)V

    :cond_0
    return-void
.end method

.method public setRender(Lcn/nubia/videogenerator/codec/ImageRender;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/codec/ImageRender;->setFiller(Lcn/nubia/videogenerator/common/InputBufferFiller;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mVideoParams:Lcn/nubia/videogenerator/codec/VideoParams;

    .line 103
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/VideoParams;->getColorFormat()I

    move-result v0

    const v1, 0x7f000789

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    .line 106
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/Encoder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/Encoder;->getParams()Lcn/nubia/videogenerator/codec/VideoParams;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/VideoParams;->getWidth()I

    move-result v1

    .line 109
    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/Encoder;->getParams()Lcn/nubia/videogenerator/codec/VideoParams;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/videogenerator/codec/VideoParams;->getHeight()I

    move-result v2

    .line 108
    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/videogenerator/codec/ImageRender;->createInputSurface(Landroid/view/Surface;II)V

    :cond_1
    return-void
.end method

.method public setVideoPts(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mPresentationTimeUs:J

    return-void
.end method

.method public start()V
    .locals 4

    .line 414
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-string v1, "Encoder"

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Encoder start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "Encoder"

    const-string v2, "Encoder start fail"

    .line 420
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/Encoder;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    invoke-interface {v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputError()V

    .line 424
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 426
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder$EncoderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/codec/Encoder$EncoderTask;-><init>(Lcn/nubia/videogenerator/codec/Encoder;Lcn/nubia/videogenerator/codec/Encoder$1;)V

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder$EncoderTask;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 424
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
