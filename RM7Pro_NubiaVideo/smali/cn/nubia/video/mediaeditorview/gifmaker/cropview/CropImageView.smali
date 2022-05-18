.class public Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;
.super Landroid/support/v7/widget/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;,
        Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;,
        Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;,
        Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Landroid/graphics/Bitmap$CompressFormat;

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private M:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private N:Ljava/util/concurrent/ExecutorService;

.field private O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

.field private P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

.field private Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

.field private R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

.field private S:F

.field private T:I

.field private U:I

.field private V:Z

.field private W:Z

.field private a0:Z

.field private b0:Z

.field private c:I

.field private c0:Landroid/graphics/PointF;

.field private d:I

.field private d0:F

.field private e:F

.field private e0:F

.field private f:F

.field private f0:I

.field private g:F

.field private g0:I

.field private h:F

.field private h0:I

.field private i:Z

.field private i0:I

.field private j:Landroid/graphics/Matrix;

.field private j0:I

.field private k:Landroid/graphics/Paint;

.field private k0:F

.field private l:Landroid/graphics/Paint;

.field private l0:Z

.field private m:Landroid/graphics/Paint;

.field private m0:I

.field private n:Landroid/graphics/Paint;

.field private n0:Z

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/RectF;

.field private q:Landroid/graphics/PointF;

.field private r:F

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/a;

.field private final w:Landroid/view/animation/Interpolator;

.field private x:Landroid/view/animation/Interpolator;

.field private y:Landroid/net/Uri;

