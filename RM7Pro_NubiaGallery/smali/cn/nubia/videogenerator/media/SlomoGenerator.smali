.class public Lcn/nubia/videogenerator/media/SlomoGenerator;
.super Ljava/lang/Object;
.source "SlomoGenerator.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator;
.implements Lcn/nubia/videogenerator/common/OutputListener;
.implements Lcn/nubia/videogenerator/common/CodecListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SlomoGenerator"


# instance fields
.field private mCameraFps:I

.field private mCancelFlag:Z

.field private mDegrees:I

.field private mEndSpeedChange:J

.field private mFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mFps:I

.field private mIsVideoAlign:Z

.field private mMaxDuration:J

.field private mMuxTracks:I

.field private mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

.field private mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

.field private mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

.field private mOutputPath:Ljava/lang/String;

.field private mSkipCount:I

.field private mStartSpeedChange:J

.field private mStopLock:Ljava/lang/Object;

.field private mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

.field private mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

.field private mVideoDuration:J

.field private mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

.field private mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mVideoEncoderStart:Ljava/lang/Thread;

.field private mVideoHeight:I

.field private mVideoPrevPts:J

.field private mVideoWidth:I

.field private mWriteLock:Ljava/lang/Object;

.field private mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    .line 28
    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 29
    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 30
    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    .line 31
    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOutputPath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 32
    iput-wide v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mMaxDuration:J

    .line 33
    iput-wide v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoPrevPts:J

    const/4 v3, 0x0

    .line 36
    iput v3, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mMuxTracks:I

    const/16 v4, 0x1e

    .line 39
    iput v4, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mFps:I

    const/16 v4, 0x1e0

    .line 40
    iput v4, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCameraFps:I

    const/16 v4, 0x10

    .line 41
    iput v4, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mSkipCount:I

    .line 45
    iput v3, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mDegrees:I

    .line 46
    iput-wide v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDuration:J

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mFormats:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoderStart:Ljava/lang/Thread;

    .line 50
    iput-boolean v3, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCancelFlag:Z

    .line 51
    iput-boolean v3, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mIsVideoAlign:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriteLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mStopLock:Ljava/lang/Object;

    .line 56
    iput p3, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCameraFps:I

    .line 57
    invoke-direct {p0, p1, p2}, Lcn/nubia/videogenerator/media/SlomoGenerator;->setVideoParams(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/videogenerator/media/SlomoGenerator;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCancelFlag:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/codec/Decoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/local/VideoEditorSource;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    return-object p0
.end method

.method private setMaxDuration(J)V
    .locals 0

    .line 271
    iput-wide p1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mMaxDuration:J

    return-void
.end method

.method private setOutputPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOutputPath:Ljava/lang/String;

    .line 80
    new-instance p1, Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    return-void
.end method

.method private setVideoAlign()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mIsVideoAlign:Z

    if-eqz v0, :cond_1

    .line 66
    iget v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoWidth:I

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 68
    iput v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoWidth:I

    .line 70
    :cond_0
    iget v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoHeight:I

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 72
    iput v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoHeight:I

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mInfo.mVideoWidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInfo.mVideoHeight= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlomoGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setVideoDecoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/codec/CodecRender;->setDecoder(Lcn/nubia/videogenerator/codec/DataOutput;)V

    :cond_0
    return-void
.end method

.method private setVideoEncoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->setRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    :cond_0
    return-void
.end method

.method private setVideoParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "mt"

    .line 162
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/local/VideoEditorSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-direct {v0, v3}, Lcn/nubia/videogenerator/local/VideoEditorSource;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    .line 164
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    :goto_1
    iget-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/VideoEditorSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "durationUs"

    .line 170
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDuration:J

    const/4 v4, 0x0

    :try_start_2
    const-string v5, "rotation-degrees"

    .line 172
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mDegrees:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 174
    :catch_2
    iput v4, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mDegrees:I

    :goto_2
    :try_start_3
    const-string v5, "frame-rate"

    .line 177
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mFps:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    const/16 v5, 0x1e

    .line 179
    iput v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mFps:I

    :goto_3
    :try_start_4
    const-string v5, "width"

    .line 182
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoWidth:I

    const-string v5, "height"

    .line 183
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoHeight:I

    .line 184
    iget-wide v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDuration:J

    const-wide/16 v7, 0x4

    div-long v9, v5, v7

    iput-wide v9, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mStartSpeedChange:J

    const-wide/16 v9, 0x3

    mul-long/2addr v5, v9

    .line 185
    div-long/2addr v5, v7

    iput-wide v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mEndSpeedChange:J

    .line 186
    iget v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCameraFps:I

    iget v6, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mFps:I

    div-int/2addr v5, v6

    iput v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mSkipCount:I

    const-string v5, "color-format"

    const/16 v6, 0x15

    .line 188
    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 191
    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 193
    invoke-static/range {p1 .. p1}, Lcn/nubia/videogenerator/common/ParamSetUtils;->getParamSet(Ljava/lang/String;)Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    move-result-object v3

    .line 194
    invoke-static {v3}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isMTKHighProfileParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    const-string v8, "SlomoGenerator"

    if-eqz v5, :cond_0

    :try_start_5
    const-string v5, " isMtkHigh "

    .line 195
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_4

    :cond_0
    move v5, v4

    .line 198
    :goto_4
    invoke-static {v3}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isMTKSlowMotionParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " isMtkSlow "

    .line 199
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    goto :goto_5

    :cond_1
    move v3, v4

    move v9, v7

    goto :goto_6

    :cond_2
    move v3, v4

    :goto_5
    move v5, v3

    move v9, v5

    .line 204
    :goto_6
    new-instance v8, Lcn/nubia/videogenerator/codec/Decoder;

    invoke-direct {v8, v0}, Lcn/nubia/videogenerator/codec/Decoder;-><init>(Landroid/media/MediaFormat;)V

    iput-object v8, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 205
    iget v10, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mSkipCount:I

    invoke-virtual {v8, v10}, Lcn/nubia/videogenerator/codec/Decoder;->setSkipCount(I)V

    .line 206
    iget-object v11, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    const/4 v12, 0x1

    iget-wide v13, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mStartSpeedChange:J

    move/from16 p1, v5

    iget-wide v4, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mEndSpeedChange:J

    move-wide v15, v4

    invoke-virtual/range {v11 .. v16}, Lcn/nubia/videogenerator/codec/Decoder;->setSlomoParams(ZJJ)V

    .line 207
    iget-object v4, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    invoke-virtual {v4, v7}, Lcn/nubia/videogenerator/codec/Decoder;->setAlignmentFlag(Z)V

    .line 208
    iget-object v4, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    invoke-virtual {v4, v7}, Lcn/nubia/videogenerator/codec/Decoder;->setIterpolation(Z)V

    .line 209
    iget-object v8, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    iget v10, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mDegrees:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcn/nubia/videogenerator/codec/Decoder;->prepareVideoTrim(IIZLandroid/graphics/RectF;I)V

    .line 210
    invoke-direct/range {p0 .. p0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->setVideoAlign()V

    .line 212
    new-instance v4, Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-direct {v4}, Lcn/nubia/videogenerator/codec/VideoParams;-><init>()V

    const-string v5, "mime"

    .line 213
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/nubia/videogenerator/codec/VideoParams;->setMimeType(Ljava/lang/String;)V

    .line 214
    iget v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mFps:I

    invoke-virtual {v4, v0}, Lcn/nubia/videogenerator/codec/VideoParams;->setFps(I)V

    .line 215
    iget v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoWidth:I

    iget v5, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoHeight:I

    invoke-virtual {v4, v0, v5}, Lcn/nubia/videogenerator/codec/VideoParams;->setSize(II)V

    .line 217
    invoke-virtual {v4, v6}, Lcn/nubia/videogenerator/codec/VideoParams;->setColorFormat(I)V

    .line 219
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {v4, v3}, Lcn/nubia/videogenerator/codec/VideoParams;->setMtkSlowFlag(Z)V

    move/from16 v5, p1

    .line 221
    invoke-virtual {v4, v5}, Lcn/nubia/videogenerator/codec/VideoParams;->setMtkHighFlag(Z)V

    goto :goto_7

    :cond_3
    move/from16 v5, p1

    .line 223
    :goto_7
    invoke-virtual {v4, v5}, Lcn/nubia/videogenerator/codec/VideoParams;->setMtkHighFlag(Z)V

    .line 224
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v0, v4}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/VideoParams;)V

    iput-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const/4 v2, 0x0

    .line 225
    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/codec/Encoder;->setEncoderEndFlag(Z)V

    .line 226
    iget-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const-wide/32 v2, 0xf4240

    iget v4, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mFps:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcn/nubia/videogenerator/codec/Encoder;->setFrameInterval(J)V

    .line 227
    iget-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v2, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    invoke-virtual {v0, v2, v1, v1}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setDataListener(Lcn/nubia/videogenerator/common/DecoderDataListener;Lcn/nubia/videogenerator/common/OutputListener;Lcn/nubia/videogenerator/common/CodecListener;)V

    .line 228
    iget-object v8, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    const-wide/16 v9, 0x0

    iget-wide v2, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDuration:J

    const-wide/16 v4, 0x3e8

    div-long v11, v2, v4

    div-long v13, v2, v4

    invoke-virtual/range {v8 .. v14}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setVideoTrimParmas(JJJ)V

    .line 229
    iget-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setTrimType(I)V

    .line 230
    iget-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setVideoHeadFlag(Z)V

    .line 231
    iget-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    invoke-virtual {v0, v2}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setVideoTailFlag(Z)V

    .line 233
    new-instance v0, Lcn/nubia/videogenerator/codec/CodecRender;

    invoke-direct {v0}, Lcn/nubia/videogenerator/codec/CodecRender;-><init>()V

    iput-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    .line 234
    invoke-direct {v1, v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->setVideoDecoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    .line 235
    iget-object v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoCodecRender:Lcn/nubia/videogenerator/codec/CodecRender;

    invoke-direct {v1, v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->setVideoEncoderRender(Lcn/nubia/videogenerator/codec/CodecRender;)V

    move-object/from16 v2, p2

    .line 236
    invoke-direct {v1, v2}, Lcn/nubia/videogenerator/media/SlomoGenerator;->setOutputPath(Ljava/lang/String;)V

    .line 237
    iget-wide v2, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDuration:J

    iget v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mSkipCount:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    div-long v4, v2, v4

    const-wide/16 v8, 0x2

    mul-long/2addr v2, v8

    add-long/2addr v4, v2

    .line 238
    invoke-direct {v1, v4, v5}, Lcn/nubia/videogenerator/media/SlomoGenerator;->setMaxDuration(J)V

    .line 239
    iget v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mMuxTracks:I

    add-int/2addr v0, v7

    iput v0, v1, Lcn/nubia/videogenerator/media/SlomoGenerator;->mMuxTracks:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_8

    :catch_5
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SlomoGenerator"

    const-string v1, "cancel editor "

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 151
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCancelFlag:Z

    .line 152
    invoke-virtual {p0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
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

    .line 154
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 157
    throw v0
.end method

.method public isEmptyOfInputQueue()Z
    .locals 4

    .line 323
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v3, :cond_1

    .line 325
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Encoder;->isEmptyOfInputQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Decoder;->isEmptyOfInputQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 326
    :cond_1
    iget-object v3, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v3, :cond_2

    .line 327
    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/Decoder;->isEmptyOfInputQueue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_2
    if-eqz v1, :cond_3

    .line 329
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Encoder;->isEmptyOfInputQueue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 331
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

    .line 317
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->isBufferUpperLimit(I)Z

    move-result p1

    return p1
.end method

.method public isMuxerStarted()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 5

    .line 291
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCancelFlag:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video/"

    .line 293
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoPrevPts:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 295
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoPrevPts:J

    .line 296
    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v1, p1, p2, p3}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 298
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

    .line 284
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputError()V
    .locals 2

    const-string v0, "SlomoGenerator"

    const-string v1, " encoder error"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/Generator$OnErrorListener;->onError(I)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    .line 276
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

    const-string v1, "SlomoGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/videogenerator/common/Generator$OnErrorListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOnErrorListener:Lcn/nubia/videogenerator/common/Generator$OnErrorListener;

    return-void
.end method

.method public setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    return-void
.end method

.method public setVideoAlignFlag(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mIsVideoAlign:Z

    return-void
.end method

.method public startEdit()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCancelFlag:Z

    if-nez v1, :cond_1

    .line 86
    iget v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mMuxTracks:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMuxTracks(I)V

    .line 87
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mDegrees:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOrientation(I)V

    .line 88
    iget-wide v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMaxDuration(J)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V

    .line 92
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCancelFlag:Z

    if-nez v1, :cond_2

    .line 96
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 98
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mCancelFlag:Z

    if-nez v0, :cond_3

    .line 99
    new-instance v0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;-><init>(Lcn/nubia/videogenerator/media/SlomoGenerator;Lcn/nubia/videogenerator/media/SlomoGenerator$1;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoderStart:Ljava/lang/Thread;

    .line 100
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

    .line 128
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Lcn/nubia/videogenerator/local/VideoEditorSource;->stop()V

    .line 131
    iput-object v2, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEditorSource:Lcn/nubia/videogenerator/local/VideoEditorSource;

    .line 133
    :cond_0
    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Decoder;->release()V

    .line 135
    iput-object v2, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoDecoder:Lcn/nubia/videogenerator/codec/Decoder;

    .line 137
    :cond_1
    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 139
    iput-object v2, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mVideoEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 141
    :cond_2
    iget-object v1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->stop()V

    .line 143
    iput-object v2, p0, Lcn/nubia/videogenerator/media/SlomoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    .line 145
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
