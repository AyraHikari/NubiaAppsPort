.class public Lcom/huanju/ssp/base/video/player_messages/Start;
.super Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;
.source "Start.java"


# static fields
.field private static final SHOW_LOGS:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mResultPlayerMessageState:Lcom/huanju/ssp/base/video/PlayerMessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/huanju/ssp/base/video/player_messages/Start;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/player_messages/Start;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 4
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/player_messages/Start;->getCurrentState()Lcom/huanju/ssp/base/video/PlayerMessageState;

    move-result-object v0

    .line 29
    .local v0, "currentState":Lcom/huanju/ssp/base/video/PlayerMessageState;
    sget-object v1, Lcom/huanju/ssp/base/video/player_messages/Start;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v1, Lcom/huanju/ssp/base/video/player_messages/Start$1;->$SwitchMap$com$huanju$ssp$base$video$PlayerMessageState:[I

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/PlayerMessageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 50
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandled current state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :pswitch_1
    invoke-virtual {p1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->start()V

    .line 54
    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->STARTED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    iput-object v1, p0, Lcom/huanju/ssp/base/video/player_messages/Start;->mResultPlayerMessageState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->ERROR:Lcom/huanju/ssp/base/video/PlayerMessageState;

    iput-object v1, p0, Lcom/huanju/ssp/base/video/player_messages/Start;->mResultPlayerMessageState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    goto :goto_0

    .line 66
    :pswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandled current state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    nop

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
        :pswitch_0
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
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected stateAfter()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/huanju/ssp/base/video/player_messages/Start;->mResultPlayerMessageState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method protected stateBefore()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 5

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "result":Lcom/huanju/ssp/base/video/PlayerMessageState;
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/player_messages/Start;->getCurrentState()Lcom/huanju/ssp/base/video/PlayerMessageState;

    move-result-object v0

    .line 75
    .local v0, "currentState":Lcom/huanju/ssp/base/video/PlayerMessageState;
    sget-object v2, Lcom/huanju/ssp/base/video/player_messages/Start;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stateBefore, currentState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v2, Lcom/huanju/ssp/base/video/player_messages/Start$1;->$SwitchMap$com$huanju$ssp$base$video$PlayerMessageState:[I

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/PlayerMessageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 113
    :goto_0
    return-object v1

    .line 79
    :pswitch_0
    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->STARTING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 80
    goto :goto_0

    .line 99
    :pswitch_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled current state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :pswitch_2
    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->ERROR:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 103
    goto :goto_0

    .line 110
    :pswitch_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled current state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
