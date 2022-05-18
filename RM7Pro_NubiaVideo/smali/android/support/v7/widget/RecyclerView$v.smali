.class public abstract Landroid/support/v7/widget/RecyclerView$v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$v$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private final f:Landroid/support/v7/widget/RecyclerView$v$a;


# direct methods
.method static synthetic a(Landroid/support/v7/widget/RecyclerView$v;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$v;->f(II)V

    return-void
.end method

.method private f(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$v;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->c:Z

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$v;->b(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$v;->a:I

    if-eq v0, v2, :cond_0

    const-string v0, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$v;->e:Landroid/view/View;

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->f:Landroid/support/v7/widget/RecyclerView$v$a;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$v;->i(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$v$a;)V

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$v;->f:Landroid/support/v7/widget/RecyclerView$v$a;

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView$v$a;->a(Landroid/support/v7/widget/RecyclerView$v$a;Landroid/support/v7/widget/RecyclerView;)V

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$v;->k()V

    throw v1

    .line 10
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$v;->d:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$v;->f:Landroid/support/v7/widget/RecyclerView$v$a;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$v;->h(IILandroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$v$a;)V

    .line 12
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$v;->f:Landroid/support/v7/widget/RecyclerView$v$a;

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$v;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView$v$a;->a(Landroid/support/v7/widget/RecyclerView$v$a;Landroid/support/v7/widget/RecyclerView;)V

    :cond_2
    return-void

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$v;->k()V

    throw v1
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method protected abstract g(Landroid/view/View;)V
.end method

.method protected abstract h(IILandroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$v$a;)V
.end method

.method protected abstract i(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$v$a;)V
.end method

.method public abstract j(I)V
.end method

.method protected final k()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
