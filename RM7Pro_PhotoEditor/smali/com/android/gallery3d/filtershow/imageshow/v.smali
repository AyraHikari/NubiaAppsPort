.class public Lcom/android/gallery3d/filtershow/imageshow/v;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/v$c;
    }
.end annotation


# static fields
.field private static final H0:F

.field private static final I0:I


# instance fields
.field private A0:Z

.field private B0:Z

.field private C0:Z

.field private D0:Z

.field private E0:Z

.field private F0:Z

.field private G0:Landroid/os/Handler;

.field private O:Z

.field private P:Landroid/content/Context;

.field private Q:Lcom/android/gallery3d/filtershow/filters/f0;

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:F

.field private a0:F

.field private b0:F

.field private c0:F

.field private d0:F

.field private e0:Landroid/graphics/Rect;

.field private f0:Landroid/graphics/Point;

.field private g0:Landroid/graphics/Point;

.field private h0:Landroid/graphics/Point;

.field private i0:Landroid/graphics/Point;

.field private j0:Landroid/graphics/Point;

.field private k0:Ljava/lang/String;

.field private l0:Landroid/graphics/Bitmap;

.field private m0:Landroid/graphics/Bitmap;

.field private n0:Ljava/lang/String;

.field private o0:Landroid/graphics/Bitmap;

.field private p0:Landroid/graphics/Typeface;

.field private q0:Landroid/graphics/Paint;

.field private r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

.field private s0:Lcom/android/gallery3d/filtershow/words/b;

.field private t0:Lcom/android/gallery3d/filtershow/words/c;

.field private u0:F

.field private v0:F

.field private w0:J

.field private x0:F

.field private y0:F

