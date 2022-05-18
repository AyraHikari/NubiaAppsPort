.class public Lcn/nubia/video/player/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/IMediaPlayer;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/net/Uri;

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/s/a;->b:Landroid/net/Uri;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcn/nubia/video/player/s/a;->c:F

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcn/nubia/video/player/s/a;->d:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcn/nubia/video/player/s/a;->e:I

    .line 7
    iput v0, p0, Lcn/nubia/video/player/s/a;->f:I

    .line 8
    iput v0, p0, Lcn/nubia/video/player/s/a;->g:I

    .line 9
    iput v0, p0, Lcn/nubia/video/player/s/a;->h:I

    .line 10
    iput v1, p0, Lcn/nubia/video/player/s/a;->i:I

    .line 11
    iput-boolean v1, p0, Lcn/nubia/video/player/s/a;->j:Z

    .line 12
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    return-void
.end method

.method private a(F)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioTrackCount(Landroid/content/Context;)I
    .locals 4

    .line 1
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/s/a;->b:Landroid/net/Uri;

    invoke-static {p1, v1}, Lb/a/b/d/e;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/s/a;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v1

    .line 5
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 7
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/"

    .line 8
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

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_0
    move v1, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 10
    throw p1

    .line 11
    :catch_1
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    move p1, v1

    :goto_2
    return p1
.end method

.method public getAudioTrackIndex()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/a;->d:I

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/a;->c:F

    return v0
.end method

.method public getPlaySpeedChangeEndTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/a;->g:I

    return v0
.end method

.method public getPlaySpeedChangeStartTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/a;->f:I

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/a;->e:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSlomoSkipCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/a;->h:I

    div-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getSlomoVideoType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/a;->i:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public is30FpsSlomoVideo()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/player/s/a;->supportPlaySpeedShift()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/video/player/s/a;->getFrameRate()I

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

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAdjustDegree(I)V
    .locals 0

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setAudioTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/video/player/s/a;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

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

    .line 2
    iput-object p2, p0, Lcn/nubia/video/player/s/a;->b:Landroid/net/Uri;

    .line 3
    invoke-static {p2}, Lb/a/b/d/e;->D(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lcn/nubia/video/player/s/a;->b:Landroid/net/Uri;

    invoke-static {p1, p2}, Lb/a/b/d/e;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/s/a;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_0
    iget-object p2, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/s/a$c;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/s/a$c;-><init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/s/a$b;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/s/a$b;-><init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/s/a$f;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/s/a$f;-><init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/s/a$g;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/s/a$g;-><init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/s/a$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/s/a$a;-><init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/s/a$d;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/s/a$d;-><init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/video/player/s/a$e;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/s/a$e;-><init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public setPlaySpeed(F)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/player/s/a;->is30FpsSlomoVideo()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/nubia/video/player/s/a;->i:I

    if-ne v0, v1, :cond_3

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    .line 2
    iput v2, p0, Lcn/nubia/video/player/s/a;->c:F

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/s/a;->h:I

    div-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/video/player/s/a;->c:F

    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    :cond_1
    const/high16 p1, 0x41000000    # 8.0f

    .line 4
    iput p1, p0, Lcn/nubia/video/player/s/a;->c:F

    .line 5
    :cond_2
    :goto_0
    iget p1, p0, Lcn/nubia/video/player/s/a;->c:F

    invoke-direct {p0, p1}, Lcn/nubia/video/player/s/a;->a(F)V

    return v1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/video/player/s/a;->is30FpsSlomoVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/nubia/video/player/s/a;->i:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    cmpg-float p1, p1, v2

    if-gez p1, :cond_4

    .line 7
    iput v2, p0, Lcn/nubia/video/player/s/a;->c:F

    goto :goto_1

    .line 8
    :cond_4
    iput v2, p0, Lcn/nubia/video/player/s/a;->c:F

    .line 9
    :goto_1
    iget p1, p0, Lcn/nubia/video/player/s/a;->c:F

    invoke-direct {p0, p1}, Lcn/nubia/video/player/s/a;->a(F)V

    return v1

    .line 10
    :cond_5
    iget v0, p0, Lcn/nubia/video/player/s/a;->d:I

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

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/video/player/s/a;->a(F)V

    goto :goto_2

    .line 12
    :cond_6
    invoke-direct {p0, v2}, Lcn/nubia/video/player/s/a;->a(F)V

    :goto_2
    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public setPlaySpeedChangeTime(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/s/a;->f:I

    .line 2
    iput p2, p0, Lcn/nubia/video/player/s/a;->g:I

    if-lez p3, :cond_0

    .line 3
    iput p3, p0, Lcn/nubia/video/player/s/a;->h:I

    :cond_0
    return-void
.end method

.method public setPlaySpeedParams(IIIJ)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 1
    :goto_0
    iput-boolean p4, p0, Lcn/nubia/video/player/s/a;->j:Z

    .line 2
    iput p1, p0, Lcn/nubia/video/player/s/a;->i:I

    .line 3
    iput p2, p0, Lcn/nubia/video/player/s/a;->d:I

    .line 4
    iput p3, p0, Lcn/nubia/video/player/s/a;->e:I

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public supportPlaySpeedShift()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/s/a;->j:Z

    return v0
.end method

.method public unSelectTrack(ZZ)V
    .locals 0

    return-void
.end method
