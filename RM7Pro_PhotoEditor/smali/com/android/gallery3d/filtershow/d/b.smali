.class public Lcom/android/gallery3d/filtershow/d/b;
.super Lcom/android/gallery3d/filtershow/d/a;
.source ""


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/HashMap;
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
.method public constructor <init>(ILjava/lang/String;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "right.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "top.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bottom.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lefttop.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "leftbottom.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "righttop.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rightbottom.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "thumb.png"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/gallery3d/filtershow/d/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/gallery3d/filtershow/d/a;->g:I

    invoke-direct {p0, v0, p1, p10}, Lcom/android/gallery3d/filtershow/d/a;-><init>(IILjava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/d/b;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/d/b;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/d/b;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/gallery3d/filtershow/d/b;->k:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/gallery3d/filtershow/d/b;->l:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/gallery3d/filtershow/d/b;->m:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/gallery3d/filtershow/d/b;->n:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/gallery3d/filtershow/d/b;->o:Ljava/lang/String;

    return-void
.end method

.method private f(II)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    const/high16 v0, 0x44f00000    # 1920.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    return p1
.end method

.method private g(Landroid/graphics/Canvas;F)V
    .locals 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const p2, 0x3e99999a    # 0.3f

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/d/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/d/b;->o:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
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

    if-gez v2, :cond_5

    add-float v2, v1, v3

    cmpl-float v5, v2, v4

    if-lez v5, :cond_4

    move v2, v4

    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v5, v1, p2, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v1, v2

    goto :goto_0

    :cond_5
    return-void
.end method

.method private h(Landroid/graphics/Canvas;F)V
    .locals 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const p2, 0x3e99999a    # 0.3f

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/d/b;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/d/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
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

    if-gez p2, :cond_5

    add-float p2, v1, v3

    cmpl-float v5, p2, v4

    if-lez v5, :cond_4

    move p2, v4

    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v1, p2

    goto :goto_0

    :cond_5
    return-void
.end method

.method private i(Landroid/graphics/Canvas;F)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawLeftBottom bounds is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "llw"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private j(Landroid/graphics/Canvas;F)V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawLeftTop bounds is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "llw"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;F)V
    .locals 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const p2, 0x3e99999a    # 0.3f

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/d/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/d/b;->o:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
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

    if-gez v2, :cond_5

    add-float v2, v1, v3

    cmpl-float v5, v2, v4

    if-lez v5, :cond_4

    move v2, v4

    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v5, p2, v1, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v1, v2

    goto :goto_0

    :cond_5
    return-void
.end method

.method private l(Landroid/graphics/Canvas;F)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawRightBottom bounds is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "llw"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private m(Landroid/graphics/Canvas;F)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawRightTop bounds is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "llw"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private n(Landroid/graphics/Canvas;F)V
    .locals 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const p2, 0x3e99999a    # 0.3f

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/d/b;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/d/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/d/b;->o(Ljava/lang/Object;)Landroid/graphics/Bitmap;

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


# virtual methods
.method public a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/gallery3d/filtershow/d/b;->f(II)F

    move-result p3

    mul-float/2addr p2, p3

    :try_start_0
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;->j(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;->i(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;->m(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;->l(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;->n(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;->g(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;->h(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;->k(Landroid/graphics/Canvas;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PngAndNinePatchBoderder  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PhotoEditor"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/d/a;->d()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/d/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/d/b;

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/d/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected o(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->e:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    if-eqz p1, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/d/a;->e:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/d/b;->p:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, v1

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    throw p1

    :cond_4
    move-object v1, v0

    :cond_5
    :goto_4
    return-object v1
.end method
