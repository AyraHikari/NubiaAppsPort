.class public Lcom/android/gallery3d/filtershow/mosaic/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static g:I = 0x28


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->e:Ljava/util/HashMap;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->f:[I

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->d:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->e:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->D()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/mosaic/d;->h(I)V

    return-void

    :array_0
    .array-data 4
        0x7f07019c
        0x7f07019b
        0x7f07019d
    .end array-data
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/mosaic/d;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/mosaic/d;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/mosaic/d;->g(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 12

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    if-ge v0, v2, :cond_1

    move v0, v2

    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v4, v2, :cond_3

    iget v9, p2, Landroid/graphics/Rect;->top:I

    :goto_1
    add-int/2addr v9, v0

    if-ge v9, v3, :cond_2

    invoke-virtual {p1, v4, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v6, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v7, v11

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v4, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ge v5, v0, :cond_4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1

    :cond_4
    div-int/2addr v6, v5

    div-int/2addr v7, v5

    div-int/2addr v8, v5

    const/high16 p1, -0x1000000

    shl-int/lit8 p2, v6, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v7, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, v8

    return p1
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/mosaic/MosaicBitmapUtil;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 13

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    if-lez v0, :cond_5

    iget v1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    int-to-float v2, v2

    sget v3, Lcom/android/gallery3d/filtershow/mosaic/d;->g:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    int-to-float v3, v3

    sget v4, Lcom/android/gallery3d/filtershow/mosaic/d;->g:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_4

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_3

    sget v8, Lcom/android/gallery3d/filtershow/mosaic/d;->g:I

    mul-int v9, v8, v6

    mul-int v10, v8, v7

    add-int v11, v9, v8

    iget v12, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    if-le v11, v12, :cond_1

    move v11, v12

    :cond_1
    add-int/2addr v8, v10

    iget v12, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    if-le v8, v12, :cond_2

    move v8, v12

    :cond_2
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v9, v10, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v12}, Lcom/android/gallery3d/filtershow/mosaic/d;->c(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v12, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private g(I)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->f:[I

    aget p1, v1, p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/mosaic/d;->b(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private h(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/android/gallery3d/filtershow/mosaic/d;->g:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    sput v0, Lcom/android/gallery3d/filtershow/mosaic/d;->g:I

    :cond_0
    return-void
.end method


# virtual methods
.method public b(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    add-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_0

    mul-int v7, v5, v0

    int-to-float v7, v7

    mul-int v8, v6, v1

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {p2, p3, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p1
.end method

.method public e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->b:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->c:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->e:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/d;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/mosaic/d;->a(I)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method
