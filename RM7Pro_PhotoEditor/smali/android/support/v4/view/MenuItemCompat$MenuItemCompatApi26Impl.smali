.class Landroid/support/v4/view/MenuItemCompat$MenuItemCompatApi26Impl;
.super Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;
.source ""


# annotations
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

    invoke-direct {p0}, Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphabeticModifiers(Landroid/view/MenuItem;)I
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result p1

    return p1
.end method

.method public getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    return-object p1
.end method

.method public getNumericModifiers(Landroid/view/MenuItem;)I
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getNumericModifiers()I

    move-result p1

    return p1
.end method

.method public getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .locals 0

    invoke-interface {p1, p2, p3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-void
.end method

.method public setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-void
.end method

.method public setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-void
.end method

.method public setNumericShortcut(Landroid/view/MenuItem;CI)V
    .locals 0

    invoke-interface {p1, p2, p3}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-void
.end method

.method public setShortcut(Landroid/view/MenuItem;CCII)V
    .locals 0

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/MenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    return-void
.end method

.method public setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method
