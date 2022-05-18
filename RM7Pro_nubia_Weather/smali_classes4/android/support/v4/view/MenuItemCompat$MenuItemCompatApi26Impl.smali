.class Landroid/support/v4/view/MenuItemCompat$MenuItemCompatApi26Impl;
.super Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;
.source "MenuItemCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuItemCompatApi26Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphabeticModifiers(Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 268
    invoke-interface {p1}, Landroid/view/MenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getNumericModifiers(Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "alphaChar"    # C
    .param p3, "alphaModifiers"    # I

    .prologue
    .line 233
    invoke-interface {p1, p2, p3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 234
    return-void
.end method

.method public setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 207
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 208
    return-void
.end method

.method public setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 253
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 254
    return-void
.end method

.method public setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 263
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 264
    return-void
.end method

.method public setNumericShortcut(Landroid/view/MenuItem;CI)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "numericChar"    # C
    .param p3, "numericModifiers"    # I

    .prologue
    .line 243
    invoke-interface {p1, p2, p3}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 244
    return-void
.end method

.method public setShortcut(Landroid/view/MenuItem;CCII)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "numericChar"    # C
    .param p3, "alphaChar"    # C
    .param p4, "numericModifiers"    # I
    .param p5, "alphaModifiers"    # I

    .prologue
    .line 228
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/MenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    .line 229
    return-void
.end method

.method public setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tooltipText"    # Ljava/lang/CharSequence;

    .prologue
    .line 217
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 218
    return-void
.end method
