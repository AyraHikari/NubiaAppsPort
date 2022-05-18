.class public Lcn/nubia/gallery3d/app/SlideVideoGenerator;
.super Ljava/lang/Object;
.source "SlideVideoGenerator.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator;
.implements Lcn/nubia/videogenerator/common/OutputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleVideoGenerator"


# instance fields
.field private mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

.field private mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

.field private mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mAudioEncoderStart:Ljava/lang/Thread;

.field private mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

.field private mAudioPath:Ljava/lang/String;

.field private mAudioPrevPts:J

.field private mCancelFlag:Z

.field private mDegrees:I

.field private mMaxDuration:J

.field private mMimeType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxTracks:I

.field private mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

.field private mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

.field private mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

.field private mOutputPath:Ljava/lang/String;

.field private mRender:Lcn/nubia/videogenerator/codec/ImageRender;

.field private mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mVideoPrevPts:J

.field private mWriteLock:Ljava/lang/Object;

.field private mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoPrevPts:J

    .line 33
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioPrevPts:J

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMuxTracks:I

    .line 37
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mDegrees:I

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioPath:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 40
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 41
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoderStart:Ljava/lang/Thread;

    .line 42
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    .line 45
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 46
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMimeType:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriteLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Decoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/local/AudioLocalSource;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->releaseAudio()V

    return-void
.end method

.method private releaseAudio()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->stop()V

    .line 233
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 236
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Decoder;->release()V

    .line 238
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 241
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 243
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    :cond_2
    return-void
.end method

.method private setAudioDecoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/CodecRender;->setDecoder(Lcn/nubia/videogenerator/codec/DataOutput;)V

    :cond_0
    return-void
.end method

.method private setAudioEncoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->setRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    .line 90
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOutputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 92
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOutputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOutputPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 95
    throw v0
.end method

.method public export()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    if-nez v1, :cond_1

    .line 63
    iget v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMuxTracks:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMuxTracks(I)V

    .line 64
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mDegrees:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOrientation(I)V

    .line 65
    iget-wide v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMaxDuration(J)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    if-nez v1, :cond_2

    .line 72
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    if-nez v1, :cond_3

    .line 75
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    if-nez v1, :cond_4

    .line 78
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/ImageRender;->startRender()V

    .line 80
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    if-nez v0, :cond_5

    .line 81
    new-instance v0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;-><init>(Lcn/nubia/gallery3d/app/SlideVideoGenerator;Lcn/nubia/gallery3d/app/SlideVideoGenerator$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoderStart:Ljava/lang/Thread;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    return-void
.end method

.method public getAudioFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public isEncoderBufferUpperLimit(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMuxerStarted()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v0

    return v0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 5

    .line 278
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mCancelFlag:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "audio/"

    .line 280
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioPrevPts:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    const-string v1, "video/"

    .line 281
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoPrevPts:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    :cond_1
    const-string v1, "audio/"

    .line 283
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioPrevPts:J

    goto :goto_0

    :cond_2
    const-string v1, "video/"

    .line 285
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoPrevPts:J

    .line 288
    :cond_3
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v1, p1, p2, p3}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 290
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOutputComplete(Ljava/lang/String;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputError()V
    .locals 0

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 3

    .line 296
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMimeType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMuxTracks:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMimeType:Ljava/util/ArrayList;

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onOutputFormatChanged  format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleVideoGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMimeType:Ljava/util/ArrayList;

    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMimeType:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public setAudioParams()V
    .locals 5

    const-string v0, "sample-rate"

    :try_start_0
    const-string v1, "SimpleVideoGenerator"

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMaxDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Lcn/nubia/videogenerator/local/AudioLocalSource;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioPath:Ljava/lang/String;

    iget-wide v3, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMaxDuration:J

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/videogenerator/local/AudioLocalSource;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {v1}, Lcn/nubia/videogenerator/local/AudioLocalSource;->isNeedToDecoder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    new-instance v1, Lcn/nubia/videogenerator/codec/AudioParams;

    invoke-direct {v1}, Lcn/nubia/videogenerator/codec/AudioParams;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v2

    if-nez v2, :cond_0

    .line 145
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/Generator$OnErrorListener;->onError(I)V

    return-void

    .line 148
    :cond_0
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/videogenerator/codec/AudioParams;->setaudioSampleRate(I)V

    .line 149
    new-instance v2, Lcn/nubia/videogenerator/codec/Decoder;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/videogenerator/codec/Decoder;-><init>(Landroid/media/MediaFormat;)V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 150
    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-virtual {v3, v2, p0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->setDataListener(Lcn/nubia/videogenerator/common/DecoderDataListener;Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 151
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/videogenerator/codec/AudioParams;->setaudioSampleRate(I)V

    .line 152
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "channel-count"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/videogenerator/codec/AudioParams;->setChannelCount(I)V

    .line 153
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/AudioParams;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 154
    new-instance v0, Lcn/nubia/videogenerator/codec/CodecRender;

    invoke-direct {v0}, Lcn/nubia/videogenerator/codec/CodecRender;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 155
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setAudioDecoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setAudioEncoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->setDataListener(Lcn/nubia/videogenerator/common/DecoderDataListener;Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/local/AudioLocalSource;->setAudioMode(I)V

    .line 164
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMuxTracks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMuxTracks:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 171
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->releaseAudio()V

    .line 173
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 167
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->releaseAudio()V

    .line 169
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioPath:Ljava/lang/String;

    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    .line 271
    iput-wide p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMaxDuration:J

    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/videogenerator/common/Generator$OnErrorListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    return-void
.end method

.method public setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mDegrees:I

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOutputPath:Ljava/lang/String;

    .line 56
    new-instance p1, Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    return-void
.end method

.method public setVideoParams(Lcn/nubia/videogenerator/codec/VideoParams;)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-nez v0, :cond_0

    .line 180
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/VideoParams;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const-wide/32 v1, 0xf4240

    .line 181
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/VideoParams;->getFps()I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/Encoder;->setFrameInterval(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    :goto_0
    iget p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMuxTracks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mMuxTracks:I

    :cond_0
    return-void
.end method

.method public setVideoRender(Lcn/nubia/videogenerator/codec/ImageRender;)V
    .locals 1

    .line 196
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 197
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->setRender(Lcn/nubia/videogenerator/codec/ImageRender;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/ImageRender;->stop()V

    .line 105
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 109
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 111
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->stop()V

    .line 113
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 116
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Decoder;->release()V

    .line 118
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 121
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_4

    .line 122
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 123
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 125
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->stop()V

    .line 127
    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    :cond_5
    return-void
.end method
