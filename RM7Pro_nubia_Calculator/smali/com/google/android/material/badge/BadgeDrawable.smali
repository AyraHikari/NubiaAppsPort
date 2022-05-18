.class public Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    }
.end annotation


# static fields
.field private static final BADGE_NUMBER_NONE:I = -0x1

.field static final DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX:Ljava/lang/String; = "+"

.field private static final DEFAULT_MAX_BADGE_CHARACTER_COUNT:I = 0x4

.field private static final MAX_CIRCULAR_BADGE_NUMBER_COUNT:I = 0x63


# instance fields
.field private final badgeBounds:Landroid/graphics/Rect;

.field private badgeCenterX:F

.field private badgeCenterY:F

.field private final badgeRadius:F

.field private final badgeWidePadding:F

.field private final badgeWithTextRadius:F

.field private final context:Landroid/content/Context;

.field private maxBadgeNumber:I

.field private final savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

.field private final shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

.field private final tmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 277
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->context:Landroid/content/Context;

    .line 279
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->tmpRect:Landroid/graphics/Rect;

    .line 282
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 283
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 285
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeRadius:F

    .line 286
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWidePadding:F

    .line 287
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_with_text_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    .line 289
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 290
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 291
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-direct {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 292
    sget p1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setTextAppearanceResource(I)V

    return-void
.end method

.method private calculateBadgeCenterCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 583
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 584
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 586
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 587
    iget v2, v1, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_badge_vertical_offset:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_0

    .line 588
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v0, :cond_2

    :cond_0
    if-nez p2, :cond_1

    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 592
    :cond_1
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 596
    :cond_2
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_3

    iget p1, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_3
    iget p1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :goto_1
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 599
    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 3

    .line 205
    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    sget v1, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 215
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->loadDefaultStateFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public static createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .param p1    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-direct {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->restoreFromSavedState(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)V

    return-object v0
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 5

    .line 555
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 556
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeText()Ljava/lang/String;

    move-result-object v1

    .line 557
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 558
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 561
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 562
    invoke-virtual {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    .line 558
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getBadgeText()Ljava/lang/String;
    .locals 4

    .line 567
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    if-gt v0, v1, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->context:Landroid/content/Context;

    sget v1, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 572
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    const-string v3, "+"

    aput-object v3, v2, p0

    .line 570
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadDefaultStateFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 247
    sget-object v2, Lcom/google/android/material/R$styleable;->Badge:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 248
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 251
    sget p3, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    const/4 p4, 0x4

    .line 252
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 251
    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setMaxCharacterCount(I)V

    .line 257
    sget p3, Lcom/google/android/material/R$styleable;->Badge_number:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 258
    sget p3, Lcom/google/android/material/R$styleable;->Badge_number:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setNumber(I)V

    .line 261
    :cond_0
    sget p3, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setBackgroundColor(I)V

    .line 265
    sget p3, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 266
    sget p3, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeTextColor(I)V

    .line 269
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .line 274
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private restoreFromSavedState(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)V
    .locals 2

    .line 229
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setMaxCharacterCount(I)V

    .line 234
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 235
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setNumber(I)V

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBackgroundColor(I)V

    .line 242
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$300(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeTextColor(I)V

    return-void
.end method

.method private setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 2
    .param p1    # Lcom/google/android/material/resources/TextAppearance;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 528
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 532
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBounds()V

    return-void
.end method

.method private setTextAppearanceResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 524
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    return-void
.end method

.method private updateBounds()V
    .locals 5

    .line 537
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->tmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 538
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v0

    const/16 v1, 0x63

    if-gt v0, v1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeRadius:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    .line 541
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    invoke-static {v1, v2, v3, v0, v0}, Lcom/google/android/material/badge/BadgeUtils;->updateBadgeBounds(Landroid/graphics/Rect;FFFF)V

    goto :goto_1

    .line 543
    :cond_1
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    .line 544
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 545
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWidePadding:F

    add-float/2addr v1, v2

    .line 546
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    invoke-static {v2, v3, v4, v1, v0}, Lcom/google/android/material/badge/BadgeUtils;->updateBadgeBounds(Landroid/graphics/Rect;FFFF)V

    .line 548
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerRadius(F)V

    .line 549
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->tmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private updateMaxBadgeNumber()V
    .locals 4

    .line 578
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    return-void
.end method


# virtual methods
.method public clearBadgeNumber()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 405
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 475
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->drawText(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    return p0
.end method

.method public getBackgroundColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 320
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getBadgeTextColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 346
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    return p0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 506
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    if-lez v0, :cond_1

    .line 512
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 514
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    .line 513
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    .line 519
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getMaxCharacterCount()I
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    return p0
.end method

.method public getNumber()I
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 381
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getSavedState()Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    return-object p0
.end method

.method public hasNumber()Z
    .locals 1

    .line 365
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 493
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 488
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$402(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 452
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 453
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 330
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$202(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 331
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 332
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 334
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBadgeTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 356
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$302(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 357
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 359
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$502(Lcom/google/android/material/badge/BadgeDrawable$SavedState;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method public setContentDescriptionQuantityStringsResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 501
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$602(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    return-void
.end method

.method public setMaxCharacterCount(I)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$002(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 427
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateMaxBadgeNumber()V

    .line 428
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 429
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBounds()V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setNumber(I)V
    .locals 1

    const/4 v0, 0x0

    .line 393
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 394
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 396
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 397
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBounds()V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(ZZ)Z

    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->calculateBadgeCenterCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 308
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBounds()V

    .line 309
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method
