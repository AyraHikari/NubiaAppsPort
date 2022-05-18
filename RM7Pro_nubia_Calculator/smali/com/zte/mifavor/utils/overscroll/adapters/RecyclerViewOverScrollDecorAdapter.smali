.class public Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "RecyclerViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;,
        Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;,
        Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;,
        Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QW-QScroll-RAdapter"


# instance fields
.field protected final mImpl:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

.field protected mIsItemTouchInEffect:Z

.field protected final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    .line 41
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 46
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 49
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result p1

    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 51
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_3

    .line 55
    new-instance p1, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;)V

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    goto :goto_1

    .line 57
    :cond_3
    new-instance p1, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;)V

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->setUpTouchHelperCallback(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    .line 62
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iput-object p2, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;)V

    .line 73
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->setUpTouchHelperCallback(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    invoke-interface {p0}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;->isInAbsoluteEnd()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    invoke-interface {p0}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;->isInAbsoluteStart()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected setUpTouchHelperCallback(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 2

    .line 77
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$1;-><init>(Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
