.class public Lcom/android/common/ui/RotateTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/d;


# instance fields
.field private a:Lcom/android/common/ui/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Lcom/android/common/ui/e;

    invoke-direct {p1}, Lcom/android/common/ui/e;-><init>()V

    iput-object p1, p0, Lcom/android/common/ui/RotateTextView;->a:Lcom/android/common/ui/e;

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/common/ui/RotateTextView;->a:Lcom/android/common/ui/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/e;->a(IZ)V

    .line 36
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/RotateTextView;->a:Lcom/android/common/ui/e;

    invoke-virtual {v0}, Lcom/android/common/ui/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->invalidate()V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getPaddingStart()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getPaddingTop()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getPaddingEnd()I

    move-result v2

    .line 52
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getPaddingBottom()I

    move-result v3

    .line 53
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    .line 54
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float v0, v0

    int-to-float v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    iget-object v0, p0, Lcom/android/common/ui/RotateTextView;->a:Lcom/android/common/ui/e;

    invoke-virtual {v0}, Lcom/android/common/ui/e;->b()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v5

    neg-int v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method
