.class public Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$b;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

.field private mPopupCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$b;

.field final mPopupPresenterCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;

.field private mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    sget v0, Lcn/nubia/commonui/R$layout;->abc_action_menu_layout:I

    sget v1, Lcn/nubia/commonui/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 82
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;

    .line 87
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    return-object v0
.end method

.method private dismissActionButtonPopup()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->dismiss()V

    .line 774
    :cond_0
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 285
    if-nez v0, :cond_1

    move-object v2, v3

    .line 295
    :cond_0
    :goto_0
    return-object v2

    .line 287
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 288
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_3

    .line 289
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 290
    instance-of v1, v2, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    .line 291
    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;->getItemData()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 288
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 295
    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;)V
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;->initialize(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;I)V

    .line 187
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 188
    check-cast p2, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .line 189
    invoke-virtual {p2, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setSelected(Z)V

    .line 192
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPopupCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$b;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$b;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPopupCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$b;

    .line 195
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPopupCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$b;

    invoke-virtual {p2, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 196
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 345
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 346
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 21

    .prologue
    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 382
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 383
    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMaxItems:I

    .line 384
    move-object/from16 v0, p0

    iget v9, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 385
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v2, Landroid/view/ViewGroup;

    .line 388
    const/4 v6, 0x0

    .line 389
    const/4 v5, 0x0

    .line 390
    const/4 v8, 0x0

    .line 391
    const/4 v4, 0x0

    .line 392
    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v14, :cond_2

    .line 393
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 394
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 395
    add-int/lit8 v6, v6, 0x1

    .line 401
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v11, :cond_1e

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 404
    const/4 v3, 0x0

    .line 392
    :goto_2
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v3

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 397
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 399
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 409
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    add-int v3, v6, v5

    if-le v3, v7, :cond_4

    .line 411
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 413
    :cond_4
    sub-int v10, v7, v6

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    .line 416
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    .line 418
    const/4 v4, 0x0

    .line 419
    const/4 v3, 0x0

    .line 420
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v5, :cond_1d

    .line 421
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v3, v9, v3

    .line 422
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMinCellSize:I

    rem-int v4, v9, v4

    .line 423
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int/2addr v4, v3

    add-int/2addr v4, v5

    move v5, v4

    .line 427
    :goto_3
    const/4 v4, 0x0

    move v12, v4

    move v7, v8

    move v4, v3

    :goto_4
    if-ge v12, v14, :cond_17

    .line 428
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 430
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 431
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 432
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v8, :cond_5

    .line 433
    move-object/from16 v0, p0

    iput-object v6, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 435
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_7

    .line 436
    const/4 v8, 0x0

    invoke-static {v6, v5, v4, v15, v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v8

    sub-int/2addr v4, v8

    .line 441
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 442
    sub-int v8, v9, v6

    .line 443
    if-nez v7, :cond_1c

    .line 446
    :goto_6
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    .line 447
    if-eqz v7, :cond_6

    .line 448
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 450
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v3, v8

    move v7, v10

    .line 427
    :goto_7
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v9, v3

    move v10, v7

    move v7, v6

    goto :goto_4

    .line 439
    :cond_7
    invoke-virtual {v6, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 451
    :cond_8
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 454
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v17

    .line 455
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    .line 456
    if-gtz v10, :cond_9

    if-eqz v18, :cond_e

    :cond_9
    if-lez v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v6, :cond_a

    if-lez v4, :cond_e

    :cond_a
    const/4 v6, 0x1

    .line 459
    :goto_8
    if-eqz v6, :cond_1b

    .line 460
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 461
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v8, :cond_b

    .line 462
    move-object/from16 v0, p0

    iput-object v11, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 464
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_f

    .line 465
    const/4 v8, 0x0

    invoke-static {v11, v5, v4, v15, v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v19

    .line 467
    sub-int v8, v4, v19

    .line 468
    if-nez v19, :cond_1a

    .line 469
    const/4 v4, 0x0

    :goto_9
    move v6, v8

    .line 474
    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 475
    sub-int/2addr v9, v8

    .line 476
    if-nez v7, :cond_c

    move v7, v8

    .line 480
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_11

    .line 481
    if-ltz v9, :cond_10

    const/4 v8, 0x1

    :goto_b
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    .line 488
    :goto_c
    if-eqz v11, :cond_13

    if-eqz v17, :cond_13

    .line 489
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v4, v10

    .line 503
    :goto_d
    if-eqz v11, :cond_d

    add-int/lit8 v4, v4, -0x1

    .line 505
    :cond_d
    invoke-virtual {v3, v11}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v6, v8

    move v3, v9

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    .line 506
    goto :goto_7

    .line 456
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 472
    :cond_f
    invoke-virtual {v11, v15, v15}, Landroid/view/View;->measure(II)V

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_a

    .line 481
    :cond_10
    const/4 v8, 0x0

    goto :goto_b

    .line 484
    :cond_11
    add-int v8, v9, v7

    if-lez v8, :cond_12

    const/4 v8, 0x1

    :goto_e
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    goto :goto_e

    .line 490
    :cond_13
    if-eqz v18, :cond_19

    .line 492
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 493
    const/4 v4, 0x0

    move v6, v10

    move v10, v4

    :goto_f
    if-ge v10, v12, :cond_18

    .line 494
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 495
    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 497
    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v18

    if-eqz v18, :cond_14

    add-int/lit8 v6, v6, 0x1

    .line 498
    :cond_14
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 493
    :cond_15
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_f

    .line 508
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v6, v7

    move v3, v9

    move v7, v10

    goto/16 :goto_7

    .line 511
    :cond_17
    const/4 v2, 0x1

    return v2

    :cond_18
    move v4, v6

    goto :goto_d

    :cond_19
    move v4, v10

    goto :goto_d

    :cond_1a
    move v4, v6

    goto/16 :goto_9

    :cond_1b
    move v11, v6

    move v8, v7

    move v7, v4

    goto :goto_c

    :cond_1c
    move v6, v7

    goto/16 :goto_6

    :cond_1d
    move v5, v4

    goto/16 :goto_3

    :cond_1e
    move v3, v7

    goto/16 :goto_2
.end method

.method public getItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->getItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    check-cast p3, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 177
    invoke-virtual {p3, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    invoke-virtual {p3, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :cond_2
    return-object v0

    .line 173
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v1

    move-object v0, v1

    .line 163
    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setPresenter(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V

    .line 164
    return-object v1
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    move v0, v1

    .line 336
    :goto_0
    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    .line 332
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v0, v1

    .line 334
    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->dismiss()V

    .line 357
    const/4 v0, 0x1

    .line 359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 91
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 96
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_0

    .line 97
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 100
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1

    .line 101
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 105
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_2

    .line 106
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMaxItems:I

    .line 109
    :cond_2
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 110
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v2, :cond_3

    .line 112
    new-instance v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 113
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 114
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 116
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 121
    :goto_0
    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 123
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 126
    iput-object v5, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 127
    return-void

    .line 118
    :cond_4
    iput-object v5, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 516
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 517
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V

    .line 518
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMaxItems:I

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 137
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->dismissActionButtonPopup()V

    .line 138
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 529
    check-cast p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;

    .line 530
    iget v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;->a:I

    if-lez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget v1, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;->a:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .line 534
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z

    .line 537
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 522
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 523
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;->a:I

    .line 524
    return-object v0
.end method

.method public onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 280
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 266
    :goto_1
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 267
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    goto :goto_1

    .line 269
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 270
    if-nez v0, :cond_3

    .line 271
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 275
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 276
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    .line 277
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->setAnchorView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mActionButtonPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->show()V

    .line 279
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z

    .line 280
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 541
    if-eqz p1, :cond_0

    .line 543
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 158
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1

    .prologue
    .line 152
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMaxItems:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 154
    return-void
.end method

.method public setMenuView(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 550
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    .line 551
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->initialize(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 552
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 149
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1

    .prologue
    .line 141
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 144
    return-void
.end method

.method public shouldIncludeItem(ILcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 303
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 304
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 306
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    .line 308
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 312
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z

    .line 316
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 209
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 211
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 213
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 215
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 216
    :goto_0
    if-ge v3, v5, :cond_2

    .line 217
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 216
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 225
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    :goto_1
    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 230
    if-ne v3, v1, :cond_9

    .line 231
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    move v2, v0

    .line 237
    :cond_3
    :goto_3
    if-eqz v2, :cond_b

    .line 238
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v0, :cond_4

    .line 239
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 241
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 242
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    if-eq v0, v1, :cond_6

    .line 243
    if-eqz v0, :cond_5

    .line 244
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 246
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 247
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_6
    :goto_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 254
    return-void

    .line 225
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v0, v2

    .line 231
    goto :goto_2

    .line 233
    :cond_9
    if-lez v3, :cond_a

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_5

    .line 249
    :cond_b
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    if-ne v0, v1, :cond_6

    .line 250
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mMenuView:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method
