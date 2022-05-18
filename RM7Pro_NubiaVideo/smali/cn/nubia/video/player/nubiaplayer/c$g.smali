.class Lcn/nubia/video/player/nubiaplayer/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/c;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->D(Lcn/nubia/video/player/nubiaplayer/c;)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->O(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/p;

    move-result-object p1

    const v0, 0x7f0f0082

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/p;->g(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->O(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/p;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/p;->e()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->p(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/c$c;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->Z(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/video/player/c$c;->b(Z)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->o()V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->k0(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c$g;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/c;->v0(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/c;->x0(Lcn/nubia/video/player/nubiaplayer/c;ZZ)V

    return-void
.end method
