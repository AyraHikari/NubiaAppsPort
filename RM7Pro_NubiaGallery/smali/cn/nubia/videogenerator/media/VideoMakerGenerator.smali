.class public Lcn/nubia/videogenerator/media/VideoMakerGenerator;
.super Ljava/lang/Object;
.source "VideoMakerGenerator.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator;
.implements Lcn/nubia/videogenerator/common/OutputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;,
        Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "VideoMakerGenerator"


# instance fields
.field private mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

.field private mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mAudioEncoderStart:Ljava/lang/Thread;

.field private mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

.field private mAudioPath:Ljava/lang/String;

.field private mDegrees:I

.field private mFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDuration:J

.field private mMuxTracks:I

.field private mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

.field private mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

.field private mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

.field private mOutputPath:Ljava/lang/String;

.field private mRender:Lcn/nubia/videogenerator/codec/ImageRender;

.field private mVideoDuration:J

.field private mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mVideoEncoderStart:Ljava/lang/Thread;

.field private mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    .line 28
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 29
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 30
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 31
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 32
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMuxTracks:I

    .line 38
    iput v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mDegrees:I

    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoDuration:J

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mFormats:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoderStart:Ljava/lang/Thread;

    .line 42
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoderStart:Ljava/lang/Thread;

    .line 43
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioPath:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 47
    iput-wide p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoDuration:J

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Encoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/ImageRender;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Encoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Decoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/local/AudioLocalSource;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    return-object p0
.end method

.method private releaseAudio()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->stop()V

    .line 200
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Decoder;->release()V

    .line 205
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 208
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 210
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    :cond_2
    return-void
.end method


# virtual methods
.method public export()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    .line 64
    iget v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMuxTracks:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMuxTracks(I)V

    .line 65
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mDegrees:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOrientation(I)V

    .line 66
    iget-wide v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMaxDuration(J)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 78
    :cond_3
    new-instance v0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;-><init>(Lcn/nubia/videogenerator/media/VideoMakerGenerator;Lcn/nubia/videogenerator/media/VideoMakerGenerator$1;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoderStart:Ljava/lang/Thread;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    new-instance v0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;-><init>(Lcn/nubia/videogenerator/media/VideoMakerGenerator;Lcn/nubia/videogenerator/media/VideoMakerGenerator$1;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoderStart:Ljava/lang/Thread;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isEncoderBufferUpperLimit(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMuxerStarted()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v0

    return v0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputComplete(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputError()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 297
    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/Generator$OnErrorListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMuxTracks:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mFormats:Ljava/util/ArrayList;

    .line 259
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

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMuxTracks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMakerGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public setAudioDecoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/CodecRender;->setDecoder(Lcn/nubia/videogenerator/codec/DataOutput;)V

    :cond_0
    return-void
.end method

.method public setAudioEncoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->setRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    :cond_0
    return-void
.end method

.method public setAudioParams(Lcn/nubia/videogenerator/codec/AudioParams;)V
    .locals 4

    .line 167
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcn/nubia/videogenerator/local/AudioLocalSource;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioPath:Ljava/lang/String;

    iget-wide v2, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoDuration:J

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/videogenerator/local/AudioLocalSource;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 171
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->isNeedToDecoder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Lcn/nubia/videogenerator/codec/Decoder;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/local/AudioLocalSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/codec/Decoder;-><init>(Landroid/media/MediaFormat;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 174
    iget-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-virtual {v1, v0, p0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->setDataListener(Lcn/nubia/videogenerator/common/DecoderDataListener;Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "sample-rate"

    .line 176
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 175
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/AudioParams;->setaudioSampleRate(I)V

    .line 177
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "channel-count"

    .line 178
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 177
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/AudioParams;->setChannelCount(I)V

    .line 179
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/AudioParams;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->setDataListener(Lcn/nubia/videogenerator/common/DecoderDataListener;Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 184
    :cond_2
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMuxTracks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMuxTracks:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 192
    invoke-direct {p0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->releaseAudio()V

    .line 193
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 188
    invoke-direct {p0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->releaseAudio()V

    .line 189
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioPath:Ljava/lang/String;

    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    .line 249
    iput-wide p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMaxDuration:J

    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/videogenerator/common/Generator$OnErrorListener;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    return-void
.end method

.method public setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mDegrees:I

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOutputPath:Ljava/lang/String;

    .line 53
    new-instance p1, Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    return-void
.end method

.method public setVideoParams(Lcn/nubia/videogenerator/codec/VideoParams;)V
    .locals 5

    .line 149
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-nez v0, :cond_0

    .line 151
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/VideoParams;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const-wide/32 v1, 0xf4240

    .line 152
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

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMuxTracks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mMuxTracks:I

    :cond_0
    return-void
.end method

.method public setVideoRender(Lcn/nubia/videogenerator/codec/ImageRender;)V
    .locals 1

    .line 216
    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 217
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_0

    .line 218
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

    .line 118
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/ImageRender;->stop()V

    .line 120
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->stop()V

    .line 124
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioLocalSource:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 127
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Decoder;->release()V

    .line 129
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 132
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 134
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 137
    :cond_3
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 139
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 142
    :cond_4
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->stop()V

    .line 144
    iput-object v1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    :cond_5
    return-void
.end method
