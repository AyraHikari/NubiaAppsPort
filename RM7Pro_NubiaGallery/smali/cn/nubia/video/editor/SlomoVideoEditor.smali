.class public Lcn/nubia/video/editor/SlomoVideoEditor;
.super Ljava/lang/Object;
.source "SlomoVideoEditor.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator;
.implements Lcn/nubia/videogenerator/common/OutputListener;
.implements Lcn/nubia/videogenerator/common/CodecListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;
    }
.end annotation


# static fields
.field private static final MAXIMAGEFPE:I = 0x5a

.field private static final M_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SlomoVideoEditor"

.field private static final U_SEC:J = 0xf4240L


# instance fields
.field private mCancelFlag:Z

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

.field private mIsVideoNeedEncode:Z

.field private mIsWallPaper:Z

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

.field private mStopLock:Ljava/lang/Object;

.field private mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

.field private mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

.field private mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

.field private mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mVideoEncoderStart:Ljava/lang/Thread;

.field private mVideoPath:Ljava/lang/String;

.field private mVideoPrevPts:J

.field private mWriteLock:Ljava/lang/Object;

.field private mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/video/editor/VideoEditorInfo;Z)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    .line 40
    iput-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 41
    iput-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 42
    iput-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    .line 43
    iput-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOutputPath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mMaxDuration:J

    .line 45
    iput-wide v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoPrevPts:J

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mMuxTracks:I

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mMimeType:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoderStart:Ljava/lang/Thread;

    .line 52
    iput-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoPath:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mCancelFlag:Z

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mIsVideoNeedEncode:Z

    .line 56
    iput-boolean v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mIsWallPaper:Z

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriteLock:Ljava/lang/Object;

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mStopLock:Ljava/lang/Object;

    .line 63
    :try_start_0
    iput-object p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoPath:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    .line 66
    new-instance p1, Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object p2, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcn/nubia/videogenerator/local/VideoEditorSource;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    .line 67
    iput-boolean v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mIsVideoNeedEncode:Z

    .line 68
    iput-boolean p4, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mIsWallPaper:Z

    const-string p1, "SlomoVideoEditor"

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startms "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide p3, p3, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " endms "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide p3, p3, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/codec/Encoder;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/video/editor/SlomoVideoEditor;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mCancelFlag:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/video/editor/VideoEditorInfo;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/video/editor/SlomoVideoEditor;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mIsVideoNeedEncode:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/codec/Decoder;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/local/VideoEditorSource;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    return-object p0
.end method

.method private adjustVideoSize()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v2, v1, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v2, v0

    iput v2, v1, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    .line 161
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 163
    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v2, v1, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v2, v0

    iput v2, v1, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    :cond_1
    return-void
.end method

.method private setVideoDecoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/CodecRender;->setDecoder(Lcn/nubia/videogenerator/codec/DataOutput;)V

    :cond_0
    return-void
.end method

.method private setVideoEncoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->setRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SlomoVideoEditor"

    const-string v1, "cancel editor "

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 170
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mCancelFlag:Z

    .line 171
    invoke-virtual {p0}, Lcn/nubia/video/editor/SlomoVideoEditor;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 173
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 176
    throw v0
.end method

.method public getVideoFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/VideoEditorSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public isEmptyOfInputQueue()Z
    .locals 4

    .line 319
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v3, :cond_1

    .line 321
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Encoder;->isEmptyOfInputQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Decoder;->isEmptyOfInputQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 322
    :cond_1
    iget-object v3, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v3, :cond_2

    .line 323
    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/Decoder;->isEmptyOfInputQueue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_2
    if-eqz v1, :cond_3

    .line 325
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Encoder;->isEmptyOfInputQueue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 327
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEncoderBufferUpperLimit(I)Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->isBufferUpperLimit(I)Z

    move-result p1

    return p1
.end method

