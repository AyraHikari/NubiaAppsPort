.class Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuItemCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphabeticModifiers(Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers(Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "alphaChar"    # C
    .param p3, "alphaModifiers"    # I

    .prologue
    .line 168
    return-void
.end method

.method public setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 145
    return-void
.end method

.method public setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 186
    return-void
.end method

.method public setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 195
    return-void
.end method

.method public setNumericShortcut(Landroid/view/MenuItem;CI)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "numericChar"    # C
    .param p3, "numericModifiers"    # I

    .prologue
    .line 177
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
    .line 164
    return-void
.end method

.method public setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tooltipText"    # Ljava/lang/CharSequence;

    .prologue
    .line 154
    return-void
.end method
