.class Lcom/huanju/ssp/base/video/ui/VideoPlayerView$6;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
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
    .line 590
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$6;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$6;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$6;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->setSurfaceTextureAvailable(Z)V

    .line 598
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$6;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 599
    monitor-exit v1

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
