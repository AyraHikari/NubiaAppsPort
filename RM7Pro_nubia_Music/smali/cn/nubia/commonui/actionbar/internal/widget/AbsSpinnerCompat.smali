.class abstract Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;
.super Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;
.source "AbsSpinnerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;,
        Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/SpinnerAdapter;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final h:Landroid/graphics/Rect;

.field final i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

.field private j:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->d:I

    .line 42
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->e:I

    .line 43
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->f:I

    .line 44
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->g:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    .line 64
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->d()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setFocusable(Z)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setWillNotDraw(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 125
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    .line 126
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mNeedSync:Z

    .line 128
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->removeAllViewsInLayout()V

    .line 129
    iput v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    .line 130
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mOldSelectedRowId:J

    .line 132
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    .line 133
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 134
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->invalidate()V

    .line 135
    return-void
.end method

.method abstract a(IZ)V
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 83
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->j:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a()V

    .line 88
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    .line 90
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    .line 91
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mOldSelectedRowId:J

    .line 93
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 94
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mItemCount:I

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mOldItemCount:I

    .line 95
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mItemCount:I

    .line 96
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->checkFocus()V

    .line 98
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$a;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$a;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->j:Landroid/database/DataSetObserver;

    .line 99
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->j:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 101
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 103
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    .line 104
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 106
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->checkSelectionChanged()V

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 119
    return-void

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->checkFocus()V

    .line 113
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a()V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->checkSelectionChanged()V

    goto :goto_0
.end method

.method b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method b()V
    .locals 6

    .prologue
    .line 235
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v1

    .line 236
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    .line 237
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    .line 240
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 242
    add-int v5, v3, v0

    .line 243
    invoke-virtual {v2, v5, v4}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a(ILandroid/view/View;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public c()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 287
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 151
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getPaddingLeft()I

    move-result v0

    .line 152
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getPaddingTop()I

    move-result v1

    .line 153
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getPaddingRight()I

    move-result v2

    .line 154
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getPaddingBottom()I

    move-result v3

    .line 156
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->d:I

    if-le v0, v8, :cond_4

    :goto_0
    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 158
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->e:I

    if-le v1, v0, :cond_5

    move v0, v1

    :goto_1
    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 160
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->f:I

    if-le v2, v0, :cond_6

    move v0, v2

    :goto_2
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 162
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->g:I

    if-le v3, v0, :cond_7

    move v0, v3

    :goto_3
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 165
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->handleDataChanged()V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v1

    .line 174
    if-ltz v1, :cond_8

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 176
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a(I)Landroid/view/View;

    move-result-object v0

    .line 177
    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 182
    :cond_1
    if-eqz v0, :cond_8

    .line 184
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    invoke-virtual {v2, v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a(ILandroid/view/View;)V

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    .line 187
    iput-boolean v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 188
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 191
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->measureChild(Landroid/view/View;II)V

    .line 193
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 194
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    move v2, v4

    .line 200
    :goto_4
    if-eqz v2, :cond_3

    .line 202
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 203
    if-nez v6, :cond_3

    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 209
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 211
    invoke-static {v1, p2, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    .line 212
    invoke-static {v0, p1, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 214
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setMeasuredDimension(II)V

    .line 215
    iput p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->b:I

    .line 216
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->c:I

    .line 217
    return-void

    .line 156
    :cond_4
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->d:I

    goto/16 :goto_0

    .line 158
    :cond_5
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->e:I

    goto/16 :goto_1

    .line 160
    :cond_6
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->f:I

    goto/16 :goto_2

    .line 162
    :cond_7
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->g:I

    goto/16 :goto_3

    :cond_8
    move v2, v5

    move v0, v4

    move v1, v4

    goto :goto_4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 406
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;

    .line 408
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 410
    iget-wide v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 411
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    .line 412
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mNeedSync:Z

    .line 413
    iget-wide v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;->a:J

    iput-wide v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mSyncRowId:J

    .line 414
    iget v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;->b:I

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mSyncPosition:I

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mSyncMode:I

    .line 416
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 418
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 393
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 394
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 395
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;->a:J

    .line 396
    iget-wide v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;->b:I

    .line 401
    :goto_0
    return-object v1

    .line 399
    :cond_0
    const/4 v0, -0x1

    iput v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$SavedState;->b:I

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 302
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;->requestLayout()V

    .line 304
    :cond_0
    return-void
.end method

.method public synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 260
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 261
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->invalidate()V

    .line 262
    return-void
.end method
