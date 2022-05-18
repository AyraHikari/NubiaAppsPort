.class public Lcom/android/gallery3d/filtershow/imageshow/l;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/imageshow/m$a;


# instance fields
.field private A0:Landroid/graphics/Matrix;

.field private B0:I

.field private C0:Landroid/graphics/Paint;

.field private D0:Z

.field private E0:Z

.field private F0:Landroid/content/Context;

.field private G0:Landroid/graphics/Rect;

.field private H0:Z

.field private I0:F

.field private J0:Landroid/graphics/Path;

.field private K0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/b;",
            ">;"
        }
    .end annotation
.end field

.field private L0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Landroid/graphics/PorterDuffXfermode;

.field private P:Lcom/android/gallery3d/filtershow/editors/j;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Landroid/graphics/Bitmap;

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/b;",
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

.field private a0:Z

.field private b0:Landroid/graphics/Paint;

.field private c0:I

.field private d0:Landroid/graphics/RectF;

.field private e0:Landroid/graphics/Path;

.field private f0:Landroid/graphics/Matrix;

.field private g0:Lcom/android/gallery3d/filtershow/filters/n;

.field private h0:Lcom/android/gallery3d/filtershow/mosaic/a;

.field private i0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/mosaic/a;",
            ">;"
        }
    .end annotation
.end field

.field j0:I

.field k0:I

.field l0:I

.field private m0:Z

.field private n0:Landroid/graphics/Bitmap;

.field private o0:Landroid/graphics/Bitmap;

.field private p0:Landroid/graphics/Matrix;

.field private q0:Landroid/graphics/Matrix;

.field private r0:I

.field private s0:I

.field private t0:I

.field private u0:Z

.field private v0:Z

.field private w0:F

.field private x0:F

.field private y0:Landroid/graphics/Paint;

.field private z0:Lcom/android/gallery3d/filtershow/imageshow/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->O:Landroid/graphics/PorterDuffXfermode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->P:Lcom/android/gallery3d/filtershow/editors/j;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->Q:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->R:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->S:I

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->T:I

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->b0:Landroid/graphics/Paint;

    const/16 v3, 0x8

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->d0:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->f0:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->g0:Lcom/android/gallery3d/filtershow/filters/n;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->m0:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->r0:I

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->s0:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->t0:I

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->u0:Z

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->y0:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->A0:Landroid/graphics/Matrix;

    const/16 v3, 0xa

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->B0:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->D0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->E0:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->F0:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->Q()V

    return-void
.end method

