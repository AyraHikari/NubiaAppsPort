.class Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->onErrorMainThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    iput p2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;->val$what:I

    iput p3, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;->this$0:Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->access$000(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;->val$what:I

    iget v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;->val$extra:I

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;->onErrorBackgroundThread(II)V

    .line 423
    return-void
.end method
