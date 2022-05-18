.class public Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILelinkPlayer;


# static fields
.field private static final a:Ljava/lang/String; = "LelinkPlayerImpl"


# instance fields
.field private b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    .line 29
    return-void
.end method


# virtual methods
.method public addVolume()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->addVolume()V

    .line 109
    :cond_0
    return-void
.end method

.method public canPlayLocalAudio(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->canPlayLocalAudio(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPlayLocalPhoto(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->canPlayLocalPhoto(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPlayLocalVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->canPlayLocalVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPlayOnlieAudio(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->canPlayOnlieAudio(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPlayOnliePhoto(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->canPlayOnliePhoto(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPlayOnlieVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->canPlayOnlieVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 36
    :cond_0
    return-void
.end method

.method public disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectLelinkServiceInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->getConnectLelinkServiceInfos()Ljava/util/List;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V

    .line 207
    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V

    .line 200
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->pause()V

    .line 88
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->release()V

    .line 214
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->resume()V

    .line 95
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->seekTo(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public varargs sendRelevantInfo(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->sendRelevantInfo(I[Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setInteractiveAdListener(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->setInteractiveAdListener(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V

    .line 193
    :cond_0
    return-void
.end method

.method public varargs setLelinkServiceInfoOption(I[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->setLelinkServiceInfoOption(I[Ljava/lang/Object;)Z

    move-result v0

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs setOption(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->setOption(I[Ljava/lang/Object;)V

    .line 235
    :cond_0
    return-void
.end method

.method public setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setRelevantInfoListener(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->setRelevantInfoListener(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->setVolume(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->start()V

    .line 80
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->stop()V

    .line 130
    :cond_0
    return-void
.end method

.method public subVolume()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayer;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayer;->subVolume()V

    .line 116
    :cond_0
    return-void
.end method
