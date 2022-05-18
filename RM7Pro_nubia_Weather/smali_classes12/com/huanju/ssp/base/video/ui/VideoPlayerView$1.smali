.class Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$000(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContentHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContentWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;->onVideoSizeChangedBackgroundThread(II)V

    .line 342
    return-void
.end method
