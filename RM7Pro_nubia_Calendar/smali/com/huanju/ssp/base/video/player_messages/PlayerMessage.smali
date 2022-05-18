.class public abstract Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"

# interfaces
.implements Lcom/huanju/ssp/base/video/player_messages/Message;


# static fields
.field private static final SHOW_LOGS:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

.field private final mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .line 21
    iput-object p2, p0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->mCallback:Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .line 22
    return-void
.end method


# virtual methods
.method protected final getCurrentState()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->mCallback:Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    invoke-interface {v0}, Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;->getCurrentPlayerState()Lcom/huanju/ssp/base/video/PlayerMessageState;

    move-result-object v0

    return-object v0
.end method

.method public final messageFinished()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->mCallback:Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;->setVideoPlayerState(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/PlayerMessageState;)V

    .line 36
    return-void
.end method

.method protected abstract performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
.end method

.method public final polledFromQueue()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->mCallback:Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;->setVideoPlayerState(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/PlayerMessageState;)V

    .line 31
    return-void
.end method

.method public final runMessage()V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> runMessage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    .line 41
    sget-object v0, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< runMessage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method protected abstract stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;
.end method

.method protected abstract stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
