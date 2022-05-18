.class public Lcn/nubia/music/app/NubiaCompatMediaPlayer;
.super Ljava/lang/Object;
.source "NubiaCompatMediaPlayer.java"


# static fields
.field public static final LOCAL_MODE:I = 0x0

.field public static final STREAM_MODE:I = 0x1


# instance fields
.field private mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mMode:I

    .line 17
    :try_start_0
    invoke-static {p1}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->getInstance(Landroid/content/Context;)Lcn/nubia/music/online/api/NubiaLocalPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 20
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
    .line 39
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentPlayer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isStreamPlayer()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mMode:I

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
    .line 51
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->pause()V

    .line 52
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->release()V

    .line 56
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->reset()V

    .line 48
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0, p1}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->seekTo(I)V

    .line 68
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mMode:I

    .line 27
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->setVolume(FF)V

    .line 72
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->mLPlayer:Lcn/nubia/music/online/api/NubiaLocalPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->start()V

    .line 44
    return-void
.end method
