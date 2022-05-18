.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$h;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$a;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$b;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# instance fields
.field private A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private B:I

.field private final C:Landroid/graphics/Rect;

.field private final D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

.field private E:Z

.field private F:Z

.field private G:[I

.field private final H:Ljava/lang/Runnable;

.field a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

.field b:Landroid/support/v7/widget/h;

.field c:Landroid/support/v7/widget/h;

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/support/v7/widget/f;

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private z:Z


# direct methods
.method private K()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 559
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private L()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 733
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->h()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 779
    :cond_0
    return-void

    .line 736
    :cond_1
    const/4 v2, 0x0

    .line 737
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v5

    move v4, v3

    .line 738
    :goto_0
    if-ge v4, v5, :cond_3

    .line 739
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    .line 740
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    .line 741
    cmpg-float v6, v1, v2

    if-gez v6, :cond_2

    move v0, v2

    .line 738
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 744
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 745
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 746
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 748
    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 750
    :cond_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    .line 751
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 752
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v1}, Landroid/support/v7/widget/h;->h()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    .line 753
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v1}, Landroid/support/v7/widget/h;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 755
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 756
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    if-eq v0, v4, :cond_0

    move v1, v3

    .line 759
    :goto_3
    if-ge v1, v5, :cond_0

    .line 760
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    .line 761
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 762
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v3, :cond_5

    .line 759
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 765
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v3, v7, :cond_6

    .line 766
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int/2addr v3, v6

    neg-int v3, v3

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v3, v6

    .line 767
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v6, v6, -0x1

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int v0, v6, v0

    neg-int v0, v0

    mul-int/2addr v0, v4

    .line 768
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 770
    :cond_6
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v3, v6

    .line 771
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    mul-int/2addr v0, v4

    .line 772
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v6, v7, :cond_7

    .line 773
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 775
    :cond_7
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 18

    .prologue
    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-boolean v2, v2, Landroid/support/v7/widget/f;->i:Z

    if-eqz v2, :cond_4

    .line 1544
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1545
    const v2, 0x7fffffff

    move v15, v2

    .line 1557
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1564
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 1565
    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    move/from16 v16, v2

    .line 1567
    :goto_1
    const/4 v2, 0x0

    .line 1568
    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/f;->a(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-boolean v3, v3, Landroid/support/v7/widget/f;->i:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 1569
    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1570
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/f;->a(Landroid/support/v7/widget/RecyclerView$n;)Landroid/view/View;

    move-result-object v3

    .line 1571
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1572
    invoke-virtual {v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f()I

    move-result v6

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)I

    move-result v5

    .line 1575
    const/4 v2, -0x1

    if-ne v5, v2, :cond_7

    const/4 v2, 0x1

    move v4, v2

    .line 1576
    :goto_3
    if-eqz v4, :cond_9

    .line 1577
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    .line 1578
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(ILandroid/support/v7/widget/StaggeredGridLayoutManager$b;)V

    move-object/from16 v17, v2

    .line 1589
    :goto_5
    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1590
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 1591
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)V

    .line 1595
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1599
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 1600
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o(I)I

    move-result v2

    .line 1602
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v5

    add-int v7, v2, v5

    .line 1603
    if-eqz v4, :cond_1e

    iget-boolean v5, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v5, :cond_1e

    .line 1605
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1606
    const/4 v8, -0x1

    iput v8, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1607
    iput v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1608
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v5, v2

    .line 1624
    :goto_8
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->d:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 1625
    if-eqz v4, :cond_f

    .line 1626
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    .line 1644
    :cond_1
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v14, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/f;)V

    .line 1647
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 1648
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    .line 1651
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v4

    sub-int v4, v2, v4

    move v6, v2

    .line 1659
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_17

    move-object/from16 v2, p0

    .line 1660
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1665
    :goto_c
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_18

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v2, v2, Landroid/support/v7/widget/f;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1670
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-boolean v2, v2, Landroid/support/v7/widget/f;->h:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1672
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_19

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 1678
    :cond_2
    :goto_e
    const/4 v2, 0x1

    .line 1679
    goto/16 :goto_2

    .line 1547
    :cond_3
    const/high16 v2, -0x80000000

    move v15, v2

    goto/16 :goto_0

    .line 1550
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1551
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->g:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/f;->b:I

    add-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1553
    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->f:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/f;->b:I

    sub-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1565
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 1566
    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_1

    .line 1575
    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 1577
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/f;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v2

    goto/16 :goto_4

    .line 1586
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v5

    move-object/from16 v17, v2

    goto/16 :goto_5

    .line 1593
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1601
    :cond_b
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v2

    goto/16 :goto_7

    .line 1611
    :cond_c
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n(I)I

    move-result v2

    .line 1613
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v5

    sub-int v5, v2, v5

    .line 1614
    if-eqz v4, :cond_d

    iget-boolean v7, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v7, :cond_d

    .line 1616
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    .line 1617
    const/4 v8, 0x1

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1618
    iput v6, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1619
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_d
    move v7, v2

    goto/16 :goto_8

    .line 1612
    :cond_e
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v2

    goto :goto_f

    .line 1629
    :cond_f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/f;->e:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 1630
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    .line 1634
    :goto_10
    if-eqz v2, :cond_1

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1636
    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    .line 1637
    if-eqz v2, :cond_10

    .line 1638
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:Z

    .line 1640
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    goto/16 :goto_9

    .line 1630
    :cond_11
    const/4 v2, 0x0

    goto :goto_10

    .line 1632
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 1648
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    .line 1649
    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v4, v6

    sub-int/2addr v2, v4

    goto/16 :goto_a

    .line 1653
    :cond_15
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    .line 1656
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v4

    add-int v6, v2, v4

    move v4, v2

    goto/16 :goto_b

    .line 1653
    :cond_16
    move-object/from16 v0, v17

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    .line 1655
    invoke-virtual {v4}, Landroid/support/v7/widget/h;->c()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_11

    :cond_17
    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v5

    move v11, v4

    move v12, v7

    move v13, v6

    .line 1662
    invoke-virtual/range {v8 .. v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1668
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v2, v2, Landroid/support/v7/widget/f;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$b;II)V

    goto/16 :goto_d

    .line 1675
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1680
    :cond_1a
    if-nez v2, :cond_1b

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;)V

    .line 1684
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v2, v2, Landroid/support/v7/widget/f;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 1685
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n(I)I

    move-result v2

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->c()I

    move-result v3

    sub-int v2, v3, v2

    .line 1691
    :goto_12
    if-lez v2, :cond_1d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/f;->b:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_13
    return v2

    .line 1688
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o(I)I

    move-result v2

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->d()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_12

    .line 1691
    :cond_1d
    const/4 v2, 0x0

    goto :goto_13

    :cond_1e
    move v5, v2

    goto/16 :goto_8
