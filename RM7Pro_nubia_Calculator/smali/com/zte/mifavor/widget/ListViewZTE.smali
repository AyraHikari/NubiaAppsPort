.class public Lcom/zte/mifavor/widget/ListViewZTE;
.super Landroid/widget/ListView;
.source "ListViewZTE.java"


# instance fields
.field private mMaxWidth:I

.field private mMinWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/ListViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/ListViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/ListViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewZTE;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x70

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMinWidth:I

    .line 32
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewZTE;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x140

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMaxWidth:I

    .line 33
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewZTE;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/zte/extres/R$attr;->mfvMinWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/zte/extres/R$attr;->mfvMaxWidth:I

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 35
    iget p2, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMinWidth:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMinWidth:I

    .line 36
    iget p2, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMaxWidth:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMaxWidth:I

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private meathureWidthByChildren()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move-object v2, v1

    move v1, v3

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewZTE;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewZTE;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ListViewZTE;->meathureWidthByChildren()I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewZTE;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewZTE;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 44
    iget v0, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMaxWidth:I

    if-le p1, v0, :cond_0

    .line 45
    iget p1, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMaxWidth:I

    goto :goto_0

    .line 46
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMinWidth:I

    if-ge p1, v0, :cond_1

    .line 47
    iget p1, p0, Lcom/zte/mifavor/widget/ListViewZTE;->mMinWidth:I

    :cond_1
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 49
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method
