.class public Lcom/android/calculator2/CalculatorScrollView4Float;
.super Landroid/widget/HorizontalScrollView;
.source "CalculatorScrollView4Float.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/CalculatorScrollView4Float;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorScrollView4Float;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static getChildMeasureSpecCompat(III)I
    .locals 1

    .line 45
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 47
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 48
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 50
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected measureChild(Landroid/view/View;II)V
    .locals 3

    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 57
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 61
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v0, v2}, Lcom/android/calculator2/CalculatorScrollView4Float;->getChildMeasureSpecCompat(III)I

    move-result p2

    .line 64
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorScrollView4Float;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorScrollView4Float;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    iget p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    invoke-static {p3, v0, p0}, Lcom/android/calculator2/CalculatorScrollView4Float;->getChildMeasureSpecCompat(III)I

    move-result p0

    .line 66
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 74
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 p3, 0x0

    .line 73
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    iget p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p5, v0}, Lcom/android/calculator2/CalculatorScrollView4Float;->getChildMeasureSpecCompat(III)I

    move-result p2

    .line 80
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorScrollView4Float;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorScrollView4Float;->getPaddingBottom()I

    move-result p0

    add-int/2addr p5, p0

    iget p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p5, p0

    iget p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, p0

    iget p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 79
    invoke-static {p4, p5, p0}, Lcom/android/calculator2/CalculatorScrollView4Float;->getChildMeasureSpecCompat(III)I

    move-result p0

    .line 82
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorScrollView4Float;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorFormula;

    .line 119
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getMaxChars()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    if-gt v0, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
