.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$MyAnimationListener;
.super Ljava/lang/Object;
.source "NubiaPlayerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$MyAnimationListener;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$MyAnimationListener;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$MyAnimationListener;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$MyAnimationListener;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2700(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
