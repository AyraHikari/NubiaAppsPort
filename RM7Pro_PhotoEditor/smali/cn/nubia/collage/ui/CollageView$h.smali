.class Lcn/nubia/collage/ui/CollageView$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/ui/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/ui/CollageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:J

.field final synthetic e:Lcn/nubia/collage/ui/CollageView;


# direct methods
.method private constructor <init>(Lcn/nubia/collage/ui/CollageView;)V
    .locals 2

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/collage/ui/CollageView$h;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/collage/ui/CollageView$h;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/ui/CollageView;Lcn/nubia/collage/ui/CollageView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/CollageView$h;-><init>(Lcn/nubia/collage/ui/CollageView;)V

    return-void
.end method


# virtual methods
.method public a(FFF)Z
    .locals 0

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p2}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/o/b/g;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p3}, Lcn/nubia/collage/o/b/g;->y(F)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public b(FFFF)Z
    .locals 2

    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->A(Lcn/nubia/collage/ui/CollageView;)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p1

    float-to-int p4, p4

    invoke-static {p3, p4}, Lcn/nubia/collage/ui/CollageView;->B(Lcn/nubia/collage/ui/CollageView;I)I

    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->b(Lcn/nubia/collage/ui/CollageView;)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p2

    float-to-int p4, p4

    invoke-static {p3, p4}, Lcn/nubia/collage/ui/CollageView;->c(Lcn/nubia/collage/ui/CollageView;I)I

    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->e(Lcn/nubia/collage/ui/CollageView;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->f(Lcn/nubia/collage/ui/CollageView;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    float-to-int v0, p2

    invoke-static {p3, v0}, Lcn/nubia/collage/ui/CollageView;->h(Lcn/nubia/collage/ui/CollageView;I)V

    iput-boolean p4, p0, Lcn/nubia/collage/ui/CollageView$h;->a:Z

    :cond_0
    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->f(Lcn/nubia/collage/ui/CollageView;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->A(Lcn/nubia/collage/ui/CollageView;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->b(Lcn/nubia/collage/ui/CollageView;)I

    move-result p3

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->i(Lcn/nubia/collage/ui/CollageView;)I

    move-result v0

    add-int/2addr p3, v0

    invoke-static {p1, p2, p3}, Lcn/nubia/collage/ui/CollageView;->j(Lcn/nubia/collage/ui/CollageView;II)V

    goto :goto_0

    :cond_1
    iget-boolean p3, p0, Lcn/nubia/collage/ui/CollageView$h;->b:Z

    if-nez p3, :cond_5

    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->k(Lcn/nubia/collage/ui/CollageView;)I

    move-result p3

    if-gt p3, p4, :cond_5

    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->e(Lcn/nubia/collage/ui/CollageView;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p3}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_3

    return v0

    :cond_3
    invoke-virtual {p3}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v1

    if-ne v1, p4, :cond_4

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1, p4}, Lcn/nubia/collage/ui/CollageView;->z(Lcn/nubia/collage/ui/CollageView;Z)Z

    iput-boolean p4, p0, Lcn/nubia/collage/ui/CollageView$h;->a:Z

    check-cast p3, Lcn/nubia/collage/o/b/g;

    invoke-virtual {p3, p1, p2}, Lcn/nubia/collage/o/b/g;->w(FF)V

    invoke-virtual {p3}, Lcn/nubia/collage/o/b/g;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcn/nubia/collage/ui/CollageView$h;->a:Z

    invoke-virtual {p3}, Lcn/nubia/collage/o/b/g;->z()V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->a(Lcn/nubia/collage/ui/CollageView;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    return p4
.end method

.method public c(FF)Z
    .locals 6

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->k(Lcn/nubia/collage/ui/CollageView;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->e(Lcn/nubia/collage/ui/CollageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/collage/ui/CollageView$h;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const-string p1, "PhotoEditor"

    const-string p2, "CollageView onScaleBegin < TIME_DIFF"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/nubia/collage/ui/CollageView;->z(Lcn/nubia/collage/ui/CollageView;Z)Z

    iput-boolean v2, p0, Lcn/nubia/collage/ui/CollageView$h;->b:Z

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v3}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v3}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/collage/o/b/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/collage/o/b/g;->u(FF)V

    iput-boolean v2, p0, Lcn/nubia/collage/ui/CollageView$h;->c:Z

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public d(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->k(Lcn/nubia/collage/ui/CollageView;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_b

    iget-boolean v0, p0, Lcn/nubia/collage/ui/CollageView$h;->b:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->n(Lcn/nubia/collage/ui/CollageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0, v1}, Lcn/nubia/collage/ui/CollageView;->z(Lcn/nubia/collage/ui/CollageView;Z)Z

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->y(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/CollageView$j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcn/nubia/collage/ui/CollageView$j;->c(ZLjava/lang/String;I)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0, v2}, Lcn/nubia/collage/ui/CollageView;->o(Lcn/nubia/collage/ui/CollageView;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->m(Lcn/nubia/collage/ui/CollageView;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->f(Lcn/nubia/collage/ui/CollageView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0, v2}, Lcn/nubia/collage/ui/CollageView;->g(Lcn/nubia/collage/ui/CollageView;Z)Z

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v3}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v3}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/g;->s(Z)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v0, v2}, Lcn/nubia/collage/o/b/e;->g(Z)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->q(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->h(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->y(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/CollageView$j;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v2}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v3}, Lcn/nubia/collage/ui/CollageView;->q(Lcn/nubia/collage/ui/CollageView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/collage/o/b/k;->h(I)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcn/nubia/collage/ui/CollageView$j;->e(II)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcn/nubia/collage/ui/CollageView$h;->a:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcn/nubia/collage/ui/CollageView$h;->a:Z

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v3}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcn/nubia/collage/o/b/k;->y(IZ)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v2}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcn/nubia/collage/o/b/k;->D(IZ)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->n(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/g;->z()V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v3}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v3

    if-ne v3, v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v1, v2}, Lcn/nubia/collage/o/b/g;->s(Z)V

    invoke-virtual {v1}, Lcn/nubia/collage/o/b/g;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->r(Lcn/nubia/collage/ui/CollageView;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v2}, Lcn/nubia/collage/o/b/e;->g(Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v2}, Lcn/nubia/collage/ui/CollageView;->s(Lcn/nubia/collage/ui/CollageView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v2}, Lcn/nubia/collage/ui/CollageView;->n(Lcn/nubia/collage/ui/CollageView;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v2}, Lcn/nubia/collage/ui/CollageView;->y(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/CollageView$j;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v2, v1}, Lcn/nubia/collage/ui/CollageView;->z(Lcn/nubia/collage/ui/CollageView;Z)Z

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v2}, Lcn/nubia/collage/ui/CollageView;->y(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/CollageView$j;

    move-result-object v2

    check-cast v0, Lcn/nubia/collage/o/b/m;

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/m;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/m;->k()I

    move-result v0

    invoke-interface {v2, v1, v3, v0}, Lcn/nubia/collage/ui/CollageView$j;->c(ZLjava/lang/String;I)V

    :cond_9
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0, v1}, Lcn/nubia/collage/ui/CollageView;->o(Lcn/nubia/collage/ui/CollageView;Z)Z

    :cond_a
    :goto_0
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_b
    :goto_1
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0, v2}, Lcn/nubia/collage/ui/CollageView;->g(Lcn/nubia/collage/ui/CollageView;Z)Z

    return-void
.end method

.method public g(FF)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->k(Lcn/nubia/collage/ui/CollageView;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->l(Lcn/nubia/collage/ui/CollageView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->y(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/CollageView$j;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/collage/ui/CollageView$j;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/ui/CollageView$h;->b:Z

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcn/nubia/collage/ui/CollageView;->B(Lcn/nubia/collage/ui/CollageView;I)I

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcn/nubia/collage/ui/CollageView;->c(Lcn/nubia/collage/ui/CollageView;I)I

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->m(Lcn/nubia/collage/ui/CollageView;)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->A(Lcn/nubia/collage/ui/CollageView;)I

    move-result p2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->b(Lcn/nubia/collage/ui/CollageView;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->i(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, p2, v0}, Lcn/nubia/collage/ui/CollageView;->j(Lcn/nubia/collage/ui/CollageView;II)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public h()V
    .locals 4

    iget-boolean v0, p0, Lcn/nubia/collage/ui/CollageView$h;->c:Z

    if-nez v0, :cond_0

    const-string v0, "PhotoEditor"

    const-string v1, "CollageView onScaleEnd not start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/collage/ui/CollageView$h;->d:J

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/collage/o/b/k;->y(IZ)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcn/nubia/collage/o/b/k;->D(IZ)V

    iput-boolean v2, p0, Lcn/nubia/collage/ui/CollageView$h;->c:Z

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$h;->e:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