.end method

.method private a(Landroid/support/v7/widget/f;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1943
    iget v2, p1, Landroid/support/v7/widget/f;->e:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)Z

    move-result v2

    .line 1945
    if-eqz v2, :cond_0

    .line 1946
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v0

    .line 1954
    :goto_0
    iget v4, p1, Landroid/support/v7/widget/f;->e:I

    if-ne v4, v1, :cond_1

    .line 1956
    const v1, 0x7fffffff

    .line 1957
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v4}, Landroid/support/v7/widget/h;->c()I

    move-result v7

    move v6, v3

    move v3, v1

    .line 1958
    :goto_1
    if-eq v6, v2, :cond_2

    .line 1959
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v1, v6

    .line 1960
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v1

    .line 1961
    if-ge v1, v3, :cond_4

    move-object v3, v4

    .line 1958
    :goto_2
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_1

    .line 1950
    :cond_0
    const/4 v2, 0x0

    .line 1951
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    move v3, v2

    move v2, v0

    move v0, v1

    .line 1952
    goto :goto_0

    .line 1969
    :cond_1
    const/high16 v1, -0x80000000

    .line 1970
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v4}, Landroid/support/v7/widget/h;->d()I

    move-result v7

    move v6, v3

    move v3, v1

    .line 1971
    :goto_3
    if-eq v6, v2, :cond_2

    .line 1972
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v1, v6

    .line 1973
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v1

    .line 1974
    if-le v1, v3, :cond_3

    move-object v3, v4

    .line 1971
    :goto_4
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_3

    .line 1979
    :cond_2
    return-object v5

    :cond_3
    move v1, v3

    move-object v3, v5

    goto :goto_4

    :cond_4
    move v1, v3

    move-object v3, v5

    goto :goto_2
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1782
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_1

    .line 1783
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1782
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1786
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$b;II)V

    goto :goto_1

    .line 1788
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1870
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 1871
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    .line 1872
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 1873
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/h;->c(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1874
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1876
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 1877
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_2

    .line 1878
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1896
    :cond_0
    return-void

    .line 1877
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1882
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_4

    .line 1883
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->h()V

    .line 1882
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1886
    :cond_3
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1889
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->h()V

    .line 1891
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 610
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    .line 611
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-eq v0, v7, :cond_2

    .line 612
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 613
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 614
    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 721
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_9

    :cond_3
    move v0, v2

    .line 621
    :goto_1
    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 623
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_a

    .line 624
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V

    .line 629
    :goto_2
    invoke-virtual {p0, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V

    .line 630
    iput-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 632
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v4, :cond_6

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v4, v7, :cond_6

    .line 633
    iget-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v4, v5, :cond_5

    .line 634
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v4

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-eq v4, v5, :cond_6

    .line 635
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 636
    iput-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 640
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-ge v4, v2, :cond_e

    .line 642
    :cond_7
    iget-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    if-eqz v4, :cond_b

    move v0, v1

    .line 643
    :goto_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_e

    .line 645
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()V

    .line 646
    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_8

    .line 647
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    iget v5, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c(I)V

    .line 643
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v1

    .line 619
    goto :goto_1

    .line 626
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()V

    .line 627
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_2

    .line 651
    :cond_b
    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    if-nez v0, :cond_12

    :cond_c
    move v0, v1

    .line 652
    :goto_4
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_d

    .line 653
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iget v6, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(ZI)V

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 656
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a([Landroid/support/v7/widget/StaggeredGridLayoutManager$b;)V

    .line 666
    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 667
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput-boolean v1, v0, Landroid/support/v7/widget/f;->a:Z

    .line 668
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    .line 669
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 670
    iget v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$r;)V

    .line 671
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_13

    .line 673
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;Landroid/support/v7/widget/RecyclerView$r;)I

    .line 676
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 677
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v5, v5, Landroid/support/v7/widget/f;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/f;->c:I

    .line 678
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;Landroid/support/v7/widget/RecyclerView$r;)I

    .line 689
    :goto_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()V

    .line 691
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_f

    .line 692
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_14

    .line 693
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    .line 694
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    .line 701
    :cond_f
    :goto_6
    if-eqz p3, :cond_16

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 702
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_15

    .line 703
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_15

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v0, :cond_10

    .line 704
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    :cond_10
    move v0, v2

    .line 705
    :goto_7
    if-eqz v0, :cond_16

    .line 706
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 707
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 712
    :goto_8
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 713
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 715
    :cond_11
    iget-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 716
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 717
    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 719
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 658
    :goto_9
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_e

    .line 659
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    .line 660
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()V

    .line 661
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c(I)V

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 681
    :cond_13
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;Landroid/support/v7/widget/RecyclerView$r;)I

    .line 684
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 685
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v5, v5, Landroid/support/v7/widget/f;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/f;->c:I

    .line 686
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;Landroid/support/v7/widget/RecyclerView$r;)I

    goto/16 :goto_5

    .line 696
    :cond_14
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    .line 697
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    goto/16 :goto_6

    :cond_15
    move v0, v1

    .line 704
    goto :goto_7

    :cond_16
    move v0, v1

    goto :goto_8
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1729
    iget-boolean v0, p2, Landroid/support/v7/widget/f;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/f;->i:Z

    if-eqz v0, :cond_1

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1732
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/f;->b:I

    if-nez v0, :cond_3

    .line 1734
    iget v0, p2, Landroid/support/v7/widget/f;->e:I

    if-ne v0, v1, :cond_2

    .line 1735
    iget v0, p2, Landroid/support/v7/widget/f;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1737
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/f;->f:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1742
    :cond_3
    iget v0, p2, Landroid/support/v7/widget/f;->e:I

    if-ne v0, v1, :cond_5

    .line 1744
    iget v0, p2, Landroid/support/v7/widget/f;->f:I

    iget v1, p2, Landroid/support/v7/widget/f;->f:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1746
    if-gez v0, :cond_4

    .line 1747
    iget v0, p2, Landroid/support/v7/widget/f;->g:I

    .line 1751
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1749
    :cond_4
    iget v1, p2, Landroid/support/v7/widget/f;->g:I

    iget v2, p2, Landroid/support/v7/widget/f;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_1

    .line 1754
    :cond_5
    iget v0, p2, Landroid/support/v7/widget/f;->g:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v0

    iget v1, p2, Landroid/support/v7/widget/f;->g:I

    sub-int/2addr v0, v1

    .line 1756
    if-gez v0, :cond_6

    .line 1757
    iget v0, p2, Landroid/support/v7/widget/f;->f:I

    .line 1761
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1759
    :cond_6
    iget v1, p2, Landroid/support/v7/widget/f;->f:I

    iget v2, p2, Landroid/support/v7/widget/f;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_3

    .line 786
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v1, :cond_2

    .line 787
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_3

    .line 788
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()V

    .line 789
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aget v1, v1, v0

    .line 790
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 791
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eqz v2, :cond_1

    .line 792
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->d()I

    move-result v2

    add-int/2addr v1, v2

    .line 797
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c(I)V

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 800
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a()V

    .line 801
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 804
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 805
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 806
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()V

    .line 808
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 809
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 810
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 814
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 815
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    .line 818
    :cond_4
    return-void

    .line 812
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$b;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1791
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->i()I

    move-result v0

    .line 1792
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1793
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v1

    .line 1794
    add-int/2addr v0, v1

    if-gt v0, p3, :cond_0

    .line 1795
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1798
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()I

    move-result v1

    .line 1799
    sub-int v0, v1, v0

    if-lt v0, p3, :cond_0

    .line 1800
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 5

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1156
    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)I

    move-result v1

    .line 1158
    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)I

    move-result v2

    .line 1160
    if-eqz p4, :cond_1

    .line 1161
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    .line 1163
    :goto_0
    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1167
    :cond_0
    return-void

    .line 1162
    :cond_1
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/f;)V
    .locals 2

    .prologue
    .line 1713
    iget v0, p3, Landroid/support/v7/widget/f;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1714
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v0, :cond_0

    .line 1715
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(Landroid/view/View;)V

    .line 1726
    :goto_0
    return-void

    .line 1717
    :cond_0
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1720
    :cond_1
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v0, :cond_2

    .line 1721
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)V

    goto :goto_0

    .line 1723
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1127
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v0, :cond_1

    .line 1128
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v5, :cond_0

    .line 1129
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    .line 1130
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1129
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 1150
    :goto_0
    return-void

    .line 1134
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    .line 1133
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1138
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v5, :cond_2

    .line 1139
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    .line 1140
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    .line 1141
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1139
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1145
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    .line 1146
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1144
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$b;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 404
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 405
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 406
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 414
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 406
    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->c()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 410
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 411
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 412
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    .line 414
    goto :goto_0
