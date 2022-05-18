.class public Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
.super Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

.field private mContext:Landroid/content/Context;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    .line 85
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 86
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 87
    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupTheme:I

    .line 88
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setResetMaxItemHeight()V

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 383
    .local v8, "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 385
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 386
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 388
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 390
    .local v7, "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 392
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 393
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 394
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 396
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 399
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 400
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 401
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 404
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 405
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 407
    iput v0, v8, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 408
    mul-int v10, v0, p1

    .line 409
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 411
    return v0

    .line 388
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 390
    .restart local v7    # "itemView":Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 404
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 155
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 156
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 157
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 159
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 160
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 162
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 165
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 169
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 171
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 173
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 364
    :goto_0
    return-void

    .line 177
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 179
    .local v5, "cellSize":I
    move v8, v4

    .line 180
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 181
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 182
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 183
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 184
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 187
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 189
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v12

    .line 190
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_8

    .line 191
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 192
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 190
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 194
    :cond_2
    instance-of v0, v11, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 195
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 197
    if-eqz v21, :cond_3

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 204
    .local v23, "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 205
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 206
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 207
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 208
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 209
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 210
    if-eqz v21, :cond_6

    move-object/from16 v38, v11

    check-cast v38, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_6

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 213
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/4 v7, 0x1

    .line 215
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 218
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 219
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 220
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    const/16 v16, 0x1

    .line 222
    :cond_5
    sub-int/2addr v8, v9

    .line 223
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 224
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 210
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v38, 0x0

    goto :goto_3

    :cond_7
    move v7, v8

    .line 213
    goto :goto_4

    .line 229
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 234
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 235
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_e

    if-lez v8, :cond_e

    .line 236
    const v26, 0x7fffffff

    .line 237
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 238
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 239
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v12, :cond_d

    .line 240
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 241
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 244
    .restart local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 239
    :cond_9
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 229
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 247
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 248
    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 249
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 250
    const/16 v27, 0x1

    goto :goto_8

    .line 251
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 252
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 253
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 258
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v28

    .line 260
    move/from16 v0, v27

    if-le v0, v8, :cond_13

    .line 289
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_e
    if-nez v16, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 290
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_20

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_20

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_f

    if-nez v31, :cond_f

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 292
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 294
    .local v13, "expandCount":F
    if-nez v31, :cond_11

    .line 296
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_10

    .line 297
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 298
    .restart local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 300
    .end local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :cond_10
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 301
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 302
    .restart local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 306
    .end local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_19

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 309
    .local v15, "extraPixels":I
    :goto_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v12, :cond_1f

    .line 310
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1a

    .line 309
    :cond_12
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 263
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_13
    add-int/lit8 v26, v26, 0x1

    .line 265
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_17

    .line 266
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 267
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 268
    .restart local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_15

    .line 270
    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 265
    :cond_14
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 274
    :cond_15
    if-eqz v10, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_16

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 278
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 279
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 280
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 283
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    .line 284
    goto/16 :goto_6

    .line 289
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 306
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 312
    .restart local v15    # "extraPixels":I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 313
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 314
    .restart local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 316
    move-object/from16 v0, v23

    iput v15, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 317
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 318
    if-nez v20, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1b

    .line 321
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 323
    :cond_1b
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 324
    :cond_1c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 325
    move-object/from16 v0, v23

    iput v15, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 326
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 327
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 328
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 333
    :cond_1d
    if-eqz v20, :cond_1e

    .line 334
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 336
    :cond_1e
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 337
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 342
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :cond_1f
    const/4 v8, 0x0

    .line 346
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_20
    if-eqz v30, :cond_22

    .line 347
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_22

    .line 348
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 349
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 351
    .restart local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_21

    .line 347
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 353
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 354
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 359
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_22
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    .line 360
    move/from16 v19, v25

    .line 363
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method private setResetMaxItemHeight()V
    .locals 2

    .prologue
    .line 691
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMaxItemHeight:I

    .line 693
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 464
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 570
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 437
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 439
    .local v0, "params":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 440
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 445
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 450
    if-eqz p1, :cond_2

    .line 451
    instance-of v1, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    check-cast p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;)V

    .line 454
    .local v0, "result":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 455
    const/16 v1, 0x10

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 459
    .end local v0    # "result":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 451
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 469
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 470
    .local v0, "result":Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 471
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 498
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 500
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 501
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    new-instance v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 502
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 503
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 504
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 506
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 507
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setMenuView(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V

    .line 510
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v1

    .line 504
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 576
    if-nez p1, :cond_1

    .line 577
    const/4 v2, 0x0

    .line 588
    :cond_0
    :goto_0
    return v2

    .line 579
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 580
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 582
    .local v2, "result":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 583
    check-cast v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 585
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 586
    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 486
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 487
    return-void
.end method

.method public invokeItem(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 476
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 135
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setResetMaxItemHeight()V

    .line 136
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 141
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 421
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 422
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->dismissPopupMenus()V

    .line 423
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 416
    invoke-super/range {p0 .. p5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 417
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 149
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMaxItemHeight:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 150
    .local v0, "itemHeightSpec":I
    invoke-super {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 151
    return-void
.end method

.method public peekMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 597
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 598
    return-void
.end method

.method public setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 518
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .line 519
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    .line 520
    return-void
.end method

.method public setOnMenuItemClickListener(Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    .line 145
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mReserveOverflow:Z

    .line 433
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 99
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 100
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupTheme:I

    .line 101
    if-nez p1, :cond_1

    .line 102
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .prologue
    .line 123
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 124
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setMenuView(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V

    .line 125
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
