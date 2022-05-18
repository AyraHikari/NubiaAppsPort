.class final Landroid/support/v7/widget/f0$b;
.super Landroid/support/v7/widget/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/f0;->c(Landroid/support/v7/widget/RecyclerView$m;)Landroid/support/v7/widget/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$m;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/f0;-><init>(Landroid/support/v7/widget/RecyclerView$m;Landroid/support/v7/widget/f0$a;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$m;->F(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$m;->H(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$m;->I(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public g(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$m;->K(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->M()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->M()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$m;->P()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->P()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->M()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$m;->P()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f0;->a:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->f0(I)V

    return-void
.end method
