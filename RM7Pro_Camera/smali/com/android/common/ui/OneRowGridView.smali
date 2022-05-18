.class public Lcom/android/common/ui/OneRowGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0, p1, v0}, Lcom/android/common/ui/OneRowGridView;->setPadding(IIII)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/common/ui/OneRowGridView;->setHorizontalSpacing(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 53
    iget v0, p0, Lcom/android/common/ui/OneRowGridView;->a:I

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    .line 55
    :goto_0
    iget v0, p0, Lcom/android/common/ui/OneRowGridView;->a:I

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getHorizontalSpacing()I

    move-result v1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getPaddingStart()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getPaddingEnd()I

    move-result p1

    add-int/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    .line 56
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 58
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 32
    iget v0, p0, Lcom/android/common/ui/OneRowGridView;->a:I

    if-eq v0, p1, :cond_0

    .line 33
    iput p1, p0, Lcom/android/common/ui/OneRowGridView;->a:I

    .line 34
    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSpacing(I)V
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/common/ui/OneRowGridView;->b:I

    if-eq v0, p1, :cond_0

    .line 45
    iput p1, p0, Lcom/android/common/ui/OneRowGridView;->b:I

    .line 46
    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->requestLayout()V

    :cond_0
    return-void
.end method
