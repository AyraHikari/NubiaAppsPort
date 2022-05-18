.class public Lcom/huanju/ssp/base/video/player_messages/ClearPlayerInstance;
.super Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;
.source "ClearPlayerInstance.java"


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 0
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->clearPlayerInstance()V

    .line 19
    return-void
.end method

.method protected stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PLAYER_INSTANCE_CLEARED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method protected stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->CLEARING_PLAYER_INSTANCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method