.method public isMuxerStarted()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 5

    .line 287
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mCancelFlag:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video/"

    .line 289
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoPrevPts:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 291
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoPrevPts:J

    .line 292
    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v1, p1, p2, p3}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 294
    :cond_0
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

    .line 280
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputError()V
    .locals 2

    const-string v0, "SlomoVideoEditor"

    const-string v1, " encoder error"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/Generator$OnErrorListener;->onError(I)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    .line 272
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

    const-string v1, "SlomoVideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    .line 266
    iput-wide p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mMaxDuration:J

    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/videogenerator/common/Generator$OnErrorListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    return-void
.end method

.method public setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOutputPath:Ljava/lang/String;

    .line 83
    new-instance p1, Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    return-void
.end method

.method public setVideoParams()V
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "video/hevc"

    .line 184
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/video/editor/SlomoVideoEditor;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "color-format"

    const/16 v4, 0x15

    .line 185
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v6, 0x0

    .line 187
    new-instance v3, Lcn/nubia/videogenerator/codec/Decoder;

    invoke-direct {v3, v2}, Lcn/nubia/videogenerator/codec/Decoder;-><init>(Landroid/media/MediaFormat;)V

    iput-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    const/4 v11, 0x1

    .line 189
    invoke-virtual {v3, v11}, Lcn/nubia/videogenerator/codec/Decoder;->setAlignmentFlag(Z)V

    .line 190
    iget-object v5, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v7, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mRotation:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcn/nubia/videogenerator/codec/Decoder;->prepareVideoTrim(IIZLandroid/graphics/RectF;I)V

    .line 191
    iget-boolean v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mIsWallPaper:Z

    if-nez v3, :cond_4

    .line 192
    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    iget-object v5, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v5, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mSlomoSkipCount:I

    invoke-virtual {v3, v5}, Lcn/nubia/videogenerator/codec/Decoder;->setSkipCount(I)V

    .line 193
    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v5, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    .line 194
    iget-object v12, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-boolean v13, v3, Lcn/nubia/video/editor/VideoEditorInfo;->isSlomoVideo:Z

    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v14, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v5, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    move-wide/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcn/nubia/videogenerator/codec/Decoder;->setSlomoParams(ZJJ)V

    goto :goto_2

    .line 198
    :cond_0
    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    iget-object v5, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-boolean v5, v5, Lcn/nubia/video/editor/VideoEditorInfo;->isSlomoVideo:Z

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v9, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v12, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    cmp-long v6, v9, v12

    if-lez v6, :cond_1

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v9, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v12, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v9, v12

    move-wide/from16 v18, v9

    goto :goto_0

    :cond_1
    move-wide/from16 v18, v7

    :goto_0
    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v9, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v12, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    cmp-long v6, v9, v12

    if-lez v6, :cond_2

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v6, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    iget-object v8, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v8, v8, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    iget-object v8, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v8, v8, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    add-long/2addr v6, v8

    iget-object v8, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v8, v8, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    goto :goto_1

    :cond_2
    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v9, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v12, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    cmp-long v6, v9, v12

    if-gez v6, :cond_3

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v6, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    iget-object v8, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v8, v8, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    :goto_1
    sub-long v7, v6, v8

    :cond_3
    move-wide/from16 v20, v7

    move-object/from16 v16, v3

    move/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Lcn/nubia/videogenerator/codec/Decoder;->setSlomoParams(ZJJ)V

    .line 205
    :cond_4
    :goto_2
    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/video/editor/SlomoVideoEditor;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "width"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    .line 206
    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/video/editor/SlomoVideoEditor;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "height"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    const-string v3, "SlomoVideoEditor"

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mInfo.mVideoWidth= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v6, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mInfo.mVideoHeight= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v6, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "mime"

    .line 209
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v3, Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-direct {v3}, Lcn/nubia/videogenerator/codec/VideoParams;-><init>()V

    if-eqz v2, :cond_5

    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 212
    invoke-virtual {v3, v0}, Lcn/nubia/videogenerator/codec/VideoParams;->setMimeType(Ljava/lang/String;)V

    .line 214
    :cond_5
    iget-object v0, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameRate:I

    invoke-virtual {v3, v0}, Lcn/nubia/videogenerator/codec/VideoParams;->setFps(I)V

    .line 215
    iget-object v0, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoWidth:I

    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mVideoHeight:I

    invoke-virtual {v3, v0, v2}, Lcn/nubia/videogenerator/codec/VideoParams;->setSize(II)V

    .line 216
    invoke-virtual {v3, v4}, Lcn/nubia/videogenerator/codec/VideoParams;->setColorFormat(I)V

    const/4 v0, 0x0

    .line 218
    invoke-virtual {v3, v0}, Lcn/nubia/videogenerator/codec/VideoParams;->setMtkHighFlag(Z)V

    .line 219
    new-instance v2, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v2, v3}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/VideoParams;)V

    iput-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 220
    invoke-virtual {v2, v0}, Lcn/nubia/videogenerator/codec/Encoder;->setEncoderEndFlag(Z)V

    .line 221
    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v3, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameInterval:J

    invoke-virtual {v2, v3, v4}, Lcn/nubia/videogenerator/codec/Encoder;->setFrameInterval(J)V

    .line 222
    iget-boolean v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mIsVideoNeedEncode:Z

    if-eqz v2, :cond_6

    .line 223
    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    invoke-virtual {v2, v3, v1, v1}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setDataListener(Lcn/nubia/videogenerator/common/DecoderDataListener;Lcn/nubia/videogenerator/common/OutputListener;Lcn/nubia/videogenerator/common/CodecListener;)V

    .line 224
    iget-object v4, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v5, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v7, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    int-to-long v9, v2

    invoke-virtual/range {v4 .. v10}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setVideoTrimParmas(JJJ)V

    .line 225
    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v3, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameRate:I

    invoke-virtual {v2, v3}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setFps(I)V

    .line 226
    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v3, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v3, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mTrimMode:I

    invoke-virtual {v2, v3}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setTrimType(I)V

    .line 227
    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    invoke-virtual {v2, v0}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setVideoHeadFlag(Z)V

    .line 228
    iget-object v2, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    invoke-virtual {v2, v0}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setVideoTailFlag(Z)V

    .line 230
    :cond_6
    new-instance v0, Lcn/nubia/videogenerator/codec/CodecRender;

    invoke-direct {v0}, Lcn/nubia/videogenerator/codec/CodecRender;-><init>()V

    iput-object v0, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 231
    invoke-direct {v1, v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->setVideoDecoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    .line 232
    iget-object v0, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    invoke-direct {v1, v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->setVideoEncoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    .line 233
    iget v0, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mMuxTracks:I

    add-int/2addr v0, v11

    iput v0, v1, Lcn/nubia/video/editor/SlomoVideoEditor;->mMuxTracks:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public startEdit()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mCancelFlag:Z

    if-nez v1, :cond_1

    .line 89
    iget v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mMuxTracks:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMuxTracks(I)V

    .line 90
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/video/editor/VideoEditorInfo;->mRotation:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOrientation(I)V

    .line 91
    iget-wide v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 92
    iget-object v2, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMaxDuration(J)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mCancelFlag:Z

    if-nez v1, :cond_2

    .line 99
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 101
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mCancelFlag:Z

    if-nez v0, :cond_3

    .line 102
    new-instance v0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;-><init>(Lcn/nubia/video/editor/SlomoVideoEditor;Lcn/nubia/video/editor/SlomoVideoEditor$1;)V

    iput-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoderStart:Ljava/lang/Thread;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Lcn/nubia/videogenerator/local/VideoEditorSource;->stop()V

    .line 138
    iput-object v2, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    .line 141
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Decoder;->release()V

    .line 143
    iput-object v2, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 145
    :cond_1
    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 147
    iput-object v2, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 149
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v1, :cond_3

    .line 150
    invoke-virtual {v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->stop()V

    .line 151
    iput-object v2, p0, Lcn/nubia/video/editor/SlomoVideoEditor;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    .line 153
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
