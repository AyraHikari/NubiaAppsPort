.class Lcom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final IS_LOLLIPOP:Z


# instance fields
.field private backgroundOverwritten:Z

.field private backgroundTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private checkable:Z

.field private cornerRadius:I

.field private cornerRadiusSet:Z

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final materialButton:Lcom/google/android/material/button/MaterialButton;

.field private rippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private shouldDrawSurfaceColorStroke:Z

.field private strokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private strokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p2    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 67
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 68
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 73
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 74
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method private adjustShapeAppearanceModelCornerRadius(Lcom/google/android/material/shape/ShapeAppearanceModel;F)V
    .locals 1

    .line 336
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p0

    .line 338
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v0

    add-float/2addr v0, p2

    .line 337
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/CornerTreatment;->setCornerSize(F)V

    .line 340
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p0

    .line 342
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v0

    add-float/2addr v0, p2

    .line 341
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/CornerTreatment;->setCornerSize(F)V

    .line 344
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p0

    .line 346
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v0

    add-float/2addr v0, p2

    .line 345
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/CornerTreatment;->setCornerSize(F)V

    .line 348
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p0

    .line 350
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result p1

    add-float/2addr p1, p2

    .line 349
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/CornerTreatment;->setCornerSize(F)V

    return-void
.end method

.method private createBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 191
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 192
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 193
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 194
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 199
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 202
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    sget v5, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 205
    invoke-static {v4, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    .line 202
    :goto_0
    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 208
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 210
    sget-boolean v3, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 211
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    if-lez v3, :cond_2

    .line 212
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 214
    iget v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-direct {p0, v3, v6}, Lcom/google/android/material/button/MaterialButtonHelper;->adjustShapeAppearanceModelCornerRadius(Lcom/google/android/material/shape/ShapeAppearanceModel;F)V

    .line 216
    invoke-virtual {v0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 217
    invoke-virtual {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 218
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v6, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 221
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v6, -0x1

    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 222
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 224
    invoke-static {v6}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v2

    aput-object v0, v4, v5

    invoke-direct {v7, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-direct {p0, v7}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v3, v6, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 229
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object p0

    .line 231
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 232
    invoke-static {v6}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 231
    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 233
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v6, v2

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    aput-object v0, v6, v4

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 236
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p0

    return-object p0
.end method

.method private getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 356
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 358
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 360
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 363
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 385
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method private updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_2
    return-void
.end method

.method private updateStroke()V
    .locals 4

    .line 294
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 295
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 297
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_1

    .line 299
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v0, v0

    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 302
    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 299
    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 305
    :cond_1
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_2

    .line 306
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 308
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButtonHelper;->adjustShapeAppearanceModelCornerRadius(Lcom/google/android/material/shape/ShapeAppearanceModel;F)V

    .line 309
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 311
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_2

    .line 312
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_2
    return-void
.end method

.method private wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7

    .line 151
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method


# virtual methods
.method getCornerRadius()I
    .locals 0

    .line 330
    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    return p0
.end method

.method public getMaskDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 405
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 372
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method getRippleColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 267
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 421
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0
.end method

.method getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 279
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method getStrokeWidth()I
    .locals 0

    .line 290
    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    return p0
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method isBackgroundOverwritten()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    return p0
.end method

.method isCheckable()Z
    .locals 0

    .line 380
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    return p0
.end method

.method loadFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 78
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    .line 79
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetRight:I

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    .line 81
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 82
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetBottom:I

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 86
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 87
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 88
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 92
    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 94
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTintMode:I

    .line 96
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 95
    invoke-static {v0, v2}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 97
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTint:I

    .line 98
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 100
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_strokeColor:I

    .line 101
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_rippleColor:I

    .line 104
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 107
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 108
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 111
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    .line 114
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v3

    .line 117
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->createBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v4

    if-eqz v4, :cond_1

    int-to-float p1, p1

    .line 121
    invoke-virtual {v4, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    add-int/2addr v2, v4

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    add-int/2addr v3, p0

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method setBackgroundColor(I)V
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method setBackgroundOverwritten()V
    .locals 2

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 142
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method setCheckable(Z)V
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    return-void
.end method

.method setCornerRadius(I)V
    .locals 3

    .line 321
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    if-eq v0, p1, :cond_1

    .line 322
    :cond_0
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 324
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    .line 325
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_1
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 253
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 254
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 255
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 256
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 257
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 258
    :cond_0
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 259
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 416
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 182
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    return-void
.end method

.method setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 271
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 272
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 273
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    :cond_0
    return-void
.end method

.method setStrokeWidth(I)V
    .locals 1

    .line 283
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    if-eq v0, p1, :cond_0

    .line 284
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 285
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    :cond_0
    return-void
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 156
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 168
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 169
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method updateMaskBounds(II)V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    sub-int/2addr p2, v3

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method
