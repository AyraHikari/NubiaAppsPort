.class Landroid/support/v7/widget/RecyclerView$t;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "t"
.end annotation


# instance fields
.field a:Landroid/view/animation/Interpolator;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView;

.field private c:I

.field private d:I

.field private e:Landroid/widget/OverScroller;

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4885
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4876
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/view/animation/Interpolator;

    .line 4880
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 4883
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 4886
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/widget/OverScroller;

    .line 4887
    return-void
.end method

.method private a(F)F
    .locals 2

    .prologue
    .line 5060
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 5061
    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    .line 5062
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$t;)Landroid/widget/OverScroller;
    .locals 1

    .prologue
    .line 4872
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/widget/OverScroller;

    return-object v0
.end method

.method private b(IIII)I
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 5066
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5067
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5068
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 5069
    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 5070
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 5071
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 5072
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 5073
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 5074
    int-to-float v7, v6

    int-to-float v6, v6

    .line 5075
    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView$t;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 5078
    if-lez v4, :cond_2

    .line 5079
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 5084
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 5068
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5071
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 5081
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 5082
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 5081
    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 5023
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 5024
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 5025
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 5028
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 5029
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-eqz v0, :cond_0

    .line 5030
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 5032
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 5035
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    if-eqz v0, :cond_0

    .line 5036
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 5041
    :goto_0
    return-void

    .line 5038
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5039
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 5044
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5045
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->d:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->c:I

    .line 5046
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5048
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 5049
    return-void
.end method

.method public a(III)V
    .locals 1

    .prologue
    .line 5088
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$t;->a(IIILandroid/view/animation/Interpolator;)V

    .line 5089
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 5056
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$t;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$t;->a(III)V

    .line 5057
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5097
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 5098
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/view/animation/Interpolator;

    .line 5099
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/widget/OverScroller;

    .line 5101
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5102
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->d:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->c:I

    .line 5103
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5104
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 5105
    return-void
.end method

