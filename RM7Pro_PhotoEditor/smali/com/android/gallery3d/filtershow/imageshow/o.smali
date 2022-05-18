.class public Lcom/android/gallery3d/filtershow/imageshow/o;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# instance fields
.field private O:Z

.field private P:I

.field private Q:I

.field private R:Landroid/graphics/Bitmap;

.field private S:Landroid/graphics/Bitmap;

.field private T:Landroid/graphics/Bitmap;

.field private U:Landroid/graphics/Bitmap;

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation
.end field

.field private a0:I

.field private b0:F

.field private c0:Z

.field private d0:I

.field private e0:I

.field private f0:I

.field private g0:Landroid/graphics/RectF;

.field private h0:Landroid/graphics/RectF;

.field private i0:Landroid/graphics/Path;

.field private j0:Landroid/graphics/Paint;

.field private k0:Landroid/graphics/Paint;

.field private l0:Landroid/graphics/Matrix;

.field private m0:Landroid/graphics/Matrix;

.field private n0:Lcom/android/gallery3d/filtershow/mosaic/c;

.field private o0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/mosaic/c;",
            ">;"
        }
    .end annotation
.end field

.field private p0:Lcom/android/gallery3d/filtershow/mosaic/d;

.field private q0:Z

.field private r0:Z

.field private s0:Z

.field private t0:Z

.field private u0:Z

.field private v0:Z

.field private w0:Z

.field private x0:Lcom/android/gallery3d/filtershow/filters/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->O:Z

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->P:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->Q:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->S:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->a0:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->b0:F

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->c0:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->d0:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->e0:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->f0:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->g0:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->l0:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->m0:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->p0:Lcom/android/gallery3d/filtershow/mosaic/d;

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->q0:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->r0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->s0:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->t0:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->u0:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->v0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->w0:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->x0:Lcom/android/gallery3d/filtershow/filters/t;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->P()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->Q()V

    return-void
.end method

.method private H()V
    .locals 0

    return-void
.end method

