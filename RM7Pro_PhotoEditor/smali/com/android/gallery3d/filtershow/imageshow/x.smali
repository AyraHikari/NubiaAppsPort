.class public Lcom/android/gallery3d/filtershow/imageshow/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/pipeline/m;


# static fields
.field private static Z:Lcom/android/gallery3d/filtershow/imageshow/x;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Bitmap;

.field private C:I

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/animation/ValueAnimator;

.field private F:F

.field private G:Z

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:Lcom/android/gallery3d/filtershow/f/b;

.field private M:Lcom/android/gallery3d/filtershow/state/d;

.field private N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private O:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/android/gallery3d/filtershow/filters/x;

.field private Q:F

.field private R:F

.field private S:Landroid/graphics/Point;

.field private T:Landroid/graphics/Point;

.field private U:Landroid/graphics/Point;

.field private V:Z

.field private W:Lcom/android/gallery3d/filtershow/e/a;

.field private X:I

.field private Y:Ljava/lang/Runnable;

.field private a:Z

.field private b:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field private c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private e:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private f:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private g:Lcom/android/gallery3d/filtershow/pipeline/o;

.field private h:Lcom/android/gallery3d/filtershow/pipeline/p;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Bitmap;

.field private s:I

.field private t:Landroid/graphics/Rect;

.field private final u:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/net/Uri;

.field private w:I

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->b:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->e:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->f:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/o;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/pipeline/o;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->g:Lcom/android/gallery3d/filtershow/pipeline/o;

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/p;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/pipeline/p;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->h:Lcom/android/gallery3d/filtershow/pipeline/p;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->i:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->k:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->l:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->m:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->n:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->o:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->p:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->q:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->r:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->u:Ljava/util/Vector;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->v:Landroid/net/Uri;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->w:I

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->x:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->y:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->z:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->A:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->B:Landroid/graphics/Bitmap;

    const/16 v3, 0xf

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->C:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->D:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->F:F

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->G:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->H:F

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->I:F

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->J:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->K:I

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->L:Lcom/android/gallery3d/filtershow/f/b;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->M:Lcom/android/gallery3d/filtershow/state/d;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->O:Ljava/util/Vector;

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->Q:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->R:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->S:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->T:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    new-instance v0, Lcom/android/gallery3d/filtershow/e/a;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/e/a;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->X:I

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/x$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/x$a;-><init>(Lcom/android/gallery3d/filtershow/imageshow/x;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->Y:Ljava/lang/Runnable;

    return-void
.end method

.method public static H0(Lcom/android/gallery3d/filtershow/imageshow/x;)V
    .locals 0

    sput-object p0, Lcom/android/gallery3d/filtershow/imageshow/x;->Z:Lcom/android/gallery3d/filtershow/imageshow/x;

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/imageshow/x;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->u:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/imageshow/x;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->K:I

    return p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/imageshow/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->G:Z

    return p1
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/imageshow/x;F)F
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->I:F

    return p1
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/imageshow/x;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static u0()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/x;->Z:Lcom/android/gallery3d/filtershow/imageshow/x;

    return-void
.end method

.method public static x()Lcom/android/gallery3d/filtershow/imageshow/x;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/x;->Z:Lcom/android/gallery3d/filtershow/imageshow/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/x;->Z:Lcom/android/gallery3d/filtershow/imageshow/x;

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/x;->Z:Lcom/android/gallery3d/filtershow/imageshow/x;

    return-object v0
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->F:F

    return v0
.end method

.method public A0(F)V
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->I:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->H:F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    return-void
.end method

.method public B()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->R:F

    return v0
.end method

