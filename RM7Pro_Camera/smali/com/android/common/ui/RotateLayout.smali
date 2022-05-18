.class public Lcom/android/common/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/d;


# instance fields
.field protected a:Landroid/view/View;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x106000d

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/common/ui/RotateLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 116
    rem-int/lit16 p1, p1, 0x168

    .line 117
    iget p2, p0, Lcom/android/common/ui/RotateLayout;->b:I

    if-ne p2, p1, :cond_0

    return-void

    .line 118
    :cond_0
    iput p1, p0, Lcom/android/common/ui/RotateLayout;->b:I

    .line 119
    invoke-virtual {p0}, Lcom/android/common/ui/RotateLayout;->requestLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 54
    iget p1, p0, Lcom/android/common/ui/RotateLayout;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/16 p3, 0x5a

    if-eq p1, p3, :cond_0

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_1

    const/16 p3, 0x10e

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1, p2, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 69
    iget v0, p0, Lcom/android/common/ui/RotateLayout;->b:I

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    move p1, v4

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/common/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 79
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 80
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/common/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 73
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 74
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 83
    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/android/common/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 85
    iget p2, p0, Lcom/android/common/ui/RotateLayout;->b:I

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_2

    goto :goto_1

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    int-to-float p2, v4

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 100
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 95
    :cond_3
    iget-object p2, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    int-to-float v0, v4

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 96
    iget-object p2, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 91
    :cond_4
    iget-object p2, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 92
    iget-object p2, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 88
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 103
    :goto_1
    iget-object p1, p0, Lcom/android/common/ui/RotateLayout;->a:Landroid/view/View;

    iget p2, p0, Lcom/android/common/ui/RotateLayout;->b:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
