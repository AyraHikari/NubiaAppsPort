.class Lcn/nubia/video/player/k$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/k;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/k;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    invoke-static {p1}, Lcn/nubia/video/player/k;->t(Lcn/nubia/video/player/k;)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    invoke-static {p1}, Lcn/nubia/video/player/k;->u(Lcn/nubia/video/player/k;)Lcn/nubia/video/player/p;

    move-result-object p1

    const v0, 0x7f0f0082

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/p;->g(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    invoke-static {p1}, Lcn/nubia/video/player/k;->u(Lcn/nubia/video/player/k;)Lcn/nubia/video/player/p;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/p;->e()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    invoke-static {p1}, Lcn/nubia/video/player/k;->s(Lcn/nubia/video/player/k;)Lcn/nubia/video/player/c$d;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    iget-boolean v0, v0, Lcn/nubia/video/player/q;->e:Z

    invoke-interface {p1, v0}, Lcn/nubia/video/player/c$d;->b(Z)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->o()V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/k$j;->a:Lcn/nubia/video/player/k;

    iget-boolean v0, p1, Lcn/nubia/video/player/q;->e:Z

    iget-boolean v1, p1, Lcn/nubia/video/player/q;->n:Z

    invoke-virtual {p1, v0, v1}, Lcn/nubia/video/player/q;->m(ZZ)V

    return-void
.end method
