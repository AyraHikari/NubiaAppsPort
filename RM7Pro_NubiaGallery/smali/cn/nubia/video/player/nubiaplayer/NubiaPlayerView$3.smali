.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;
.super Ljava/lang/Object;
.source "NubiaPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setListener()V
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

    .line 96
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$900(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/VideoView;->seekTo(I)V

    .line 103
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$802(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;I)I

    .line 105
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onPlayPause()V

    return-void
.end method