.method public B0(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->b:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    return-void
.end method

.method public C()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    :cond_0
    return-object v0
.end method

.method public C0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->P:Lcom/android/gallery3d/filtershow/filters/x;

    return-void
.end method

.method public D()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public D0(Lcom/android/gallery3d/filtershow/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->L:Lcom/android/gallery3d/filtershow/f/b;

    return-void
.end method

.method public E()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public E0(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eq v1, p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->t:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->t:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->R:F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->n0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->m0()V

    :cond_1
    return-void
.end method

.method public F()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->t:Landroid/graphics/Rect;

    return-object v0
.end method

.method public F0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public G()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->T:Landroid/graphics/Point;

    return-object v0
.end method

.method public G0(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->F:F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    return-void
.end method

.method public H()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->X:I

    return v0
.end method

.method public I()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->D:Landroid/graphics/Rect;

    return-object v0
.end method

.method public I0(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    const v1, 0x15ef3c0

    if-le v0, v1, :cond_1

    :goto_0
    if-le v0, v1, :cond_0

    div-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->X:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->X:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->X:I

    div-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    div-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    div-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "too big image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MasterImage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->t:Landroid/graphics/Rect;

    return-void
.end method

.method public J()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->z:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public J0(Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->T:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public declared-synchronized K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->V()V

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->M:Lcom/android/gallery3d/filtershow/state/d;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->k(Lcom/android/gallery3d/filtershow/state/d;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3, p1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p3, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/imageshow/x;->g(Ljava/util/Vector;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->T0(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w0(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public L()Lcom/android/gallery3d/filtershow/pipeline/o;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->g:Lcom/android/gallery3d/filtershow/pipeline/o;

    return-object v0
.end method

.method public declared-synchronized L0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Ljava/util/Vector;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->V()V

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->M:Lcom/android/gallery3d/filtershow/state/d;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->k(Lcom/android/gallery3d/filtershow/state/d;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/imageshow/x;->g(Ljava/util/Vector;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->T0(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w0(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public M()Lcom/android/gallery3d/filtershow/pipeline/p;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->h:Lcom/android/gallery3d/filtershow/pipeline/p;

    return-object v0
.end method

.method public M0(F)V
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->Q:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->Q:F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->i0()V

    return-void
.end method

.method public N()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->B:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public N0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->V:Z

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    return-void
.end method

.method public O()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public O0(Lcom/android/gallery3d/filtershow/state/d;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->M:Lcom/android/gallery3d/filtershow/state/d;

    return-void
.end method

.method public P()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public P0(Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->S:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->n0()V

    return-void
.end method

.method public Q()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public Q0(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->v:Landroid/net/Uri;

    return-void
.end method

.method public R()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->n:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public R0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->V:Z

    return v0
.end method

.method public S()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->p:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public S0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->a:Z

    return v0
.end method

.method public T()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->r:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public T0(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    return-void
.end method

.method public U()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->Q:F

    return v0
.end method

.method public U0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public V()Lcom/android/gallery3d/filtershow/state/d;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->M:Lcom/android/gallery3d/filtershow/state/d;

    return-object v0
.end method

.method public W()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->E()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->E()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->l:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->l:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v1, 0xc8

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public X()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R0()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->Y(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public Y(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->O()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->R()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->Q()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->S()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->P()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->E()Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public Z()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->S:Landroid/graphics/Point;

    return-object v0
.end method

.method public a(Lcom/android/gallery3d/filtershow/pipeline/l;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->x:Landroid/graphics/Bitmap;

    move v0, v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->y:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    move v0, v3

    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->f()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->z:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->D:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    move v0, v3

    :cond_3
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->A:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    goto :goto_0

    :cond_4
    move v3, v0

    :goto_0
    if-eqz v3, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->c0()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->X(Z)V

    :cond_5
    return-void
.end method

.method public a0()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->v:Landroid/net/Uri;

    return-object v0
.end method

.method public b0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->w:I

    return v0
.end method

.method public declared-synchronized c0()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->z()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->E()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    if-nez v0, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->E()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    :try_start_3
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->j(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->F()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e0()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->h(B)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f0()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e1()V

    :cond_0
    return-void
.end method

.method public g(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/gallery3d/filtershow/f/a;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, v1, p1}, Lcom/android/gallery3d/filtershow/f/a;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Ljava/util/Vector;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->L:Lcom/android/gallery3d/filtershow/f/b;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/f/b;->b(Lcom/android/gallery3d/filtershow/f/a;)V

    return-void
.end method

.method public g0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->f:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    return-void
.end method

.method public h(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->u:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->u:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public h0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->A:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    :cond_0
    return-void
.end method

.method public i(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->O:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->O:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    :cond_0
    return-void
.end method

.method public j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;
    .locals 10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_4

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    invoke-static/range {v4 .. v9}, Lcom/android/gallery3d/filtershow/imageshow/h;->k(Landroid/graphics/RectF;Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object v1

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p3, v2, v2, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    div-float v2, p1, v3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, v0

    sub-float/2addr p1, p3

    div-float/2addr p1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object p3

    if-nez v1, :cond_3

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1

    :cond_3
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, p2, v4, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->C:I

    int-to-float p2, p1

    int-to-float p1, p1

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result p2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget p1, p3, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result p2

    mul-float/2addr p1, p2

    iget p2, p3, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result p3

    mul-float/2addr p2, p3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    :goto_1
    return-object v1
.end method

.method public j0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->h:Lcom/android/gallery3d/filtershow/pipeline/p;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/p;->b(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->g:Lcom/android/gallery3d/filtershow/pipeline/o;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/o;->c()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->i0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->h0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->n0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->m0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U0()Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->u()V

    :cond_1
    return-void
.end method

.method public k()Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public k0(Landroid/net/Uri;I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->Q0(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->k()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/e/b;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/e/b;->d(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->s:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/16 v3, 0x708

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->s:I

    invoke-static {p1, v2, p2, v3, v0}, Lcom/android/gallery3d/filtershow/e/b;->r(Landroid/net/Uri;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->s:I

    const/4 p2, 0x0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->I0(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput p2, v1, Landroid/graphics/Rect;->left:I

    iput p2, v1, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->I0(Landroid/graphics/Rect;)V

    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    return p2

    :cond_2
    const/16 p2, 0xa0

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoEditor small "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "baocuo"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->i:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070177

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->m:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f2

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->n:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->o:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f4

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->p:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f0

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->q:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070178

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->r:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->s:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->w:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U0()V

    return v1
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->J:F

    return v0
.end method

.method public l0(Landroid/net/Uri;Ljava/lang/String;I)Z
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->Q0(Landroid/net/Uri;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/16 v0, 0x708

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->s:I

    move-object v0, p1

    move-object v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/e/b;->m(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "masterimage 900 loadDNGBitmap mOriginalBitmapLarge "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rect"

    invoke-static {p2, p1}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/imageshow/x;->I0(Landroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "masterimage 903 originalBounds "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p2, 0xa0

    int-to-float p3, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-int p1, p3

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->j:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-static {p3, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->i:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->s:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->w:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U0()V

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->H:F

    return v0
.end method

.method public m0()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U0()Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U0()Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->m(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;FLcom/android/gallery3d/filtershow/pipeline/m;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->h0()V

    return-void
.end method

.method public n()Lcom/android/gallery3d/filtershow/e/a;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    return-object v0
.end method

.method public n0()V
    .locals 11

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->i0()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s0()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->C:I

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U0()Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v7

    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->U:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {v9, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;FLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/gallery3d/filtershow/pipeline/m;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->i0()V

    return-void
.end method

.method public o()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->b:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public o0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->O:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->P:Lcom/android/gallery3d/filtershow/filters/x;

    return-object v0
.end method

.method public p0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->G:Z

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->K:I

    return v0
.end method

.method public q0(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->L:Lcom/android/gallery3d/filtershow/f/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/f/b;->i(I)Lcom/android/gallery3d/filtershow/f/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/f/a;->b()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/f/a;->b()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/f/a;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->L0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Ljava/util/Vector;Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->L:Lcom/android/gallery3d/filtershow/f/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/f/b;->q(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/t;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->v()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/t;->x0(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/n;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->m()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/n;->y0(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_1
    return-void
.end method

.method public r()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->L()Lcom/android/gallery3d/filtershow/pipeline/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/o;->a()Lcom/android/gallery3d/filtershow/pipeline/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/a;->b()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public r0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->K:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->I:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->I:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->v0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/filtershow/e/a;->d(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->B:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/d0;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->K:I

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x28a

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_3
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/z;

    const-wide/16 v3, 0x1f4

    if-eqz v0, :cond_4

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->K:I

    new-array v0, v1, [F

    const/4 v1, 0x0

    const/4 v5, 0x0

    aput v5, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/z;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/z;->l0()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_4
    instance-of p1, p1, Lcom/android/gallery3d/filtershow/filters/s;

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->K:I

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/x$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/x$b;-><init>(Lcom/android/gallery3d/filtershow/imageshow/x;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/x$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/x$c;-><init>(Lcom/android/gallery3d/filtershow/imageshow/x;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public s()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->g:Lcom/android/gallery3d/filtershow/pipeline/o;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/o;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->g:Lcom/android/gallery3d/filtershow/pipeline/o;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/o;->a()Lcom/android/gallery3d/filtershow/pipeline/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s0()Landroid/graphics/Matrix;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public t()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->y:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public t0(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->O:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public u()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->x:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public v()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->A:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public v0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->W:Lcom/android/gallery3d/filtershow/e/a;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->B:Landroid/graphics/Bitmap;

    return-void
.end method

.method public w()Lcom/android/gallery3d/filtershow/f/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->L:Lcom/android/gallery3d/filtershow/f/b;

    return-object v0
.end method

.method public w0(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->R(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->S(Z)V

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->e:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->j(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGeometryOnlyPreset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->e:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MasterImage"

    invoke-static {v5, v4}, Lcom/android/gallery3d/filtershow/c/a;->f(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->e:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v5, 0x2

    invoke-static {v4, v3, v1, v5, p0}, Lcom/android/gallery3d/filtershow/pipeline/l;->j(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;ILcom/android/gallery3d/filtershow/pipeline/m;)V

    :cond_2
    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, v4}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->R(Z)V

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->S(Z)V

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->f:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz p1, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->O(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->f:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1, v3, v1, v2, p0}, Lcom/android/gallery3d/filtershow/pipeline/l;->j(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;ILcom/android/gallery3d/filtershow/pipeline/m;)V

    :cond_4
    return-void
.end method

.method public x0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->S:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->n0()V

    return-void
.end method

.method public y()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->D()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public y0(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->N:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method public z()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public z0(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x;->J:F

    return-void
.end method
