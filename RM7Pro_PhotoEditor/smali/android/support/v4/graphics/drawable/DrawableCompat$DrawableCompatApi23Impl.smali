.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi23Impl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p1

    return p1
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p1

    return p1
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p1
.end method
