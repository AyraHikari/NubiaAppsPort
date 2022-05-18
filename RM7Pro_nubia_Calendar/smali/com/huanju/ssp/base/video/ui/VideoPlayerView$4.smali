.class Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;
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
    .line 455
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">> run, onVideoSizeAvailable"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoSizeAvailable, mReadyForPlaybackIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v3}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContentHeight()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContentWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 466
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "run, onVideoSizeAvailable, notifyAll"

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<< run, onVideoSizeAvailable"

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$000(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$000(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContentHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContentWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;->onVideoSizeChangedBackgroundThread(II)V

    .line 476
    :cond_1
    return-void

    .line 472
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
