.class public abstract Lcom/huanju/ssp/base/video/player_messages/SetDataSourceMessage;
.super Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;
.source "SetDataSourceMessage.java"


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
.method protected stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->DATA_SOURCE_SET:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method protected stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->SETTING_DATA_SOURCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method
