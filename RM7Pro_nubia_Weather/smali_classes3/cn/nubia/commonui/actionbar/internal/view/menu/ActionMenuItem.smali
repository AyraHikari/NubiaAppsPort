.class public Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 58
    const/16 v0, 0x10

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 67
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 68
    iput p3, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mId:I

    .line 69
    iput p2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mGroup:I

    .line 70
    iput p4, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mCategoryOrder:I

    .line 71
    iput p5, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mOrdering:I

    .line 72
    iput-object p6, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 73
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 76
    iget-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 100
    iget-char v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 218
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    :goto_0
    return v0

    .line 222
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

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
    .line 132
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "actionView"    # Landroid/view/View;

    .prologue
    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "alphaChar"    # C

    .prologue
    .line 140
    iput-char p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 141
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    .line 145
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 146
    return-object p0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 155
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 156
    return-object p0

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 160
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 161
    return-object p0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 150
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 151
    return-object p0

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 171
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 165
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 167
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 178
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "numericChar"    # C

    .prologue
    .line 182
    iput-char p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 183
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 188
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 192
    iput-char p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 193
    iput-char p2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 194
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "show"    # I

    .prologue
    .line 232
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 270
    return-object p0
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "actionProvider"    # Landroid/support/v4/view/ActionProvider;

    .prologue
    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .prologue
    .line 296
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 204
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 198
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 199
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 209
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 213
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 214
    return-object p0

    .line 213
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
