.class public Landroid/support/design/widget/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomNavigationView$SavedState;,
        Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;,
        Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private final mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private mReselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

.field private mSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/BottomNavigationView;->CHECKED_STATE_SET:[I

    .line 97
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/BottomNavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v7, 0x1010038

    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    new-instance v3, Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-direct {v3}, Landroid/support/design/internal/BottomNavigationPresenter;-><init>()V

    iput-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 120
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 123
    new-instance v3, Landroid/support/design/internal/BottomNavigationMenu;

    invoke-direct {v3, p1}, Landroid/support/design/internal/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 125
    new-instance v3, Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-direct {v3, p1}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 126
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setBottomNavigationMenuView(Landroid/support/design/internal/BottomNavigationMenuView;)V

    .line 132
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setId(I)V

    .line 133
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V

    .line 134
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 135
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v4, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 138
    sget-object v3, Landroid/support/design/R$styleable;->BottomNavigationView:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_BottomNavigationView:I

    invoke-static {p1, p2, v3, p3, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    sget v4, Landroid/support/design/R$styleable;->BottomNavigationView_itemIconTint:I

    .line 144
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 149
    :goto_0
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    sget v4, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextColor:I

    .line 151
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    :goto_1
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 161
    :cond_0
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 162
    .local v1, "itemBackground":I
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v3, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 164
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomNavigationView;->inflateMenu(I)V

    .line 167
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 169
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, v3, v2}, Landroid/support/design/widget/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    .line 171
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 174
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v4, Landroid/support/design/widget/BottomNavigationView$1;

    invoke-direct {v4, p0}, Landroid/support/design/widget/BottomNavigationView$1;-><init>(Landroid/support/design/widget/BottomNavigationView;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 188
    return-void

    .line 146
    .end local v1    # "itemBackground":I
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 147
    invoke-direct {p0, v7}, Landroid/support/design/widget/BottomNavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 154
    invoke-direct {p0, v7}, Landroid/support/design/widget/BottomNavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 153
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/BottomNavigationView;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mReselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/BottomNavigationView;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, "divider":Landroid/view/View;
    sget v2, Landroid/support/design/R$color;->design_bottom_navigation_shadow_color:I

    .line 378
    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 377
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 379
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 381
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/design/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v1, "dividerParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomNavigationView;->addView(Landroid/view/View;)V

    .line 385
    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "baseColorThemeAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 395
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 396
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-object v4

    .line 400
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    .line 399
    invoke-static {v5, v6}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 401
    .local v0, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 405
    iget v1, v3, Landroid/util/TypedValue;->data:I

    .line 406
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 407
    .local v2, "defaultColor":I
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v7, [[I

    sget-object v6, Landroid/support/design/widget/BottomNavigationView;->DISABLED_STATE_SET:[I

    aput-object v6, v5, v9

    sget-object v6, Landroid/support/design/widget/BottomNavigationView;->CHECKED_STATE_SET:[I

    aput-object v6, v5, v8

    sget-object v6, Landroid/support/design/widget/BottomNavigationView;->EMPTY_STATE_SET:[I

    aput-object v6, v5, v10

    new-array v6, v7, [I

    sget-object v7, Landroid/support/design/widget/BottomNavigationView;->DISABLED_STATE_SET:[I

    .line 412
    invoke-virtual {v0, v7, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    aput v7, v6, v9

    aput v1, v6, v8

    aput v2, v6, v10

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getItemBackgroundResource()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x1

    .line 233
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 234
    invoke-direct {p0}, Landroid/support/design/widget/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 235
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 236
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 237
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 429
    instance-of v1, p1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    if-nez v1, :cond_0

    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 436
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 433
    check-cast v0, Landroid/support/design/widget/BottomNavigationView$SavedState;

    .line 434
    .local v0, "savedState":Landroid/support/design/widget/BottomNavigationView$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 435
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, v0, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 420
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 421
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/design/widget/BottomNavigationView$SavedState;

    invoke-direct {v0, v1}, Landroid/support/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 422
    .local v0, "savedState":Landroid/support/design/widget/BottomNavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 423
    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v3, v0, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 424
    return-object v0
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 317
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 267
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 294
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 214
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->mReselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    .line 215
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 201
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->mSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 202
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 337
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 338
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 343
    :cond_0
    return-void
.end method