.end method

.method private b(III)I
    .locals 3

    .prologue
    .line 1170
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return p1

    .line 1173
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1174
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 1175
    :cond_2
    const/4 v1, 0x0

    .line 1176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1175
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1071
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1075
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1076
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1074
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/i;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/h;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1075
    goto :goto_2
.end method

.method private b(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1442
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput p1, v2, Landroid/support/v7/widget/f;->e:I

    .line 1443
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroid/support/v7/widget/f;->d:I

    .line 1445
    return-void

    .line 1443
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$r;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1411
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput v1, v0, Landroid/support/v7/widget/f;->b:I

    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput p1, v0, Landroid/support/v7/widget/f;->c:I

    .line 1415
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1416
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->c()I

    move-result v0

    .line 1417
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 1418
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-ge v0, p1, :cond_1

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_2

    .line 1419
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->f()I

    move-result v0

    move v2, v1

    .line 1427
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Z

    move-result v4

    .line 1428
    if-eqz v4, :cond_3

    .line 1429
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v5}, Landroid/support/v7/widget/h;->c()I

    move-result v5

    sub-int v2, v5, v2

    iput v2, v4, Landroid/support/v7/widget/f;->f:I

    .line 1430
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v4}, Landroid/support/v7/widget/h;->d()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Landroid/support/v7/widget/f;->g:I

    .line 1435
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput-boolean v1, v0, Landroid/support/v7/widget/f;->h:Z

    .line 1436
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput-boolean v3, v0, Landroid/support/v7/widget/f;->a:Z

    .line 1437
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v2}, Landroid/support/v7/widget/h;->h()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 1438
    invoke-virtual {v2}, Landroid/support/v7/widget/h;->e()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, v0, Landroid/support/v7/widget/f;->i:Z

    .line 1439
    return-void

    :cond_1
    move v0, v1

    .line 1418
    goto :goto_0

    .line 1421
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->f()I

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 1432
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v5}, Landroid/support/v7/widget/h;->e()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/support/v7/widget/f;->g:I

    .line 1433
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    neg-int v2, v2

    iput v2, v0, Landroid/support/v7/widget/f;->f:I

    goto :goto_2

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1899
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    .line 1901
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 1902
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v3

    .line 1903
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 1904
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/h;->d(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1905
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1907
    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v4, :cond_3

    move v0, v1

    .line 1908
    :goto_1
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_2

    .line 1909
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1927
    :cond_0
    return-void

    .line 1908
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1913
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_4

    .line 1914
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->g()V

    .line 1913
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1917
    :cond_3
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1920
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->g()V

    .line 1922
    :cond_4
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 1901
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1374
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o(I)I

    move-result v0

    .line 1375
    if-ne v0, v1, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v1}, Landroid/support/v7/widget/h;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 1380
    if-lez v0, :cond_0

    .line 1381
    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v1

    neg-int v1, v1

    .line 1385
    sub-int/2addr v0, v1

    .line 1386
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1387
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/h;->a(I)V

    goto :goto_0
