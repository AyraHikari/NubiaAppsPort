.class public Landroid/support/v7/widget/AppCompatImageButton;
.super Landroid/widget/ImageButton;
.source "AppCompatImageButton.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;
.implements Landroid/support/v4/widget/TintableImageSourceView;


# instance fields
.field private final mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private final mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    sget v0, Landroid/support/v7/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 244
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 247
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 180
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 207
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 235
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 101
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 93
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 85
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 106
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 109
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 222
    :cond_0
    return-void
.end method
