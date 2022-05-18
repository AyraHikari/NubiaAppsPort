.class public Lcn/nubia/notepad/view/NotePadGridView;
.super Landroid/widget/GridView;
.source "NotePadGridView.java"


# instance fields
.field public mIsOnMeasure:Z

.field private mIsSingleReverseOpen:Z

.field private mLastItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 9
    iput v0, p0, Lcn/nubia/notepad/view/NotePadGridView;->mLastItemCount:I

    .line 11
    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadGridView;->mIsOnMeasure:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    iput v0, p0, Lcn/nubia/notepad/view/NotePadGridView;->mLastItemCount:I

    .line 11
    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadGridView;->mIsOnMeasure:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    iput v0, p0, Lcn/nubia/notepad/view/NotePadGridView;->mLastItemCount:I

    .line 11
    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadGridView;->mIsOnMeasure:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/notepad/view/NotePadGridView;->mIsOnMeasure:Z

    .line 38
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadGridView;->getCount()I

    move-result v0

    .line 39
    .local v0, "count":I
    iget-boolean v1, p0, Lcn/nubia/notepad/view/NotePadGridView;->mIsSingleReverseOpen:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/notepad/view/NotePadGridView;->mLastItemCount:I

    if-eq v0, v1, :cond_0

    .line 40
    iput v0, p0, Lcn/nubia/notepad/view/NotePadGridView;->mLastItemCount:I

    .line 41
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadGridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/NotePadGridView;->setSelection(I)V

    .line 43
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 44
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadGridView;->mIsOnMeasure:Z

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 33
    return-void
.end method

.method public setSingleReverseOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadGridView;->mIsSingleReverseOpen:Z

    .line 27
    return-void
.end method
