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

.field private mPopupCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 86
    invoke-virtual {p0, p1, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setMenuItemViewBackground(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V

    .line 87
    sget-object v1, Lcn/nubia/commonui/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 95
    invoke-virtual {p0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 99
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

    .line 187
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 188
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 189
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

    .line 191
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 187
    goto :goto_0

    .line 191
    .restart local v0    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getItemData()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 217
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
    .line 123
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 124
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 126
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setMenuItemViewBackground(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V

    .line 128
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p1, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 132
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 133
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 134
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    .line 139
    :cond_0
    return-void

    .line 132
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 236
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
    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    .line 155
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 103
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 108
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setMenuItemViewBackground(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V

    .line 109
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 110
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 245
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 273
    :goto_0
    return v9

    .line 250
    :cond_0
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 251
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 252
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 253
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 255
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 256
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v8

    .line 257
    .local v8, "width":I
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 258
    .local v3, "height":I
    aget v11, v6, v10

    div-int/lit8 v12, v3, 0x2

    add-int v4, v11, v12

    .line 259
    .local v4, "midy":I
    aget v11, v6, v9

    div-int/lit8 v12, v8, 0x2

    add-int v5, v11, v12

    .line 260
    .local v5, "referenceX":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v11

    if-nez v11, :cond_1

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 262
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 264
    .end local v7    # "screenWidth":I
    :cond_1
    iget-object v11, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 265
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 267
    const v9, 0x800035

    invoke-virtual {v0, v9, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 272
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 273
    goto :goto_0

    .line 270
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

    .line 278
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->onMeasure(II)V

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
    if-nez v1, :cond_1

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .line 285
    .local v3, "w":I
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 286
    .local v0, "dw":I
    sub-int v4, v3, v0

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v3, v0

    div-int/lit8 v5, v5, 0x2

    invoke-super {p0, v4, v2, v5, v2}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setPadding(IIII)V

    .line 290
    .end local v0    # "dw":I
    .end local v3    # "w":I
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 288
    invoke-super {p0, v6, v2, v6, v6}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mForwardingListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    .line 144
    invoke-virtual {v0, p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
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
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 171
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 178
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 179
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 180
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemData:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 184
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 195
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 196
    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 198
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 199
    .local v0, "height":I
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 200
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 201
    .local v1, "scale":F
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 202
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 204
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 205
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 206
    .restart local v1    # "scale":F
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 207
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 209
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v5, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setMenuCompoundIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 214
    return-void
.end method

.method public setItemInvoker(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 158
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 159
    return-void
.end method

.method public setMenuCompoundIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, v0, p1, v0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method public setMenuItemViewBackground(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionMenuItemView"    # Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 333
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 334
    .local v6, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$attr;->menuItemBottomStyle:I

    invoke-virtual {v7, v8, v6, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 335
    new-array v2, v10, [I

    const v7, 0x10100d4

    aput v7, v2, v9

    .line 336
    .local v2, "bgAttr":[I
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 337
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 338
    .local v4, "nubiaActionMenuItemBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    new-array v5, v10, [I

    const v7, 0x1010098

    aput v7, v5, v9

    .line 341
    .local v5, "textColorAttr":[I
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 342
    .local v1, "a2":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 343
    .local v3, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 348
    :cond_0
    invoke-virtual {p2, v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 349
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 114
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setPadding(IIII)V

    .line 116
    return-void
.end method

.method public setPopupCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    .line 163
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 222
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 229
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method
