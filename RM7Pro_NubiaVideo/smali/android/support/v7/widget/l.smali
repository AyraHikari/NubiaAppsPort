.class public Landroid/support/v7/widget/l;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;
.implements Landroid/support/v4/widget/TintableImageSourceView;


# instance fields
.field private final a:Landroid/support/v7/widget/f;

.field private final b:Landroid/support/v7/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Landroid/support/v7/widget/o0;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/support/v7/widget/f;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/f;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/f;

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/f;->e(Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Landroid/support/v7/widget/k;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/k;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/k;->f(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/k;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/k;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/k;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->g(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/widget/k;->b()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/widget/k;->b()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/k;->g(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/widget/k;->b()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/k;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/k;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
