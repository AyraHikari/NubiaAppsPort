.class public Lcn/nubia/video/player/common/AndroidPlayer;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer;


# static fields
.field private static final DEFAULT_PLAYBCAK_SPEED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AndroidPlayer"


# instance fields
.field private mCameraFps:I

.field private mFrameRate:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaySpeedChangeEndTime:I

.field private mPlaySpeedChangeStartTime:I

.field private mPlayerSpeed:F

.field private mRecordTime:J

.field private mRotation:I

.field private mSlomoVideoType:I

.field private mUri:Landroid/net/Uri;

.field private mbEnablePlaySpeedShift:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 21
    iput-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mFrameRate:I

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mRotation:I

    const-wide/16 v2, -0x1

    .line 25
    iput-wide v2, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mRecordTime:J

    .line 26
    iput v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlaySpeedChangeStartTime:I

    .line 27
    iput v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlaySpeedChangeEndTime:I

    const/16 v0, 0xf0

    .line 28
    iput v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mCameraFps:I

    .line 29
    iput v1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mSlomoVideoType:I

    .line 30
    iput-boolean v1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mbEnablePlaySpeedShift:Z

    .line 33
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method private setPlayerSpeed(F)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method


# virtual methods
.method public getAudioTrackCount(Landroid/content/Context;)I
    .locals 4

    .line 137
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 140
    iget-object v1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v1, 0x0

    .line 145
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v1

    .line 146
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 147
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 148
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/"

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_0
    move v1, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 157
    throw p1

    .line 156
    :catch_1
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    move p1, v1

    :goto_2
    return p1
.end method

.method public getAudioTrackIndex()I
    .locals 2

    .line 361
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 371
    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mFrameRate:I

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 337
    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    return v0
.end method

.method public getPlaySpeedChangeEndTime()I
    .locals 1

    .line 408
    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlaySpeedChangeEndTime:I

    return v0
.end method

.method public getPlaySpeedChangeStartTime()I
    .locals 1

    .line 402
    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlaySpeedChangeStartTime:I

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRotation()I
    .locals 1

    .line 381
    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mRotation:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSlomoSkipCount()I
    .locals 1

    .line 386
    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mCameraFps:I

    div-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getSlomoVideoType()I
    .locals 1

    .line 347
    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mSlomoVideoType:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public is30FpsSlomoVideo()Z
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcn/nubia/video/player/common/AndroidPlayer;->supportPlaySpeedShift()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/video/player/common/AndroidPlayer;->getFrameRate()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAdjustDegree(I)V
    .locals 0

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setAudioTrack(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/video/player/common/AndroidPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    iput-object p2, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    .line 50
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object p2, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p3, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    invoke-static {p1, p3}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/common/AndroidPlayer$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer$3;-><init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/common/AndroidPlayer$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer$2;-><init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/common/AndroidPlayer$6;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer$6;-><init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/common/AndroidPlayer$7;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer$7;-><init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/common/AndroidPlayer$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer$1;-><init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/common/AndroidPlayer$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer$4;-><init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;)V

    .line 230
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/common/AndroidPlayer$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer$5;-><init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public setPlaySpeed(F)Z
    .locals 7

    .line 292
    invoke-virtual {p0}, Lcn/nubia/video/player/common/AndroidPlayer;->is30FpsSlomoVideo()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mSlomoVideoType:I

    if-ne v0, v1, :cond_3

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    .line 294
    iput v2, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    goto :goto_0

    .line 296
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mCameraFps:I

    div-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    :cond_1
    const/high16 p1, 0x41000000    # 8.0f

    .line 298
    iput p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    .line 302
    :cond_2
    :goto_0
    iget p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    invoke-direct {p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer;->setPlayerSpeed(F)V

    return v1

    .line 305
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/video/player/common/AndroidPlayer;->is30FpsSlomoVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mSlomoVideoType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    cmpg-float p1, p1, v2

    if-gez p1, :cond_4

    .line 307
    iput v2, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    goto :goto_1

    .line 309
    :cond_4
    iput v2, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    .line 311
    :goto_1
    iget p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlayerSpeed:F

    invoke-direct {p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer;->setPlayerSpeed(F)V

    return v1

    .line 313
    :cond_5
    iget v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mFrameRate:I

    const/16 v3, 0x3c

    if-le v0, v3, :cond_7

    int-to-double v3, v0

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    div-double/2addr v3, v5

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    double-to-float p1, v5

    .line 317
    invoke-direct {p0, p1}, Lcn/nubia/video/player/common/AndroidPlayer;->setPlayerSpeed(F)V

    goto :goto_2

    .line 320
    :cond_6
    invoke-direct {p0, v2}, Lcn/nubia/video/player/common/AndroidPlayer;->setPlayerSpeed(F)V

    :goto_2
    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public setPlaySpeedChangeTime(III)V
    .locals 0

    .line 392
    iput p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlaySpeedChangeStartTime:I

    .line 393
    iput p2, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mPlaySpeedChangeEndTime:I

    if-lez p3, :cond_0

    .line 395
    iput p3, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mCameraFps:I

    :cond_0
    return-void
.end method

.method public setPlaySpeedParams(IIIJ)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 352
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mbEnablePlaySpeedShift:Z

    .line 353
    iput p1, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mSlomoVideoType:I

    .line 354
    iput p2, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mFrameRate:I

    .line 355
    iput p3, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mRotation:I

    .line 356
    iput-wide p4, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mRecordTime:J

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public supportPlaySpeedShift()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcn/nubia/video/player/common/AndroidPlayer;->mbEnablePlaySpeedShift:Z

    return v0
.end method
