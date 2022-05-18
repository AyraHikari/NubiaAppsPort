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
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$a;,
        Lcn/nubia/commonui/actionbar/widget/ActionMenuView$b;,
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

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

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

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 84
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    .line 85
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

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

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 383
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 385
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 386
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 388
    instance-of v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .line 390
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    .line 393
    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    .line 394
    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x80000000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 396
    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 399
    div-int v1, v7, p1

    .line 400
    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 401
    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    .line 404
    :cond_2
    :goto_2
    iget-boolean v3, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    .line 405
    :cond_3
    iput-boolean v2, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 407
    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 408
    mul-int v0, v1, p1

    .line 409
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    .line 411
    return v1

    .line 388
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    .line 390
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 34

    .prologue
    .line 155
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 156
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 157
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int v19, v8, v9

    .line 162
    const/4 v8, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v24

    .line 165
    sub-int v25, v6, v7

    .line 168
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v25, v6

    .line 169
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    rem-int v6, v25, v6

    .line 171
    if-nez v9, :cond_0

    .line 173
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 364
    :goto_0
    return-void

    .line 177
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMinCellSize:I

    div-int/2addr v6, v9

    add-int v26, v7, v6

    .line 180
    const/16 v16, 0x0

    .line 181
    const/4 v15, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    const/4 v7, 0x0

    .line 184
    const/4 v11, 0x0

    .line 187
    const-wide/16 v12, 0x0

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v27

    .line 190
    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 191
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 192
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v14, 0x8

    if-ne v6, v14, :cond_1

    move v8, v7

    move-wide v6, v12

    move/from16 v12, v16

    move v13, v9

    move v9, v15

    .line 190
    :goto_2
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move v15, v9

    move/from16 v16, v12

    move v9, v13

    move-wide v12, v6

    move v7, v8

    goto :goto_1

    .line 194
    :cond_1
    instance-of v0, v8, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    move/from16 v20, v0

    .line 195
    add-int/lit8 v14, v7, 0x1

    .line 197
    if-eqz v20, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 204
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 205
    const/4 v7, 0x0

    iput v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 206
    const/4 v7, 0x0

    iput v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 207
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 208
    const/4 v7, 0x0

    iput v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 209
    const/4 v7, 0x0

    iput v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 210
    if-eqz v20, :cond_3

    move-object v7, v8

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 213
    iget-boolean v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    .line 215
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    .line 218
    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 219
    iget-boolean v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v7, :cond_23

    add-int/lit8 v7, v10, 0x1

    .line 220
    :goto_5
    iget-boolean v6, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    .line 222
    :goto_6
    sub-int v11, v9, v20

    .line 223
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 224
    const/4 v8, 0x1

    move/from16 v0, v20

    if-ne v0, v8, :cond_21

    const/4 v8, 0x1

    shl-int v8, v8, v18

    int-to-long v8, v8

    or-long/2addr v8, v12

    move v12, v10

    move v13, v11

    move v10, v7

    move v11, v6

    move-wide v6, v8

    move v9, v15

    move v8, v14

    goto/16 :goto_2

    .line 210
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    move v7, v9

    .line 213
    goto :goto_4

    .line 229
    :cond_5
    if-eqz v11, :cond_6

    const/4 v6, 0x2

    if-ne v7, v6, :cond_6

    const/4 v6, 0x1

    move v8, v6

    .line 234
    :goto_7
    const/16 v18, 0x0

    move-wide/from16 v20, v12

    move/from16 v19, v9

    .line 235
    :goto_8
    if-lez v10, :cond_20

    if-lez v19, :cond_20

    .line 236
    const v14, 0x7fffffff

    .line 237
    const-wide/16 v12, 0x0

    .line 238
    const/4 v9, 0x0

    .line 239
    const/4 v6, 0x0

    move/from16 v22, v6

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 240
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 241
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 244
    iget-boolean v0, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    move v6, v9

    move v9, v14

    .line 239
    :goto_a
    add-int/lit8 v14, v22, 0x1

    move/from16 v22, v14

    move v14, v9

    move v9, v6

    goto :goto_9

    .line 229
    :cond_6
    const/4 v6, 0x0

    move v8, v6

    goto :goto_7

    .line 247
    :cond_7
    iget v0, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v14, :cond_8

    .line 248
    iget v9, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 249
    const/4 v6, 0x1

    shl-int v6, v6, v22

    int-to-long v12, v6

    .line 250
    const/4 v6, 0x1

    goto :goto_a

    .line 251
    :cond_8
    iget v6, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v6, v14, :cond_1f

    .line 252
    const/4 v6, 0x1

    shl-int v6, v6, v22

    int-to-long v0, v6

    move-wide/from16 v28, v0

    or-long v12, v12, v28

    .line 253
    add-int/lit8 v6, v9, 0x1

    move v9, v14

    goto :goto_a

    .line 258
    :cond_9
    or-long v20, v20, v12

    .line 260
    move/from16 v0, v19

    if-le v9, v0, :cond_c

    move-wide/from16 v12, v20

    .line 289
    :goto_b
    if-nez v11, :cond_10

    const/4 v6, 0x1

    if-ne v7, v6, :cond_10

    const/4 v6, 0x1

    .line 290
    :goto_c
    if-lez v19, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-eqz v8, :cond_18

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v19

    if-lt v0, v7, :cond_a

    if-nez v6, :cond_a

    const/4 v7, 0x1

    if-le v15, v7, :cond_18

    .line 292
    :cond_a
    invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    int-to-float v7, v7

    .line 294
    if-nez v6, :cond_1d

    .line 296
    const-wide/16 v8, 0x1

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_b

    .line 297
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 298
    iget-boolean v6, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v6, :cond_b

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v7, v6

    .line 300
    :cond_b
    const/4 v6, 0x1

    add-int/lit8 v8, v27, -0x1

    shl-int/2addr v6, v8

    int-to-long v8, v6

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1d

    .line 301
    add-int/lit8 v6, v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 302
    iget-boolean v6, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v6, :cond_1d

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v7, v6

    .line 306
    :goto_d
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_11

    mul-int v7, v19, v26

    int-to-float v7, v7

    div-float v6, v7, v6

    float-to-int v6, v6

    move v7, v6

    .line 309
    :goto_e
    const/4 v6, 0x0

    move v9, v6

    move/from16 v8, v18

    :goto_f
    move/from16 v0, v27

    if-ge v9, v0, :cond_19

    .line 310
    const/4 v6, 0x1

    shl-int/2addr v6, v9

    int-to-long v10, v6

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-nez v6, :cond_12

    move v6, v8

    .line 309
    :goto_10
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v6

    goto :goto_f

    .line 263
    :cond_c
    add-int/lit8 v22, v14, 0x1

    .line 265
    const/4 v6, 0x0

    move v14, v6

    move/from16 v9, v19

    move-wide/from16 v18, v20

    :goto_11
    move/from16 v0, v27

    if-ge v14, v0, :cond_f

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 267
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 268
    const/16 v21, 0x1

    shl-int v21, v21, v14

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v28, v0

    and-long v28, v28, v12

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-nez v21, :cond_d

    .line 270
    iget v6, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_1e

    const/4 v6, 0x1

    shl-int/2addr v6, v14

    int-to-long v0, v6

    move-wide/from16 v20, v0

    or-long v18, v18, v20

    move v6, v9

    .line 265
    :goto_12
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v9, v6

    goto :goto_11

    .line 274
    :cond_d
    if-eqz v8, :cond_e

    iget-boolean v0, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_e

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v21, v0

    add-int v21, v21, v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 278
    :cond_e
    iget v0, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 279
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 280
    add-int/lit8 v6, v9, -0x1

    goto :goto_12

    .line 283
    :cond_f
    const/4 v6, 0x1

    move-wide/from16 v20, v18

    move/from16 v18, v6

    move/from16 v19, v9

    .line 284
    goto/16 :goto_8

    .line 289
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 306
    :cond_11
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_e

    .line 312
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 313
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 314
    instance-of v10, v10, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_14

    .line 316
    iput v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 317
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 318
    if-nez v9, :cond_13

    iget-boolean v8, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v8, :cond_13

    .line 321
    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 323
    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 324
    :cond_14
    iget-boolean v10, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v10, :cond_15

    .line 325
    iput v7, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 326
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 327
    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 328
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 333
    :cond_15
    if-eqz v9, :cond_16

    .line 334
    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 336
    :cond_16
    add-int/lit8 v10, v27, -0x1

    if-eq v9, v10, :cond_17

    .line 337
    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_17
    move v6, v8

    goto/16 :goto_10

    :cond_18
    move/from16 v8, v18

    .line 346
    :cond_19
    if-eqz v8, :cond_1b

    .line 347
    const/4 v6, 0x0

    move v7, v6

    :goto_13
    move/from16 v0, v27

    if-ge v7, v0, :cond_1b

    .line 348
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 349
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .line 351
    iget-boolean v9, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v9, :cond_1a

    .line 347
    :goto_14
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_13

    .line 353
    :cond_1a
    iget v9, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v9, v9, v26

    iget v6, v6, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v6, v9

    .line 354
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v8, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_14

    .line 359
    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_1c

    .line 363
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_1c
    move/from16 v16, v17

    goto :goto_15

    :cond_1d
    move v6, v7

    goto/16 :goto_d

    :cond_1e
    move v6, v9

    goto/16 :goto_12

    :cond_1f
    move v6, v9

    move v9, v14

    goto/16 :goto_a

    :cond_20
    move-wide/from16 v12, v20

    goto/16 :goto_b

    :cond_21
    move v8, v14

    move v9, v15

    move-wide/from16 v32, v12

    move v12, v10

    move v13, v11

    move v11, v6

    move v10, v7

    move-wide/from16 v6, v32

    goto/16 :goto_2

    :cond_22
    move v6, v11

    goto/16 :goto_6

    :cond_23
    move v7, v10

    goto/16 :goto_5
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

    .prologue
    .line 450
    if-eqz p1, :cond_2

    .line 451
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    check-cast p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;)V

    .line 454
    :goto_0
    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 455
    const/16 v1, 0x10

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 459
    :cond_0
    :goto_1
    return-object v0

    .line 451
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
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 500
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 501
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    new-instance v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$b;

    invoke-direct {v2, p0, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$b;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 502
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 503
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 504
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 506
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 507
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setMenuView(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0

    .line 504
    :cond_1
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$a;

    invoke-direct {v0, p0, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$a;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;)V

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

    .prologue
    const/4 v2, 0x0

    .line 576
    if-nez p1, :cond_0

    move v0, v2

    .line 588
    :goto_0
    return v0

    .line 579
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 580
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 582
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 583
    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/2addr v2, v0

    .line 585
    :cond_1
    if-lez p1, :cond_2

    instance-of v0, v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 586
    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

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

    .prologue
    .line 486
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 487
    return-void
.end method

.method public invokeItem(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 2

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

    .prologue
    .line 416
    invoke-super/range {p0 .. p5}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 417
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mMaxItemHeight:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 150
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

    .prologue
    .line 597
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 598
    return-void
.end method

.method public setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0

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

    .prologue
    .line 144
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    .line 145
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .prologue
    .line 432
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->mReserveOverflow:Z

    .line 433
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

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
