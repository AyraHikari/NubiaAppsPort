.class public Lcom/huanju/ssp/base/video/player_messages/SetAssetsDataSourceMessage;
.super Lcom/huanju/ssp/base/video/player_messages/SetDataSourceMessage;
.source "SetAssetsDataSourceMessage.java"


# instance fields
.field private final mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V
    .locals 0
    .param p1, "videoPlayerView"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
    .param p2, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "callback"    # Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;

    .prologue
    .line 19
    invoke-direct {p0, p1, p3}, Lcom/huanju/ssp/base/video/player_messages/SetDataSourceMessage;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Lcom/huanju/ssp/base/video/manager/VideoPlayerManagerCallback;)V

    .line 20
    iput-object p2, p0, Lcom/huanju/ssp/base/video/player_messages/SetAssetsDataSourceMessage;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 21
    return-void
.end method


# virtual methods
.method protected performAction(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 1
    .param p1, "currentPlayer"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/base/video/player_messages/SetAssetsDataSourceMessage;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 26
    return-void
.end method
