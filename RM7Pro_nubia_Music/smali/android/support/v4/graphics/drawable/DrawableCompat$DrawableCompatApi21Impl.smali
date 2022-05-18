.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 256
    return-void
.end method

.method public canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 276
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    .line 277
    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_2

    .line 279
    check-cast p1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 280
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_0

    .line 281
    check-cast p1, Landroid/graphics/drawable/DrawableContainer;

    .line 283
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 284
    if-eqz v0, :cond_0

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    .line 287
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 288
    if-eqz v3, :cond_3

    .line 289
    invoke-virtual {p0, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 301
    return-void
.end method

.method public setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 223
    return-void
.end method

.method public setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 228
    return-void
.end method

.method public setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 233
    return-void
.end method

.method public setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 238
    return-void
.end method

.method public setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 243
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 247
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;

    invoke-direct {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    .line 250
    :cond_0
    return-object p1
.end method
