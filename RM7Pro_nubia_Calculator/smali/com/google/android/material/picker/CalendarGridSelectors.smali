.class Lcom/google/android/material/picker/CalendarGridSelectors;
.super Ljava/lang/Object;
.source "CalendarGridSelectors.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static colorCell(Landroid/widget/TextView;I)V
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 51
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 53
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialCalendarDay:[I

    .line 54
    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendarDay_itemFillColor:I

    .line 56
    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 58
    sget v4, Lcom/google/android/material/R$styleable;->MaterialCalendarDay_itemTextColor:I

    .line 59
    invoke-static {v0, p1, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 61
    sget v5, Lcom/google/android/material/R$styleable;->MaterialCalendarDay_itemStrokeColor:I

    .line 62
    invoke-static {v0, p1, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 64
    sget v6, Lcom/google/android/material/R$styleable;->MaterialCalendarDay_itemStrokeWidth:I

    const/4 v7, 0x0

    .line 65
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 66
    new-instance v8, Lcom/google/android/material/shape/ShapeAppearanceModel;

    sget v9, Lcom/google/android/material/R$styleable;->MaterialCalendarDay_itemShapeAppearance:I

    .line 69
    invoke-virtual {p1, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    sget v10, Lcom/google/android/material/R$styleable;->MaterialCalendarDay_itemShapeAppearanceOverlay:I

    .line 70
    invoke-virtual {p1, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {v8, v0, v9, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Landroid/content/Context;II)V

    .line 72
    invoke-virtual {v1, v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 73
    invoke-virtual {v2, v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 77
    invoke-virtual {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    int-to-float p1, v6

    .line 78
    invoke-virtual {v1, p1, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 79
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 80
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    const/16 v0, 0x1e

    .line 81
    invoke-virtual {v4, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
