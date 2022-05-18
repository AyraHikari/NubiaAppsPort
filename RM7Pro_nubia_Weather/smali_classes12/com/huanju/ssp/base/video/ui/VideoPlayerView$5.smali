.class Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->notifyTextureAvailable()V
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
    .line 540
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">> run notifyTextureAvailable"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$300(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$300(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->setSurfaceTextureAvailable(Z)V

    .line 556
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "notify ready for playback"

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 561
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<< run notifyTextureAvailable"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 550
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 552
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mMediaPlayer null, cannot set surface texture"

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
