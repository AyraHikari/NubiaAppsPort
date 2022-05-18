.class public Lcom/android/gallery3d/filtershow/materials/m;
.super Lcom/android/gallery3d/filtershow/materials/o;
.source ""


# instance fields
.field private i:Ljava/lang/String;

.field private j:Landroid/graphics/Bitmap;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/materials/o;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/m;->j:Landroid/graphics/Bitmap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/m;->k:Ljava/util/HashMap;

    return-void
.end method

.method private l(II)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    const/high16 v0, 0x44f00000    # 1920.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    return p1
.end method

.method private m(Landroid/graphics/Canvas;F)V
    .locals 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const p2, 0x3e99999a    # 0.3f

    :cond_0
    const-string v0, "bottom"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "leftbottom"

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "rightbottom"

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v2

    :goto_0
    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    add-float v2, v1, v3

    cmpl-float v5, v2, v4

    if-lez v5, :cond_2

    move v2, v4

    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v5, v1, p2, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private n(Landroid/graphics/Canvas;F)V
    .locals 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const p2, 0x3e99999a    # 0.3f

    :cond_0
    const-string v0, "left"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "lefttop"

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "leftbottom"

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    :goto_0
    cmpg-float p2, v1, v4

    if-gez p2, :cond_3

    add-float p2, v1, v3

    cmpl-float v5, p2, v4

    if-lez v5, :cond_2

    move p2, v4

    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v1, p2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private o(Landroid/graphics/Canvas;F)V
    .locals 5

    const-string v0, "leftbottom"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    new-instance p2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p2, v3, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private p(Landroid/graphics/Canvas;F)V
    .locals 4

    const-string v0, "lefttop"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    new-instance p2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private q(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/m;->y()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private r(Landroid/graphics/Canvas;F)V
    .locals 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const p2, 0x3e99999a    # 0.3f

    :cond_0
    const-string v0, "right"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "righttop"

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "rightbottom"

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v2

    :goto_0
    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    add-float v2, v1, v3

    cmpl-float v5, v2, v4

    if-lez v5, :cond_2

    move v2, v4

    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v5, p2, v1, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private s(Landroid/graphics/Canvas;F)V
    .locals 5

    const-string v0, "rightbottom"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p2, v3, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private t(Landroid/graphics/Canvas;F)V
    .locals 5

    const-string v0, "righttop"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p2, v3, v1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private u(Landroid/graphics/Canvas;F)V
    .locals 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const p2, 0x3e99999a    # 0.3f

    :cond_0
    const-string v0, "top"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "lefttop"

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "righttop"

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/materials/m;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    :goto_0
    cmpg-float p2, v1, v4

    if-gez p2, :cond_3

    add-float p2, v1, v3

    cmpl-float v5, p2, v4

    if-lez v5, :cond_2

    move p2, v4

    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v1, p2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/m;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/m;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private w(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/m;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/o;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/m;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/m;->v()V

    return-void
.end method

.method public k(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/gallery3d/filtershow/materials/m;->l(II)F

    move-result v1

    mul-float/2addr p2, v1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/m;->x()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "ninepatch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->q(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->p(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->o(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->t(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->s(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->u(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->m(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->n(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/filtershow/materials/m;->r(Landroid/graphics/Canvas;F)V

    :goto_0
    return-object p1
.end method

.method public x()Ljava/lang/String;
    .locals 2

    const-string v0, "implementation"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/materials/o;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/m;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method public y()Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "path"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/materials/o;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/m;->j:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/m;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method
