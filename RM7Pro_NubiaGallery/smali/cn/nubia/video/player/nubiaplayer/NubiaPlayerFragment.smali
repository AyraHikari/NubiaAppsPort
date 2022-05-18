.class public Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;
.super Lcn/nubia/video/player/FragmentBase;
.source "NubiaPlayerFragment.java"


# instance fields
.field private mBottomView:Landroid/view/View;

.field private mIsWallPaper:Z

.field private mTopView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcn/nubia/video/player/FragmentBase;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mIsWallPaper:Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0c0068

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p2}, Lcn/nubia/video/player/PlayerActivity;->getUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mUri:Landroid/net/Uri;

    .line 27
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p2}, Lcn/nubia/video/player/PlayerActivity;->isWallPaper()Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mIsWallPaper:Z

    .line 28
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mIsWallPaper:Z

    move-object v1, p2

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Lcn/nubia/video/player/FragmentListener;Z)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mController:Lcn/nubia/video/player/ControllerBase;

    .line 29
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mContext:Landroid/content/Context;

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p2}, Lcn/nubia/video/player/PlayerActivity;->getVideoView()Lcn/nubia/video/player/VideoView;

    move-result-object p2

    .line 30
    new-instance p3, Lcn/nubia/video/player/OnTouchListener;

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mController:Lcn/nubia/video/player/ControllerBase;

    invoke-direct {p3, v0, v1}, Lcn/nubia/video/player/OnTouchListener;-><init>(Landroid/content/Context;Lcn/nubia/video/player/ControllerBase;)V

    invoke-virtual {p2, p3}, Lcn/nubia/video/player/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    invoke-virtual {p2}, Lcn/nubia/video/player/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcn/nubia/video/player/OnTouchListener;

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->mController:Lcn/nubia/video/player/ControllerBase;

    invoke-direct {p3, v0, v1}, Lcn/nubia/video/player/OnTouchListener;-><init>(Landroid/content/Context;Lcn/nubia/video/player/ControllerBase;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;->tryReLayout()V

    return-object p1
.end method