.method public a(IILandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5092
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$t;->b(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView$t;->a(IIILandroid/view/animation/Interpolator;)V

    .line 5094
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 5108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5109
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5110
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5052
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$t;->a(IIII)V

    .line 5053
    return-void
.end method

.method public run()V
    .locals 19

    .prologue
    .line 4891
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v2, :cond_0

    .line 4892
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$t;->b()V

    .line 5020
    :goto_0
    return-void

    .line 4895
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$t;->c()V

    .line 4896
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 4899
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/widget/OverScroller;

    .line 4900
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v15, v2, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    .line 4901
    invoke-virtual {v14}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4902
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v5

    .line 4903
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v16

    .line 4904
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v17

    .line 4905
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$t;->c:I

    sub-int v3, v16, v2

    .line 4906
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$t;->d:I

    sub-int v4, v17, v2

    .line 4907
    const/4 v13, 0x0

    .line 4908
    const/4 v11, 0x0

    .line 4909
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$t;->c:I

    .line 4910
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$t;->d:I

    .line 4911
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 4913
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4914
    const/4 v2, 0x0

    aget v2, v5, v2

    sub-int/2addr v3, v2

    .line 4915
    const/4 v2, 0x1

    aget v2, v5, v2

    sub-int/2addr v4, v2

    move v9, v4

    move v10, v3

    .line 4918
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v2, :cond_21

    .line 4919
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 4920
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 4921
    const-string v2, "RV Scroll"

    invoke-static {v2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4922
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 4923
    if-eqz v10, :cond_20

    .line 4924
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2, v10, v3, v4}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v4

    .line 4925
    sub-int v5, v10, v4

    .line 4927
    :goto_2
    if-eqz v9, :cond_1f

    .line 4928
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2, v9, v3, v6}, Landroid/support/v7/widget/RecyclerView$h;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v3

    .line 4929
    sub-int v2, v9, v3

    .line 4931
    :goto_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4932
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 4934
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 4935
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 4937
    if-eqz v15, :cond_15

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$q;->b()Z

    move-result v6

    if-nez v6, :cond_15

    .line 4938
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$q;->c()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 4939
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v6

    .line 4940
    if-nez v6, :cond_13

    .line 4941
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$q;->a()V

    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    .line 4950
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4951
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4953
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2

    .line 4954
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v10, v9}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 4957
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v5, :cond_3

    if-eqz v6, :cond_8

    .line 4960
    :cond_3
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v7, v2

    .line 4962
    const/4 v2, 0x0

    .line 4963
    move/from16 v0, v16

    if-eq v5, v0, :cond_1e

    .line 4964
    if-gez v5, :cond_16

    neg-int v2, v7

    :goto_5
    move v8, v2

    .line 4967
    :goto_6
    const/4 v2, 0x0

    .line 4968
    move/from16 v0, v17

    if-eq v6, v0, :cond_1d

    .line 4969
    if-gez v6, :cond_18

    neg-int v7, v7

    .line 4972
    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v11, 0x2

    if-eq v2, v11, :cond_5

    .line 4973
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8, v7}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 4975
    :cond_5
    if-nez v8, :cond_6

    move/from16 v0, v16

    if-eq v5, v0, :cond_6

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    if-nez v7, :cond_7

    move/from16 v0, v17

    if-eq v6, v0, :cond_7

    .line 4976
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    if-nez v2, :cond_8

    .line 4977
    :cond_7
    invoke-virtual {v14}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4980
    :cond_8
    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    .line 4981
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    .line 4984
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 4985
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4988
    :cond_b
    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v2

    if-eqz v2, :cond_19

    if-ne v4, v9, :cond_19

    const/4 v2, 0x1

    move v4, v2

    .line 4990
    :goto_8
    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-ne v3, v10, :cond_1a

    const/4 v2, 0x1

    .line 4992
    :goto_9
    if-nez v10, :cond_c

    if-eqz v9, :cond_d

    :cond_c
    if-nez v2, :cond_d

    if-eqz v4, :cond_1b

    :cond_d
    const/4 v2, 0x1

    .line 4995
    :goto_a
    invoke-virtual {v14}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    .line 4996
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4998
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4999
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->z()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5000
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/e$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/e$a;->a()V

    .line 5002
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 5011
    :cond_10
    :goto_b
    if-eqz v15, :cond_12

    .line 5012
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$q;->b()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5013
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$q;II)V

    .line 5015
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v2, :cond_12

    .line 5016
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$q;->a()V

    .line 5019
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$t;->d()V

    goto/16 :goto_0

    .line 4942
    :cond_13
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$q;->d()I

    move-result v7

    if-lt v7, v6, :cond_14

    .line 4943
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v15, v6}, Landroid/support/v7/widget/RecyclerView$q;->a(I)V

    .line 4944
    sub-int v6, v10, v5

    sub-int v7, v9, v2

    invoke-static {v15, v6, v7}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$q;II)V

    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_4

    .line 4946
    :cond_14
    sub-int v6, v10, v5

    sub-int v7, v9, v2

    invoke-static {v15, v6, v7}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$q;II)V

    :cond_15
    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_4

    .line 4964
    :cond_16
    if-lez v5, :cond_17

    move v2, v7

    goto/16 :goto_5

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 4969
    :cond_18
    if-gtz v6, :cond_4

    const/4 v7, 0x0

    goto/16 :goto_7

    .line 4988
    :cond_19
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_8

    .line 4990
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 4992
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 5004
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 5005
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/e;

    if-eqz v2, :cond_10

    .line 5006
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$t;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v10, v9}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_b

    :cond_1d
    move v7, v2

    goto/16 :goto_7

    :cond_1e
    move v8, v2

    goto/16 :goto_6

    :cond_1f
    move v2, v8

    move v3, v11

    goto/16 :goto_3

    :cond_20
    move v5, v12

    move v4, v13

    goto/16 :goto_2

    :cond_21
    move v6, v8

    move v5, v12

    move v4, v11

    move v3, v13

    goto/16 :goto_4

    :cond_22
    move v9, v4

    move v10, v3

    goto/16 :goto_1
.end method
