.class public final Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/support/v4/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 79
    const/16 v0, 0x10

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 87
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 92
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 136
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 137
    iput p3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mId:I

    .line 138
    iput p2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 139
    iput p4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 140
    iput p5, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 141
    iput-object p6, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 142
    iput p7, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)V

    .line 557
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 697
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v0

    .line 700
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 702
    const/4 v0, 0x1

    goto :goto_0

    .line 705
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 706
    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 683
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 688
    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->expandItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 635
    :goto_0
    return-object v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 633
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 635
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 240
    iget-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 419
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 420
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 430
    :goto_0
    return-object v0

    .line 423
    :cond_0
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconResId:I

    invoke-static {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 425
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 426
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 430
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 206
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 258
    iget-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 299
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    .line 300
    const-string v2, ""

    .line 323
    :goto_0
    return-object v2

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 307
    :sswitch_0
    sget-object v2, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 311
    :sswitch_1
    sget-object v2, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 315
    :sswitch_2
    sget-object v2, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mSubMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 390
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 392
    .local v0, "ctitle":Ljava/lang/CharSequence;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 396
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .end local v0    # "ctitle":Ljava/lang/CharSequence;
    :cond_0
    return-object v0

    .line 390
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 365
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 721
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 725
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 727
    :cond_1
    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mSubMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 155
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getRootMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 166
    :try_start_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "NubiaWidget"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 567
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 455
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 505
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 506
    goto :goto_0

    .line 508
    :cond_2
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 571
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 575
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 641
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 621
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 622
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 623
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 624
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 610
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 612
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 613
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 615
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)V

    .line 616
    return-object p0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 731
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 732
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 733
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 245
    iget-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 253
    :goto_0
    return-object p0

    .line 249
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 251
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .prologue
    .line 784
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 234
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 235
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 460
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 461
    .local v0, "oldFlags":I
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 462
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 466
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 461
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 484
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 492
    :goto_0
    return-object p0

    .line 489
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 496
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 497
    .local v0, "oldFlags":I
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 498
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 499
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 501
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 497
    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 748
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 193
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 195
    return-object p0

    .line 190
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 470
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 471
    return-void

    .line 470
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 448
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 450
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 435
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 436
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 439
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 225
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 226
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .prologue
    .line 579
    if-eqz p1, :cond_0

    .line 580
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 547
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 548
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 263
    iget-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 271
    :goto_0
    return-object p0

    .line 267
    :cond_0
    iput-char p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 269
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .prologue
    .line 774
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 742
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 537
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 538
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 276
    iput-char p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 277
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 279
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 281
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .prologue
    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 592
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :pswitch_0
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 605
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)V

    .line 606
    return-void

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 677
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 678
    return-object p0
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method setSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)V
    .locals 1
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 347
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mSubMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .line 349
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 350
    return-void
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/support/v4/view/ActionProvider;

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 661
    :cond_0
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 662
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 663
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 664
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl$1;-><init>(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 672
    :cond_1
    return-object p0
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .prologue
    .line 716
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 717
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 372
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 374
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 376
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mSubMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mSubMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 380
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 405
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 408
    if-nez p1, :cond_0

    .line 409
    iget-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 412
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 414
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .prologue
    .line 758
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)V

    .line 532
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 520
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 521
    .local v0, "oldFlags":I
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 522
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 521
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
