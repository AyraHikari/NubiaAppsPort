.class Landroid/support/v7/widget/RecyclerView$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "y"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/support/v4/widget/ScrollerCompat;

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:Z

.field final synthetic g:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->e()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->d:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$y;->e:Z

    .line 4
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$y;->f:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->e()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$y;->c:Landroid/support/v4/widget/ScrollerCompat;

    return-void
.end method

.method private a(IIII)I
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 5
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 6
    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 7
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 8
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$y;->c(F)F

    move-result p1

    mul-float/2addr p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    .line 9
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$y;->f:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$y;->e:Z

    return-void
.end method

.method private c(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$y;->e:Z

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$y;->f:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$y;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public e(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$y;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$y;->a:I

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$y;->c:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$y;->f()V

    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$y;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$y;->f:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public g(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$y;->i(IIII)V

    return-void
.end method

.method public h(III)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->e()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$y;->j(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public i(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$y;->a(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$y;->h(III)V

    return-void
.end method

.method public j(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->d:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 2
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$y;->d:Landroid/view/animation/Interpolator;

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$y;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 4
    :cond_0
    iget-object p4, p0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-static {p4, v0}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;I)V

    const/4 p4, 0x0

    .line 5
    iput p4, p0, Landroid/support/v7/widget/RecyclerView$y;->b:I

    iput p4, p0, Landroid/support/v7/widget/RecyclerView$y;->a:I

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->c:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$y;->f()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$y;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    return-void
.end method

.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$y;->b()V

    .line 2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)V

    .line 3
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$y;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 4
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$m;->c:Landroid/support/v7/widget/RecyclerView$v;

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 6
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v3

    .line 7
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    .line 8
    iget v6, v0, Landroid/support/v7/widget/RecyclerView$y;->a:I

    sub-int v6, v3, v6

    .line 9
    iget v7, v0, Landroid/support/v7/widget/RecyclerView$y;->b:I

    sub-int v7, v5, v7

    .line 10
    iput v3, v0, Landroid/support/v7/widget/RecyclerView$y;->a:I

    .line 11
    iput v5, v0, Landroid/support/v7/widget/RecyclerView$y;->b:I

    .line 12
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_9

    .line 13
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->X()V

    .line 14
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;Z)Z

    if-eqz v6, :cond_0

    .line 15
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v8

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v8, v6, v11, v10}, Landroid/support/v7/widget/RecyclerView$m;->S0(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v8

    sub-int v10, v6, v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 16
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v11

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v13, v12, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v11, v7, v13, v12}, Landroid/support/v7/widget/RecyclerView$m;->T0(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v11

    sub-int v12, v7, v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 17
    :goto_1
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v13}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 18
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v13}, Landroid/support/v7/widget/r;->g()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_5

    .line 19
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v15, v14}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v15

    .line 20
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v15}, Landroid/support/v7/widget/RecyclerView;->h0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 21
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$z;->h:Landroid/support/v7/widget/RecyclerView$z;

    if-eqz v4, :cond_3

    .line 22
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    .line 23
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 24
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    move/from16 v16, v8

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    if-ne v9, v8, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    if-eq v15, v8, :cond_4

    .line 26
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v18, v11

    add-int v11, v15, v17

    invoke-virtual {v4, v9, v15, v8, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_3
    move/from16 v16, v8

    :cond_4
    move/from16 v18, v11

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    move/from16 v11, v18

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    move/from16 v16, v8

    move/from16 v18, v11

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$v;->d()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$v;->e()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 28
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result v4

    if-eqz v4, :cond_7

    .line 29
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$v;->c()I

    move-result v8

    if-lt v8, v4, :cond_6

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    .line 30
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView$v;->j(I)V

    sub-int v4, v6, v10

    sub-int v9, v7, v12

    .line 31
    invoke-static {v2, v4, v9}, Landroid/support/v7/widget/RecyclerView$v;->a(Landroid/support/v7/widget/RecyclerView$v;II)V

    goto :goto_4

    :cond_6
    const/4 v8, 0x1

    sub-int v4, v6, v10

    sub-int v9, v7, v12

    .line 32
    invoke-static {v2, v4, v9}, Landroid/support/v7/widget/RecyclerView$v;->a(Landroid/support/v7/widget/RecyclerView$v;II)V

    goto :goto_4

    .line 33
    :cond_7
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$v;->k()V

    const/4 v1, 0x0

    throw v1

    :cond_8
    const/4 v8, 0x1

    .line 34
    :goto_4
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 35
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/RecyclerView;->H0(Z)V

    move/from16 v4, v16

    move/from16 v11, v18

    goto :goto_5

    :cond_9
    move v8, v9

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 36
    :goto_5
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 37
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->invalidate()V

    .line 38
    :cond_a
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v9

    const/4 v13, 0x2

    if-eq v9, v13, :cond_b

    .line 39
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9, v6, v7}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_b
    if-nez v10, :cond_c

    if-eqz v12, :cond_14

    .line 40
    :cond_c
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v9

    float-to-int v9, v9

    if-eq v10, v3, :cond_e

    if-gez v10, :cond_d

    neg-int v14, v9

    goto :goto_6

    :cond_d
    if-lez v10, :cond_e

    move v14, v9

    goto :goto_6

    :cond_e
    const/4 v14, 0x0

    :goto_6
    if-eq v12, v5, :cond_10

    if-gez v12, :cond_f

    neg-int v9, v9

    goto :goto_7

    :cond_f
    if-lez v12, :cond_10

    goto :goto_7

    :cond_10
    const/4 v9, 0x0

    .line 41
    :goto_7
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v15

    if-eq v15, v13, :cond_11

    .line 42
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13, v14, v9}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    :cond_11
    if-nez v14, :cond_12

    if-eq v10, v3, :cond_12

    .line 43
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    if-nez v9, :cond_13

    if-eq v12, v5, :cond_13

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v3

    if-nez v3, :cond_14

    .line 44
    :cond_13
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    :cond_14
    if-nez v4, :cond_15

    if-eqz v11, :cond_16

    .line 45
    :cond_15
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4, v11}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;II)V

    .line 46
    :cond_16
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 47
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    :cond_17
    if-eqz v7, :cond_18

    .line 48
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v3

    if-eqz v3, :cond_18

    if-ne v11, v7, :cond_18

    move v9, v8

    goto :goto_8

    :cond_18
    const/4 v9, 0x0

    :goto_8
    if-eqz v6, :cond_19

    .line 49
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v3

    if-eqz v3, :cond_19

    if-ne v4, v6, :cond_19

    move v3, v8

    goto :goto_9

    :cond_19
    const/4 v3, 0x0

    :goto_9
    if-nez v6, :cond_1a

    if-eqz v7, :cond_1c

    :cond_1a
    if-nez v3, :cond_1c

    if-eqz v9, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v9, 0x0

    goto :goto_b

    :cond_1c
    :goto_a
    move v9, v8

    .line 50
    :goto_b
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1e

    if-nez v9, :cond_1d

    goto :goto_c

    .line 51
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$y;->f()V

    goto :goto_d

    .line 52
    :cond_1e
    :goto_c
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$y;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_e

    :cond_1f
    :goto_d
    const/4 v3, 0x0

    :goto_e
    if-eqz v2, :cond_20

    .line 53
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$v;->d()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 54
    invoke-static {v2, v3, v3}, Landroid/support/v7/widget/RecyclerView$v;->a(Landroid/support/v7/widget/RecyclerView$v;II)V

    .line 55
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$y;->d()V

    return-void
.end method