.method private I()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/c;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private K()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->x0:Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/t;->n0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/c;->a()V

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/c;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private M(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private N(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/f;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/f;->c()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/f;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->S:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->S:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->S:Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->P:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->Q:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->S:Landroid/graphics/Bitmap;

    return-void
.end method

.method private P()V
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->getWidthScale()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->D()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->l(IILcom/android/gallery3d/filtershow/imageshow/h$b;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->m0:Landroid/graphics/Matrix;

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->h0:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->p0:Lcom/android/gallery3d/filtershow/mosaic/d;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/d;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/mosaic/d;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->p0:Lcom/android/gallery3d/filtershow/mosaic/d;

    :cond_4
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/t;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->x0:Lcom/android/gallery3d/filtershow/filters/t;

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/c;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->p0:Lcom/android/gallery3d/filtershow/mosaic/d;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->e0:I

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/mosaic/c;-><init>(Lcom/android/gallery3d/filtershow/mosaic/d;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->V:Ljava/util/List;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/c;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->W:Ljava/util/List;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->f0:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/mosaic/c;->g(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->l0:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->P:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->Q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->w0:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->O()V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->O:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txh activityManager.getMemoryClass() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageMosaic"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "txh activityManager.getLargeMemoryClass() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private Q()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->j0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->j0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private R()V
    .locals 10

    const-string v0, "ImageMosaic"

    const-string v1, "txh printMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, ", used = "

    const/16 v8, 0xb

    if-lt v6, v8, :cond_0

    const/16 v8, 0x19

    if-gt v6, v8, :cond_0

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    div-long/2addr v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "txh java memory: max = "

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v8

    div-long/2addr v8, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "txh native memory: max = "

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private T()V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->e0:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->w0:Z

    :cond_1
    return-void
.end method

.method private U()V
    .locals 4

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->P:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->Q:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/c;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->k0:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/o;->N(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->O:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->R()V

    :cond_1
    :goto_0
    return-void
.end method

.method private V()V
    .locals 6

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->h0:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    return-void
.end method

.method private W()V
    .locals 6

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->h0:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    return-void
.end method

.method private X()V
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->l0:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->l0:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->g0:Landroid/graphics/RectF;

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->v0:Z

    return-void
.end method

.method private Y()V
    .locals 6

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->P:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->Q:I

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v2, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->S:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v2, v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/o;->N(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->w0:Z

    invoke-virtual {v1, v3, v4}, Lcom/android/gallery3d/filtershow/mosaic/c;->c(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->w0:Z

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->S:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->O:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->R()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getWidthScale()V
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/high16 v0, 0x3f800000    # 1.0f

    aget v1, v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->b0:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->c0:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public G()Z
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->x0:Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->I()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->J()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->x0:Lcom/android/gallery3d/filtershow/filters/t;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/t;->t0(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->x0:Lcom/android/gallery3d/filtershow/filters/t;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/t;->s0(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->x0:Lcom/android/gallery3d/filtershow/filters/t;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/t;->u0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->Q()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->P()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->K()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMosaicEffect()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->e0:I

    return v0
.end method

.method public getMosaicSize()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->d0:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->v0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->X()V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->R:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->l0:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->T:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->l0:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->j0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->a0:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->f0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->v0:Z

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->g()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->v0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    int-to-float v2, v0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->g0:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    iget v5, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    int-to-float v2, v1

    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->u0:Z

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->u0:Z

    :cond_2
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->u0:Z

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v3, :cond_5

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->q0:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->q0:Z

    :cond_4
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->v0:Z

    return p1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->q0:Z

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->H()V

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->v0:Z

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->g0:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_f

    iget v5, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_f

    int-to-float v1, v1

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_f

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->P:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->g0:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v5

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz p1, :cond_d

    if-eq p1, v3, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->q0:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->r0:Z

    if-nez p1, :cond_a

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->r0:Z

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->t0:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->V:Ljava/util/List;

    new-instance v2, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->i0:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->m0:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->f0:I

    invoke-direct {v2, v4, v5, v6}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/c;->d()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->W:Ljava/util/List;

    new-instance v4, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->i0:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->m0:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->f0:I

    invoke-direct {v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->i0:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->t0:Z

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->Y()V

    goto :goto_2

    :cond_b
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->U()V

    goto :goto_2

    :cond_c
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->q0:Z

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->r0:Z

    goto :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->H()V

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->q0:Z

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->r0:Z

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->m0:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->i0:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_e
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_f
    :goto_3
    return v3
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/n;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->s0:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->P()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->Q()V

    :cond_0
    return-void
.end method

.method public setEraseMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->t0:Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->W()V

    :cond_0
    return-void
.end method

.method public setInitImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->s0:Z

    return-void
.end method

.method public setMosaicEffect(I)V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->e0:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->t0:Z

    if-ne v0, v1, :cond_2

    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->e0:I

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/c;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->p0:Lcom/android/gallery3d/filtershow/mosaic/d;

    invoke-direct {v0, v2, p1}, Lcom/android/gallery3d/filtershow/mosaic/c;-><init>(Lcom/android/gallery3d/filtershow/mosaic/d;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->V:Ljava/util/List;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/c;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->W:Ljava/util/List;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->f0:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/mosaic/c;->g(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->o0:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->T()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->O()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->U:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->W()V

    :cond_1
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->t0:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->V()V

    :cond_2
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->t0:Z

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->t0:Z

    :cond_3
    return-void
.end method

.method public setMosaicSize(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->c0:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->getWidthScale()V

    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->d0:I

    mul-int/lit8 p1, p1, 0x6

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/o;->M(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->b0:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->a0:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->f0:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->n0:Lcom/android/gallery3d/filtershow/mosaic/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/mosaic/c;->g(I)V

    :cond_1
    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/t;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/o;->x0:Lcom/android/gallery3d/filtershow/filters/t;

    return-void
.end method

.method public u()V
    .locals 0

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->u()V

    return-void
.end method
