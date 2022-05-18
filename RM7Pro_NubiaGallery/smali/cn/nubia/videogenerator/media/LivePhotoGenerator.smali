.class public Lcn/nubia/videogenerator/media/LivePhotoGenerator;
.super Ljava/lang/Object;
.source "LivePhotoGenerator.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator;
.implements Lcn/nubia/videogenerator/common/OutputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/media/LivePhotoGenerator$OnLivePhotoGeneratedListener;
    }
.end annotation


# static fields
.field public static final STATE_EXPORTING:I = 0x3

.field public static final STATE_NUKONWN:I = -0x1

.field public static final STATE_TURN_OFF:I = 0x2

.field public static final STATE_TURN_ON:I = 0x1

.field private static TAG:Ljava/lang/String; = "LivePhotoGenerator"


# instance fields
.field private mAParams:Lcn/nubia/videogenerator/codec/AudioParams;

.field private mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

.field private mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

.field private mAudioSource:I

.field private mContext:Landroid/content/Context;

.field private mDurationMs:I

.field private mExportingTimeMs:J

.field private mFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mLivePhotoGeneratedListener:Lcn/nubia/videogenerator/media/LivePhotoGenerator$OnLivePhotoGeneratedListener;

.field private mMaxDuration:J

.field private mMuxTracks:I

.field private mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

.field private mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

.field private mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

.field private mOrientation:I

.field private mOutputPath:Ljava/lang/String;

.field private mPCMCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

.field private mPicturePath:Ljava/lang/String;

.field private mPreviewDataReader:Lcn/nubia/videogenerator/livephoto/PreviewDataReader;

.field private mState:I

.field private mVParams:Lcn/nubia/videogenerator/codec/VideoParams;

.field private mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

.field private mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

.field private mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

.field private mYUVCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mYUVImageGenerator:Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mState:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOrientation:I

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVParams:Lcn/nubia/videogenerator/codec/VideoParams;

    .line 45
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVImageGenerator:Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;

    .line 46
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 48
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 51
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAParams:Lcn/nubia/videogenerator/codec/AudioParams;

    .line 52
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    .line 53
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 54
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 55
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mFormats:Ljava/util/ArrayList;

    .line 59
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 60
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 61
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    .line 62
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOutputPath:Ljava/lang/String;

    .line 64
    iput v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMuxTracks:I

    .line 75
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/videogenerator/media/LivePhotoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/videogenerator/media/LivePhotoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    return-object p0
.end method

