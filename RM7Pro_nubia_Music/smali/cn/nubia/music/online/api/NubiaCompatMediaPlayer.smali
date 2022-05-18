.class public Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;
.super Ljava/lang/Object;
.source "NubiaCompatMediaPlayer.java"


# static fields
.field private static final LOCAL_MODE:I


# instance fields
.field private mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

.field private mMode:I

.field private mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    .line 17
    :try_start_0
    invoke-static {p1}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->getInstance(Landroid/content/Context;)Lcn/nubia/music/online/api/NubiaLocalPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    .line 18
    invoke-static {p1}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->getInstance(Landroid/content/Context;)Lcn/nubia/music/online/api/NubiaStreamPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 21
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

    goto :goto_0
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->getAudioSessionId()I

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->getAudioSessionId()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPlayer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 93
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->getDuration()J

    move-result-wide v0

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isStreamPlayer()Z
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->pause()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->pause()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->release()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->release()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->reset()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->reset()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0, p1}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->seekTo(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0, p1}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0, p1}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->setAudioSessionId(I)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    .line 27
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->setVolume(FF)V

    .line 109
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mMode:I

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->start()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/online/api/NubiaCompatMediaPlayer;->mSPlayer:Lcn/nubia/music/online/api/NubiaStreamPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaStreamPlayer;->start()V

    goto :goto_0
.end method
