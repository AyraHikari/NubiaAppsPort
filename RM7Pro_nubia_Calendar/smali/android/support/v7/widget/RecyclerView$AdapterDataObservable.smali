.class Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;",
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
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 11615
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

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

.method public notifyChanged()V
    .locals 2

    .prologue
    .line 11623
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11624
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 11623
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11626
    :cond_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 11663
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11664
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 11663
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11666
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 11629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 11630
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 11637
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11638
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 11637
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11640
    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 11647
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11648
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 11647
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11650
    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 11657
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11658
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 11657
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11660
    :cond_0
    return-void
.end method
