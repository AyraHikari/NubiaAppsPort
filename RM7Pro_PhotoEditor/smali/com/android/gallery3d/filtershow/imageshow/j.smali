.class public Lcom/android/gallery3d/filtershow/imageshow/j;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/j$a;
    }
.end annotation


# static fields
.field private static final G0:I

.field private static H0:Z

.field private static final I0:Landroid/graphics/DashPathEffect;


# instance fields
.field private A0:F

.field private B0:F

.field private C0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;"
        }
    .end annotation
.end field

.field private D0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;"
        }
    .end annotation
.end field

.field private E0:Z

.field private F0:Z

.field private O:Landroid/graphics/RectF;

.field private P:Landroid/graphics/RectF;

.field private Q:Landroid/graphics/Paint;

.field private R:Lcom/android/gallery3d/filtershow/crop/d;

.field private S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

.field private T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

.field private U:Landroid/graphics/drawable/Drawable;

.field private V:I

.field private W:Landroid/graphics/Matrix;

.field private a0:Landroid/graphics/Matrix;

.field private b0:Landroid/graphics/Matrix;

.field private c0:F

.field private d0:F

.field private e0:I

.field private f0:I

.field private g0:Landroid/graphics/RectF;

.field private h0:Landroid/graphics/Rect;

.field private i0:I

.field private j0:Landroid/content/Context;

.field private k0:Z

.field private l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

.field private m0:Z

.field n0:Lcom/android/gallery3d/filtershow/filters/j;

.field private o0:I

.field private p0:F

.field private q0:F

.field private r0:Landroid/graphics/Bitmap;

.field private s0:Landroid/graphics/Path;

.field private t0:Landroid/graphics/Path;

.field private u0:Z

.field private v0:F

.field private w0:F

.field private x0:Landroid/graphics/Rect;

.field private y0:Landroid/graphics/Paint;

