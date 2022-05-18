.class public Lcn/nubia/video/player/nubiaplayer/b;
.super Lcn/nubia/video/player/d;
.source "SourceFile"


# instance fields
.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/d;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/d;->y(Z)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/b;->g:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/b;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/d;->x(Z)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/b;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c004a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/a;

    iget-object p3, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p2, p3, p1, v0, p0}, Lcn/nubia/video/player/nubiaplayer/a;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Lcn/nubia/video/player/e;)V

    iput-object p2, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p2}, Lcn/nubia/video/player/PlayerActivity;->n()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/d;->c:Landroid/net/Uri;

    .line 4
    new-instance p2, Lcn/nubia/video/player/o;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/video/player/d;->c:Landroid/net/Uri;

    invoke-direct {p2, p3, v0, p0}, Lcn/nubia/video/player/o;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcn/nubia/video/player/e;)V

    iput-object p2, p0, Lcn/nubia/video/player/d;->d:Lcn/nubia/video/player/o;

    .line 5
    iget-object p2, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p2}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p2

    .line 6
    new-instance p3, Lcn/nubia/video/player/h;

    iget-object v0, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    invoke-direct {p3, v0, v1}, Lcn/nubia/video/player/h;-><init>(Landroid/content/Context;Lcn/nubia/video/player/c;)V

    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcn/nubia/video/player/h;

    iget-object v0, p0, Lcn/nubia/video/player/d;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/video/player/d;->a:Lcn/nubia/video/player/c;

    invoke-direct {p3, v0, v1}, Lcn/nubia/video/player/h;-><init>(Landroid/content/Context;Lcn/nubia/video/player/c;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0900e2

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/b;->g:Landroid/view/View;

    const p2, 0x7f0900df

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/b;->h:Landroid/view/View;

    .line 10
    invoke-virtual {p0}, Lcn/nubia/video/player/d;->C()V

    return-object p1
.end method