.end method

.method private c(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1494
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    move v2, v0

    .line 1498
    :goto_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    .line 1499
    if-ge p1, p2, :cond_2

    .line 1500
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p1

    .line 1511
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    .line 1512
    sparse-switch p3, :sswitch_data_0

    .line 1526
    :goto_2
    if-gt v1, v2, :cond_4

    .line 1534
    :cond_0
    :goto_3
    return-void

    .line 1494
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1503
    :cond_2
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    move v0, p2

    .line 1504
    goto :goto_1

    .line 1508
    :cond_3
    add-int v0, p1, p2

    move v1, v0

    move v0, p1

    goto :goto_1

    .line 1514
    :sswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1517
    :sswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_2

    .line 1521
    :sswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1522
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1530
    :cond_4
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v1

    .line 1531
    :goto_4
    if-gt v0, v1, :cond_0

    .line 1532
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    goto :goto_3

    .line 1530
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v1

    goto :goto_4

    .line 1512
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 1393
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n(I)I

    move-result v0

    .line 1394
    if-ne v0, v1, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1397
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v1}, Landroid/support/v7/widget/h;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1399
    if-lez v0, :cond_0

    .line 1400
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v1

    .line 1404
    sub-int/2addr v0, v1

    .line 1405
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1406
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/h;->a(I)V

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t(I)I

    move-result v0

    .line 841
    :goto_0
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 842
    const/high16 v0, -0x80000000

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 843
    const/4 v0, 0x1

    return v0

    .line 841
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s(I)I

    move-result v0

    goto :goto_0