.field private z0:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/j;->G0:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/filtershow/imageshow/j;->H0:Z

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/j;->I0:Landroid/graphics/DashPathEffect;

    return-void

    nop

    :array_0
    .array-data 4
        0x41880000    # 17.0f
        0x41880000    # 17.0f
        0x41880000    # 17.0f
        0x41880000    # 17.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->W:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->a0:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    const/16 v1, 0x5a

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->e0:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->f0:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->g0:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    const v1, 0x7f0800b8

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->i0:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->k0:Z

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/j$a;->a:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->m0:Z

    new-instance v2, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/filters/j;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->y0:Landroid/graphics/Paint;

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->z0:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->E0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->F0:Z

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->setup(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->j0:Landroid/content/Context;

    return-void
.end method

.method private N(III)I
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p3

    sub-int/2addr v1, v0

    and-int v0, p1, v1

    rem-int/2addr p2, p3

    sub-int/2addr p3, p2

    shr-int p3, v0, p3

    shl-int p2, v0, p2

    and-int/2addr p2, v1

    not-int v0, v1

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method private O()Z
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkmRectIsCorrect mRect ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FreeeCrop"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-gt v3, v0, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v1, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gt v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v3
.end method

.method private P()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->W:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private Q(IF)I
    .locals 2

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/crop/c;->b(F)I

    move-result p2

    const/16 v0, 0x5a

    const/4 v1, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    const/4 p2, 0x3

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->N(III)I

    move-result p1

    return p1

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_0
.end method

.method private R(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v3, -0x78000000

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->d0()V

    return-void
.end method

.method private S()V
    .locals 6

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/j;->m0()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b(Lcom/android/gallery3d/filtershow/imageshow/h$b;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/j;->u0(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v3, v3, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/j;->y0(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v3, v2, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/filters/j;->v0(Landroid/graphics/Path;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/j;->w0(Landroid/graphics/Path;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force mLocalRep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "index"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v3, v3, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v2, v1, v0}, Lcom/android/gallery3d/filtershow/filters/j;->l0(Landroid/graphics/RectF;II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v1, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    if-ne v1, v4, :cond_2

    new-instance v1, Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    float-to-int v0, v0

    invoke-direct {v1, v2, v2, v0}, Lcom/android/gallery3d/filtershow/crop/d;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    float-to-int v0, v0

    invoke-direct {v1, v3, v2, v0}, Lcom/android/gallery3d/filtershow/crop/d;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    :goto_0
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v3, v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    if-ne v3, v4, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/gallery3d/filtershow/crop/d;->r(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    float-to-int v1, v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/gallery3d/filtershow/crop/d;->r(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    :goto_1
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/j$a;->a:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->P()V

    :cond_5
    return-void
.end method

.method private U(II)Landroid/graphics/Matrix;
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-object v0
.end method

.method private V()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->z0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->p0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->q0:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->o0:I

    const-string v1, "FreeCrop"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw success mRect = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->E0:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->F0:Z

    const-string v0, "draw reset "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "draw end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, v0, p2}, Lcom/android/gallery3d/filtershow/filters/j;->k0(Landroid/graphics/RectF;II)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/crop/d;->m()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resize crop before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCrop"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :cond_0
    const-string v0, "resize crop!!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/j;->c0(Landroid/graphics/RectF;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resize crop after = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iput p2, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    if-eqz v3, :cond_2

    new-instance v3, Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    new-instance v3, Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    goto :goto_0

    :cond_2
    iput-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b(Lcom/android/gallery3d/filtershow/imageshow/h$b;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/j;->u0(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/filters/j;->y0(I)V

    if-ne p2, v1, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/j;->v0(Landroid/graphics/Path;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/j;->w0(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/filters/j;->v0(Landroid/graphics/Path;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/filters/j;->w0(Landroid/graphics/Path;)V

    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "internallyUpdateLocalRep  mShapeMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; mLocalRep "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/j;->m0()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "index"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private X()V
    .locals 6

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->z0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->B0:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v2, v2, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->p0:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->v0:F

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->q0:F

    mul-float/2addr v5, v4

    invoke-virtual {p0, v2, v0, v3, v5}, Lcom/android/gallery3d/filtershow/imageshow/j;->T(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/a0;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redrawPath ::: crossPoints = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FreeCrop"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->A0:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->v0:F

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/a0;->k(Landroid/graphics/Rect;Landroid/graphics/Path;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    invoke-static {v0, v1, v3, v2}, Lcom/android/gallery3d/filtershow/imageshow/a0;->j(Landroid/graphics/Rect;Landroid/graphics/Path;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private Y()V
    .locals 6

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->z0:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->B0:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v2, v2, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->p0:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->q0:F

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/j;->T(FFFF)F

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/a0;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redrawPath ::: crossPoints = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FreeCrop"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->A0:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/a0;->k(Landroid/graphics/Rect;Landroid/graphics/Path;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    invoke-static {v0, v3, v5, v2}, Lcom/android/gallery3d/filtershow/imageshow/a0;->j(Landroid/graphics/Rect;Landroid/graphics/Path;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->O()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "checkmRectIsCorrect false!! return!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->o0:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private c0(Landroid/graphics/RectF;)V
    .locals 6

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v0, v4

    div-float/2addr v0, v4

    iput v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v5

    div-float/2addr v1, v5

    iput v1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    div-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v5

    sub-float/2addr v3, v0

    div-float/2addr v3, v5

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private e0()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->y0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static getIsEqual()Z
    .locals 1

    sget-boolean v0, Lcom/android/gallery3d/filtershow/imageshow/j;->H0:Z

    return v0
.end method

.method private setIsEqual(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/gallery3d/filtershow/imageshow/j;->H0:Z

    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->U:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f060040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->V:I

    const v0, 0x7f060042

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->e0:I

    const v0, 0x7f060044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->f0:I

    const v0, 0x7f0800b8

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->i0:I

    const v0, 0x7f06005d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->A0:F

    const v0, 0x7f06005c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->B0:F

    const v0, 0x7f060059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->w0:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->y0:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->y0:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->w0:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->y0:Landroid/graphics/Paint;

    const-string v0, "#ffaa33"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->y0:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/j;->I0:Landroid/graphics/DashPathEffect;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public G(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_3

    cmpg-float v0, p2, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->v(Lcom/android/gallery3d/filtershow/filters/z$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, p2

    move p2, p1

    move p1, v2

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->v(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/crop/d;->t(FF)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ImageCrop"

    const-string p2, "failed to set aspect ratio"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->j0:Landroid/content/Context;

    const p2, 0x7f0e0058

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments to applyAspect"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->v(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->x()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->v(I)V

    const/high16 v0, 0x43520000    # 210.0f

    const v1, 0x43948000    # 297.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->G(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public J()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->v(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->x()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public K()V
    .locals 7

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->b0()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->v(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->x()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-lez v3, :cond_2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/h;->v(Lcom/android/gallery3d/filtershow/filters/z$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v1

    move v1, v0

    move v0, v6

    :cond_0
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->o0:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/filtershow/crop/d;->s(FF)V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->u0:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->v0:F

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->u0:Z

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public L()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->v(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->x()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public M()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->v(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->G(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    const-string v0, "ImageCrop"

    const-string v1, "failed to set aspect ratio original"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public T(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    mul-float/2addr p1, p1

    sub-float/2addr p2, p4

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public Z()V
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/j;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->W:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->a0:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->e0:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->f0:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->g0:Landroid/graphics/RectF;

    const-string v0, "ImageCrop"

    const-string v1, "setup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0800b8

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->i0:I

    return-void
.end method

.method public a0()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/j;->p0()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public b0()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->F0:Z

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->o0:I

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/j$a;->a:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->E0:Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-nez v1, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method public d0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->E0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->F0:Z

    const-string v0, "FreeCrop"

    const-string v1, "ERROR 11111111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getCurrentAspectId()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->i0:I

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

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

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

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

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

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    int-to-float v1, v7

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    int-to-float v1, v6

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    int-to-float v1, v6

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    int-to-float v1, v7

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public getFinalRepresentation()Lcom/android/gallery3d/filtershow/filters/j;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->s()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    :cond_0
    iget-boolean v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->m0:Z

    if-eqz v1, :cond_10

    if-nez v8, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->S()V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->a0:Landroid/graphics/Matrix;

    const/4 v2, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->W:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    if-nez v1, :cond_6

    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    if-eqz v1, :cond_3

    iget-boolean v6, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->k0:Z

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->x()V

    iput-boolean v5, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->k0:Z

    :cond_3
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-static {v1, v6, v11, v12, v13}, Lcom/android/gallery3d/filtershow/imageshow/h;->n(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->W:Landroid/graphics/Matrix;

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget v6, v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    iput v4, v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-static {v1, v4, v11, v12, v13}, Lcom/android/gallery3d/filtershow/imageshow/h;->n(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->a0:Landroid/graphics/Matrix;

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iput v6, v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->a0:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ImageCrop"

    const-string v2, "could not invert display matrix"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    return-void

    :cond_4
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->n()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    iget v6, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->e0:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/crop/d;->u(F)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    iget v6, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->f0:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/crop/d;->w(F)V

    const/4 v1, 0x4

    new-array v4, v1, [I

    fill-array-data v4, :array_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/lit8 v6, v6, 0x6c

    new-array v11, v1, [I

    aput v6, v11, v5

    neg-int v12, v6

    aput v12, v11, v3

    aput v5, v11, v2

    aput v5, v11, v10

    new-array v13, v1, [I

    aput v5, v13, v5

    aput v5, v13, v3

    aput v6, v13, v2

    aput v12, v13, v10

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_5

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    aget v14, v4, v6

    invoke-virtual {v12, v14}, Lcom/android/gallery3d/filtershow/crop/d;->q(I)Z

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    aget v14, v13, v6

    int-to-float v14, v14

    aget v15, v11, v6

    int-to-float v15, v15

    invoke-virtual {v12, v14, v15}, Lcom/android/gallery3d/filtershow/crop/d;->o(FF)Z

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    aget v14, v13, v6

    neg-int v14, v14

    int-to-float v14, v14

    aget v15, v11, v6

    neg-int v15, v15

    int-to-float v15, v15

    invoke-virtual {v12, v14, v15}, Lcom/android/gallery3d/filtershow/crop/d;->o(FF)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/filtershow/crop/d;->q(I)Z

    :cond_6
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->m()I

    move-result v1

    if-ne v1, v10, :cond_7

    iget-boolean v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->E0:Z

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->W:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_8
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/crop/d;->j(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v4, v6, v1}, Lcom/android/gallery3d/filtershow/filters/j;->k0(Landroid/graphics/RectF;II)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v1, v4, v6}, Lcom/android/gallery3d/filtershow/filters/j;->l0(Landroid/graphics/RectF;II)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->a0:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-array v1, v2, [F

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    aput v4, v1, v5

    iget v4, v2, Landroid/graphics/RectF;->top:F

    aput v4, v1, v3

    aget v4, v1, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float v11, v4, v2

    aget v1, v1, v3

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    add-float v12, v1, v2

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->h0:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/j;->m0()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v2, v4, v13}, Lcom/android/gallery3d/filtershow/filters/j;->l0(Landroid/graphics/RectF;II)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v0, v4, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->U(II)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/h;->x(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v4, v4, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/imageshow/h;->v(Lcom/android/gallery3d/filtershow/filters/z$b;)Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    :cond_9
    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/j;->m0()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v13}, Lcom/android/gallery3d/filtershow/filters/j;->m0()Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->O:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    if-ne v4, v13, :cond_a

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_a
    if-ne v4, v13, :cond_b

    goto :goto_1

    :cond_b
    move v3, v5

    :goto_1
    invoke-direct {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/j;->setIsEqual(Z)V

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v2, v1}, Lcom/android/gallery3d/filtershow/filters/j;->x0(II)V

    :cond_c
    new-instance v13, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/j;->G0:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v3

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v2

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    int-to-float v1, v1

    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v5, -0x22000000

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->m()I

    move-result v14

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-static {v7, v1}, Lcom/android/gallery3d/filtershow/crop/b;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-static {v7, v1, v14}, Lcom/android/gallery3d/filtershow/crop/b;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-static {v7, v1}, Lcom/android/gallery3d/filtershow/crop/b;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->U:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->V:I

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->n()Z

    move-result v5

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/crop/d;->l()I

    move-result v1

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->S:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v6, v6, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/filters/z$b;->t()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/filtershow/imageshow/j;->Q(IF)I

    move-result v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/gallery3d/filtershow/crop/b;->c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V

    if-ne v14, v10, :cond_f

    iget-boolean v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->E0:Z

    if-eqz v1, :cond_d

    invoke-direct {v0, v7, v8}, Lcom/android/gallery3d/filtershow/imageshow/j;->R(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_d
    iget-boolean v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->F0:Z

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->b0()V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_e
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v7, v1, v9, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_f
    :goto_2
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/imageshow/j;->Q:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v11, v12, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_10
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x8
        0x1
        0x4
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->k0:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->P()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "; y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FreeCrop"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->W:Landroid/graphics/Matrix;

    const/4 v5, 0x1

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->b0:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    aput v1, v7, v5

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v7, v8

    aget v1, v7, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touchpoint x = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/d;->m()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_1

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v6, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_6

    if-eq p1, v6, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/j$a;->b:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    if-ne p1, v2, :cond_12

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->C0:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/gallery3d/filtershow/imageshow/c;

    invoke-direct {v2, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/c;-><init>(FF)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->u0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->D0:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->v0:F

    mul-float v4, v0, v3

    mul-float/2addr v3, v1

    invoke-direct {v2, v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/c;-><init>(FF)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->u0:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->v0:F

    mul-float v3, v0, v2

    mul-float/2addr v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->e0()V

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->z0:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/j;->T(FFFF)F

    move-result v2

    add-float/2addr p1, v2

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->z0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    goto/16 :goto_4

    :cond_6
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/j$a;->b:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    if-ne p1, v0, :cond_12

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->Y()V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->u0:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->X()V

    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->V()V

    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->x0:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/j$a;->a:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    goto/16 :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/j$a;->a:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    if-ne p1, v2, :cond_12

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/j;->b0()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    if-nez p1, :cond_9

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->u0:Z

    if-eqz p1, :cond_9

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    :cond_9
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->r0:Landroid/graphics/Bitmap;

    :cond_a
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->p0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->q0:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->s0:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->u0:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->t0:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->v0:F

    mul-float/2addr v0, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_b
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_c
    :goto_0
    return v8

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_10

    if-eq p1, v5, :cond_f

    if-eq p1, v6, :cond_e

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/j$a;->b:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    if-ne p1, v2, :cond_12

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    sub-float p1, v0, p1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v3, p1, v2}, Lcom/android/gallery3d/filtershow/crop/d;->o(FF)Z

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/j$a;->b:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    if-ne p1, v2, :cond_12

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p1, v8}, Lcom/android/gallery3d/filtershow/crop/d;->q(I)Z

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/j$a;->a:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/crop/d;->i()Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/d;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/j;->W(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_4

    :cond_10
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/j$a;->a:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    if-ne p1, v2, :cond_12

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/filtershow/crop/d;->p(FF)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->R:Lcom/android/gallery3d/filtershow/crop/d;

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/crop/d;->q(I)Z

    :cond_11
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->c0:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->d0:F

    :goto_2
    sget-object p1, Lcom/android/gallery3d/filtershow/imageshow/j$a;->b:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    :goto_3
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->l0:Lcom/android/gallery3d/filtershow/imageshow/j$a;

    :cond_12
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_13
    :goto_5
    return v5
.end method

.method public setCurrentAspectId(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->i0:I

    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/h;)V
    .locals 0

    return-void
.end method

.method public setFilterCropRepresentation(Lcom/android/gallery3d/filtershow/filters/j;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/j;->m0()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mLocalRep "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "index"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/j;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->g0:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->n0:Lcom/android/gallery3d/filtershow/filters/j;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->t(Lcom/android/gallery3d/filtershow/imageshow/h$b;Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->T:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->g0:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/j;->m0:Z

    return-void
.end method
