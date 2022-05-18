.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$8;
.super Ljava/lang/Object;
.source "NubiaPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$8;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 424
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$8;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    .line 425
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$8;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3000(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$8;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$8;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2900(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/player/VideoView;->getPlaySpeed()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const-wide/16 v2, 0x78

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
