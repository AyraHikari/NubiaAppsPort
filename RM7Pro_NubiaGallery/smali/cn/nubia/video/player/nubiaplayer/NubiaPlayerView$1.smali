.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;
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

    .line 63
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 67
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result p1

    .line 68
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipRightTime()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onTrim(II)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$400(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v3}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v3

    invoke-interface {v1, p1, v0, v2, v3}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onTrim(IIII)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v3}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onTrim(IIII)V

    :goto_0
    return-void
.end method
