.class Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;
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
    .line 386
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$000(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;->onVideoPreparedBackgroundThread()V

    .line 390
    return-void
.end method
