.class public Lcom/android/gallery3d/filtershow/imageshow/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/m$a;
    }
.end annotation


# static fields
.field public static t:I = -0x1

.field public static u:I = 0x0

.field public static v:I = 0x1

.field public static w:I = 0x2

.field public static x:I = 0x3

.field public static y:I = 0x4

.field public static z:I = 0x19


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:[F

.field private e:[F

.field private f:I

.field private g:Landroid/graphics/Matrix;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Matrix;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->c:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->d:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->e:[F

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/m;->t:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->g:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->h:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->j:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->i:Landroid/graphics/Paint;

    const v2, 0x7fffaa33

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->i:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->i:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->i:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->r:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700ea

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->s:Landroid/graphics/Bitmap;

    return-void

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41800000    # 16.0f
    .end array-data
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    return v0
.end method

.method public b(IILandroid/graphics/Matrix;)V
    .locals 2

    const-string v0, "ImageDrawShapeView"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->l:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->m:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->n:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->o:I

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->h:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    sget p1, Lcom/android/gallery3d/filtershow/imageshow/m;->u:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    return-void
.end method

.method public c(II)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->b:Landroid/graphics/Rect;

    aget v1, v0, v1

    float-to-int v1, v1

    aget p2, v0, p2

    float-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public d(II)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->a:Landroid/graphics/Rect;

    aget v1, v0, v1

    float-to-int v1, v1

    aget p2, v0, p2

    float-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public e(II)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->c:Landroid/graphics/Rect;

    aget v1, v0, v1

    float-to-int v1, v1

    aget p2, v0, p2

    float-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public f(II)Z
    .locals 1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->p:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->q:I

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/m;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/android/gallery3d/filtershow/imageshow/m;->w:I

    :goto_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/m;->e(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lcom/android/gallery3d/filtershow/imageshow/m;->x:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/m;->d(II)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/gallery3d/filtershow/imageshow/m;->v:I

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchActionDown status = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "result = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImageDrawShapeView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public g(II)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchActionMove status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDrawShapeView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/m;->v:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->p:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->q:I

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/gallery3d/filtershow/imageshow/m;->x:I

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->a:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v0

    div-float/2addr v3, v2

    float-to-int v0, v3

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->p:I

    sub-int v3, v2, v1

    int-to-float v3, v3

    float-to-double v3, v3

    sub-int v5, v2, v1

    sub-int/2addr v2, v1

    mul-int/2addr v5, v2

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->q:I

    sub-int v6, v0, v2

    sub-int v2, v0, v2

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->q:I

    sub-int/2addr v4, v0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v4, :cond_1

    sub-double v2, v5, v2

    :cond_1
    sub-int v4, p1, v1

    int-to-float v7, v4

    float-to-double v7, v7

    mul-int/2addr v4, v4

    sub-int v9, v0, p2

    mul-int/2addr v9, v9

    add-int/2addr v4, v9

    int-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    sub-int v4, p2, v0

    if-gez v4, :cond_2

    sub-double v7, v5, v7

    :cond_2
    sub-double/2addr v7, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v7, v3

    double-to-float v3, v7

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->p:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->q:I

    return-void
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 6

    const-string v0, "ImageDrawShapeView"

    const-string v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->h:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/m;->u:I

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->d:[F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p2, v2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, p2, v3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->e:[F

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    aput v4, v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    aput v0, v1, v3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->g:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->e:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->r:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->d:[F

    aget v1, v0, v2

    const/high16 v4, 0x42340000    # 45.0f

    sub-float/2addr v1, v4

    aget v0, v0, v3

    sub-float/2addr v0, v4

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v1, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->s:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->e:[F

    aget v1, v0, v2

    sub-float/2addr v1, v4

    aget v0, v0, v3

    sub-float/2addr v0, v4

    invoke-virtual {p1, p2, v1, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public i(Lcom/android/gallery3d/filtershow/imageshow/m$a;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/m;->t:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->f:I

    return-void
.end method

.method public k(II)V
    .locals 5

    const-string v0, "ImageDrawShapeView"

    const-string v1, "updateBoxPath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->n:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->o:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->h:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->l:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->n:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->o:I

    int-to-float v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/f;->a(Landroid/graphics/Path;FFFF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->a:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->l:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->m:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->l:I

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->m:I

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->b:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->a:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v0, -0x36

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, p2, -0x36

    add-int/lit8 v0, v0, 0x36

    add-int/lit8 p2, p2, 0x36

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->c:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/m;->a:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0x36

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, p2, -0x36

    add-int/lit8 v0, v0, 0x36

    add-int/lit8 p2, p2, 0x36

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