.field private z0:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/v;->H0:F

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/v;->I0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->O:Z

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->T:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->U:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->V:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->a0:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->c0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->e0:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->g0:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->h0:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->i0:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->j0:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->k0:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->m0:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->n0:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->p0:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/android/gallery3d/filtershow/imageshow/v$c;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->A0:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->B0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->C0:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->D0:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->E0:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->F0:Z

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/v$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/v$a;-><init>(Lcom/android/gallery3d/filtershow/imageshow/v;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->G0:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-static {}, Lc/e/a;->a()[I

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->Y(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic G(Lcom/android/gallery3d/filtershow/imageshow/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->h0()V

    return-void
.end method

.method static synthetic H(Lcom/android/gallery3d/filtershow/imageshow/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->P()V

    return-void
.end method

.method static synthetic I(Lcom/android/gallery3d/filtershow/imageshow/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->g0()V

    return-void
.end method

.method private J(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

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

    iput-boolean v0, v4, Lcom/android/gallery3d/filtershow/imageshow/v$c;->c:Z

    aget-object v3, v3, v2

    iput-boolean v0, v3, Lcom/android/gallery3d/filtershow/imageshow/v$c;->d:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ltz v1, :cond_2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, v3, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object v3, p1, v1

    iput-boolean v2, v3, Lcom/android/gallery3d/filtershow/words/a;->b:Z

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->R(Landroid/graphics/PointF;)Z

    move-result p1

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object p1, p1, v1

    iput-boolean v2, p1, Lcom/android/gallery3d/filtershow/imageshow/v$c;->d:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->Q(Landroid/graphics/PointF;)Z

    move-result p1

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object p1, p1, v1

    iput-boolean v2, p1, Lcom/android/gallery3d/filtershow/imageshow/v$c;->c:Z

    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->a0:F

    new-instance p1, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    invoke-direct {p1, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->h0:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->i0:Landroid/graphics/Point;

    invoke-direct {p1, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->j0:Landroid/graphics/Point;

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->C0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method private K(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_a

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/android/gallery3d/filtershow/imageshow/v$c;->c:Z

    const/4 v5, 0x2

    if-ne v2, v4, :cond_5

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->h0:Landroid/graphics/Point;

    invoke-direct {v3, v4}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

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

    if-gez p1, :cond_1

    int-to-float p1, v6

    iput p1, v3, Landroid/graphics/PointF;->x:F

    :cond_1
    iget p1, v3, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v6

    cmpl-float p1, p1, v7

    if-lez p1, :cond_2

    int-to-float p1, v6

    iput p1, v3, Landroid/graphics/PointF;->x:F

    :cond_2
    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, p1

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    int-to-float p1, p1

    iput p1, v3, Landroid/graphics/PointF;->y:F

    :cond_3
    iget p1, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_4

    int-to-float p1, v1

    iput p1, v3, Landroid/graphics/PointF;->y:F

    :cond_4
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    iget v1, v3, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, v3, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object p1

    new-array v1, v5, [F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aput v4, v1, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->g0:Landroid/graphics/Point;

    aget v3, v1, v0

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    :cond_5
    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/android/gallery3d/filtershow/imageshow/v$c;->d:Z

    if-ne v2, v4, :cond_a

    aget-object v4, v3, v1

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->h0:Landroid/graphics/Point;

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

    if-gez v4, :cond_6

    float-to-double v9, v1

    add-double/2addr v9, v7

    double-to-float v1, v9

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->h0:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float/2addr v4, v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->h0:Landroid/graphics/Point;

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

    if-gez v4, :cond_7

    float-to-double v10, p1

    add-double/2addr v10, v7

    double-to-float p1, v10

    :cond_7
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->a0:F

    sub-float/2addr p1, v1

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p1, v6

    add-float/2addr v4, p1

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    const/high16 p1, 0x43b40000    # 360.0f

    add-float/2addr v4, p1

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    rem-float/2addr v4, p1

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->j0:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->h0:Landroid/graphics/Point;

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

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    div-int/2addr v1, v5

    int-to-float v1, v1

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

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

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->c0:F

    cmpg-float v3, p1, v1

    if-gez v3, :cond_8

    :goto_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->n0()V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBubbleScale === "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImageWord"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->C0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_3
    return v2
.end method

.method private L(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private M(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private N(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private O(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->C0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p1
.end method

.method private P()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    :cond_0
    return-void
.end method

.method private Q(Landroid/graphics/PointF;)Z
    .locals 6

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

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

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

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

    if-gez v5, :cond_0

    neg-float p1, p1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    cmpg-float v1, v0, v4

    if-gez v1, :cond_1

    neg-float v0, v0

    :cond_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    mul-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    return v1

    :cond_2
    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    div-float/2addr p1, v3

    cmpl-float p1, v0, p1

    if-lez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private R(Landroid/graphics/PointF;)Z
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->T:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->U:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->i0:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->T:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->U:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->T:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->U:I

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

.method private V(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawShowBubbleWords ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageWord"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/materials/a;->f(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

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

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "drawShowBubbleWords, return bitmap = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private W(F)Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->l0()V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-static {v3, v0, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->e0()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->O:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const v5, 0x7f00ff00

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->V:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget v5, Lcom/android/gallery3d/filtershow/imageshow/v;->H0:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v1, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->T(Landroid/graphics/Canvas;F)V

    :cond_5
    return-object v0
.end method

.method private X(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

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

    iput-boolean v0, v4, Lcom/android/gallery3d/filtershow/imageshow/v$c;->c:Z

    aget-object v3, v3, v2

    iput-boolean v0, v3, Lcom/android/gallery3d/filtershow/imageshow/v$c;->d:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_1

    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, v2, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object v0, p1, v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/gallery3d/filtershow/words/a;->b:Z

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/words/a;->a:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->Q(Landroid/graphics/PointF;)Z

    move-result p1

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object p1, p1, v1

    iput-boolean v2, p1, Lcom/android/gallery3d/filtershow/imageshow/v$c;->c:Z

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    aget-object p1, p1, v1

    iget-boolean p1, p1, Lcom/android/gallery3d/filtershow/imageshow/v$c;->c:Z

    return p1
.end method

.method private Y(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->r0:[Lcom/android/gallery3d/filtershow/imageshow/v$c;

    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/v$c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/v$c;-><init>(Lcom/android/gallery3d/filtershow/imageshow/v;Lcom/android/gallery3d/filtershow/imageshow/v$a;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->A0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->C0:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->B0:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->E0:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->D0:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->V:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->k0:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f020002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07025e

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->m0:Landroid/graphics/Bitmap;

    new-instance p1, Lcom/android/gallery3d/filtershow/words/c;

    const v1, -0x24bbca

    const/4 v2, 0x1

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->k0:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/words/c;-><init>(IIFLjava/lang/String;ZZ)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/youyuan.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->p0:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->a0()V

    return-void
.end method

.method private Z()V
    .locals 6

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    int-to-float v0, v0

    int-to-float v5, v2

    div-float/2addr v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    int-to-float v1, v1

    int-to-float v4, v3

    div-float v4, v1, v4

    :cond_2
    cmpl-float v0, v0, v4

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_3

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->F0:Z

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->F0:Z

    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    const/4 v5, 0x2

    div-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v0

    new-array v2, v5, [F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    aput v5, v2, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->g0:Landroid/graphics/Point;

    aget v1, v2, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    aget v1, v2, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private a0()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->p0:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/words/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/words/c;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/words/c;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private d0()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e0()Z
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->V:I

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f0;->v0()Ljava/lang/String;

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

.method private g0()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/b;->n()Lcom/android/gallery3d/filtershow/words/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->setBubbleText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->k0()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a1()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->setBubbleIndex(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->m0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    :cond_2
    return-void
.end method

.method private h0()V
    .locals 3

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->P()V

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->d0()Z

    move-result v0

    const v1, 0x7f0f0003

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/gallery3d/filtershow/words/b;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/filtershow/words/b;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/gallery3d/filtershow/words/b;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/filtershow/words/b;-><init>(Landroid/content/Context;I)V

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/b;->r(Lcom/android/gallery3d/filtershow/words/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->G0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/b;->p(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    invoke-virtual {v0}, Lcn/nubia/app/a;->show()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->o0(Lcn/nubia/app/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->B0:Z

    return-void
.end method

.method private l0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/materials/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/n;->o()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    const-string v1, "none"

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->n0:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/n;->p()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/gallery3d/filtershow/materials/i;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/i;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/i;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->n0:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/i;->j()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->e0:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    return-void
.end method

.method private m0()V
    .locals 2

    const-string v0, "ImageWord"

    const-string v1, "setBubbleWordsBitmap ininin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->W(F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    return-void
.end method

.method private n0()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v1, v1

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method private o0(Lcn/nubia/app/b;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f080292

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/gallery3d/filtershow/imageshow/v$b;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v$b;-><init>(Lcom/android/gallery3d/filtershow/imageshow/v;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private p0(IIII)V
    .locals 8

    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->g0:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aput v4, v1, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    aget v3, v1, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    aget v1, v1, v4

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    int-to-float v7, v1

    int-to-float v3, v3

    div-float/2addr v7, v3

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    int-to-float v3, v2

    int-to-float v5, v5

    div-float v6, v3, v5

    :cond_2
    cmpl-float v3, v7, v6

    if-lez v3, :cond_3

    move v0, v4

    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->F0:Z

    xor-int/2addr v3, v0

    const-string v4, "ImageWord"

    if-eqz v3, :cond_5

    const-string v3, "changeFill"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    int-to-float p1, p1

    int-to-float p2, v2

    mul-float/2addr p1, p2

    int-to-float p2, p4

    int-to-float p3, v1

    goto :goto_1

    :cond_4
    int-to-float p1, p2

    int-to-float p2, v1

    mul-float/2addr p1, p2

    int-to-float p2, p3

    int-to-float p3, v2

    :goto_1
    mul-float/2addr p2, p3

    goto :goto_2

    :cond_5
    const-string v1, "no changeFill"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    int-to-float p1, p1

    int-to-float p2, p3

    goto :goto_2

    :cond_6
    int-to-float p1, p2

    int-to-float p2, p4

    :goto_2
    div-float/2addr p1, p2

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->F0:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updatePosition  ,mIsFillWidth = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->F0:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updatePosition  ,mImageBounds = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updatePosition  ,scale = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->c0:F

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->c0:F

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    const-string p1, "updatePosition ininin"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->m0()V

    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->n0()V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public S()V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->B0:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->V:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->r(Z)Landroid/graphics/Matrix;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    aget v4, v2, v5

    aget v0, v2, v0

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/filtershow/filters/f0;->D0(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/f0;->A0(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/f0;->E0(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/f0;->B0(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->n0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/f0;->C0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->e0:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/f0;->K0(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/f0;->L0(Lcom/android/gallery3d/filtershow/words/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/filtershow/filters/f0;->G0(II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/f0;->J0(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f0;->M0(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public T(Landroid/graphics/Canvas;F)V
    .locals 9

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->e0:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float v4, v1, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v0, p2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->e0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v7, v0, p2

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/v;->I0:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    new-instance p2, Lcom/android/gallery3d/filtershow/words/d;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/words/c;->d()Ljava/lang/String;

    move-result-object v3

    add-float v5, v1, v0

    move-object v2, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/gallery3d/filtershow/words/d;-><init>(Ljava/lang/String;FFFFLandroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/words/d;->d(Landroid/graphics/Paint;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/words/d;->b(I)V

    return-void
.end method

.method public U(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->C0:Z

    const/4 v1, 0x1

    if-ne v1, v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [F

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->m0:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07025e

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->m0:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->m0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->T:I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->m0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->U:I

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    div-int/2addr v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    div-int/2addr v6, v2

    int-to-float v6, v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v2, :cond_9

    if-eqz v8, :cond_2

    if-eq v8, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->c0:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    :goto_1
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->f0:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v4, v10, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget v9, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->W:F

    invoke-virtual {v4, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    neg-float v9, v5

    neg-float v10, v6

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move v9, v7

    :goto_2
    const/4 v10, 0x4

    if-ge v9, v10, :cond_8

    if-eqz v9, :cond_6

    const/4 v10, 0x0

    if-eq v9, v1, :cond_5

    if-eq v9, v2, :cond_4

    const/4 v11, 0x3

    if-eq v9, v11, :cond_3

    goto :goto_3

    :cond_3
    aput v10, v3, v7

    aput v10, v3, v1

    goto :goto_3

    :cond_4
    aput v10, v3, v7

    iget v10, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    int-to-float v10, v10

    aput v10, v3, v1

    goto :goto_3

    :cond_5
    iget v11, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    int-to-float v11, v11

    aput v11, v3, v7

    aput v10, v3, v1

    goto :goto_3

    :cond_6
    iget v10, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    int-to-float v10, v10

    aput v10, v3, v7

    iget v10, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    int-to-float v10, v10

    aput v10, v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    aget v11, v3, v7

    float-to-int v11, v11

    aget v12, v3, v1

    float-to-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-ne v1, v10, :cond_7

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->m0:Landroid/graphics/Bitmap;

    aget v4, v3, v7

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->T:I

    div-int/2addr v5, v2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aget v5, v3, v1

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->U:I

    div-int/2addr v6, v2

    int-to-float v2, v6

    sub-float/2addr v5, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->i0:Landroid/graphics/Point;

    aget v0, v3, v7

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    aget v0, v3, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public b0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->e()Z

    move-result v0

    return v0
.end method

.method public c0()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->k0:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public f0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->f()Z

    move-result v0

    return v0
.end method

.method public getBubbleIndex()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->V:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->b()I

    move-result v0

    return v0
.end method

.method public getColorIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->c()I

    move-result v0

    return v0
.end method

.method public getRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    return-object v0
.end method

.method public getWordAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->a()F

    move-result v0

    return v0
.end method

.method public i0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->s0:Lcom/android/gallery3d/filtershow/words/b;

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->B0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->G0:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->Y(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->o0:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public k0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->P:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->k0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/words/c;->j(Ljava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->A0:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->Z()V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->V:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->setBubbleIndex(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->A0:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->c0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->V(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->U(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/v;->p0(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->c0()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    return v3

    :cond_0
    if-eqz v0, :cond_9

    const/16 v2, 0x14

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->N(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->M(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    if-eq v1, v3, :cond_5

    if-eq v1, v4, :cond_4

    return v3

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->L(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->x0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->u0:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->y0:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->v0:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    if-lt v0, v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->K(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    return v3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->x0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->y0:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->x0:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->u0:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->v0:F

    sub-float/2addr v0, v5

    float-to-int v0, v0

    mul-int/2addr v4, v4

    mul-int/2addr v0, v0

    add-int/2addr v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->z0:J

    iget-wide v7, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->w0:J

    sub-long/2addr v5, v7

    if-ne v1, v3, :cond_8

    if-ge v4, v2, :cond_8

    const-wide/16 v0, 0x1f4

    cmp-long v0, v5, v0

    if-gez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->X(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->G0:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->O(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->u0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->v0:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->w0:J

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->J(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBold(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/words/c;->k(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->m0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBubbleIndex(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lyf setBubbleIndex, index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageWord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->V:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->l0()V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->E0:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->n0()V

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->c0:F

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->E0:Z

    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->D0:Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "bubble/0"

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->n0:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->k0:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->d:Landroid/graphics/Rect;

    invoke-static {p1, v3}, Lcom/android/gallery3d/filtershow/materials/r;->e(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lyf mBubbleBitmap = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->R:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->S:I

    invoke-direct {p1, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->e0:Landroid/graphics/Rect;

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->D0:Z

    if-nez p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->c0:F

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->d0:F

    const/high16 p1, 0x40400000    # 3.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->n0()V

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->D0:Z

    :cond_3
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->E0:Z

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->m0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->k0:Ljava/lang/String;

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/words/c;->h(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->m0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColorIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/words/c;->i(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/x;)V
    .locals 0

    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f0;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->Q:Lcom/android/gallery3d/filtershow/filters/f0;

    :cond_0
    return-void
.end method

.method public setShadow(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/words/c;->l(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->b0:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    int-to-float p1, p1

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, p1, v1, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->m0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWordAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->t0:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/words/c;->g(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->q0:Landroid/graphics/Paint;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->m0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWordsChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v;->B0:Z

    return-void
.end method
