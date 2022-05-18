.class Landroid/support/v7/widget/RecyclerView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->Q0(II)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->Q:Z

    return-void
.end method

.method public b(Landroid/support/v7/widget/d$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->i(Landroid/support/v7/widget/d$b;)V

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->t0(II)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->P:Z

    return-void
.end method

.method public d(I)Landroid/support/v7/widget/RecyclerView$z;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->d0(IZ)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object p1

    return-object p1
.end method

.method public e(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->u0(IIZ)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, p1, Landroid/support/v7/widget/RecyclerView;->P:Z

    .line 3
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView$w;->b(Landroid/support/v7/widget/RecyclerView$w;I)I

    return-void
.end method

.method public f(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->u0(IIZ)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->P:Z

    return-void
.end method

.method public g(Landroid/support/v7/widget/d$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->i(Landroid/support/v7/widget/d$b;)V

    return-void
.end method

.method public h(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->s0(II)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->P:Z

    return-void
.end method

.method i(Landroid/support/v7/widget/d$b;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    iget v3, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/support/v7/widget/RecyclerView$m;->v0(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/RecyclerView$m;->x0(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/RecyclerView$m;->w0(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/RecyclerView$m;->t0(Landroid/support/v7/widget/RecyclerView;II)V

    :goto_0
    return-void
.end method