.end method

.method private e(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    .line 1695
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1696
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 1697
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_0

    .line 1698
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v0

    .line 1697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1700
    :cond_0
    return-object v1
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1091
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1095
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1096
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    .line 1094
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/i;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/h;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1095
    goto :goto_2
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1111
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1115
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1116
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    .line 1114
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/i;->b(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/h;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1115
    goto :goto_2
.end method

.method private l(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    .line 1704
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1705
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 1706
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_0

    .line 1707
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v0

    .line 1706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1709
    :cond_0
    return-object v1
.end method

.method private m(I)I
    .locals 3

    .prologue
    .line 1806
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v1

    .line 1807
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1808
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v2

    .line 1809
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1807
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1813
    :cond_1
    return v1
.end method

.method private n(I)I
    .locals 3

    .prologue
    .line 1817
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v1

    .line 1818
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1819
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v2

    .line 1820
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1818
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1824
    :cond_1
    return v1
.end method

.method private o(I)I
    .locals 3

    .prologue
    .line 1848
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v1

    .line 1849
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1850
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v2

    .line 1851
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1849
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1855
    :cond_1
    return v1
.end method

.method private p(I)I
    .locals 3

    .prologue
    .line 1859
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v1

    .line 1860
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1861
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v2

    .line 1862
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1860
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1866
    :cond_1
    return v1
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1769
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1770
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(Landroid/view/View;)V

    .line 1769
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1772
    :cond_0
    return-void
.end method

.method private q(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1776
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1777
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(Landroid/view/View;)V

    .line 1776
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1779
    :cond_0
    return-void
.end method

.method private q(I)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1933
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_3

    .line 1934
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq v0, v3, :cond_2

    .line 1936
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1934
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1936
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private r(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 2006
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v2

    if-nez v2, :cond_1

    .line 2007
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v2, :cond_0

    .line 2010
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2007
    goto :goto_0

    .line 2009
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v2

    .line 2010
    if-ge p1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq v2, v3, :cond_3

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private s(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2180
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v3

    move v2, v1

    .line 2181
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2182
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    .line 2183
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2184
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2188
    :goto_1
    return v0

    .line 2181
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2188
    goto :goto_1
.end method

.method private t(I)I
    .locals 2

    .prologue
    .line 2197
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2198
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    .line 2199
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2200
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2204
    :goto_1
    return v0

    .line 2197
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2204
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private u(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 2354
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2387
    :cond_0
    :goto_0
    return v0

    .line 2356
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v1, v2, :cond_0

    .line 2358
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 2359
    goto :goto_0

    .line 2364
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 2365
    goto :goto_0

    .line 2366
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2369
    goto :goto_0

    .line 2372
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2375
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2378
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2381
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 2354
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1996
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1298
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    .line 1299
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 1301
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2210
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    .line 2211
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 2214
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 2221
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 2226
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2227
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2229
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2246
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 2340
    :cond_0
    :goto_0
    return-object v0

    .line 2250
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 2251
    if-nez v6, :cond_2

    move-object v0, v3

    .line 2252
    goto :goto_0

    .line 2255
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()V

    .line 2256
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u(I)I

    move-result v7

    .line 2257
    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_3

    move-object v0, v3

    .line 2258
    goto :goto_0

    .line 2260
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2261
    iget-boolean v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    .line 2262
    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 2264
    if-ne v7, v5, :cond_4

    .line 2265
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    .line 2269
    :goto_1
    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$r;)V

    .line 2270
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 2272
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v4, v4, Landroid/support/v7/widget/f;->d:I

    add-int/2addr v4, v0

    iput v4, v1, Landroid/support/v7/widget/f;->c:I

    .line 2273
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    const v4, 0x3eaaaaab

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v10}, Landroid/support/v7/widget/h;->f()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, v1, Landroid/support/v7/widget/f;->b:I

    .line 2274
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput-boolean v5, v1, Landroid/support/v7/widget/f;->h:Z

    .line 2275
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput-boolean v2, v1, Landroid/support/v7/widget/f;->a:Z

    .line 2276
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-direct {p0, p3, v1, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;Landroid/support/v7/widget/RecyclerView$r;)I

    .line 2277
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 2278
    if-nez v8, :cond_5

    .line 2279
    invoke-virtual {v9, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(II)Landroid/view/View;

    move-result-object v1

    .line 2280
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_5

    move-object v0, v1

    .line 2281
    goto :goto_0

    .line 2267
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    goto :goto_1

    .line 2287
    :cond_5
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2288
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_2
    if-ltz v4, :cond_9

    .line 2289
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(II)Landroid/view/View;

    move-result-object v1

    .line 2290
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_6

    move-object v0, v1

    .line 2291
    goto/16 :goto_0

    .line 2288
    :cond_6
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_2

    :cond_7
    move v1, v2

    .line 2295
    :goto_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v4, :cond_9

    .line 2296
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(II)Landroid/view/View;

    move-result-object v4

    .line 2297
    if-eqz v4, :cond_8

    if-eq v4, v6, :cond_8

    move-object v0, v4

    .line 2298
    goto/16 :goto_0

    .line 2295
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2307
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v0, :cond_c

    move v1, v5

    :goto_4
    const/4 v0, -0x1

    if-ne v7, v0, :cond_d

    move v0, v5

    :goto_5
    if-ne v1, v0, :cond_e

    move v4, v5

    .line 2309
    :goto_6
    if-nez v8, :cond_a

    .line 2310
    if-eqz v4, :cond_f

    .line 2311
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->j()I

    move-result v0

    .line 2310
    :goto_7
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2313
    if-eqz v0, :cond_a

    if-ne v0, v6, :cond_0

    .line 2318
    :cond_a
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2319
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-ltz v1, :cond_15

    .line 2320
    iget v0, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    if-ne v1, v0, :cond_10

    .line 2319
    :cond_b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8

    :cond_c
    move v1, v2

    .line 2307
    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move v4, v2

    goto :goto_6

    .line 2312
    :cond_f
    invoke-virtual {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->k()I

    move-result v0

    goto :goto_7

    .line 2323
    :cond_10
    if-eqz v4, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v0, v0, v1

    .line 2324
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->j()I

    move-result v0

    .line 2323
    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2326
    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_b

    goto/16 :goto_0

    .line 2324
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v0, v0, v1

    .line 2325
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->k()I

    move-result v0

    goto :goto_9

    .line 2331
    :cond_12
    add-int/lit8 v2, v2, 0x1

    :cond_13
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v0, :cond_15

    .line 2332
    if-eqz v4, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v0, v0, v2

    .line 2333
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->j()I

    move-result v0

    .line 2332
    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2335
    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_12

    goto/16 :goto_0

    .line 2333
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v0, v0, v2

    .line 2334
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->k()I

    move-result v0

    goto :goto_a

    :cond_15
    move-object v0, v3

    .line 2340
    goto/16 :goto_0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    .line 928
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/h;

    .line 929
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->h()I

    move-result v0

    .line 928
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    .line 930
    return-void
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$h$a;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2085
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_1

    .line 2086
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 2117
    :cond_0
    return-void

    :cond_1
    move p1, p2

    .line 2085
    goto :goto_0

    .line 2090
    :cond_2
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$r;)V

    .line 2093
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    array-length v0, v0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_4

    .line 2094
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    :cond_4
    move v0, v1

    move v2, v1

    .line 2098
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_7

    .line 2100
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v3, v3, Landroid/support/v7/widget/f;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v3, v3, Landroid/support/v7/widget/f;->f:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v5, v5, Landroid/support/v7/widget/f;->f:I

    .line 2101
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2103
    :goto_2
    if-ltz v3, :cond_5

    .line 2105
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    aput v3, v4, v2

    .line 2106
    add-int/lit8 v2, v2, 0x1

    .line 2098
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2101
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v4, v4, Landroid/support/v7/widget/f;->g:I

    .line 2102
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v4, v4, Landroid/support/v7/widget/f;->g:I

    sub-int/2addr v3, v4

    goto :goto_2

    .line 2109
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 2112
    :goto_3
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/f;->a(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v0, v0, Landroid/support/v7/widget/f;->c:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    aget v3, v3, v1

    invoke-interface {p4, v0, v3}, Landroid/support/v7/widget/RecyclerView$h$a;->b(II)V

    .line 2115
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v3, v0, Landroid/support/v7/widget/f;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v4, v4, Landroid/support/v7/widget/f;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/f;->c:I

    .line 2112
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method a(ILandroid/support/v7/widget/RecyclerView$r;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2122
    if-lez p1, :cond_0

    .line 2124
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 2129
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput-boolean v1, v3, Landroid/support/v7/widget/f;->a:Z

    .line 2130
    invoke-direct {p0, v2, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$r;)V

    .line 2131
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 2132
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v1, v1, Landroid/support/v7/widget/f;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/f;->c:I

    .line 2133
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/f;->b:I

    .line 2134
    return-void

    .line 2126
    :cond_0
    const/4 v0, -0x1

    .line 2127
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v2

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()I

    move-result v1

    add-int/2addr v1, v0

    .line 587
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v2

    add-int/2addr v0, v2

    .line 588
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 590
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    .line 591
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 592
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F()I

    move-result v2

    .line 591
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 599
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(II)V

    .line 600
    return-void

    .line 594
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 595
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 596
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 597
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G()I

    move-result v2

    .line 596
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1183
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1184
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1185
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 1189
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 1244
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1245
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 1246
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1261
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    .line 1249
    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1250
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_2

    .line 1252
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b()I

    move-result v0

    iget-boolean v1, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    const/4 v5, 0x0

    .line 1251
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 1252
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1256
    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1258
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b()I

    move-result v2

    iget-boolean v3, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    :goto_2
    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    const/4 v5, 0x0

    .line 1256
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 1258
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1

    .prologue
    .line 725
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 726
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 727
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 729
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 730
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V
    .locals 1

    .prologue
    .line 821
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b()V

    .line 831
    const/4 v0, 0x0

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1476
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 1477
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1470
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1471
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 1481
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1482
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1487
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1488
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 324
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 329
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1265
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1266
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 1267
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    .line 1268
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v1

    .line 1269
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1273
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    .line 1274
    if-ge v0, v1, :cond_2

    .line 1275
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1276
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    .line 1278
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1279
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 528
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eq v0, p1, :cond_0

    .line 477
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 479
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    .line 480
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 481
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2235
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 2002
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2

    .prologue
    .line 1307
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1308
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 1310
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1465
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1466
    return-void
.end method

.method b()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 311
    :goto_0
    return v1

    .line 274
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v3

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    move v4, v3

    move v3, v0

    .line 281
    :goto_1
    if-nez v4, :cond_3

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Landroid/view/View;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 285
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()V

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v3

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 290
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v0, :cond_4

    move v1, v2

    .line 291
    goto :goto_0

    .line 293
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 294
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v3, 0x1

    .line 295
    invoke-virtual {v5, v4, v6, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 296
    if-nez v5, :cond_6

    .line 297
    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    move v1, v2

    .line 299
    goto :goto_0

    :cond_5
    move v0, v1

    .line 293
    goto :goto_2

    .line 301
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    mul-int/lit8 v0, v0, -0x1

    .line 302
    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 304
    if-nez v0, :cond_7

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    .line 309
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()V

    .line 310
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    goto :goto_0

    .line 307
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto :goto_3
.end method

.method b(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x1

    .line 848
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v2, v5, :cond_1

    :cond_0
    move v1, v0

    .line 922
    :goto_0
    return v1

    .line 852
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 853
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 854
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    move v1, v0

    .line 855
    goto :goto_0

    .line 858
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-ge v2, v1, :cond_f

    .line 861
    :cond_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 862
    if-eqz v2, :cond_c

    .line 865
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    .line 866
    :goto_1
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 867
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-eq v0, v4, :cond_7

    .line 868
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_6

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    sub-int/2addr v0, v3

    .line 871
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 866
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    goto :goto_1

    .line 873
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/2addr v0, v3

    .line 875
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 881
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/h;->e(Landroid/view/View;)I

    move-result v0

    .line 882
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->f()I

    move-result v3

    if-le v0, v3, :cond_9

    .line 884
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 885
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    .line 886
    :goto_2
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 885
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 886
    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v0

    goto :goto_2

    .line 890
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 891
    invoke-virtual {v3}, Landroid/support/v7/widget/h;->c()I

    move-result v3

    sub-int/2addr v0, v3

    .line 892
    if-gez v0, :cond_a

    .line 893
    neg-int v0, v0

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 896
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    .line 897
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 898
    if-gez v0, :cond_b

    .line 899
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 903
    :cond_b
    iput v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 907
    :cond_c
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 908
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v2, v4, :cond_e

    .line 909
    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v2

    .line 911
    if-ne v2, v1, :cond_d

    move v0, v1

    :cond_d
    iput-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 912
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b()V

    .line 916
    :goto_3
    iput-boolean v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    goto/16 :goto_0

    .line 914
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a(I)V

    goto :goto_3

    .line 919
    :cond_f
    iput v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 920
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    goto/16 :goto_0
.end method

.method c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2137
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v1

    .line 2161
    :goto_0
    return p1

    .line 2141
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$r;)V

    .line 2142
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    .line 2143
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iget v2, v2, Landroid/support/v7/widget/f;->b:I

    .line 2145
    if-ge v2, v0, :cond_2

    .line 2156
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    neg-int v2, p1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/h;->a(I)V

    .line 2158
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 2159
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    iput v1, v0, Landroid/support/v7/widget/f;->b:I

    .line 2160
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/f;

    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/f;)V

    goto :goto_0

    .line 2147
    :cond_2
    if-gez p1, :cond_3

    .line 2148
    neg-int p1, v0

    goto :goto_1

    :cond_3
    move p1, v0

    .line 2150
    goto :goto_1
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method c(Z)Landroid/view/View;
    .locals 8

    .prologue
    .line 1320
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v3

    .line 1321
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v4

    .line 1322
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v5

    .line 1323
    const/4 v1, 0x0

    .line 1324
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v5, :cond_4

    .line 1325
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    .line 1326
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v6

    .line 1327
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v7

    .line 1328
    if-le v7, v3, :cond_0

    if-lt v6, v4, :cond_1

    .line 1324
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1331
    :cond_1
    if-ge v6, v3, :cond_2

    if-nez p1, :cond_3

    .line 1340
    :cond_2
    :goto_2
    return-object v1

    .line 1336
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1337
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1340
    goto :goto_2
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    .line 605
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1082
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public d()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 1193
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1194
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1238
    :goto_0
    return-object v0

    .line 1196
    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1197
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 1198
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 1199
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 1201
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v0, :cond_2

    .line 1202
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 1203
    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    array-length v0, v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 1209
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_5

    .line 1210
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    .line 1211
    :goto_2
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1212
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1213
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 1214
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    move v0, v1

    .line 1215
    :goto_3
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_6

    .line 1217
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_4

    .line 1218
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v1

    .line 1219
    if-eq v1, v4, :cond_1

    .line 1220
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->d()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1228
    :cond_1
    :goto_4
    iget-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aput v1, v3, v0

    .line 1215
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1206
    :cond_2
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    goto :goto_1

    .line 1211
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    goto :goto_2

    .line 1223
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v1

    .line 1224
    if-eq v1, v4, :cond_1

    .line 1225
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/h;->c()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    .line 1231
    :cond_5
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1232
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1233
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    :cond_6
    move-object v0, v2

    .line 1238
    goto/16 :goto_0
.end method

.method d(Z)Landroid/view/View;
    .locals 7

    .prologue
    .line 1350
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->c()I

    move-result v3

    .line 1351
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->d()I

    move-result v4

    .line 1352
    const/4 v1, 0x0

    .line 1353
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 1354
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    .line 1355
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v5

    .line 1356
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v6

    .line 1357
    if-le v6, v3, :cond_0

    if-lt v5, v4, :cond_1

    .line 1353
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 1360
    :cond_1
    if-le v6, v4, :cond_2

    if-nez p1, :cond_3

    .line 1369
    :cond_2
    :goto_2
    return-object v1

    .line 1365
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1366
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1369
    goto :goto_2
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, p1, :cond_0

    .line 2041
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b()V

    .line 2043
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    .line 2044
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 2045
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 2046
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 1990
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1102
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1985
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method g()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 339
    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 340
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-virtual {v9, v5, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 343
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 345
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v4, :cond_1

    move v8, v0

    .line 352
    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    .line 353
    :goto_3
    if-eq v7, v8, :cond_c

    .line 354
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v6

    .line 355
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 356
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$b;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 397
    :goto_4
    return-object v0

    :cond_0
    move v2, v0

    .line 343
    goto :goto_0

    .line 350
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v0

    .line 352
    goto :goto_2

    .line 360
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    .line 362
    :cond_4
    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v1, :cond_6

    .line 353
    :cond_5
    add-int v0, v7, v4

    move v7, v0

    goto :goto_3

    .line 366
    :cond_6
    add-int v1, v7, v4

    if-eq v1, v8, :cond_5

    .line 367
    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v10

    .line 369
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_8

    .line 371
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v1

    .line 372
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/h;->b(Landroid/view/View;)I

    move-result v11

    .line 373
    if-ge v1, v11, :cond_7

    move-object v0, v6

    .line 374
    goto :goto_4

    .line 375
    :cond_7
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 387
    :goto_5
    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 390
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_a

    move v1, v3

    :goto_6
    if-gez v2, :cond_b

    move v0, v3

    :goto_7
    if-eq v1, v0, :cond_5

    move-object v0, v6

    .line 391
    goto :goto_4

    .line 379
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v1

    .line 380
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/h;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/h;->a(Landroid/view/View;)I

    move-result v11

    .line 381
    if-le v1, v11, :cond_9

    move-object v0, v6

    .line 382
    goto :goto_4

    .line 383
    :cond_9
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 384
    goto :goto_5

    :cond_a
    move v1, v5

    .line 390
    goto :goto_6

    :cond_b
    move v0, v5

    goto :goto_7

    .line 397
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    move v1, v5

    goto :goto_5
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 1122
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 567
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1290
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v0

    .line 1292
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 1291
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1292
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method

.method public i(I)V
    .locals 2

    .prologue
    .line 1449
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->i(I)V

    .line 1450
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1451
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d(I)V

    .line 1450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 2

    .prologue
    .line 1457
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->j(I)V

    .line 1458
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1459
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d(I)V

    .line 1458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1461
    :cond_0
    return-void
.end method

.method j()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1828
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v3

    move v0, v1

    .line 1829
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_0

    .line 1830
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1834
    :cond_0
    return v1

    .line 1829
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b()Z

    .line 319
    :cond_0
    return-void
.end method

.method k()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1838
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v3

    move v0, v1

    .line 1839
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_0

    .line 1840
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1844
    :cond_0
    return v1

    .line 1839
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method m()I
    .locals 1

    .prologue
    .line 2165
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    .line 2166
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method n()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2170
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    .line 2171
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
