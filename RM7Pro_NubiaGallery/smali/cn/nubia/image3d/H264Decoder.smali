.class public Lcn/nubia/image3d/H264Decoder;
.super Ljava/lang/Object;
.source "H264Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/image3d/H264Decoder$RenderThread;,
        Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;
    }
.end annotation


# static fields
.field private static final CODEC_MIME:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "H264Decoder"


# instance fields
.field private mDecodeFinish:Z

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderFormat:Landroid/media/MediaFormat;

.field private mDecoderService:Lcn/nubia/image3d/H264Decoder$RenderThread;

.field private mIsInitialized:Z

.field private mIsStarted:Z

.field private mListener:Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsStarted:Z

    .line 26
    iput-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsInitialized:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    .line 28
    iput-object v0, p0, Lcn/nubia/image3d/H264Decoder;->mListener:Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;

    .line 29
    iput-object v0, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 31
    iput-object v0, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderService:Lcn/nubia/image3d/H264Decoder$RenderThread;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/image3d/H264Decoder;->mIsStarted:Z

    .line 26
    iput-boolean p1, p0, Lcn/nubia/image3d/H264Decoder;->mIsInitialized:Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    .line 28
    iput-object p1, p0, Lcn/nubia/image3d/H264Decoder;->mListener:Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;

    .line 29
    iput-object p1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 31
    iput-object p1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderService:Lcn/nubia/image3d/H264Decoder$RenderThread;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/image3d/H264Decoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcn/nubia/image3d/H264Decoder;->drainDecoder()V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/image3d/H264Decoder;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/image3d/H264Decoder;->mDecodeFinish:Z

    return p1
.end method

.method private drainDecoder()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-nez v2, :cond_6

    .line 135
    iget-boolean v3, p0, Lcn/nubia/image3d/H264Decoder;->mIsStarted:Z

    if-eqz v3, :cond_6

    .line 136
    iget-object v3, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "H264Decoder"

    if-ne v3, v4, :cond_0

    const-string v3, "Decoder INFO_TRY_AGAIN_LATER."

    .line 138
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    .line 140
    iget-object v3, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "color-format"

    .line 141
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 142
    iget-object v4, p0, Lcn/nubia/image3d/H264Decoder;->mListener:Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;

    if-eqz v4, :cond_1

    .line 143
    invoke-interface {v4, v3}, Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;->onH264DecoderOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 145
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoder output format changed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-gez v3, :cond_3

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoder unexpected result from Decoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_3
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    const-string v2, "BUFFER_FLAG_END_OF_STREAM"

    .line 151
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    .line 155
    :cond_4
    iget-object v4, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 156
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_5

    .line 157
    iget-object v5, p0, Lcn/nubia/image3d/H264Decoder;->mListener:Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;

    if-eqz v5, :cond_5

    .line 158
    invoke-interface {v5, v4, v0}, Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;->onH264DecoderBufferCallback(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 162
    :cond_5
    :goto_1
    iget-object v4, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public create(II)V
    .locals 4

    const-string v0, "video/avc"

    .line 40
    iget-boolean v1, p0, Lcn/nubia/image3d/H264Decoder;->mIsInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "H264Decoder"

    const-string v2, "create"

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v2, Lcn/nubia/image3d/H264Decoder$RenderThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/image3d/H264Decoder$RenderThread;-><init>(Lcn/nubia/image3d/H264Decoder;Lcn/nubia/image3d/H264Decoder$1;)V

    iput-object v2, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderService:Lcn/nubia/image3d/H264Decoder$RenderThread;

    .line 44
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "IOException"

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    const/16 p2, 0x13

    const-string v0, "color-format"

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 51
    iget-object p1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v3, v3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcn/nubia/image3d/H264Decoder;->mIsInitialized:Z

    :cond_0
    return-void
.end method

.method public queueInputBuffer(Landroid/media/MediaCodec$BufferInfo;[BI)V
    .locals 10

    .line 104
    iget-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-gez v4, :cond_0

    const-string p1, "H264Decoder"

    const-string p2, "dequeueInputBuffer TimeOut."

    .line 107
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_0
    iget-object p3, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p3, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 112
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    iget-object v3, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v7, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "H264Decoder"

    const-string v1, "release start"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 95
    iget-object v1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 97
    iput-object v1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderService:Lcn/nubia/image3d/H264Decoder$RenderThread;

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcn/nubia/image3d/H264Decoder;->mIsInitialized:Z

    const-string v1, "release end"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setListener(Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/image3d/H264Decoder;->mListener:Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 61
    iget-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsStarted:Z

    if-nez v0, :cond_0

    const-string v0, "H264Decoder"

    const-string v1, "start"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcn/nubia/image3d/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsStarted:Z

    .line 65
    iget-object v0, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderService:Lcn/nubia/image3d/H264Decoder$RenderThread;

    invoke-virtual {v0}, Lcn/nubia/image3d/H264Decoder$RenderThread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/image3d/H264Decoder;->mIsStarted:Z

    if-eqz v0, :cond_2

    const-string v0, "H264Decoder"

    const-string v1, "stop start"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 73
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/image3d/H264Decoder;->mIsStarted:Z

    .line 74
    iget-boolean v1, p0, Lcn/nubia/image3d/H264Decoder;->mDecodeFinish:Z

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderService:Lcn/nubia/image3d/H264Decoder$RenderThread;

    invoke-virtual {v1}, Lcn/nubia/image3d/H264Decoder$RenderThread;->interrupt()V

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 80
    :cond_0
    iget-object v1, p0, Lcn/nubia/image3d/H264Decoder;->mDecoderService:Lcn/nubia/image3d/H264Decoder$RenderThread;

    invoke-virtual {v1}, Lcn/nubia/image3d/H264Decoder$RenderThread;->join()V

    :cond_1
    const-string v1, "stop end"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
