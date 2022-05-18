.class public Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;
.super Lcn/nubia/music/online/api/NubiaLocalPlayer;
.source "XiamiNubiaLocalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;

.field private mNubiaLocalPlayerCallback:Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

.field private mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mNubiaLocalPlayerCallback:Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    .line 16
    new-instance v0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;

    invoke-direct {v0, p0}, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;-><init>(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)V

    iput-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mCallback:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;

    .line 45
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 46
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mNubiaLocalPlayerCallback:Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    return-object v0
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "xiami pause"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 83
    return-void
.end method

.method public registerCallback(Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mNubiaLocalPlayerCallback:Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    .line 71
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "xiami release"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 89
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    const-string v0, "xiami reset "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 122
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 126
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xiami seekTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 105
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 51
    .line 53
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 54
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mCallback:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 55
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mCallback:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mCallback:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 58
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public setVolume(FF)V
    .locals 3

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "xiami start"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 77
    return-void
.end method
