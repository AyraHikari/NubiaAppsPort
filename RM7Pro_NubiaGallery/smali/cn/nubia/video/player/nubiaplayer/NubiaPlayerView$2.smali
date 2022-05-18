.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$2;
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

    .line 83
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$602(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Z)Z

    .line 89
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->cancelClip()V

    .line 90
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->onFinish(Z)V

    .line 91
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$700(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->finish()V

    return-void
.end method
