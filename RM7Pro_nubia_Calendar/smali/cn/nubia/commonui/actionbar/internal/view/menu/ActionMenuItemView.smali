.class public Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
.super Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;,
        Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPadding:Ljava/lang/Integer;

.field private mPopupCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 87
    invoke-virtual {p0, p1, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setMenuItemViewBackground(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V

    .line 88
    sget-object v1, Lcn/nubia/commonui/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 96
    invoke-virtual {p0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 190
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 191
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 193
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 189
    goto :goto_0

    .line 193
    .restart local v0    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getItemData()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 124
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 125
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 127
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setMenuItemViewBackground(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V

    .line 129
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p1, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 132
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getLayoutPaddingPixel()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mPadding:Ljava/lang/Integer;

    .line 134
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 135
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 136
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    .line 141
    :cond_0
    return-void

    .line 134
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 104
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 109
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setMenuItemViewBackground(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V

    .line 110
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 111
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 247
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 275
    :goto_0
    return v9

    .line 252
    :cond_0
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 253
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 254
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 255
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 257
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 258
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v8

    .line 259
    .local v8, "width":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 260
    .local v3, "height":I
    aget v11, v6, v10

    div-int/lit8 v12, v3, 0x2

    add-int v4, v11, v12

    .line 261
    .local v4, "midy":I
    aget v11, v6, v9

    div-int/lit8 v12, v8, 0x2

    add-int v5, v11, v12

    .line 262
    .local v5, "referenceX":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v11

    if-nez v11, :cond_1

    .line 263
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 264
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 266
    .end local v7    # "screenWidth":I
    :cond_1
    iget-object v11, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 267
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 269
    const v9, 0x800035

    invoke-virtual {v0, v9, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 274
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 275
    goto :goto_0

    .line 272
    :cond_2
    const/16 v11, 0x51

    invoke-virtual {v0, v11, v9, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 280
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    .line 281
    .local v1, "nubiaTextVisible":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_item_layout_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 283
    .local v2, "padding":I
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mPadding:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 284
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mPadding:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 286
    :cond_0
    if-nez v1, :cond_2

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 287
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .line 288
    .local v3, "w":I
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 289
    .local v0, "dw":I
    sub-int v4, v3, v0

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v3, v0

    div-int/lit8 v5, v5, 0x2

    invoke-super {p0, v4, v2, v5, v2}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setPadding(IIII)V

    .line 293
    .end local v0    # "dw":I
    .end local v3    # "w":I
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->onMeasure(II)V

    .line 294
    return-void

    .line 290
    :cond_2
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 291
    invoke-super {p0, v6, v2, v6, v6}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    .line 146
    invoke-virtual {v0, p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 177
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 180
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 182
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 186
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 197
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 198
    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 200
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 201
    .local v0, "height":I
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 202
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 203
    .local v1, "scale":F
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 204
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 206
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 207
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 208
    .restart local v1    # "scale":F
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 209
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 211
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v5, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setMenuCompoundIcon(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 216
    return-void
.end method

.method public setItemInvoker(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 160
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 161
    return-void
.end method

.method public setMenuCompoundIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, v0, p1, v0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 358
    return-void
.end method

.method public setMenuItemViewBackground(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionMenuItemView"    # Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 337
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 338
    .local v6, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$attr;->menuItemBottomStyle:I

    invoke-virtual {v7, v8, v6, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 339
    new-array v2, v10, [I

    const v7, 0x10100d4

    aput v7, v2, v9

    .line 340
    .local v2, "bgAttr":[I
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 341
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 342
    .local v4, "nubiaActionMenuItemBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    new-array v5, v10, [I

    const v7, 0x1010098

    aput v7, v5, v9

    .line 345
    .local v5, "textColorAttr":[I
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 346
    .local v1, "a2":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 347
    .local v3, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 349
    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 352
    :cond_0
    invoke-virtual {p2, v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 353
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 115
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setPadding(IIII)V

    .line 117
    return-void
.end method

.method public setPopupCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    .prologue
    .line 164
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    .line 165
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 224
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 227
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 231
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method
