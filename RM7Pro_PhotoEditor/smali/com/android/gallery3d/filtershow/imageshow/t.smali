.class public Lcom/android/gallery3d/filtershow/imageshow/t;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/t$b;
    }
.end annotation


# instance fields
.field private A0:I

.field private B0:I

.field private O:Z

.field private P:Z

.field private Q:Landroid/content/Context;

.field private R:Lcom/android/gallery3d/filtershow/filters/a0;

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private a0:F

.field private b0:F

.field private c0:F

.field private d0:F

.field private e0:F

.field private f0:Landroid/graphics/Point;

.field private g0:Landroid/graphics/Point;

.field private h0:Landroid/graphics/Point;

.field private i0:Landroid/graphics/Point;

.field private j0:Landroid/graphics/Point;

.field private k0:Landroid/graphics/Point;

.field private l0:Landroid/graphics/Point;

.field private m0:Landroid/graphics/Point;

.field private n0:Landroid/graphics/Bitmap;

.field private o0:Ljava/lang/String;

.field private p0:F

.field private q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

.field private r0:F

.field private s0:F

.field private t0:F

.field private u0:F

.field private v0:Z

.field private w0:Z

.field private x0:Z

.field private y0:Z

.field private z0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->O:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->P:Z

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->U:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->V:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->W:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->b0:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->d0:F

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->e0:F

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->g0:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->h0:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->j0:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->k0:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->l0:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->m0:Landroid/graphics/Point;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->o0:Ljava/lang/String;

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->p0:F

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/android/gallery3d/filtershow/imageshow/t$b;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->v0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->w0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->y0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->z0:Z

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->A0:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->B0:I

    const-string v0, "ImageSticker"

    const-string v1, "init 111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->Q:Landroid/content/Context;

    invoke-static {}, Lc/e/a;->b()[I

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->S(Landroid/content/Context;)V

    return-void
.end method

.method private G(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object v4, v3, v2

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v4, Landroid/graphics/PointF;->x:F

    aget-object v4, v3, v2

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    iput v5, v4, Landroid/graphics/PointF;->y:F

    aget-object v4, v3, v2

    iput-boolean v0, v4, Lcom/android/gallery3d/filtershow/words/a;->b:Z

    aget-object v4, v3, v2

    iput-boolean v0, v4, Lcom/android/gallery3d/filtershow/imageshow/t$b;->c:Z

    aget-object v3, v3, v2

    iput-boolean v0, v3, Lcom/android/gallery3d/filtershow/imageshow/t$b;->d:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ltz v1, :cond_2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, v3, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object v3, p1, v1

    iput-boolean v2, v3, Lcom/android/gallery3d/filtershow/words/a;->b:Z

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->N(Landroid/graphics/PointF;)Z

    move-result p1

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object p1, p1, v1

    iput-boolean v2, p1, Lcom/android/gallery3d/filtershow/imageshow/t$b;->d:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->M(Landroid/graphics/PointF;)Z

    move-result p1

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object p1, p1, v1

    iput-boolean v2, p1, Lcom/android/gallery3d/filtershow/imageshow/t$b;->c:Z

    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->b0:F

    new-instance p1, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    invoke-direct {p1, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->h0:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    invoke-direct {p1, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->k0:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->l0:Landroid/graphics/Point;

    invoke-direct {p1, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->m0:Landroid/graphics/Point;

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->v0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method private H(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_e

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/android/gallery3d/filtershow/imageshow/t$b;->c:Z

    const/4 v5, 0x2

    if-ne v2, v4, :cond_9

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-eqz v3, :cond_1

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->k0:Landroid/graphics/Point;

    invoke-direct {v3, v4}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->h0:Landroid/graphics/Point;

    invoke-direct {v3, v4}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    :goto_0
    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    aget-object v1, v6, v1

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    add-float/2addr v4, p1

    iput v4, v3, Landroid/graphics/PointF;->y:F

    iget p1, v3, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v6

    cmpg-float p1, p1, v7

    if-gez p1, :cond_2

    int-to-float p1, v6

    iput p1, v3, Landroid/graphics/PointF;->x:F

    :cond_2
    iget p1, v3, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v6

    cmpl-float p1, p1, v7

    if-lez p1, :cond_3

    int-to-float p1, v6

    iput p1, v3, Landroid/graphics/PointF;->x:F

    :cond_3
    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, p1

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    int-to-float p1, p1

    iput p1, v3, Landroid/graphics/PointF;->y:F

    :cond_4
    iget p1, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_5

    int-to-float p1, v1

    iput p1, v3, Landroid/graphics/PointF;->y:F

    :cond_5
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    :goto_1
    iget v1, v3, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, v3, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    :cond_7
    new-array v4, v5, [F

    int-to-float v3, v3

    aput v3, v4, v0

    int-to-float v1, v1

    aput v1, v4, v2

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->j0:Landroid/graphics/Point;

    aget v1, v4, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    aget v1, v4, v2

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->g0:Landroid/graphics/Point;

    aget v1, v4, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    aget v1, v4, v2

    :goto_2
    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto/16 :goto_4

    :cond_9
    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/android/gallery3d/filtershow/imageshow/t$b;->d:Z

    if-ne v2, v4, :cond_e

    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-nez v4, :cond_e

    aget-object v4, v3, v1

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->h0:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v6, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-float v3, v4, v4

    mul-float v6, v1, v1

    add-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    div-float/2addr v1, v4

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v1, v6

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    if-gez v4, :cond_a

    float-to-double v9, v1

    add-double/2addr v9, v7

    double-to-float v1, v9

    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->h0:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float/2addr v4, v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->h0:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr p1, v9

    mul-float v9, v4, v4

    mul-float v10, p1, p1

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    div-float/2addr p1, v4

    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    double-to-float p1, v10

    cmpg-float v4, v4, v6

    if-gez v4, :cond_b

    float-to-double v10, p1

    add-double/2addr v10, v7

    double-to-float p1, v10

    :cond_b
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->b0:F

    sub-float/2addr p1, v1

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p1, v6

    add-float/2addr v4, p1

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    const/high16 p1, 0x43b40000    # 360.0f

    add-float/2addr v4, p1

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    rem-float/2addr v4, p1

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->m0:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->h0:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float p1, v6

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    div-int/2addr v1, v5

    int-to-float v1, v1

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v1, v1

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    div-float/2addr p1, v1

    mul-float/2addr p1, v9

    div-float/2addr p1, v3

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->d0:F

    cmpg-float v3, p1, v1

    if-gez v3, :cond_c

    :goto_3
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    goto :goto_4

    :cond_c
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->e0:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_d

    goto :goto_3

    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->v0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_5
    return v2
.end method

.method private I(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private J(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private K(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private L(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->v0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p1
.end method

.method private M(Landroid/graphics/PointF;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    :goto_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    div-float v1, p1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr p1, p1

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    float-to-double v2, p1

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p1, v4

    const/4 v4, 0x0

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    neg-float p1, p1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    cmpg-float v1, v0, v4

    if-gez v1, :cond_2

    neg-float v0, v0

    :cond_2
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    mul-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-lez p1, :cond_3

    return v1

    :cond_3
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    div-float/2addr p1, v3

    cmpl-float p1, v0, p1

    if-lez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private N(Landroid/graphics/PointF;)Z
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->U:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->V:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->l0:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->U:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->V:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->U:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->V:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private Q(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->A0:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->B0:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/t;->X()V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->p0:F

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/t;->R(F)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/t;->R(F)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    :goto_0
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_2

    const-string p1, "ImageSticker"

    const-string v0, "return for bitmap == null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->P:Z

    if-eqz v5, :cond_3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v7, 0x7f00ff00

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    int-to-float v4, v4

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private R(F)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/t;->V()V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v2, p1

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int p1, v4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    invoke-static {v0, v2, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private S(Landroid/content/Context;)V
    .locals 4

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->q0:[Lcom/android/gallery3d/filtershow/imageshow/t$b;

    new-instance v2, Lcom/android/gallery3d/filtershow/imageshow/t$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/t$b;-><init>(Lcom/android/gallery3d/filtershow/imageshow/t;Lcom/android/gallery3d/filtershow/imageshow/t$a;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->v0:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->w0:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->W:I

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->y0:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->z0:Z

    return-void
.end method

.method private T()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a0;->v0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private V()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/t;->T()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/gallery3d/filtershow/materials/p;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/p;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    const-string v0, "none"

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/gallery3d/filtershow/materials/l;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/l;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/l;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->o0:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    return-void
.end method

.method private W()V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v1

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->g0:Landroid/graphics/Point;

    aget v3, v2, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    aget v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private X()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->A0:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->p0:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->p0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->d0:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->d0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->e0:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->e0:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->A0:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->B0:I

    return-void
.end method

.method private Y(IIII)V
    .locals 3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object p2

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->g0:Landroid/graphics/Point;

    iget p4, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/4 v0, 0x2

    new-array v1, v0, [F

    int-to-float p4, p4

    aput p4, v1, p1

    int-to-float p2, p2

    const/4 p4, 0x1

    aput p2, v1, p4

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    aget v2, v1, p1

    float-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->x:I

    aget v1, v1, p4

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->j0:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    new-array v0, v0, [F

    int-to-float v1, v1

    aput v1, v0, p1

    int-to-float p2, p2

    aput p2, v0, p4

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    aget p1, v0, p1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    aget p1, v0, p4

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_1
    :goto_0
    return-void
.end method

.method private Z()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x2

    div-int/2addr v0, v5

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x26

    iput v4, v2, Landroid/graphics/Point;->x:I

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v1, v5

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x16

    iput v0, v2, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v1

    new-array v2, v5, [F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->j0:Landroid/graphics/Point;

    aget v3, v2, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    aget v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public O()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->O:Z

    const-string v1, "ImageSticker"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitWordRepresentation, mWordRep = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->W:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->i0:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/a0;->y0(F)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->p0:F

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/a0;->y0(F)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    :goto_0
    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/a0;->C0(F)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commitWordRepresentation position ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    new-array v5, v5, [F

    int-to-float v4, v4

    const/4 v7, 0x0

    aput v4, v5, v7

    int-to-float v3, v3

    aput v3, v5, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitWordRepresentation C ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    aget v3, v5, v7

    aget v0, v5, v0

    invoke-virtual {v1, v3, v0}, Lcom/android/gallery3d/filtershow/filters/a0;->B0(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->n0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/a0;->z0(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/a0;->A0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/filtershow/filters/a0;->E0(II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/a0;->H0(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/a0;->I0(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method public P(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->v0:Z

    const/4 v1, 0x1

    if-ne v1, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-nez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [F

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->Q:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07025e

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->U:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->V:I

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    div-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    div-int/2addr v7, v2

    int-to-float v7, v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v2, :cond_8

    if-eqz v9, :cond_1

    if-eq v9, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->d0:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    :goto_1
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->f0:Landroid/graphics/Point;

    iget v11, v10, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v4, v11, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget v10, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->a0:F

    invoke-virtual {v4, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    neg-float v10, v6

    neg-float v11, v7

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move v10, v8

    :goto_2
    const/4 v11, 0x4

    if-ge v10, v11, :cond_7

    if-eqz v10, :cond_5

    const/4 v11, 0x0

    if-eq v10, v1, :cond_4

    if-eq v10, v2, :cond_3

    const/4 v12, 0x3

    if-eq v10, v12, :cond_2

    goto :goto_3

    :cond_2
    aput v11, v3, v8

    aput v11, v3, v1

    goto :goto_3

    :cond_3
    aput v11, v3, v8

    iget v11, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    int-to-float v11, v11

    aput v11, v3, v1

    goto :goto_3

    :cond_4
    iget v12, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    int-to-float v12, v12

    aput v12, v3, v8

    aput v11, v3, v1

    goto :goto_3

    :cond_5
    iget v11, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    int-to-float v11, v11

    aput v11, v3, v8

    iget v11, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    int-to-float v11, v11

    aput v11, v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    aget v12, v3, v8

    float-to-int v12, v12

    aget v13, v3, v1

    float-to-int v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-ne v1, v11, :cond_6

    aget v0, v3, v8

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->U:I

    div-int/2addr v4, v2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    aget v4, v3, v1

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->V:I

    div-int/2addr v6, v2

    int-to-float v2, v6

    sub-float/2addr v4, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v5, v0, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->l0:Landroid/graphics/Point;

    aget v0, v3, v8

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    aget v0, v3, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public U()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->Q:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/t;->S(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->O:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRepresentation, mStickerRep = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageSticker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    return-object v0
.end method

.method public getStickerIndex()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->W:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->W:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->Q(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->P(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/t;->Y(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->W:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return v3

    :cond_0
    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->K(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->J(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->I(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->t0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->r0:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->u0:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->s0:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->H(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    return v3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->t0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->u0:F

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->L(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->r0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->s0:F

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->G(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/t;)V
    .locals 0

    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/a0;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->O:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRepresentation, mStickerRep = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageSticker"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setStickerIndex(I)V
    .locals 4

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->W:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->R:Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/t;->V()V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->w0:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->T:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->S:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->p0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->c0:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->d0:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->e0:F

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->w0:Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->A0:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->B0:I

    :cond_0
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->x0:Z

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->y0:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/t;->Z()V

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->y0:Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->z0:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/t;->W()V

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/t;->z0:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
