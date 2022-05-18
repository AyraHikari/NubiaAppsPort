.class Landroid/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;
.source "ImageViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ImageViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 85
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 88
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 92
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_1
    return-void

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 107
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 111
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_1
    return-void

    .line 106
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
