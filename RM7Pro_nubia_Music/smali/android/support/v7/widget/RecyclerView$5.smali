.class Landroid/support/v7/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->A()V
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

    .prologue
    .line 751
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_0

    .line 778
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/view/View;)V

    .line 783
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 788
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 792
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 766
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/view/View;)V

    .line 767
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 822
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 823
    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 825
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    .line 826
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->clearTmpDetachFlag()V

    .line 833
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 834
    return-void
.end method

.method public b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1

    .prologue
    .line 816
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$5;->a()I

    move-result v1

    .line 802
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 803
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$5;->b(I)Landroid/view/View;

    move-result-object v2

    .line 804
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/view/View;)V

    .line 809
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 812
    return-void
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$5;->b(I)Landroid/view/View;

    move-result-object v0

    .line 839
    if-eqz v0, :cond_1

    .line 840
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called detach on an already detached child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    .line 844
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 849
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->addFlags(I)V

    .line 852
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 853
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 857
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_0

    .line 859
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->access$200(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView;)V

    .line 861
    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 865
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_0

    .line 867
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->access$300(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView;)V

    .line 869
    :cond_0
    return-void
.end method
