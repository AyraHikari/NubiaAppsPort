.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/z;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/g$b;
.implements Landroid/support/v7/view/menu/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$c;,
        Landroid/support/v7/widget/ActionMenuView$a;,
        Landroid/support/v7/widget/ActionMenuView$b;,
        Landroid/support/v7/widget/ActionMenuView$d;,
        Landroid/support/v7/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field private p:Landroid/support/v7/view/menu/g;

.field private q:Landroid/content/Context;

.field private r:I

.field private s:Landroid/support/v7/widget/c;

.field private t:Landroid/support/v7/view/menu/m$a;

.field u:Landroid/support/v7/view/menu/g$a;

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field z:Landroid/support/v7/widget/ActionMenuView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/z;->setBaselineAligned(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 5
    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->x:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->y:I

    .line 7
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/content/Context;

    .line 8
    iput p2, p0, Landroid/support/v7/widget/ActionMenuView;->r:I

    return-void
.end method

.method static G(Landroid/view/View;IIII)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$c;

    .line 2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 3
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 4
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 5
    instance-of p4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    move-object p4, p0

    check-cast p4, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p4}, Landroid/support/v7/view/menu/ActionMenuItemView;->f()Z

    move-result p4

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v2

    :goto_1
    const/4 v3, 0x2

    if-lez p2, :cond_5

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    .line 7
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 10
    div-int v4, p2, p1

    .line 11
    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v2

    .line 12
    :goto_2
    iget-boolean p2, v0, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    .line 13
    :goto_3
    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->f:Z

    .line 14
    iput v3, v0, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    .line 15
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private H(II)V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    .line 6
    invoke-static {v7, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    .line 7
    iget v4, v0, Landroid/support/v7/widget/ActionMenuView;->x:I

    div-int v7, v2, v4

    .line 8
    rem-int v8, v2, v4

    const/4 v9, 0x0

    if-nez v7, :cond_0

    .line 9
    invoke-virtual {v0, v2, v9}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 10
    :cond_0
    div-int/2addr v8, v7

    add-int/2addr v4, v8

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v10, v9

    move v12, v10

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    const-wide/16 v17, 0x0

    :goto_0
    if-ge v12, v8, :cond_8

    .line 12
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 13
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v19, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_1

    goto/16 :goto_5

    .line 14
    :cond_1
    instance-of v3, v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v14, v14, 0x1

    if-eqz v3, :cond_2

    .line 15
    iget v9, v0, Landroid/support/v7/widget/ActionMenuView;->y:I

    move/from16 v20, v14

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    move/from16 v20, v14

    const/4 v14, 0x0

    .line 16
    :goto_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$c;

    .line 17
    iput-boolean v14, v9, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    .line 18
    iput v14, v9, Landroid/support/v7/widget/ActionMenuView$c;->e:I

    .line 19
    iput v14, v9, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    .line 20
    iput-boolean v14, v9, Landroid/support/v7/widget/ActionMenuView$c;->f:Z

    .line 21
    iput v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 22
    iput v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v3, :cond_3

    .line 23
    move-object v3, v11

    check-cast v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v9, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    .line 24
    iget-boolean v3, v9, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v7

    .line 25
    :goto_3
    invoke-static {v11, v4, v3, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->G(Landroid/view/View;IIII)I

    move-result v3

    .line 26
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 27
    iget-boolean v14, v9, Landroid/support/v7/widget/ActionMenuView$c;->f:Z

    if-eqz v14, :cond_5

    add-int/lit8 v16, v16, 0x1

    .line 28
    :cond_5
    iget-boolean v9, v9, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v9, :cond_6

    const/4 v13, 0x1

    :cond_6
    sub-int/2addr v7, v3

    .line 29
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x1

    if-ne v3, v9, :cond_7

    shl-int v3, v9, v12

    move v11, v10

    int-to-long v9, v3

    or-long v9, v17, v9

    move-wide/from16 v17, v9

    move v10, v11

    goto :goto_4

    :cond_7
    move v11, v10

    :goto_4
    move/from16 v14, v20

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    const/4 v9, 0x0

    goto :goto_0

    :cond_8
    move/from16 v19, v3

    const/4 v3, 0x2

    if-eqz v13, :cond_9

    if-ne v14, v3, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    const/4 v9, 0x0

    :goto_7
    if-lez v16, :cond_13

    if-lez v7, :cond_13

    const v20, 0x7fffffff

    move/from16 v12, v20

    const/4 v3, 0x0

    const/4 v11, 0x0

    const-wide/16 v20, 0x0

    :goto_8
    if-ge v11, v8, :cond_d

    .line 30
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 31
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v9

    move-object/from16 v9, v24

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$c;

    move/from16 v24, v10

    .line 32
    iget-boolean v10, v9, Landroid/support/v7/widget/ActionMenuView$c;->f:Z

    if-nez v10, :cond_a

    goto :goto_9

    .line 33
    :cond_a
    iget v9, v9, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    if-ge v9, v12, :cond_b

    const-wide/16 v22, 0x1

    shl-long v20, v22, v11

    move v12, v9

    const/4 v3, 0x1

    goto :goto_9

    :cond_b
    const-wide/16 v22, 0x1

    if-ne v9, v12, :cond_c

    shl-long v9, v22, v11

    or-long v9, v20, v9

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v20, v9

    :cond_c
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v24

    move/from16 v9, v25

    goto :goto_8

    :cond_d
    move/from16 v25, v9

    move/from16 v24, v10

    or-long v17, v17, v20

    if-le v3, v7, :cond_e

    move v11, v1

    move/from16 v26, v2

    goto :goto_d

    :cond_e
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v8, :cond_12

    .line 34
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 35
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$c;

    move/from16 v26, v2

    const/4 v11, 0x1

    shl-int v2, v11, v3

    move v11, v1

    int-to-long v1, v2

    and-long v22, v20, v1

    const-wide/16 v27, 0x0

    cmp-long v22, v22, v27

    if-nez v22, :cond_10

    .line 36
    iget v9, v10, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    if-ne v9, v12, :cond_f

    or-long v17, v17, v1

    :cond_f
    move/from16 v27, v5

    goto :goto_c

    :cond_10
    if-eqz v5, :cond_11

    .line 37
    iget-boolean v1, v10, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    if-ne v7, v1, :cond_11

    .line 38
    iget v2, v0, Landroid/support/v7/widget/ActionMenuView;->y:I

    add-int v1, v2, v4

    move/from16 v27, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    :cond_11
    move/from16 v27, v5

    .line 39
    :goto_b
    iget v1, v10, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v10, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    .line 40
    iput-boolean v2, v10, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    add-int/lit8 v7, v7, -0x1

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move v1, v11

    move/from16 v2, v26

    move/from16 v5, v27

    goto :goto_a

    :cond_12
    move/from16 v10, v24

    const/4 v3, 0x2

    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_13
    move v11, v1

    move/from16 v26, v2

    move/from16 v25, v9

    move/from16 v24, v10

    :goto_d
    const/4 v1, 0x1

    if-nez v13, :cond_14

    if-ne v14, v1, :cond_14

    move v2, v1

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    :goto_e
    if-lez v7, :cond_20

    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-eqz v3, :cond_20

    sub-int/2addr v14, v1

    if-lt v7, v14, :cond_15

    if-nez v2, :cond_15

    if-le v15, v1, :cond_20

    .line 41
    :cond_15
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_17

    const-wide/16 v2, 0x1

    and-long v2, v17, v2

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v14, 0x0

    if-eqz v2, :cond_16

    .line 42
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$c;

    .line 43
    iget-boolean v2, v2, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_16

    sub-float/2addr v1, v3

    :cond_16
    add-int/lit8 v2, v8, -0x1

    const/4 v5, 0x1

    shl-int v9, v5, v2

    int-to-long v9, v9

    and-long v9, v17, v9

    const-wide/16 v12, 0x0

    cmp-long v5, v9, v12

    if-eqz v5, :cond_18

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$c;

    .line 45
    iget-boolean v2, v2, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_18

    sub-float/2addr v1, v3

    goto :goto_f

    :cond_17
    const/4 v14, 0x0

    :cond_18
    :goto_f
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_19

    mul-int/2addr v7, v4

    int-to-float v2, v7

    div-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_10

    :cond_19
    move v1, v14

    :goto_10
    move v2, v14

    move/from16 v9, v25

    :goto_11
    if-ge v2, v8, :cond_21

    const/4 v3, 0x1

    shl-int v5, v3, v2

    int-to-long v12, v5

    and-long v12, v17, v12

    const-wide/16 v15, 0x0

    cmp-long v3, v12, v15

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    const/4 v7, 0x2

    goto :goto_13

    .line 46
    :cond_1a
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$c;

    .line 48
    instance-of v3, v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_1c

    .line 49
    iput v1, v5, Landroid/support/v7/widget/ActionMenuView$c;->e:I

    const/4 v3, 0x1

    .line 50
    iput-boolean v3, v5, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    if-nez v2, :cond_1b

    .line 51
    iget-boolean v3, v5, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    if-nez v3, :cond_1b

    neg-int v3, v1

    const/4 v7, 0x2

    .line 52
    div-int/2addr v3, v7

    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_12

    :cond_1b
    const/4 v7, 0x2

    :goto_12
    const/4 v3, 0x1

    const/4 v9, 0x1

    goto :goto_13

    :cond_1c
    const/4 v7, 0x2

    .line 53
    iget-boolean v3, v5, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v3, :cond_1d

    .line 54
    iput v1, v5, Landroid/support/v7/widget/ActionMenuView$c;->e:I

    const/4 v3, 0x1

    .line 55
    iput-boolean v3, v5, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    neg-int v9, v1

    .line 56
    div-int/2addr v9, v7

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v9, v3

    goto :goto_13

    :cond_1d
    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 57
    div-int/lit8 v10, v1, 0x2

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1e
    add-int/lit8 v10, v8, -0x1

    if-eq v2, v10, :cond_1f

    .line 58
    div-int/lit8 v10, v1, 0x2

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_1f
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_20
    const/4 v14, 0x0

    move/from16 v9, v25

    :cond_21
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v9, :cond_23

    move v9, v14

    :goto_14
    if-ge v9, v8, :cond_23

    .line 59
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$c;

    .line 61
    iget-boolean v5, v3, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    if-nez v5, :cond_22

    goto :goto_15

    .line 62
    :cond_22
    iget v5, v3, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    mul-int/2addr v5, v4

    iget v3, v3, Landroid/support/v7/widget/ActionMenuView$c;->e:I

    add-int/2addr v5, v3

    .line 63
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->measure(II)V

    :goto_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_23
    if-eq v11, v1, :cond_24

    move/from16 v3, v24

    goto :goto_16

    :cond_24
    move/from16 v3, v19

    :goto_16
    move/from16 v2, v26

    .line 64
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method public A(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected B(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$c;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/support/v7/widget/ActionMenuView$c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    :goto_0
    iget p1, v0, Landroid/support/v7/widget/z$a;->b:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    .line 3
    iput p1, v0, Landroid/support/v7/widget/z$a;->b:I

    :cond_1
    return-object v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->z()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public C()Landroid/support/v7/widget/ActionMenuView$c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->z()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    return-object v0
.end method

.method protected D(I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$a;

    if-eqz v3, :cond_1

    .line 4
    check-cast v1, Landroid/support/v7/widget/ActionMenuView$a;

    invoke-interface {v1}, Landroid/support/v7/widget/ActionMenuView$a;->a()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-lez p1, :cond_2

    .line 5
    instance-of p1, v2, Landroid/support/v7/widget/ActionMenuView$a;

    if-eqz p1, :cond_2

    .line 6
    check-cast v2, Landroid/support/v7/widget/ActionMenuView$a;

    invoke-interface {v2}, Landroid/support/v7/widget/ActionMenuView$a;->c()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public E(Landroid/support/v7/view/menu/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->p:Landroid/support/v7/view/menu/g;

    return-void
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Landroid/support/v7/view/menu/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->p:Landroid/support/v7/view/menu/g;

    return-object v0
.end method

.method public J(Landroid/support/v7/view/menu/m$a;Landroid/support/v7/view/menu/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->t:Landroid/support/v7/view/menu/m$a;

    .line 2
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/view/menu/g$a;

    return-void
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/support/v7/view/menu/h;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->p:Landroid/support/v7/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/g;->H(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuView$c;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->z()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->A(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->B(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->p:Landroid/support/v7/view/menu/g;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/support/v7/view/menu/g;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->p:Landroid/support/v7/view/menu/g;

    .line 4
    new-instance v2, Landroid/support/v7/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$d;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/g;->L(Landroid/support/v7/view/menu/g$a;)V

    .line 5
    new-instance v1, Landroid/support/v7/widget/c;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/c;->F(Z)V

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->t:Landroid/support/v7/view/menu/m$a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/support/v7/widget/ActionMenuView$b;

    invoke-direct {v1}, Landroid/support/v7/widget/ActionMenuView$b;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/b;->f(Landroid/support/v7/view/menu/m$a;)V

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->p:Landroid/support/v7/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/g;->b(Landroid/support/v7/view/menu/m;Landroid/content/Context;)V

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/c;->D(Landroid/support/v7/widget/ActionMenuView;)V

    .line 10
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->p:Landroid/support/v7/view/menu/g;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->x()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->r:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic j()Landroid/support/v7/widget/z$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->z()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Landroid/util/AttributeSet;)Landroid/support/v7/widget/z$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->A(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic l(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/z$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->B(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/c;->k(Z)V

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    invoke-virtual {p1}, Landroid/support/v7/widget/c;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    invoke-virtual {p1}, Landroid/support/v7/widget/c;->y()Z

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    invoke-virtual {p1}, Landroid/support/v7/widget/c;->G()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->y()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->v:Z

    if-nez v1, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/z;->onLayout(ZIIII)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    .line 4
    div-int/lit8 v2, v2, 0x2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/z;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 7
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/x0;->b(Landroid/view/View;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_5

    .line 8
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActionMenuView$c;

    .line 11
    iget-boolean v14, v11, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v14, :cond_4

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 13
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->D(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v9, v3

    .line 14
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v9

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v9

    .line 17
    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 18
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    move v9, v12

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    .line 20
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->D(I)Z

    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v9, :cond_6

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 24
    div-int/lit8 v4, v4, 0x2

    .line 25
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    .line 26
    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    .line 27
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    if-lez v10, :cond_7

    .line 28
    div-int v3, v5, v10

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v6, :cond_a

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move v7, v4

    :goto_4
    if-ge v7, v1, :cond_d

    .line 30
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v6, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v8, :cond_8

    goto :goto_5

    .line 33
    :cond_8
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 36
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 37
    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 38
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 39
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    move v7, v4

    :goto_6
    if-ge v7, v1, :cond_d

    .line 40
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v6, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v8, :cond_b

    goto :goto_7

    .line 43
    :cond_b
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    .line 44
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 46
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 47
    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 48
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->v:Z

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->v:Z

    if-eq v0, v1, :cond_1

    .line 3
    iput v3, p0, Landroid/support/v7/widget/ActionMenuView;->w:I

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 5
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->v:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->p:Landroid/support/v7/view/menu/g;

    if-eqz v1, :cond_2

    iget v4, p0, Landroid/support/v7/widget/ActionMenuView;->w:I

    if-eq v0, v4, :cond_2

    .line 6
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->w:I

    .line 7
    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/g;->G(Z)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->v:Z

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->H(II)V

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$c;

    .line 13
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/z;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/c;->C(Z)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->z:Landroid/support/v7/widget/ActionMenuView$e;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/c;->E(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->r:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->r:I

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/content/Context;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroid/support/v7/widget/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    .line 2
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/c;->D(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/c;->v()Z

    :cond_0
    return-void
.end method

.method protected z()Landroid/support/v7/widget/ActionMenuView$c;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(II)V

    const/16 v1, 0x10

    .line 2
    iput v1, v0, Landroid/support/v7/widget/z$a;->b:I

    return-object v0
.end method
