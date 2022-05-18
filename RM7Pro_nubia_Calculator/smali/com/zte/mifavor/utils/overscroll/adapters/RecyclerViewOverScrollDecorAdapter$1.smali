.class Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$1;
.super Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;
.source "RecyclerViewOverScrollDecorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->setUpTouchHelperCallback(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$1;->this$0:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$1;)V

    return-void
.end method


# virtual methods
.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$1;->this$0:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    .line 81
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
