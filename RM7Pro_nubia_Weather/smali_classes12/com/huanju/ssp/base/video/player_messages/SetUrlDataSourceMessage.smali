.class public Lcom/huanju/ssp/base/video/player_messages/SetUrlDataSourceMessage;
.super Lcom/huanju/ssp/base/video/player_messages/SetDataSourceMessage;
.source "SetUrlDataSourceMessage.java"


# instance fields
.field private final mVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 18
    invoke-direct {p0, p1, p3}, Lcom/huanju/ssp/base/video/player_messages/SetDataSourceMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    .line 19
    iput-object p2, p0, Lcom/huanju/ssp/base/video/player_messages/SetUrlDataSourceMessage;->mVideoUrl:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 1
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huanju/ssp/base/video/player_messages/SetUrlDataSourceMessage;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->setDataSource(Ljava/lang/String;)V

    .line 25
    return-void
.end method
