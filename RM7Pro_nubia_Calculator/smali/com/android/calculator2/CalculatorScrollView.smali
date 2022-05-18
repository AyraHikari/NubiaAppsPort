.class public Lcom/android/calculator2/CalculatorScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "CalculatorScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/CalculatorScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static getChildMeasureSpecCompat(III)I
    .locals 1

    .line 44
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 46
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 47
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 49
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected measureChild(Landroid/view/View;II)V
    .locals 3

    .line 57
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 56
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 60
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v0, v2}, Lcom/android/calculator2/CalculatorScrollView;->getChildMeasureSpecCompat(III)I

    move-result p2

    .line 63
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorScrollView;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    iget p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    invoke-static {p3, v0, p0}, Lcom/android/calculator2/CalculatorScrollView;->getChildMeasureSpecCompat(III)I

    move-result p0

    .line 65
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 73
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 p3, 0x0

    .line 72
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    iget p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p5, v0}, Lcom/android/calculator2/CalculatorScrollView;->getChildMeasureSpecCompat(III)I

    move-result p2

    .line 79
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorScrollView;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorScrollView;->getPaddingBottom()I

    move-result p0

    add-int/2addr p5, p0

    iget p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p5, p0

    iget p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, p0

    iget p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 78
    invoke-static {p4, p5, p0}, Lcom/android/calculator2/CalculatorScrollView;->getChildMeasureSpecCompat(III)I

    move-result p0

    .line 81
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method
