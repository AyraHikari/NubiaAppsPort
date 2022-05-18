.class public Lcn/nubia/camera/r/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/s$a;,
        Lcn/nubia/camera/r/s$b;
    }
.end annotation


# instance fields
.field private a:Ljava/io/FileDescriptor;

.field private b:Landroid/media/CamcorderProfile;

.field private c:Lcn/nubia/camera/r/s$b;

.field private d:Landroid/location/Location;

.field private e:Landroid/media/MediaCodec;

.field private f:Landroid/view/Surface;

.field private g:Landroid/media/MediaMuxer;

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/io/FileDescriptor;

.field private m:Landroid/media/MediaExtractor;

.field private n:I

.field private o:Lcn/nubia/camera/r/s$a;

.field private p:Landroid/media/MediaCodec$BufferInfo;


# direct methods
.method public constructor <init>(Landroid/media/CamcorderProfile;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/location/Location;Lcn/nubia/camera/r/s$b;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcn/nubia/camera/r/s;->j:I

    .line 44
    iput v0, p0, Lcn/nubia/camera/r/s;->k:I

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/r/s;->b:Landroid/media/CamcorderProfile;

    .line 64
    iput-object p2, p0, Lcn/nubia/camera/r/s;->a:Ljava/io/FileDescriptor;

    .line 65
    iput-object p3, p0, Lcn/nubia/camera/r/s;->l:Ljava/io/FileDescriptor;

    .line 66
    iput-object p4, p0, Lcn/nubia/camera/r/s;->d:Landroid/location/Location;

    .line 67
    iput-object p5, p0, Lcn/nubia/camera/r/s;->c:Lcn/nubia/camera/r/s$b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/s;)Landroid/media/MediaExtractor;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/r/s;->m:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method private a(Z)V
    .locals 8

    const-string v0, "EncodeAndMux"

    if-eqz p1, :cond_0

    const-string v1, "sending EOS to encoder"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 208
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "no output available, spinning to await EOS"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    const-string v1, "OUTPUT_BUFFERS_CHANGED"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    .line 222
    iget-boolean v1, p0, Lcn/nubia/camera/r/s;->i:Z

    if-nez v1, :cond_4

    .line 225
    iget-object v1, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoder output format changed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/r/s;->h:I

    .line 230
    iget-object v1, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 231
    iput-boolean v3, p0, Lcn/nubia/camera/r/s;->i:Z

    .line 232
    iget-object v1, p0, Lcn/nubia/camera/r/s;->l:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Lcn/nubia/camera/r/s$a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/r/s$a;-><init>(Lcn/nubia/camera/r/s;)V

    iput-object v1, p0, Lcn/nubia/camera/r/s;->o:Lcn/nubia/camera/r/s$a;

    .line 234
    invoke-virtual {v1}, Lcn/nubia/camera/r/s$a;->start()V

    goto :goto_0

    .line 223
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "format changed twice"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-gez v1, :cond_6

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :cond_6
    iget-object v2, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 247
    iget-object v4, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    const-string v4, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 250
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v4, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    iput v5, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 254
    :cond_7
    iget-object v4, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_9

    .line 255
    iget-boolean v4, p0, Lcn/nubia/camera/r/s;->i:Z

    if-eqz v4, :cond_8

    .line 260
    iget-object v4, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    iget-object v4, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v6, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 263
    iget-object v4, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    iget v6, p0, Lcn/nubia/camera/r/s;->h:I

    iget-object v7, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v6, v2, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 265
    iget v2, p0, Lcn/nubia/camera/r/s;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/camera/r/s;->j:I

    goto :goto_1

    .line 256
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "muxer hasn\'t started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_9
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 271
    iget-object v1, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    if-nez p1, :cond_a

    const-string p1, "reached end of stream unexpectedly"

    .line 273
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string p1, "end of stream reached"

    .line 275
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_2
    invoke-direct {p0}, Lcn/nubia/camera/r/s;->e()V

    :goto_3
    return-void

    .line 243
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcn/nubia/camera/r/s;)I
    .locals 0

    .line 22
    iget p0, p0, Lcn/nubia/camera/r/s;->n:I

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/r/s;)Landroid/media/MediaMuxer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method private e()V
    .locals 2

    const-string v0, "EncodeAndMux"

    const-string v1, "releasing encoder objects"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/r/s;->o:Lcn/nubia/camera/r/s$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {v0}, Lcn/nubia/camera/r/s$a;->join()V

    .line 160
    iput-object v1, p0, Lcn/nubia/camera/r/s;->o:Lcn/nubia/camera/r/s$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 168
    iput-object v1, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    .line 170
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 173
    iput-object v1, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/r/s;->c:Lcn/nubia/camera/r/s$b;

    if-eqz v0, :cond_2

    .line 175
    invoke-interface {v0}, Lcn/nubia/camera/r/s$b;->a()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 78
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/s;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/r/s;->b:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v1, p0, Lcn/nubia/camera/r/s;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const-string v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v3, 0x7f000789

    .line 84
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    iget-object v1, p0, Lcn/nubia/camera/r/s;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 87
    iget-object v1, p0, Lcn/nubia/camera/r/s;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const-string v3, "frame-rate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v3, 0x1

    .line 88
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoder format: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "EncodeAndMux"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/r/s;->f:Landroid/view/Surface;

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/r/s;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "output file is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/s;->a:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/s;->a:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcn/nubia/camera/r/s;->a:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    .line 120
    iget-object v1, p0, Lcn/nubia/camera/r/s;->d:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v1, v3

    iget-object v3, p0, Lcn/nubia/camera/r/s;->d:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    iget v1, p0, Lcn/nubia/camera/r/s;->k:I

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/r/s;->l:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 130
    :try_start_2
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/s;->m:Landroid/media/MediaExtractor;

    .line 131
    iget-object v1, p0, Lcn/nubia/camera/r/s;->l:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/r/s;->m:Landroid/media/MediaExtractor;

    const-string v1, "audio/"

    invoke-static {v0, v1}, Lcn/nubia/camera/r/a;->a(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v0

    .line 133
    iget-object v1, p0, Lcn/nubia/camera/r/s;->m:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/r/s;->g:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcn/nubia/camera/r/s;->m:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/r/s;->n:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, -0x1

    .line 140
    iput v0, p0, Lcn/nubia/camera/r/s;->h:I

    .line 141
    iput-boolean v2, p0, Lcn/nubia/camera/r/s;->i:Z

    return-void

    :catch_2
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MediaMuxer creation failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcn/nubia/camera/r/s;->k:I

    return-void
.end method

.method public b()Landroid/view/Surface;
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/r/s;->f:Landroid/view/Surface;

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 182
    invoke-direct {p0, v0}, Lcn/nubia/camera/r/s;->a(Z)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/r/s;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frame in all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EncodeAndMux"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, v0}, Lcn/nubia/camera/r/s;->a(Z)V

    return-void
.end method
