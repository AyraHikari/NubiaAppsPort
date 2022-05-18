.class public Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "AbsListViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "QW-QScroll-AbsLVAdapter"


# instance fields
.field protected final mView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public canScrollListDown()Z
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 53
    iget-object v2, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v2, v0

    .line 55
    iget-object v3, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lt v2, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    return v4
.end method

.method public canScrollListUp()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 45
    iget-object v2, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_0

    .line 46
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result p0

    if-ge v0, p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->canScrollListDown()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/utils/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->canScrollListUp()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
