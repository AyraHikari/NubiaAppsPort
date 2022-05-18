.class final Landroid/support/v7/view/menu/CascadingMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Landroid/support/v7/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field static final HORIZ_POSITION_LEFT:I = 0x0

.field static final HORIZ_POSITION_RIGHT:I = 0x1

.field static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "popupStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "popupStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "overflowOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 95
    new-instance v1, Landroid/support/v7/view/menu/CascadingMenuPopup$1;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 116
    new-instance v1, Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$2;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 134
    new-instance v1, Landroid/support/v7/view/menu/CascadingMenuPopup$3;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$3;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 194
    iput v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 195
    iput v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 219
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 221
    iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 222
    iput p4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 223
    iput-boolean p5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 225
    iput-boolean v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 226
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 230
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 232
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 233
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/v7/view/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;
    .locals 5

    .prologue
    .line 241
    new-instance v0, Landroid/support/v7/widget/MenuPopupWindow;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 243
    .local v0, "popupWindow":Landroid/support/v7/widget/MenuPopupWindow;
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V

    .line 244
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 246
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 247
    iget v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V

    .line 249
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 250
    return-object v0
.end method

.method private findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I
    .locals 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 651
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 652
    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 653
    .local v2, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 658
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :goto_1
    return v1

    .line 651
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    .end local v2    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4
    .param p1, "parent"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "submenu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 512
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 513
    invoke-virtual {p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 514
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 519
    .end local v2    # "item":Landroid/view/MenuItem;
    :goto_1
    return-object v2

    .line 512
    .restart local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 12
    .param p1, "parentInfo"    # Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "submenu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 533
    iget-object v11, p1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0, v11, p2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v7

    .line 534
    .local v7, "owner":Landroid/view/MenuItem;
    if-nez v7, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-object v10

    .line 542
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 543
    .local v5, "listView":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 544
    .local v4, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v11, v4, Landroid/widget/HeaderViewListAdapter;

    if-eqz v11, :cond_3

    move-object v1, v4

    .line 545
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 546
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 547
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuAdapter;

    .line 554
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v6, "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    :goto_1
    const/4 v8, -0x1

    .line 555
    .local v8, "ownerPosition":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 556
    invoke-virtual {v6, v3}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v11

    if-ne v7, v11, :cond_4

    .line 557
    move v8, v3

    .line 561
    :cond_2
    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    .line 567
    add-int/2addr v8, v2

    .line 570
    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v9, v8, v11

    .line 571
    .local v9, "ownerViewPosition":I
    if-ltz v9, :cond_0

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    if-ge v9, v11, :cond_0

    .line 576
    invoke-virtual {v5, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    goto :goto_0

    .line 549
    .end local v0    # "count":I
    .end local v2    # "headersCount":I
    .end local v3    # "i":I
    .end local v6    # "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    .end local v8    # "ownerPosition":I
    .end local v9    # "ownerViewPosition":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "headersCount":I
    move-object v6, v4

    .line 550
    check-cast v6, Landroid/support/v7/view/menu/MenuAdapter;

    .restart local v6    # "menuAdapter":Landroid/support/v7/view/menu/MenuAdapter;
    goto :goto_1

    .line 555
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v8    # "ownerPosition":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getInitialMenuPosition()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 311
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 312
    .local v0, "layoutDirection":I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private getNextMenuPosition(I)I
    .locals 9
    .param p1, "nextMenuWidth"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 325
    iget-object v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 327
    .local v1, "lastListView":Landroid/widget/ListView;
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 328
    .local v4, "screenLocation":[I
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 330
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 331
    .local v0, "displayFrame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 333
    iget v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    if-ne v5, v7, :cond_1

    .line 334
    aget v5, v4, v6

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v8

    add-int/2addr v5, v8

    add-int v3, v5, p1

    .line 335
    .local v3, "right":I
    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-le v3, v5, :cond_0

    move v5, v6

    .line 344
    .end local v3    # "right":I
    :goto_0
    return v5

    .restart local v3    # "right":I
    :cond_0
    move v5, v7

    .line 338
    goto :goto_0

    .line 340
    .end local v3    # "right":I
    :cond_1
    aget v5, v4, v6

    sub-int v2, v5, p1

    .line 341
    .local v2, "left":I
    if-gez v2, :cond_2

    move v5, v7

    .line 342
    goto :goto_0

    :cond_2
    move v5, v6

    .line 344
    goto :goto_0
.end method

.method private showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 24
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 366
    .local v6, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Landroid/support/v7/view/menu/MenuAdapter;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-direct {v3, v0, v6, v1}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 372
    .local v3, "adapter":Landroid/support/v7/view/menu/MenuAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 374
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 381
    :cond_0
    :goto_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v9

    .line 382
    .local v9, "menuWidth":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v16

    .line 383
    .local v16, "popupWindow":Landroid/support/v7/widget/MenuPopupWindow;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 384
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_3

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 391
    .local v11, "parentInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v14

    .line 397
    .local v14, "parentView":Landroid/view/View;
    :goto_1
    if-eqz v14, :cond_a

    .line 399
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 400
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 402
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v10

    .line 403
    .local v10, "nextMenuPosition":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_4

    const/16 v17, 0x1

    .line 404
    .local v17, "showOnRight":Z
    :goto_2
    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 408
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x1a

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    .line 411
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 412
    const/4 v12, 0x0

    .line 413
    .local v12, "parentOffsetX":I
    const/4 v13, 0x0

    .line 450
    .local v13, "parentOffsetY":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x5

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 451
    if-eqz v17, :cond_7

    .line 452
    add-int v20, v12, v9

    .line 463
    .local v20, "x":I
    :goto_4
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 466
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    .line 467
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 479
    .end local v10    # "nextMenuPosition":I
    .end local v12    # "parentOffsetX":I
    .end local v13    # "parentOffsetY":I
    .end local v17    # "showOnRight":Z
    .end local v20    # "x":I
    :goto_5
    new-instance v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v8, v0, v1, v2}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V

    .line 480
    .local v8, "menuInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 484
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 485
    .local v7, "listView":Landroid/widget/ListView;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 488
    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 489
    sget v21, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout;

    .line 491
    .local v18, "titleItemView":Landroid/widget/FrameLayout;
    const v21, 0x1020016

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 492
    .local v19, "titleView":Landroid/widget/TextView;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 497
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 499
    .end local v18    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v19    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 375
    .end local v7    # "listView":Landroid/widget/ListView;
    .end local v8    # "menuInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v9    # "menuWidth":I
    .end local v11    # "parentInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v14    # "parentView":Landroid/view/View;
    .end local v16    # "popupWindow":Landroid/support/v7/widget/MenuPopupWindow;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 377
    invoke-static/range {p1 .. p1}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto/16 :goto_0

    .line 393
    .restart local v9    # "menuWidth":I
    .restart local v16    # "popupWindow":Landroid/support/v7/widget/MenuPopupWindow;
    :cond_3
    const/4 v11, 0x0

    .line 394
    .restart local v11    # "parentInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v14, 0x0

    .restart local v14    # "parentView":Landroid/view/View;
    goto/16 :goto_1

    .line 403
    .restart local v10    # "nextMenuPosition":I
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 424
    .restart local v17    # "showOnRight":Z
    :cond_5
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v4, v0, [I

    .line 425
    .local v4, "anchorScreenLocation":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 427
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v15, v0, [I

    .line 428
    .local v15, "parentViewScreenLocation":[I
    invoke-virtual {v14, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 434
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x7

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 435
    const/16 v21, 0x0

    aget v22, v4, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    aput v22, v4, v21

    .line 436
    const/16 v21, 0x0

    aget v22, v15, v21

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    aput v22, v15, v21

    .line 441
    :cond_6
    const/16 v21, 0x0

    aget v21, v15, v21

    const/16 v22, 0x0

    aget v22, v4, v22

    sub-int v12, v21, v22

    .line 442
    .restart local v12    # "parentOffsetX":I
    const/16 v21, 0x1

    aget v21, v15, v21

    const/16 v22, 0x1

    aget v22, v4, v22

    sub-int v13, v21, v22

    .restart local v13    # "parentOffsetY":I
    goto/16 :goto_3

    .line 454
    .end local v4    # "anchorScreenLocation":[I
    .end local v15    # "parentViewScreenLocation":[I
    :cond_7
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v21

    sub-int v20, v12, v21

    .restart local v20    # "x":I
    goto/16 :goto_4

    .line 457
    .end local v20    # "x":I
    :cond_8
    if-eqz v17, :cond_9

    .line 458
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v20, v12, v21

    .restart local v20    # "x":I
    goto/16 :goto_4

    .line 460
    .end local v20    # "x":I
    :cond_9
    sub-int v20, v12, v9

    .restart local v20    # "x":I
    goto/16 :goto_4

    .line 469
    .end local v10    # "nextMenuPosition":I
    .end local v12    # "parentOffsetX":I
    .end local v13    # "parentOffsetY":I
    .end local v17    # "showOnRight":Z
    .end local v20    # "x":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 472
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 475
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 476
    .local v5, "epicenterBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 6

    .prologue
    .line 283
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 284
    .local v3, "length":I
    if-lez v3, :cond_1

    .line 285
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v5, v3, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 286
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 287
    .local v0, "addedMenus":[Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 288
    aget-object v2, v0, v1

    .line 289
    .local v2, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    iget-object v4, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 287
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 294
    .end local v0    # "addedMenus":[Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 763
    :goto_0
    return-object v0

    .line 761
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 763
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 10
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 663
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I

    move-result v3

    .line 664
    .local v3, "menuIndex":I
    if-gez v3, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 670
    .local v4, "nextMenuIndex":I
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 671
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 672
    .local v0, "childInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6, v8}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 676
    .end local v0    # "childInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_2
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 677
    .local v2, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6, p0}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 678
    iget-boolean v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    if-eqz v6, :cond_3

    .line 680
    iget-object v6, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 681
    iget-object v6, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 683
    :cond_3
    iget-object v6, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 685
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 686
    .local v1, "count":I
    if-lez v1, :cond_7

    .line 687
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v6, v6, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 692
    :goto_1
    if-nez v1, :cond_8

    .line 694
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 696
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v6, :cond_4

    .line 697
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    const/4 v7, 0x1

    invoke-interface {v6, p1, v7}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 700
    :cond_4
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v6, :cond_6

    .line 701
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 702
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v7, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 704
    :cond_5
    iput-object v9, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 706
    :cond_6
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v7, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 710
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v6}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 689
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v6

    iput v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_1

    .line 711
    :cond_8
    if-eqz p2, :cond_0

    .line 715
    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 716
    .local v5, "rootInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6, v8}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto/16 :goto_0
.end method

.method public onDismiss()V
    .locals 6

    .prologue
    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, "dismissedInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 596
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 597
    .local v3, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 598
    move-object v1, v3

    .line 605
    .end local v3    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 606
    iget-object v4, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 608
    :cond_1
    return-void

    .line 595
    .restart local v3    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 732
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    const/4 v1, 0x1

    .line 625
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 626
    .local v0, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    .line 641
    .end local v0    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    :goto_0
    return v1

    .line 633
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 634
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 636
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_1

    .line 637
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v2, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    goto :goto_0

    .line 641
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 745
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 746
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 749
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 750
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 749
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 752
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .prologue
    .line 619
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 620
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 238
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "dropDownGravity"    # I

    .prologue
    .line 736
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    .line 737
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 738
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 739
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 738
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 741
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 769
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    .line 770
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 756
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 757
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .prologue
    .line 780
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 781
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 775
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    .line 776
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuBuilder;

    .line 261
    .local v1, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    invoke-direct {p0, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    goto :goto_1

    .line 263
    .end local v1    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_2
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 265
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 267
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 269
    .local v0, "addGlobalListener":Z
    :goto_2
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 270
    if-eqz v0, :cond_3

    .line 271
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 273
    :cond_3
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 268
    .end local v0    # "addGlobalListener":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateMenuView(Z)V
    .locals 3
    .param p1, "cleared"    # Z

    .prologue
    .line 612
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 613
    .local v0, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 615
    .end local v0    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    return-void
.end method