.method private startAudioEncode()V
    .locals 11

    .line 179
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    iget-wide v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mExportingTimeMs:J

    iget v3, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mDurationMs:I

    div-int/lit8 v4, v3, 0x2

    int-to-long v4, v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v8, 0x2

    div-int/2addr v3, v8

    int-to-long v9, v3

    add-long/2addr v1, v9

    mul-long/2addr v1, v6

    invoke-virtual {v0, v4, v5, v1, v2}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->setFilteByTimeStamp(JJ)V

    .line 181
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-virtual {v0, v8}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->setFilteByFrameType(I)V

    .line 182
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    new-instance v1, Lcn/nubia/videogenerator/media/LivePhotoGenerator$1;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/media/LivePhotoGenerator$1;-><init>(Lcn/nubia/videogenerator/media/LivePhotoGenerator;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->setOnQueueBeginOutputListener(Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;)V

    .line 192
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->start()V

    return-void
.end method

.method private startVideoEncode()V
    .locals 10

    .line 196
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    iget-wide v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mExportingTimeMs:J

    iget v3, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mDurationMs:I

    div-int/lit8 v4, v3, 0x2

    int-to-long v4, v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-int/lit8 v3, v3, 0x2

    int-to-long v8, v3

    add-long/2addr v1, v8

    mul-long/2addr v1, v6

    invoke-virtual {v0, v4, v5, v1, v2}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->setFilteByTimeStamp(JJ)V

    .line 198
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->setFilteByFrameType(I)V

    .line 199
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    new-instance v1, Lcn/nubia/videogenerator/media/LivePhotoGenerator$2;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/media/LivePhotoGenerator$2;-><init>(Lcn/nubia/videogenerator/media/LivePhotoGenerator;)V

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->setOnQueueBeginOutputListener(Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;)V

    .line 208
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->start()V

    return-void
.end method


# virtual methods
.method public export()V
    .locals 4

    .line 147
    iget v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mExportingTimeMs:J

    .line 151
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_2

    .line 152
    iget v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMuxTracks:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMuxTracks(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOrientation:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOrientation(I)V

    .line 154
    iget-wide v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 155
    iget-object v2, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMaxDuration(J)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V

    .line 159
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/CodecRender;->setFiller(Lcn/nubia/videogenerator/common/InputBufferFiller;)V

    .line 160
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/CodecRender;->setFiller(Lcn/nubia/videogenerator/common/InputBufferFiller;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/CodecRender;->setDecoder(Lcn/nubia/videogenerator/codec/DataOutput;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/CodecRender;->setDecoder(Lcn/nubia/videogenerator/codec/DataOutput;)V

    .line 164
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 170
    :cond_4
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_5

    .line 171
    invoke-direct {p0}, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->startVideoEncode()V

    .line 173
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_6

    .line 174
    invoke-direct {p0}, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->startAudioEncode()V

    :cond_6
    return-void
.end method

.method public isEncoderBufferUpperLimit(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFilterFinished()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->isFilterFinished()Z

    move-result v0

    return v0
.end method

.method public isMuxerStarted()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v0

    return v0
.end method

.method public isTurnOn()Z
    .locals 2

    .line 143
    iget v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputComplete(Ljava/lang/String;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputError()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/Generator$OnErrorListener;->onError(I)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMuxTracks:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mFormats:Ljava/util/ArrayList;

    .line 244
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 212
    iget v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->turnOff()V

    :cond_0
    return-void
.end method

.method public setAudioParams(Lcn/nubia/videogenerator/codec/AudioParams;)V
    .locals 1

    .line 280
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/AudioParams;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 285
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMuxTracks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMuxTracks:I

    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mDurationMs:I

    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/videogenerator/common/Generator$OnErrorListener;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    return-void
.end method

.method public setOnLivePhotoGeneratedListener(Lcn/nubia/videogenerator/media/LivePhotoGenerator$OnLivePhotoGeneratedListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mLivePhotoGeneratedListener:Lcn/nubia/videogenerator/media/LivePhotoGenerator$OnLivePhotoGeneratedListener;

    return-void
.end method

.method public setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V
    .locals 0

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOrientation:I

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 2

    .line 290
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOutputPath:Ljava/lang/String;

    .line 292
    :try_start_0
    new-instance p1, Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setParam(Lcn/nubia/videogenerator/codec/AudioParams;Lcn/nubia/videogenerator/codec/VideoParams;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAParams:Lcn/nubia/videogenerator/codec/AudioParams;

    .line 97
    iput-object p2, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVParams:Lcn/nubia/videogenerator/codec/VideoParams;

    return-void
.end method

.method public setPicturePath(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPicturePath:Ljava/lang/String;

    return-void
.end method

.method public setSource(Lcn/nubia/videogenerator/livephoto/PreviewDataReader;I)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPreviewDataReader:Lcn/nubia/videogenerator/livephoto/PreviewDataReader;

    .line 92
    iput p2, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioSource:I

    return-void
.end method

.method public setVideoParams(Lcn/nubia/videogenerator/codec/VideoParams;)V
    .locals 5

    .line 265
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-nez v0, :cond_0

    .line 267
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/VideoParams;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const-wide/32 v1, 0xf4240

    .line 268
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

    .line 271
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMuxTracks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMuxTracks:I

    :cond_0
    return-void
.end method

.method public startLivePhoto()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPicturePath:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mOutputPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/nubiavideopicture/VideoPicture;->createVpFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mLivePhotoGeneratedListener:Lcn/nubia/videogenerator/media/LivePhotoGenerator$OnLivePhotoGeneratedListener;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Lcn/nubia/videogenerator/media/LivePhotoGenerator$OnLivePhotoGeneratedListener;->onLivePhotoGenerated()V

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

    .line 301
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 303
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->stop()V

    .line 308
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 310
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 312
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    if-eqz v0, :cond_3

    .line 313
    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->stop()V

    .line 316
    :cond_3
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_4

    .line 317
    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->stop()V

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mMuxTracks:I

    .line 319
    iput-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    .line 321
    :cond_4
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mFormats:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 322
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method

.method public turnOff()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mExportingTimeMs:J

    .line 130
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVImageGenerator:Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->stop()V

    .line 131
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->stop()V

    .line 132
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->release()V

    .line 133
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 134
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 136
    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 137
    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 138
    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    const/4 v0, 0x2

    .line 139
    iput v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mState:I

    return-void
.end method

.method public turnOn()V
    .locals 4

    .line 105
    sget-object v0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->TAG:Ljava/lang/String;

    const-string v1, "turn on"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;

    invoke-direct {v0}, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVImageGenerator:Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;

    .line 107
    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVParams:Lcn/nubia/videogenerator/codec/VideoParams;

    iget-object v2, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPreviewDataReader:Lcn/nubia/videogenerator/livephoto/PreviewDataReader;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->setCamera(Lcn/nubia/videogenerator/codec/VideoParams;Lcn/nubia/videogenerator/livephoto/PreviewDataReader;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVImageGenerator:Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;

    iget v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mDurationMs:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->setOutputCacheDuration(I)V

    .line 109
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVImageGenerator:Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->setOutputQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVImageGenerator:Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/YUVImageGenerator;->start()V

    .line 112
    new-instance v0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-direct {v0}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    .line 113
    iget v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioSource:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->setAudioSource(I)V

    .line 114
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAParams:Lcn/nubia/videogenerator/codec/AudioParams;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->setAudioRecordParam(Lcn/nubia/videogenerator/codec/AudioParams;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    iget v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mDurationMs:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->setOutputCacheDuration(I)V

    .line 116
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->setOutputQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMGenerator:Lcn/nubia/videogenerator/livephoto/PCMGenerator;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->start()V

    .line 119
    new-instance v0, Lcn/nubia/videogenerator/codec/CodecRender;

    invoke-direct {v0}, Lcn/nubia/videogenerator/codec/CodecRender;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 120
    new-instance v0, Lcn/nubia/videogenerator/codec/CodecRender;

    invoke-direct {v0}, Lcn/nubia/videogenerator/codec/CodecRender;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 121
    new-instance v0, Lcn/nubia/videogenerator/livephoto/FrameFilter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAParams:Lcn/nubia/videogenerator/codec/AudioParams;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/AudioParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/livephoto/FrameFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mAudioFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 122
    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mPCMCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->setInputQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 123
    new-instance v0, Lcn/nubia/videogenerator/livephoto/FrameFilter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/VideoParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/codec/VideoParams;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVParams:Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/VideoParams;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/videogenerator/livephoto/FrameFilter;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mVideoFilter:Lcn/nubia/videogenerator/livephoto/FrameFilter;

    .line 124
    iget-object v1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mYUVCacheQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/livephoto/FrameFilter;->setInputQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    const/4 v0, 0x1

    .line 125
    iput v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->mState:I

    return-void
.end method
