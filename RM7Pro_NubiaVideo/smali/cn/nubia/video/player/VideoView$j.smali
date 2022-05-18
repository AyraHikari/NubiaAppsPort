.class Lcn/nubia/video/player/VideoView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p3}, Lcn/nubia/video/player/VideoView;->j(Lcn/nubia/video/player/VideoView;I)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p4}, Lcn/nubia/video/player/VideoView;->k(Lcn/nubia/video/player/VideoView;I)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0, p1}, Lcn/nubia/video/player/VideoView;->l(Lcn/nubia/video/player/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->d(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->g(Lcn/nubia/video/player/VideoView;I)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->l(Lcn/nubia/video/player/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {p1, v1}, Lcn/nubia/video/player/VideoView;->m(Lcn/nubia/video/player/VideoView;I)I

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    iget-boolean v1, p1, Lcn/nubia/video/player/VideoView;->M:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->n(Lcn/nubia/video/player/VideoView;Z)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$j;->a:Lcn/nubia/video/player/VideoView;

    iput-boolean v0, p1, Lcn/nubia/video/player/VideoView;->M:Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->n(Lcn/nubia/video/player/VideoView;Z)V

    :goto_0
    return-void
.end method
