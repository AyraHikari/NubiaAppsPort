.class public Lcom/huanju/ssp/base/video/player_messages/Release;
.super Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;
.source "Release.java"


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 0
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->release()V

    .line 21
    return-void
.end method

.method protected stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->RELEASED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method protected stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->RELEASING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method
