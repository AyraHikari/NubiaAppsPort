.class public Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;
.super Ljava/lang/Object;
.source "SingleVideoPlayerManager.java"

# interfaces
.implements Lcom/huanju/ssp/base/video/manager/VideoPlayerManager;
.implements Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;
.implements Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huanju/ssp/base/video/manager/VideoPlayerManager",
        "<",
        "Lcom/huanju/ssp/base/video/meta/MetaData;",
        ">;",
        "Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;",
        "Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;"
    }
.end annotation


# static fields
.field private static final SHOW_LOGS:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

.field private mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field private final mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

.field private final mPlayerItemChangeListener:Lcom/huanju/ssp/base/video/manager/PlayerItemChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huanju/ssp/base/video/manager/PlayerItemChangeListener;)V
    .locals 1
    .param p1, "playerItemChangeListener"    # Lcom/huanju/ssp/base/video/manager/PlayerItemChangeListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-direct {v0}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .line 50
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->IDLE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    iput-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 53
    iput-object p1, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerItemChangeListener:Lcom/huanju/ssp/base/video/manager/PlayerItemChangeListener;

    .line 54
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->STARTED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->STARTING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 158
    .local v0, "isPlaying":Z
    :goto_0
    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInPlaybackState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0

    .line 157
    .end local v0    # "isPlaying":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetReleaseClearCurrentPlayer()V
    .locals 3

    .prologue
    .line 337
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetReleaseClearCurrentPlayer, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentPlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager$1;->$SwitchMap$com$huanju$ssp$base$video$PlayerMessageState:[I

    iget-object v1, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/PlayerMessageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 377
    :goto_0
    :pswitch_0
    return-void

    .line 363
    :pswitch_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    new-instance v1, Lcom/huanju/ssp/base/video/player_messages/Reset;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/huanju/ssp/base/video/player_messages/Reset;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V

    .line 367
    :pswitch_2
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    new-instance v1, Lcom/huanju/ssp/base/video/player_messages/Release;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/huanju/ssp/base/video/player_messages/Release;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V

    .line 371
    :pswitch_3
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    new-instance v1, Lcom/huanju/ssp/base/video/player_messages/ClearPlayerInstance;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/huanju/ssp/base/video/player_messages/ClearPlayerInstance;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V

    goto :goto_0

    .line 375
    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setNewViewForPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 3
    .param p1, "currentItemMetaData"    # Lcom/huanju/ssp/base/video/meta/MetaData;
    .param p2, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 280
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNewViewForPlayback, currentItemMetaData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", videoPlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    new-instance v1, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;

    invoke-direct {v1, p1, p2, p0}, Lcom/huanju/ssp/base/video/SetNewViewForPlayback;-><init>(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V

    .line 282
    return-void
.end method

.method private startNewPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .param p1, "currentItemMetaData"    # Lcom/huanju/ssp/base/video/meta/MetaData;
    .param p2, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p3, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 179
    invoke-virtual {p2, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->addMediaPlayerListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V

    .line 180
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNewPlayback, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->clearAllPendingMessages(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->setNewViewForPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    .line 189
    invoke-direct {p0, p2, p3}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->startPlayback(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V

    .line 190
    return-void
.end method

.method private startNewPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;)V
    .locals 3
    .param p1, "currentItemMetaData"    # Lcom/huanju/ssp/base/video/meta/MetaData;
    .param p2, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p3, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p2, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->addMediaPlayerListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V

    .line 200
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNewPlayback, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->clearAllPendingMessages(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->setNewViewForPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    .line 206
    invoke-direct {p0, p2, p3}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->startPlayback(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private startPlayback(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 265
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "startPlayback"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;

    const/4 v2, 0x0

    new-instance v3, Lcom/huanju/ssp/base/video/player_messages/CreateNewPlayerInstance;

    invoke-direct {v3, p1, p0}, Lcom/huanju/ssp/base/video/player_messages/CreateNewPlayerInstance;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/huanju/ssp/base/video/player_messages/SetAssetsDataSourceMessage;

    invoke-direct {v3, p1, p2, p0}, Lcom/huanju/ssp/base/video/player_messages/SetAssetsDataSourceMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/huanju/ssp/base/video/player_messages/Prepare;

    invoke-direct {v3, p1, p0}, Lcom/huanju/ssp/base/video/player_messages/Prepare;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/huanju/ssp/base/video/player_messages/Start;

    invoke-direct {v3, p1, p0}, Lcom/huanju/ssp/base/video/player_messages/Start;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessages(Ljava/util/List;)V

    .line 273
    return-void
.end method

.method private startPlayback(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;)V
    .locals 4
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 254
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "startPlayback"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huanju/ssp/base/video/player_messages/PlayerMessage;

    const/4 v2, 0x0

    new-instance v3, Lcom/huanju/ssp/base/video/player_messages/CreateNewPlayerInstance;

    invoke-direct {v3, p1, p0}, Lcom/huanju/ssp/base/video/player_messages/CreateNewPlayerInstance;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/huanju/ssp/base/video/player_messages/SetUrlDataSourceMessage;

    invoke-direct {v3, p1, p2, p0}, Lcom/huanju/ssp/base/video/player_messages/SetUrlDataSourceMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/huanju/ssp/base/video/player_messages/Prepare;

    invoke-direct {v3, p1, p0}, Lcom/huanju/ssp/base/video/player_messages/Prepare;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/huanju/ssp/base/video/player_messages/Start;

    invoke-direct {v3, p1, p0}, Lcom/huanju/ssp/base/video/player_messages/Start;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessages(Ljava/util/List;)V

    .line 262
    return-void
.end method

.method private stopResetReleaseClearCurrentPlayer()V
    .locals 3

    .prologue
    .line 289
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopResetReleaseClearCurrentPlayer, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentPlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager$1;->$SwitchMap$com$huanju$ssp$base$video$PlayerMessageState:[I

    iget-object v1, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/PlayerMessageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_0
    :pswitch_0
    return-void

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    new-instance v1, Lcom/huanju/ssp/base/video/player_messages/Stop;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/huanju/ssp/base/video/player_messages/Stop;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V

    .line 320
    :pswitch_2
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    new-instance v1, Lcom/huanju/ssp/base/video/player_messages/Reset;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/huanju/ssp/base/video/player_messages/Reset;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V

    .line 324
    :pswitch_3
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    new-instance v1, Lcom/huanju/ssp/base/video/player_messages/Release;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/huanju/ssp/base/video/player_messages/Release;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V

    .line 328
    :pswitch_4
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    new-instance v1, Lcom/huanju/ssp/base/video/player_messages/ClearPlayerInstance;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/huanju/ssp/base/video/player_messages/ClearPlayerInstance;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V

    goto :goto_0

    .line 332
    :pswitch_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCurrentPlayerState()Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 3

    .prologue
    .line 411
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPlayerState, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method public onBufferingUpdateMainThread(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 440
    return-void
.end method

.method public onErrorMainThread(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 430
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorMainThread, what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->ERROR:Lcom/huanju/ssp/base/video/PlayerMessageState;

    iput-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 436
    return-void
.end method

.method public onVideoCompletionMainThread()V
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PLAYBACK_COMPLETED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    iput-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 426
    return-void
.end method

.method public onVideoPreparedMainThread()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public onVideoSizeChangedMainThread(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 417
    return-void
.end method

.method public onVideoStoppedMainThread()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public playNewVideo(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .param p1, "currentItemMetaData"    # Lcom/huanju/ssp/base/video/meta/MetaData;
    .param p2, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p3, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    sget-object v4, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> playNewVideo, videoPlayer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentPlayer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", assetFileDescriptor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v4, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playNewVideo, currentItemMetaData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v5, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->pauseQueueProcessing(Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    if-ne v4, p2, :cond_0

    move v0, v2

    .line 130
    .local v0, "currentPlayerIsActive":Z
    :goto_0
    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .line 132
    invoke-virtual {v4}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getAssetFileDescriptorDataSource()Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    if-ne v4, p3, :cond_1

    move v1, v2

    .line 134
    .local v1, "isAlreadyPlayingTheFile":Z
    :goto_1
    sget-object v2, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playNewVideo, isAlreadyPlayingTheFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v2, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playNewVideo, currentPlayerIsActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz v0, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 139
    sget-object v2, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playNewVideo, videoPlayer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_2
    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v3, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->resumeQueueProcessing(Ljava/lang/String;)V

    .line 153
    sget-object v2, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< playNewVideo, videoPlayer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", assetFileDescriptor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .end local v0    # "currentPlayerIsActive":Z
    .end local v1    # "isAlreadyPlayingTheFile":Z
    :cond_0
    move v0, v3

    .line 129
    goto/16 :goto_0

    .restart local v0    # "currentPlayerIsActive":Z
    :cond_1
    move v1, v3

    .line 132
    goto/16 :goto_1

    .line 143
    .restart local v1    # "isAlreadyPlayingTheFile":Z
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->startNewPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_2

    .line 147
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->startNewPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_2
.end method

.method public playNewVideo(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;)V
    .locals 7
    .param p1, "currentItemMetaData"    # Lcom/huanju/ssp/base/video/meta/MetaData;
    .param p2, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p3, "videoUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    sget-object v4, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> playNewVideo, videoPlayer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentPlayer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", videoPlayerView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v5, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->pauseQueueProcessing(Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    if-ne v4, p2, :cond_0

    move v0, v2

    .line 78
    .local v0, "currentPlayerIsActive":Z
    :goto_0
    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .line 80
    invoke-virtual {v4}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getVideoUrlDataSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 82
    .local v1, "isAlreadyPlayingTheFile":Z
    :goto_1
    sget-object v2, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playNewVideo, isAlreadyPlayingTheFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v2, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playNewVideo, currentPlayerIsActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz v0, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 87
    sget-object v2, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playNewVideo, videoPlayer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_2
    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v3, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->resumeQueueProcessing(Ljava/lang/String;)V

    .line 101
    sget-object v2, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< playNewVideo, videoPlayer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", videoUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .end local v0    # "currentPlayerIsActive":Z
    .end local v1    # "isAlreadyPlayingTheFile":Z
    :cond_0
    move v0, v3

    .line 77
    goto/16 :goto_0

    .restart local v0    # "currentPlayerIsActive":Z
    :cond_1
    move v1, v3

    .line 80
    goto/16 :goto_1

    .line 91
    .restart local v1    # "isAlreadyPlayingTheFile":Z
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->startNewPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;)V

    goto :goto_2

    .line 95
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->startNewPlayback(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public resetMediaPlayer()V
    .locals 3

    .prologue
    .line 233
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> resetMediaPlayer, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->pauseQueueProcessing(Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMediaPlayer, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->clearAllPendingMessages(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->resetReleaseClearCurrentPlayer()V

    .line 241
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->resumeQueueProcessing(Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< resetMediaPlayer, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public setCurrentItem(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 2
    .param p1, "currentItemMetaData"    # Lcom/huanju/ssp/base/video/meta/MetaData;
    .param p2, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 386
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, ">> onPlayerItemChanged"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-object p2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .line 389
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerItemChangeListener:Lcom/huanju/ssp/base/video/manager/PlayerItemChangeListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/video/manager/PlayerItemChangeListener;->onPlayerItemChanged(Lcom/huanju/ssp/base/video/meta/MetaData;)V

    .line 391
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "<< onPlayerItemChanged"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method public setVideoPlayerState(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/PlayerMessageState;)V
    .locals 3
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "playerMessageState"    # Lcom/huanju/ssp/base/video/PlayerMessageState;

    .prologue
    .line 402
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setVideoPlayerState, playerMessageState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", videoPlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput-object p2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 406
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< setVideoPlayerState, playerMessageState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", videoPlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method public stopAnyPlayback()V
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> stopAnyPlayback, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->pauseQueueProcessing(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnyPlayback, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->clearAllPendingMessages(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 222
    iget-object v0, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    sget-object v1, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->resumeQueueProcessing(Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< stopAnyPlayback, mCurrentPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method
