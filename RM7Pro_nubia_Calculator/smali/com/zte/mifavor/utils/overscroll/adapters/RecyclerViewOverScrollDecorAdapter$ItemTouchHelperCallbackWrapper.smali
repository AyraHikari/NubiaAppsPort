.class Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "RecyclerViewOverScrollDecorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemTouchHelperCallbackWrapper"
.end annotation


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p0

    return p0
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBoundingBoxMargin()I
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result p0

    return p0
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result p0

    return p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result p0

    return p0
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 7

    .line 230
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result p0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    .line 215
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 8

    .line 205
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
