.class public Lcom/huanju/ssp/base/video/SetNewViewForPlayback;
.super Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;
.source "SetNewViewForPlayback.java"


# instance fields
.field private final mCallback:Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

.field private final mCurrentItemMetaData:Lcom/huanju/ssp/base/video/meta/MetaData;

.field private final mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "currentItemMetaData"    # Lcom/huanju/ssp/base/video/meta/MetaData;
    .param p2, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p3, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 15
    invoke-direct {p0, p2, p3}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    .line 16
    iput-object p1, p0, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;->mCurrentItemMetaData:Lcom/huanju/ssp/base/video/meta/MetaData;

    .line 17
    iput-object p2, p0, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .line 18
    iput-object p3, p0, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;->mCallback:Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .line 19
    return-void
.end method


# virtual methods
.method protected performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 3
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;->mCallback:Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;->mCurrentItemMetaData:Lcom/huanju/ssp/base/video/meta/MetaData;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;->setCurrentItem(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    .line 29
    return-void
.end method

.method protected stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->IDLE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method protected stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->SETTING_NEW_PLAYER:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentPlayer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