.field private z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c:I

    .line 4
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e:F

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f:F

    .line 7
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g:F

    .line 8
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h:F

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i:Z

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j:Landroid/graphics/Matrix;

    .line 11
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->q:Landroid/graphics/PointF;

    .line 12
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->t:Z

    .line 13
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->u:Z

    .line 14
    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->v:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/a;

    .line 15
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->w:Landroid/view/animation/Interpolator;

    .line 16
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x:Landroid/view/animation/Interpolator;

    .line 17
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->y:Landroid/net/Uri;

    .line 19
    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->z:Landroid/net/Uri;

    .line 20
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->A:I

    .line 21
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D:I

    .line 22
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E:I

    .line 23
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    .line 24
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->G:I

    .line 25
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->H:I

    .line 26
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->I:I

    .line 27
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->J:I

    .line 28
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->K:I

    .line 29
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 32
    sget-object v3, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    .line 33
    sget-object v3, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->h:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    .line 34
    sget-object v3, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 35
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 36
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U:I

    const/4 v3, 0x1

    .line 37
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    .line 38
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    .line 39
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->a0:Z

    .line 40
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->b0:Z

    .line 41
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c0:Landroid/graphics/PointF;

    const/high16 v4, 0x40000000    # 2.0f

    .line 42
    iput v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d0:F

    .line 43
    iput v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e0:F

    .line 44
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l0:Z

    .line 45
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->m0:I

    .line 46
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n0:Z

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->N:Ljava/util/concurrent/ExecutorService;

    .line 48
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getDensity()F

    move-result v2

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 49
    iput v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v4, v2

    .line 50
    iput v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    mul-float v4, v2, v1

    .line 51
    iput v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d0:F

    .line 52
    iput v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e0:F

    .line 53
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    .line 54
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k:Landroid/graphics/Paint;

    .line 55
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->m:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 57
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n:Landroid/graphics/Paint;

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j:Landroid/graphics/Matrix;

    .line 63
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e:F

    .line 64
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f0:I

    .line 65
    iput v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h0:I

    const/high16 v0, -0x45000000    # -0.001953125f

    .line 66
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g0:I

    .line 67
    iput v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i0:I

    const v0, -0x44000001

    .line 68
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j0:I

    .line 69
    invoke-direct {p0, p1, p2, p3, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->w(Landroid/content/Context;Landroid/util/AttributeSet;IF)V

    return-void
.end method

.method private A(FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v1

    .line 2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    .line 3
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private B(FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v1

    .line 2
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    .line 3
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private C(FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    .line 2
    iget p1, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 3
    sget-object p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private D(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private E(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private F()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result v0

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private G(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3
    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 4
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f()V

    return-void
.end method

.method private H(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->h:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 7
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 9
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 10
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g()V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 13
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 14
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 16
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 17
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 19
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 21
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 23
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 24
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    add-float/2addr v0, p1

    .line 26
    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 27
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 28
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 29
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 30
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, p2, v0

    sub-float/2addr p2, v0

    .line 31
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 32
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p1

    div-float/2addr v0, p1

    .line 33
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    :cond_6
    :goto_0
    return-void
.end method

.method private I(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->h:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 7
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 9
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 10
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g()V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 13
    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 14
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 16
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 17
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 19
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 21
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 23
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 24
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    add-float/2addr v0, p1

    .line 26
    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 27
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 28
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 29
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 30
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    add-float/2addr v0, p1

    .line 31
    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 32
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 33
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    :cond_6
    :goto_0
    return-void
.end method

.method private J(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->h:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 7
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 9
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 10
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g()V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 13
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 14
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 16
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 17
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 19
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 21
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 23
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 24
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v0, p2, v0

    sub-float/2addr p2, v0

    .line 26
    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 27
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p1

    div-float/2addr v0, p1

    .line 28
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 29
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 30
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, p2, v0

    sub-float/2addr p2, v0

    .line 31
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 32
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p1

    div-float/2addr v0, p1

    .line 33
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    :cond_6
    :goto_0
    return-void
.end method

.method private K(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->h:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3
    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 7
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 9
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 10
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g()V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 13
    iget p1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 14
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 16
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 17
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 19
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 21
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 23
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 24
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v0, p2, v0

    sub-float/2addr p2, v0

    .line 26
    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 27
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p1

    div-float/2addr v0, p1

    .line 28
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 29
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 30
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    add-float/2addr v0, p1

    .line 31
    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 32
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 33
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    :cond_6
    :goto_0
    return-void
.end method

.method private L()V
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private M(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->r:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->s:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h(FF)V

    return-void
.end method

.method private N(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->r:F

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->s:F

    sub-float/2addr v1, v2

    .line 3
    sget-object v2, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$a;->a:[I

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->J(FF)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->H(FF)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->K(FF)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->I(FF)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0, v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->G(FF)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->r:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->s:F

    return-void
.end method

.method private O(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    .line 3
    :cond_1
    sget-object p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->y:Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->z:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->H:I

    .line 5
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->I:I

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->J:I

    .line 7
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->K:I

    .line 8
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->A:I

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f:F

    return-void
.end method

.method private Q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->q:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e:F

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->q:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f:F

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->q:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method private R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->v:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/c;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->v:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/a;

    :cond_0
    return-void
.end method

.method private S(II)V
    .locals 5

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, p2

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->setCenter(Landroid/graphics/PointF;)V

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f:F

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e(IIF)F

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->setScale(F)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q()V

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g:F

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h:F

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    .line 5
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i:Z

    if-nez p2, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->b(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    if-eqz p2, :cond_2

    .line 8
    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 9
    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->b(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    :cond_2
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i:Z

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method private T(F)F
    .locals 0

    mul-float/2addr p1, p1

    return p1
.end method

.method private U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S(II)V

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->q(F)F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->r(F)F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    div-float/2addr v0, v1

    .line 4
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v0, v2

    const/high16 v7, 0x3f000000    # 0.5f

    if-ltz v6, :cond_0

    add-float/2addr v3, v5

    mul-float/2addr v3, v7

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v0

    mul-float/2addr p1, v7

    sub-float v0, v3, p1

    add-float v5, v3, p1

    move v3, v0

    goto :goto_0

    :cond_0
    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    add-float/2addr v1, v4

    mul-float/2addr v1, v7

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v0

    mul-float/2addr p1, v7

    sub-float v0, v1, p1

    add-float v4, v1, p1

    move v1, v0

    :cond_1
    :goto_0
    sub-float/2addr v4, v1

    sub-float/2addr v5, v3

    const/high16 p1, 0x40000000    # 2.0f

    div-float v0, v4, p1

    add-float/2addr v1, v0

    div-float v0, v5, p1

    add-float/2addr v3, v0

    .line 7
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k0:F

    mul-float/2addr v4, v0

    mul-float/2addr v5, v0

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    div-float/2addr v4, p1

    sub-float v2, v1, v4

    div-float/2addr v5, p1

    sub-float p1, v3, v5

    add-float/2addr v1, v4

    add-float/2addr v3, v5

    invoke-direct {v0, v2, p1, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private d(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method private e(IIF)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h:F

    .line 3
    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    int-to-float v1, p1

    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g:F

    :cond_0
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    int-to-float v0, p2

    .line 4
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h:F

    :cond_1
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v0, p1, p2

    .line 5
    invoke-direct {p0, p3}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->u(F)F

    move-result v1

    invoke-direct {p0, p3}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->s(F)F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_2

    .line 6
    invoke-direct {p0, p3}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->u(F)F

    move-result p2

    div-float v2, p1, p2

    goto :goto_0

    :cond_2
    cmpg-float p1, v1, v0

    if-gez p1, :cond_3

    .line 7
    invoke-direct {p0, p3}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->s(F)F

    move-result p1

    div-float v2, p2, p1

    :cond_3
    :goto_0
    return v2
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float v3, v1, v3

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_0

    sub-float/2addr v1, v3

    .line 2
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float v3, v1, v3

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    .line 5
    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v3

    iput v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    .line 6
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v3

    cmpg-float v5, v3, v4

    if-gez v5, :cond_2

    sub-float/2addr v1, v3

    .line 8
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 9
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 10
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v1, v2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_3

    .line 11
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    .line 12
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float v3, v1, v3

    .line 2
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v5

    .line 3
    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    sub-float v7, v6, v7

    .line 4
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v8, v2

    const/4 v9, 0x0

    cmpg-float v10, v3, v9

    if-gez v10, :cond_0

    sub-float/2addr v1, v3

    .line 5
    iput v1, v0, Landroid/graphics/RectF;->left:F

    :cond_0
    cmpl-float v1, v5, v9

    if-lez v1, :cond_1

    sub-float/2addr v4, v5

    .line 6
    iput v4, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    cmpg-float v1, v7, v9

    if-gez v1, :cond_2

    sub-float/2addr v6, v7

    .line 7
    iput v6, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    cmpl-float v1, v2, v9

    if-lez v1, :cond_3

    sub-float/2addr v8, v2

    .line 8
    iput v8, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private getAnimator()Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->v:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/a;

    return-object v0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getDensity()F
    .locals 3

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private getFrameH()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    return v1
.end method

.method private getFrameW()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    return v1
.end method

.method private getRatioX()F
    .locals 2

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$a;->b:[I

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    const/high16 v0, 0x41100000    # 9.0f

    return v0

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    return v0

    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    .line 2
    :cond_4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c0:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0

    .line 3
    :cond_5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method private getRatioY()F
    .locals 2

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$a;->b:[I

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    return v0

    :cond_1
    const/high16 v0, 0x41100000    # 9.0f

    return v0

    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    :cond_3
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    .line 2
    :cond_4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c0:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0

    .line 3
    :cond_5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method private h(FF)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->z(FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    sget-object p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    sget-object p2, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_0

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_1

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->B(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    sget-object p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->d:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    sget-object p2, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_3

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    .line 8
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_4

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    :cond_4
    return-void

    .line 9
    :cond_5
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->y(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10
    sget-object p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->e:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    sget-object p2, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_6

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    .line 12
    :cond_6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_7

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    :cond_7
    return-void

    .line 13
    :cond_8
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->A(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 14
    sget-object p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->f:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    .line 15
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    sget-object p2, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_9

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    .line 16
    :cond_9
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_a

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    :cond_a
    return-void

    .line 17
    :cond_b
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->C(FF)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 18
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    sget-object p2, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    if-ne p1, p2, :cond_c

    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    .line 19
    :cond_c
    sget-object p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    return-void

    .line 20
    :cond_d
    sget-object p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    return-void
.end method

.method private i(FFFF)F
    .locals 0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_1

    cmpl-float p2, p1, p3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return p4
.end method

.method private j(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->a0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->t:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k(Landroid/graphics/Canvas;)V

    .line 5
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l(Landroid/graphics/Canvas;)V

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method private k(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d0:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private l(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    iget v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j0:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    iget v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e0:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, v3, v2

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    add-float v9, v2, v4

    sub-float v2, v3, v2

    div-float/2addr v2, v5

    sub-float v13, v3, v2

    .line 4
    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v10, v8

    div-float/2addr v1, v5

    add-float v18, v8, v1

    sub-float v1, v10, v8

    div-float/2addr v1, v5

    sub-float v1, v10, v1

    .line 5
    iget-object v11, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v15, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v15, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v16, v18

    move/from16 v17, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private m(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private n(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->m(Landroid/graphics/Canvas;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private o(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    iget-boolean v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->u:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    sget-object v3, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->j:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->k:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    if-ne v2, v3, :cond_1

    .line 10
    :cond_0
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 11
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    invoke-direct {v1, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    .line 13
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 14
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 15
    :cond_1
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 16
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 17
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private q(F)F
    .locals 2

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$a;->b:[I

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return p1

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c0:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    return p1

    :pswitch_2
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :pswitch_3
    const/high16 p1, 0x41100000    # 9.0f

    return p1

    :pswitch_4
    const/high16 p1, 0x41800000    # 16.0f

    return p1

    :pswitch_5
    const/high16 p1, 0x40400000    # 3.0f

    return p1

    :pswitch_6
    const/high16 p1, 0x40800000    # 4.0f

    return p1

    .line 3
    :pswitch_7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private r(F)F
    .locals 2

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$a;->b:[I

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return p1

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c0:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    return p1

    :pswitch_2
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :pswitch_3
    const/high16 p1, 0x41800000    # 16.0f

    return p1

    :pswitch_4
    const/high16 p1, 0x41100000    # 9.0f

    return p1

    :pswitch_5
    const/high16 p1, 0x40800000    # 4.0f

    return p1

    :pswitch_6
    const/high16 p1, 0x40400000    # 3.0f

    return p1

    .line 3
    :pswitch_7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private s(F)F
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g:F

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h:F

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->t(FFF)F

    move-result p1

    return p1
.end method

.method private setCenter(Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->q:Landroid/graphics/PointF;

    return-void
.end method

.method private setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U()V

    return-void
.end method

.method private setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e:F

    return-void
.end method

.method private t(FFF)F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    move p2, p3

    :cond_0
    return p2
.end method

.method private u(F)F
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g:F

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h:F

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->v(FFF)F

    move-result p1

    return p1
.end method

.method private v(FFF)F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    return p2
.end method

.method private w(Landroid/content/Context;Landroid/util/AttributeSet;IF)V
    .locals 6

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/k;->c:[I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget-object p2, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->h:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    .line 4
    :try_start_0
    sget p2, Lcn/nubia/video/mediaeditorview/k;->r:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_0
    invoke-static {}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->values()[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    move-result-object p2

    array-length p3, p2

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_2

    aget-object v2, p2, v0

    .line 7
    sget v3, Lcn/nubia/video/mediaeditorview/k;->h:I

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;->a()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 8
    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    sget p2, Lcn/nubia/video/mediaeditorview/k;->f:I

    .line 10
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f0:I

    .line 11
    sget p2, Lcn/nubia/video/mediaeditorview/k;->u:I

    const/high16 p3, -0x45000000    # -0.001953125f

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g0:I

    .line 13
    sget p2, Lcn/nubia/video/mediaeditorview/k;->i:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h0:I

    .line 14
    sget p2, Lcn/nubia/video/mediaeditorview/k;->n:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i0:I

    .line 15
    sget p2, Lcn/nubia/video/mediaeditorview/k;->k:I

    const p3, -0x44000001

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j0:I

    .line 16
    invoke-static {}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->values()[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    move-result-object p2

    array-length p3, p2

    move v0, v1

    :goto_2
    const/4 v2, 0x1

    if-ge v0, p3, :cond_4

    aget-object v3, p2, v0

    .line 17
    sget v4, Lcn/nubia/video/mediaeditorview/k;->l:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->a()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 18
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_4
    :goto_3
    invoke-static {}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->values()[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    move-result-object p2

    array-length p3, p2

    move v0, v1

    :goto_4
    if-ge v0, p3, :cond_6

    aget-object v3, p2, v0

    .line 20
    sget v4, Lcn/nubia/video/mediaeditorview/k;->p:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->a()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 21
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 22
    :cond_6
    :goto_5
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    invoke-virtual {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->setGuideShowMode(Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;)V

    .line 23
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    invoke-virtual {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->setHandleShowMode(Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;)V

    .line 24
    sget p2, Lcn/nubia/video/mediaeditorview/k;->q:I

    const/high16 p3, 0x41600000    # 14.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    .line 25
    sget p2, Lcn/nubia/video/mediaeditorview/k;->v:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U:I

    .line 26
    sget p2, Lcn/nubia/video/mediaeditorview/k;->t:I

    const/high16 p3, 0x42480000    # 50.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    .line 27
    sget p2, Lcn/nubia/video/mediaeditorview/k;->j:I

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p4, p3

    float-to-int p4, p4

    .line 28
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d0:F

    .line 29
    sget p2, Lcn/nubia/video/mediaeditorview/k;->m:I

    .line 30
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e0:F

    .line 31
    sget p2, Lcn/nubia/video/mediaeditorview/k;->g:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->a0:Z

    .line 32
    sget p2, Lcn/nubia/video/mediaeditorview/k;->s:I

    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const p4, 0x3c23d70a    # 0.01f

    .line 34
    invoke-direct {p0, p2, p4, p3, p3}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i(FFFF)F

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k0:F

    .line 35
    sget p2, Lcn/nubia/video/mediaeditorview/k;->e:I

    .line 36
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l0:Z

    .line 37
    sget p2, Lcn/nubia/video/mediaeditorview/k;->d:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->m0:I

    .line 38
    sget p2, Lcn/nubia/video/mediaeditorview/k;->o:I

    .line 39
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p2

    goto :goto_7

    :catch_0
    move-exception p2

    .line 40
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    throw p2
.end method

.method private x()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getFrameH()F

    move-result v0

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private y(FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    .line 2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    .line 3
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private z(FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    .line 2
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    .line 3
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getActualCropRect()Landroid/graphics/RectF;
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e:F

    div-float/2addr v1, v2

    .line 3
    iget v0, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, v2

    .line 4
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v4, v2

    sub-float/2addr v4, v1

    .line 5
    iget v5, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v5, v2

    sub-float/2addr v5, v0

    .line 6
    iget v6, v3, Landroid/graphics/RectF;->right:F

    div-float/2addr v6, v2

    sub-float/2addr v6, v1

    .line 7
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    .line 8
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 9
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 10
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e:F

    div-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 11
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e:F

    div-float/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 12
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public getSaveUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->z:Landroid/net/Uri;

    return-object v0
.end method

.method public getSourceUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->y:Landroid/net/Uri;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->N:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f0:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q()V

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 6
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c:I

    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d:I

    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S(II)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    check-cast p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    .line 4
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->b:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f0:I

    .line 5
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->c:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g0:I

    .line 6
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->d:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h0:I

    .line 7
    iget-object v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->e:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 8
    iget-object v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->f:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 9
    iget-boolean v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->g:Z

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    .line 10
    iget-boolean v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->h:Z

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    .line 11
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->i:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    .line 12
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->j:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U:I

    .line 13
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->k:F

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->l:F

    iget v2, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->m:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c0:Landroid/graphics/PointF;

    .line 15
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->n:F

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d0:F

    .line 16
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->o:F

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e0:F

    .line 17
    iget-boolean v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->p:Z

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->a0:Z

    .line 18
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->q:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i0:I

    .line 19
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->r:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j0:I

    .line 20
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->s:F

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k0:F

    .line 21
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->t:F

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f:F

    .line 22
    iget-boolean v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->u:Z

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l0:Z

    .line 23
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->v:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->m0:I

    .line 24
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->w:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->A:I

    .line 25
    iget-object v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->x:Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->y:Landroid/net/Uri;

    .line 26
    iget-object v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->y:Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->z:Landroid/net/Uri;

    .line 27
    iget-object v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->z:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F:Landroid/graphics/Bitmap$CompressFormat;

    .line 28
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->A:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->G:I

    .line 29
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->C:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->B:I

    .line 30
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->D:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->C:I

    .line 31
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->E:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D:I

    .line 32
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->F:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E:I

    .line 33
    iget-boolean v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->G:Z

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n0:Z

    .line 34
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->H:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->H:I

    .line 35
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->I:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->I:I

    .line 36
    iget v0, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->J:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->J:I

    .line 37
    iget p1, p1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->K:I

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->K:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;

    invoke-direct {v1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    iput-object v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    .line 4
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f0:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->b:I

    .line 5
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->g0:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->c:I

    .line 6
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->h0:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->d:I

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    iput-object v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->e:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    iput-object v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->f:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 9
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    iput-boolean v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->g:Z

    .line 10
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    iput-boolean v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->h:Z

    .line 11
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->T:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->i:I

    .line 12
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->U:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->j:I

    .line 13
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->S:F

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->k:F

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->c0:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->l:F

    .line 15
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->m:F

    .line 16
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d0:F

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->n:F

    .line 17
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e0:F

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->o:F

    .line 18
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->a0:Z

    iput-boolean v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->p:Z

    .line 19
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i0:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->q:I

    .line 20
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->j0:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->r:I

    .line 21
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k0:F

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->s:F

    .line 22
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->f:F

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->t:F

    .line 23
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l0:Z

    iput-boolean v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->u:Z

    .line 24
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->m0:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->v:I

    .line 25
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->A:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->w:I

    .line 26
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->y:Landroid/net/Uri;

    iput-object v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->x:Landroid/net/Uri;

    .line 27
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->z:Landroid/net/Uri;

    iput-object v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->y:Landroid/net/Uri;

    .line 28
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->z:Landroid/graphics/Bitmap$CompressFormat;

    .line 29
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->G:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->A:I

    .line 30
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->B:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->C:I

    .line 31
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->C:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->D:I

    .line 32
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->E:I

    .line 33
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->F:I

    .line 34
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n0:Z

    iput-boolean v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->G:Z

    .line 35
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->H:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->H:I

    .line 36
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->I:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->I:I

    .line 37
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->J:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->J:I

    .line 38
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->K:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->K:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->a0:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->b0:Z

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->t:Z

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->u:Z

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 8
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    return v1

    .line 9
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->L()V

    return v2

    .line 11
    :cond_8
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->N(Landroid/view/MotionEvent;)V

    .line 12
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    if-eq p1, v0, :cond_9

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return v2

    .line 14
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->O(Landroid/view/MotionEvent;)V

    return v2

    .line 16
    :cond_b
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->M(Landroid/view/MotionEvent;)V

    return v2
.end method

.method public p(II)Landroid/graphics/RectF;
    .locals 7

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->v(FFF)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v1

    .line 3
    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v1

    .line 4
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v1

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 5
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v1

    sub-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 6
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v1

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 7
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->o:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v6, v1

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 8
    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->v(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 9
    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->t(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 10
    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    .line 11
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p2, v4, v0, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->m0:I

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->l0:Z

    return-void
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->F:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public setCompressQuality(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->G:I

    return-void
.end method

.method public setCropEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->a0:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->b0:Z

    return-void
.end method

.method public setFrameStrokeWeightInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getDensity()F

    move-result v0

    mul-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->d0:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setGuideShowMode(Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->Q:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 2
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$a;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->V:Z

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setGuideStrokeWeightInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->getDensity()F

    move-result v0

    mul-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->e0:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setHandleShadowEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->n0:Z

    return-void
.end method

.method public setHandleShowMode(Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 2
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$a;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->W:Z

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->P()V

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInitialFrameScale(F)V
    .locals 2

    const v0, 0x3c23d70a    # 0.01f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->i(FFFF)F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->k0:F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->x:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->v:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/b/a;

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->R()V

    return-void
.end method

.method public setOutputHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D:I

    return-void
.end method

.method public setOutputWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->D:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->E:I

    return-void
.end method
