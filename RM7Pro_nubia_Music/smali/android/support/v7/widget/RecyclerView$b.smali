.class Landroid/support/v7/widget/RecyclerView$b;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/support/v7/widget/RecyclerView$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11613
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 11629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$b;->a(IILjava/lang/Object;)V

    .line 11630
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 11637
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 11638
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$c;->a(IILjava/lang/Object;)V

    .line 11637
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 11640
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 11615
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 11623
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 11624
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$c;->a()V

    .line 11623
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 11626
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 11647
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 11648
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$c;->b(II)V

    .line 11647
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 11650
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    .prologue
    .line 11657
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 11658
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$c;->c(II)V

    .line 11657
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 11660
    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 3

    .prologue
    .line 11663
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 11664
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$c;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Landroid/support/v7/widget/RecyclerView$c;->a(III)V

    .line 11663
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 11666
    :cond_0
    return-void
.end method