.method private G(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":addPositionIndex "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";;; size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageDraw"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private K()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private L()V
    .locals 0

    return-void
.end method

.method private M()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private N()V
    .locals 3

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->getCurPositionDrawCover()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw:checkNeedNewDrawCover = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageDraw"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->M()V

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->V:Ljava/util/List;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->W:Ljava/util/List;

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->K0:Ljava/util/List;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->L0:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->G(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private O()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->g0:Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/n;->m0()Ljava/util/List;

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

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private Q()V
    .locals 7

    const-string v0, "ImageDraw"

    const-string v1, " initImage "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->b0:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->b0:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->y0:Landroid/graphics/Paint;

    const v3, 0x7fffaa33

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->y0:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->y0:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->y0:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->y0:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/m;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->F0:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/imageshow/m;->i(Lcom/android/gallery3d/filtershow/imageshow/m$a;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->getFiltedRect()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->t()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onlyfiltersbitmap = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/h;->l(IILcom/android/gallery3d/filtershow/imageshow/h$b;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->p0:Landroid/graphics/Matrix;

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/h;->l(IILcom/android/gallery3d/filtershow/imageshow/h$b;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->q0:Landroid/graphics/Matrix;

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/n;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->g0:Lcom/android/gallery3d/filtershow/filters/n;

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->V:Ljava/util/List;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->W:Ljava/util/List;

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->K0:Ljava/util/List;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->L0:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->f0:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->S:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->T:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41800000    # 16.0f
    .end array-data
.end method

.method private T(III)Z
    .locals 8

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/m;->z:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/m;->z:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v3, "ImageDraw"

    if-eqz p3, :cond_9

    if-eq p3, v2, :cond_8

    const/4 v3, 0x2

    if-eq p3, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->u0:Z

    if-eqz p3, :cond_a

    if-eqz v0, :cond_a

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    if-nez p3, :cond_5

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->N()V

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->V:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/b;

    new-instance v3, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->p0:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->r0:I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->A0:Landroid/graphics/Matrix;

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/android/gallery3d/filtershow/mosaic/b;-><init>(Lcom/android/gallery3d/filtershow/mosaic/f;IILandroid/graphics/Matrix;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/l;->G(I)V

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->K0:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/b;

    new-instance v3, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->q0:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->r0:I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->A0:Landroid/graphics/Matrix;

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/android/gallery3d/filtershow/mosaic/b;-><init>(Lcom/android/gallery3d/filtershow/mosaic/f;IILandroid/graphics/Matrix;)V

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->W:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->p0:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    invoke-direct {v0, v1, v4, v5}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/l;->G(I)V

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->L0:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->q0:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    :goto_2
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->Z()V

    :cond_5
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->b0()V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->Y()V

    goto :goto_3

    :cond_8
    const-string p1, "processEventDrawPaint ACTION_UP"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->u0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    goto :goto_3

    :cond_9
    const-string p3, "processEventDrawPaint ACTION_DOWN"

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    int-to-float p2, p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->u0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->p0:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz p3, :cond_a

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method private U(III)Z
    .locals 7

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    int-to-float v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/m;->z:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    int-to-float v4, p2

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/m;->z:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const-string v4, "ImageDraw"

    if-eqz p3, :cond_9

    if-eq p3, v3, :cond_8

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz v0, :cond_b

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    if-nez p3, :cond_5

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->N()V

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->V:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->p0:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    invoke-direct {v1, v2, v4, v5}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->r0:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->Q:I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->A0:Landroid/graphics/Matrix;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/gallery3d/filtershow/mosaic/b;-><init>(Lcom/android/gallery3d/filtershow/mosaic/f;IILandroid/graphics/Matrix;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/l;->G(I)V

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->K0:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->q0:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->r0:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->Q:I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->A0:Landroid/graphics/Matrix;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/gallery3d/filtershow/mosaic/b;-><init>(Lcom/android/gallery3d/filtershow/mosaic/f;IILandroid/graphics/Matrix;)V

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->W:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->p0:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    invoke-direct {v0, v2, v4, v5}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/l;->G(I)V

    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->L0:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->q0:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v4}, Lcom/android/gallery3d/filtershow/mosaic/f;-><init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V

    :goto_2
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->Z()V

    :cond_5
    iget-boolean p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    if-nez p3, :cond_6

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->b0()V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->Y()V

    :goto_3
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/imageshow/m;->a()I

    move-result p3

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/m;->u:I

    if-ne p3, v0, :cond_7

    iget p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->Q:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/imageshow/l;->c0(III)V

    goto :goto_4

    :cond_7
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    invoke-virtual {p3, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/m;->g(II)V

    :goto_4
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->b0()V

    goto :goto_5

    :cond_8
    const-string p1, "processEventDrawShape ACTION_UP"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    goto :goto_5

    :cond_9
    const-string p3, "processEventDrawShape ACTION_DOWN"

    invoke-static {v4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    int-to-float p3, p2

    iput p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/m;->a()I

    move-result v0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/m;->y:I

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/m;->a()I

    move-result v0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/m;->t:I

    if-eq v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/m;->f(II)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->A0:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    float-to-int v0, v0

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    float-to-int v4, v4

    invoke-virtual {p2, v0, v4, p1}, Lcom/android/gallery3d/filtershow/imageshow/m;->b(IILandroid/graphics/Matrix;)V

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->v0:Z

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->p0:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr v1, p2

    mul-float/2addr p3, p2

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_b
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3
.end method

.method private X()V
    .locals 7

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    if-gt v1, v3, :cond_7

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/b;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->f()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->e()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->d()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->c()Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->c()Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->O:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/f;->d()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/f;->c()Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move v3, v2

    :goto_3
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    if-gt v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/b;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->f()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->e()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->d()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->c()Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_3
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/b;->c()Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->O:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move v3, v2

    :goto_5
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    if-gt v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/f;->d()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/f;->c()Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private Y()V
    .locals 5

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->S:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->T:I

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->O:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/f;->d()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/f;->c()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private Z()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->P:Lcom/android/gallery3d/filtershow/editors/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/j;->r0()V

    :cond_0
    return-void
.end method

.method private a0()V
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->j(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->f0:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->f0:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->d0:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMatrixData mImageRect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->d0:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCrop"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->m0:Z

    return-void
.end method

.method private b0()V
    .locals 5

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->S:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->T:I

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/b;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/b;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/b;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/b;->e()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/b;->d()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/b;->c()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/b;->c()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->C0:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private c0(III)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/m;->k(II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {p3, v0, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    mul-float/2addr v2, v1

    mul-float/2addr p1, v1

    mul-float/2addr p2, v1

    invoke-direct {p3, v0, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {p3, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/f;->a(Landroid/graphics/Path;FFFF)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    mul-float/2addr v2, v1

    mul-float/2addr p1, v1

    mul-float/2addr p2, v1

    invoke-static {p3, v0, v2, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/f;->a(Landroid/graphics/Path;FFFF)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    mul-float/2addr v2, v1

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_3
    iget p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    float-to-int p3, p3

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->e0:Landroid/graphics/Path;

    invoke-static {p3, v0, p1, p2, v1}, Lcom/android/gallery3d/filtershow/imageshow/f;->b(IIIILandroid/graphics/Path;)V

    iget p3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->w0:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->I0:F

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->x0:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->J0:Landroid/graphics/Path;

    invoke-static {p3, v1, p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/f;->b(IIIILandroid/graphics/Path;)V

    :goto_0
    return-void
.end method

.method private getCurPositionDrawCover()Z
    .locals 6

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v3

    :goto_0
    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    if-gez v1, :cond_2

    return v3

    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/a;

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->c()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_6
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_9

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_a

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->d()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    move v2, v0

    :cond_a
    :goto_4
    return v2
.end method


# virtual methods
.method public H()Z
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

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

.method public I()Z
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_1

    :cond_0
    if-le v0, v3, :cond_2

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    add-int/lit8 v0, v0, -0x2

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v3
.end method

.method public J()Z
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public P()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->g0:Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitDrawRepresentation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";;;size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageDraw"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->getCurPositionDrawCover()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitDrawRepresentation size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->K()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->g0:Lcom/android/gallery3d/filtershow/filters/n;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/n;->s0(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->g0:Lcom/android/gallery3d/filtershow/filters/n;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/n;->r0(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ImageDraw commitDrawRepresentation size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->g0:Lcom/android/gallery3d/filtershow/filters/n;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/n;->t0(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public R()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRedo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";;; size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDraw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->X()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public S()V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    add-int/lit8 v2, v0, -0x1

    if-gez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUndo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->j0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->k0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->l0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";;; size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDraw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/m;->j()V

    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->X()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public V()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->Q()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->O()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public W(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageDraw setColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDraw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->r0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->N()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->M()V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->R:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/m;->j()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->s0:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->r0:I

    new-instance p1, Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/mosaic/a;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->V:Ljava/util/List;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->W:Ljava/util/List;

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->H0:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/a;->c()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->K0:Ljava/util/List;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/a;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->L0:Ljava/util/List;

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->i0:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->h0:Lcom/android/gallery3d/filtershow/mosaic/a;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/l;->G(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    :cond_3
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    if-ne p1, v2, :cond_4

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->Z()V

    return-void
.end method

.method public getColorIndex()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->s0:I

    return v0
.end method

.method public getDrawGraffitiMode()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->R:I

    return v0
.end method

.method public getDrawShapeMode()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->Q:I

    return v0
.end method

.method public getFiltedRect()V
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->D()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->D()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    move v3, v0

    move v2, v1

    :goto_0
    div-float v4, v3, v0

    div-float v5, v2, v1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_3

    iget-object v8, v8, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    sget-object v9, Lcom/android/gallery3d/filtershow/filters/z$b;->c:Lcom/android/gallery3d/filtershow/filters/z$b;

    if-eq v8, v9, :cond_2

    sget-object v9, Lcom/android/gallery3d/filtershow/filters/z$b;->e:Lcom/android/gallery3d/filtershow/filters/z$b;

    if-ne v8, v9, :cond_3

    :cond_2
    div-float/2addr v2, v0

    div-float/2addr v3, v1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    int-to-float v1, v7

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    int-to-float v1, v6

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    int-to-float v1, v6

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    int-to-float v1, v7

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->G0:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public getPathWidth()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->t0:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw mNeedUpdateMatrix = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->m0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDraw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->m0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->a0()V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->U:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->f0:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->b0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->f0:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->b0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/m;->a()I

    move-result v0

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/m;->t:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->f0:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/filtershow/imageshow/m;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_3
    return-void
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->B0:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->m0:Z

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    const-string v0, "ImageDraw"

    const-string v1, "onSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->m0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

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

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->d0:Landroid/graphics/RectF;

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
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->D0:Z

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->D0:Z

    :cond_2
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->D0:Z

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v3, :cond_5

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->u0:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->u0:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->L()V

    :cond_4
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->m0:Z

    return p1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->R:I

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->u0:Z

    if-nez v2, :cond_6

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->m0:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->L()V

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->d0:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_9

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_9

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_9

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->S:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->d0:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->R:I

    if-ne v2, v3, :cond_8

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/imageshow/l;->T(III)Z

    move-result p1

    return p1

    :cond_8
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/imageshow/l;->U(III)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v3
.end method

.method public setDrawGraffitiMode(I)V
    .locals 1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->R:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->z0:Lcom/android/gallery3d/filtershow/imageshow/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/m;->j()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawShapeMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->Q:I

    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/j;)V
    .locals 1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->P:Lcom/android/gallery3d/filtershow/editors/j;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImageDraw setEditor  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->P:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->E0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageDraw"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->E0:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->Q()V

    :cond_0
    return-void
.end method

.method public setEraseMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->a0:Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->n0:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->o0:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setInitImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->E0:Z

    return-void
.end method

.method public setPathWidth(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "txh setPathWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDraw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScaleFactor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->t0:I

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->B0:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->c0:I

    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/n;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/l;->g0:Lcom/android/gallery3d/filtershow/filters/n;

    return-void
.end method
