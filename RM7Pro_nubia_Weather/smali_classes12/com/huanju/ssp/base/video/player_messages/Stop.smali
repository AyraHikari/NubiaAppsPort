.class public Lcom/huanju/ssp/base/video/player_messages/Stop;
.super Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;
.source "Stop.java"


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "videoView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 0
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->stop()V

    .line 20
    return-void
.end method

.method protected stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->STOPPED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method protected stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->STOPPING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method
