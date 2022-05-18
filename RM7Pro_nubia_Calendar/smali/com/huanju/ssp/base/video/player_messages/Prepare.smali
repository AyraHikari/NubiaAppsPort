.class public Lcom/huanju/ssp/base/video/player_messages/Prepare;
.super Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;
.source "Prepare.java"


# static fields
.field private static final SHOW_LOGS:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mResultPlayerMessageState:Lcom/huanju/ssp/base/video/PlayerMessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/huanju/ssp/base/video/player_messages/Prepare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/player_messages/Prepare;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 4
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->prepare()V

    .line 31
    invoke-virtual {p1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getCurrentState()Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    move-result-object v0

    .line 32
    .local v0, "resultOfPrepare":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    sget-object v1, Lcom/huanju/ssp/base/video/player_messages/Prepare;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultOfPrepare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v1, Lcom/huanju/ssp/base/video/player_messages/Prepare$1;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 43
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandled state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :pswitch_1
    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->PREPARED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    iput-object v1, p0, Lcom/huanju/ssp/base/video/player_messages/Prepare;->mResultPlayerMessageState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    goto :goto_0

    .line 50
    :pswitch_2
    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->ERROR:Lcom/huanju/ssp/base/video/PlayerMessageState;

    iput-object v1, p0, Lcom/huanju/ssp/base/video/player_messages/Prepare;->mResultPlayerMessageState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huanju/ssp/base/video/player_messages/Prepare;->mResultPlayerMessageState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method protected stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PREPARING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method
