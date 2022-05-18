.class public Lcn/nubia/camera/panorama/b;
.super Lcn/nubia/camera/panorama/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/panorama/PanoPreviewView;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/f;-><init>(Lcn/nubia/camera/panorama/PanoPreviewView;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/b;->a:Z

    .line 36
    iput p1, p0, Lcn/nubia/camera/panorama/b;->b:I

    .line 62
    iput p1, p0, Lcn/nubia/camera/panorama/b;->h:I

    .line 409
    iput p1, p0, Lcn/nubia/camera/panorama/b;->i:I

    .line 410
    iput p1, p0, Lcn/nubia/camera/panorama/b;->j:I

    .line 19
    iput-boolean p2, p0, Lcn/nubia/camera/panorama/b;->a:Z

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; dst: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; preview: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/b;->a(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 288
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 289
    iget p1, p2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 290
    iget p1, p2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 291
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->r()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 292
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->r()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 293
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 294
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 297
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->n()I

    move-result v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->n()I

    move-result v0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 298
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :goto_1
    const v3, 0x3e99999a    # 0.3f

    if-eqz p4, :cond_4

    const/16 v4, 0x12

    if-eq p4, v4, :cond_2

    const/16 p3, 0x22

    if-eq p4, p3, :cond_4

    goto :goto_4

    :cond_2
    neg-int p4, p1

    .line 320
    invoke-virtual {p0, v2}, Lcn/nubia/camera/panorama/b;->b(I)V

    .line 321
    iget v4, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p4

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    float-to-int p2, p2

    add-int/2addr p2, v2

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 322
    iget p2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    sub-int/2addr p4, p1

    if-le p2, p4, :cond_3

    .line 323
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p2, p1

    sub-int/2addr p2, v0

    goto :goto_2

    .line 325
    :cond_3
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int p2, p1, v0

    .line 327
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 328
    div-int/lit8 v0, v0, 0x2

    sub-int p3, p2, v0

    sub-int p4, p1, v0

    add-int/2addr p2, v0

    add-int/2addr p1, v0

    invoke-virtual {v1, p3, p4, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 306
    :cond_4
    div-int/lit8 p1, p1, 0x2

    const/4 p3, 0x1

    .line 307
    invoke-virtual {p0, p3}, Lcn/nubia/camera/panorama/b;->b(I)V

    .line 308
    iget p3, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p3, p1

    iget p1, p2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    float-to-int p1, p1

    add-int/2addr p1, v2

    invoke-virtual {v1, p3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 309
    iget p1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 310
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_3

    .line 312
    :cond_5
    iget p1, v1, Landroid/graphics/Rect;->left:I

    :goto_3
    add-int/2addr p1, v0

    .line 315
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    .line 316
    div-int/lit8 v0, v0, 0x2

    sub-int p3, p1, v0

    sub-int p4, p2, v0

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p3, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    return-object v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 579
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/b;->a:Z

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---DocPanorama---:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocPanoDrawImpl"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static a(II)Z
    .locals 0

    .line 351
    invoke-static {p0, p1}, Lcn/nubia/camera/panorama/b;->c(II)I

    move-result p0

    const/16 p1, 0x22

    if-eq p1, p0, :cond_1

    const/16 p1, 0x21

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c(I)I
    .locals 1

    const/16 v0, 0x21

    if-eq v0, p1, :cond_1

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->i()I

    move-result p1

    goto :goto_1

    .line 388
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->h()I

    move-result p1

    :goto_1
    return p1
.end method

.method private static c(II)I
    .locals 5

    const/16 v0, -0x5a

    const/16 v1, 0x11

    const/16 v2, 0x21

    const/16 v3, 0x12

    const/16 v4, 0x22

    if-eq p0, v0, :cond_8

    if-eqz p0, :cond_4

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    return v1

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    if-ne p1, v3, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_7

    move v1, v4

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    return v1

    :cond_8
    if-ne p1, v4, :cond_9

    move v1, v3

    goto :goto_2

    :cond_9
    if-ne p1, v3, :cond_a

    move v1, v4

    goto :goto_2

    :cond_a
    if-ne p1, v2, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    return v1
.end method

.method private d(I)I
    .locals 1

    const/16 v0, 0x21

    if-eq v0, p1, :cond_1

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->h()I

    move-result p1

    goto :goto_1

    .line 501
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->i()I

    move-result p1

    :goto_1
    return p1
.end method

.method private static d(II)Z
    .locals 1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    :cond_0
    if-eqz p0, :cond_4

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-ne p1, v0, :cond_3

    :cond_2
    const/16 p1, 0x5a

    if-eq p0, p1, :cond_4

    const/16 p1, -0x5a

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private e(I)V
    .locals 11

    .line 511
    iget-object v0, p0, Lcn/nubia/camera/panorama/b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 512
    iget-object v1, p0, Lcn/nubia/camera/panorama/b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v1, v0, v9

    .line 514
    new-array v10, v1, [I

    .line 515
    iget-object v1, p0, Lcn/nubia/camera/panorama/b;->e:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 520
    iget v1, p0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-static {p1, v1}, Lcn/nubia/camera/panorama/b;->a(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v5, p1

    const/4 v6, 0x0

    .line 526
    iget-object p1, p0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 527
    iget-object v1, p0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_1
    return-void
.end method

.method private f(I)I
    .locals 1

    const/16 v0, 0x21

    if-eq v0, p1, :cond_1

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    iget p1, p0, Lcn/nubia/camera/panorama/b;->f:I

    goto :goto_1

    .line 547
    :cond_1
    :goto_0
    iget p1, p0, Lcn/nubia/camera/panorama/b;->g:I

    :goto_1
    return p1
.end method

.method private g(I)I
    .locals 1

    const/16 v0, 0x21

    if-eq v0, p1, :cond_1

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    iget p1, p0, Lcn/nubia/camera/panorama/b;->g:I

    goto :goto_1

    .line 557
    :cond_1
    :goto_0
    iget p1, p0, Lcn/nubia/camera/panorama/b;->f:I

    :goto_1
    return p1
.end method

.method private u()I
    .locals 1

    .line 413
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v0

    return v0
.end method

.method private v()I
    .locals 1

    .line 417
    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a([BII[I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x65

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eq v1, p2, :cond_1

    const/16 v3, 0x66

    if-ne v3, p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    aget p1, p4, v2

    neg-int p1, p1

    iput p1, p0, Lcn/nubia/camera/panorama/b;->f:I

    .line 99
    aget p1, p4, v0

    iput p1, p0, Lcn/nubia/camera/panorama/b;->g:I

    goto/16 :goto_1

    :cond_1
    :goto_0
    if-ne v1, p2, :cond_2

    .line 71
    iget v3, p0, Lcn/nubia/camera/panorama/b;->h:I

    add-int/2addr v3, v2

    iput v3, p0, Lcn/nubia/camera/panorama/b;->h:I

    .line 73
    :cond_2
    iget v3, p0, Lcn/nubia/camera/panorama/b;->c:I

    .line 74
    iget v4, p0, Lcn/nubia/camera/panorama/b;->h:I

    if-eq v4, v2, :cond_3

    if-nez v3, :cond_4

    .line 75
    :cond_3
    invoke-virtual {p0, p3}, Lcn/nubia/camera/panorama/b;->a(I)V

    .line 77
    :cond_4
    iget p3, p0, Lcn/nubia/camera/panorama/b;->c:I

    const-string v4, "DocPanoDrawImpl"

    if-eq v3, p3, :cond_5

    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLastDir: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mPanoDir: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x68

    return p1

    .line 83
    :cond_5
    aget p3, p4, v2

    neg-int p3, p3

    iput p3, p0, Lcn/nubia/camera/panorama/b;->f:I

    .line 84
    aget p3, p4, v0

    iput p3, p0, Lcn/nubia/camera/panorama/b;->g:I

    if-ne v1, p2, :cond_6

    .line 89
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/b;->a([B)V

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    .line 92
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->h()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x3e19999a    # 0.15f

    mul-float/2addr p3, p4

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_7

    iget p1, p0, Lcn/nubia/camera/panorama/b;->b:I

    if-gtz p1, :cond_7

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mOffsetX: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/panorama/b;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mOffstY: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/panorama/b;->g:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; getPictureW() * 0.2f: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->h()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x66

    return p1

    :cond_7
    :goto_1
    return p2
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/nubia/camera/panorama/b;->b:I

    .line 30
    iput v0, p0, Lcn/nubia/camera/panorama/b;->h:I

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    .line 32
    iput v0, p0, Lcn/nubia/camera/panorama/b;->c:I

    .line 33
    invoke-super {p0}, Lcn/nubia/camera/panorama/f;->a()V

    return-void
.end method

.method public a(I)V
    .locals 6

    .line 106
    iget v0, p0, Lcn/nubia/camera/panorama/b;->c:I

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/16 v3, 0x11

    const/16 v4, 0x22

    const/16 v5, 0x21

    if-eq v0, v5, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    if-eq p1, v4, :cond_4

    if-eq p1, v1, :cond_4

    :cond_1
    if-eq v0, v4, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    if-eq p1, v5, :cond_4

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    if-eqz p1, :cond_5

    .line 109
    iput p1, p0, Lcn/nubia/camera/panorama/b;->c:I

    :cond_5
    if-eqz v0, :cond_6

    .line 113
    invoke-virtual {p0, v2}, Lcn/nubia/camera/panorama/b;->a(Z)V

    :cond_6
    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/camera/panorama/f;->a(IIII)V

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/b;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 423
    invoke-direct {p0}, Lcn/nubia/camera/panorama/b;->u()I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/camera/panorama/b;->v()I

    move-result v1

    mul-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->p()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->n()I

    move-result v0

    const-string v1, "mPanoramaWidthLim: "

    if-eqz v0, :cond_4

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 447
    :cond_2
    iget v2, p0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-static {v0, v2}, Lcn/nubia/camera/panorama/b;->d(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcn/nubia/camera/panorama/b;->i:I

    .line 449
    invoke-direct {p0}, Lcn/nubia/camera/panorama/b;->u()I

    move-result v2

    div-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/panorama/b;->j:I

    .line 450
    iget v0, p0, Lcn/nubia/camera/panorama/b;->i:I

    iput v0, p0, Lcn/nubia/camera/panorama/b;->k:I

    .line 451
    iput v0, p0, Lcn/nubia/camera/panorama/b;->l:I

    goto/16 :goto_1

    .line 453
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcn/nubia/camera/panorama/b;->i:I

    .line 454
    invoke-direct {p0}, Lcn/nubia/camera/panorama/b;->v()I

    move-result v2

    div-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/panorama/b;->j:I

    .line 455
    iget v0, p0, Lcn/nubia/camera/panorama/b;->i:I

    iput v0, p0, Lcn/nubia/camera/panorama/b;->k:I

    .line 456
    iput v0, p0, Lcn/nubia/camera/panorama/b;->l:I

    goto/16 :goto_1

    .line 432
    :cond_4
    :goto_0
    iget v2, p0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-static {v0, v2}, Lcn/nubia/camera/panorama/b;->d(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->p()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->j()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->q()F

    move-result v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/panorama/b;->i:I

    .line 434
    invoke-direct {p0}, Lcn/nubia/camera/panorama/b;->v()I

    move-result v2

    div-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/panorama/b;->j:I

    .line 436
    iget v0, p0, Lcn/nubia/camera/panorama/b;->i:I

    iput v0, p0, Lcn/nubia/camera/panorama/b;->k:I

    .line 437
    iput v0, p0, Lcn/nubia/camera/panorama/b;->l:I

    goto :goto_1

    .line 439
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->i()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->p()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->k()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->q()F

    move-result v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/panorama/b;->i:I

    .line 440
    invoke-direct {p0}, Lcn/nubia/camera/panorama/b;->u()I

    move-result v2

    div-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/panorama/b;->j:I

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/camera/panorama/b;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; getWidth(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/camera/panorama/b;->u()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DocPanoDrawImpl"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget v0, p0, Lcn/nubia/camera/panorama/b;->i:I

    iput v0, p0, Lcn/nubia/camera/panorama/b;->k:I

    .line 443
    iput v0, p0, Lcn/nubia/camera/panorama/b;->l:I

    .line 460
    :goto_1
    iget v0, p0, Lcn/nubia/camera/panorama/b;->j:I

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 461
    iput v0, p0, Lcn/nubia/camera/panorama/b;->j:I

    .line 463
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/panorama/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mPanoramaWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/panorama/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mPanoramaHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/panorama/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mRgbFactorInner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/panorama/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 466
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/b;->c()V

    :cond_7
    return-void
.end method

.method public a([B)V
    .locals 24

    move-object/from16 v0, p0

    .line 119
    iget v1, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {v0, v1}, Lcn/nubia/camera/panorama/b;->c(I)I

    move-result v1

    iget v2, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int/2addr v1, v2

    .line 120
    iget v2, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {v0, v2}, Lcn/nubia/camera/panorama/b;->d(I)I

    move-result v2

    iget v3, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int v11, v2, v3

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/b;->n()I

    move-result v2

    .line 124
    iget v3, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-static {v2, v3}, Lcn/nubia/camera/panorama/b;->a(II)Z

    move-result v3

    .line 126
    iget v4, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {v0, v4}, Lcn/nubia/camera/panorama/b;->c(I)I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    .line 128
    iget v6, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-static {v2, v6}, Lcn/nubia/camera/panorama/b;->d(II)Z

    move-result v6

    const/16 v7, 0x22

    const/16 v8, 0xb4

    const/16 v9, 0x5a

    const/16 v10, -0x5a

    const/16 v12, 0x11

    const/4 v13, 0x0

    if-eq v2, v10, :cond_a

    if-eqz v2, :cond_6

    const/16 v7, 0x12

    if-eq v2, v9, :cond_2

    if-eq v2, v8, :cond_0

    move v4, v13

    move v8, v4

    goto :goto_5

    :cond_0
    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v8, v10

    .line 149
    :goto_0
    iget v9, v0, Lcn/nubia/camera/panorama/b;->c:I

    if-eq v9, v12, :cond_d

    if-ne v9, v7, :cond_c

    goto :goto_5

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v10, v13

    .line 139
    :goto_1
    iget v8, v0, Lcn/nubia/camera/panorama/b;->c:I

    if-eq v8, v12, :cond_5

    if-ne v8, v7, :cond_4

    goto :goto_2

    :cond_4
    move v8, v10

    goto :goto_4

    :cond_5
    :goto_2
    move v8, v10

    goto :goto_5

    :cond_6
    if-eqz v6, :cond_7

    move v9, v13

    .line 133
    :cond_7
    iget v8, v0, Lcn/nubia/camera/panorama/b;->c:I

    if-eq v8, v12, :cond_9

    if-ne v8, v7, :cond_8

    goto :goto_3

    :cond_8
    move v8, v9

    goto :goto_4

    :cond_9
    :goto_3
    move v8, v9

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_b

    move v8, v9

    .line 144
    :cond_b
    iget v9, v0, Lcn/nubia/camera/panorama/b;->c:I

    if-eq v9, v12, :cond_d

    if-ne v9, v7, :cond_c

    goto :goto_5

    :cond_c
    :goto_4
    move v4, v13

    .line 153
    :cond_d
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addKeyFrame: mPanoDir: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "; uiAngle: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "; rotation: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "; rgb_w: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "; rgb_h: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "; verticalPan: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcn/nubia/camera/panorama/b;->a(Ljava/lang/String;)V

    .line 155
    iget v6, v0, Lcn/nubia/camera/panorama/b;->b:I

    if-lez v6, :cond_e

    .line 156
    div-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_e
    move v4, v13

    :goto_6
    mul-int v6, v1, v11

    .line 160
    new-array v6, v6, [I

    const-wide/16 v14, 0x0

    .line 163
    iget-boolean v7, v0, Lcn/nubia/camera/panorama/b;->a:Z

    if-eqz v7, :cond_f

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    :cond_f
    move-wide/from16 v22, v14

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/b;->h()I

    move-result v15

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/b;->i()I

    move-result v16

    iget v7, v0, Lcn/nubia/camera/panorama/b;->j:I

    move-object/from16 v14, p1

    move/from16 v17, v4

    move-object/from16 v18, v6

    move/from16 v19, v1

    move/from16 v20, v7

    move/from16 v21, v8

    .line 166
    invoke-static/range {v14 .. v21}, Lcn/nubia/panorama/DocPanoramaEngine;->yuv2rgb([BIII[IIII)I

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "yuv2rgb time: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v22

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "; yuvOffset: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcn/nubia/camera/panorama/b;->a(Ljava/lang/String;)V

    .line 178
    iget v4, v0, Lcn/nubia/camera/panorama/b;->b:I

    const/4 v7, 0x1

    add-int/2addr v4, v7

    iput v4, v0, Lcn/nubia/camera/panorama/b;->b:I

    .line 181
    iget-object v4, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    if-nez v4, :cond_10

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/b;->c()V

    .line 184
    :cond_10
    iget v4, v0, Lcn/nubia/camera/panorama/b;->b:I

    if-ne v4, v7, :cond_12

    .line 186
    iget-object v2, v0, Lcn/nubia/camera/panorama/b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 187
    iget-object v4, v0, Lcn/nubia/camera/panorama/b;->e:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v6

    move v6, v2

    move v7, v1

    move v10, v1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_11
    return-void

    :cond_12
    if-ne v4, v5, :cond_13

    .line 198
    invoke-direct {v0, v2}, Lcn/nubia/camera/panorama/b;->e(I)V

    .line 201
    :cond_13
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    if-eqz v3, :cond_14

    const/4 v7, -0x1

    .line 204
    :cond_14
    iget v4, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {v0, v4}, Lcn/nubia/camera/panorama/b;->f(I)I

    move-result v4

    iget v5, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int/2addr v4, v5

    if-lez v4, :cond_15

    if-nez v3, :cond_16

    :cond_15
    if-gez v4, :cond_17

    if-nez v3, :cond_17

    :cond_16
    neg-int v4, v4

    .line 207
    :cond_17
    iget v5, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {v0, v5}, Lcn/nubia/camera/panorama/b;->c(I)I

    move-result v5

    iget v8, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int/2addr v5, v8

    sub-int/2addr v5, v1

    mul-int/2addr v7, v5

    add-int/2addr v7, v4

    if-eqz v3, :cond_18

    .line 211
    iget-object v3, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/2addr v7, v3

    .line 212
    :cond_18
    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 220
    iget v3, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {v0, v3}, Lcn/nubia/camera/panorama/b;->g(I)I

    move-result v3

    .line 221
    iget v4, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int v4, v3, v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    if-lez v3, :cond_19

    .line 224
    iget v4, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int v4, v3, v4

    move v5, v4

    move v4, v13

    goto :goto_7

    :cond_19
    neg-int v4, v3

    .line 226
    iget v5, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int/2addr v4, v5

    move v5, v13

    .line 232
    :goto_7
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_1a

    .line 233
    iget-object v8, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_8

    :cond_1a
    move v8, v1

    :goto_8
    if-gez v8, :cond_1b

    move v8, v13

    :cond_1b
    if-gez v7, :cond_1c

    goto :goto_9

    :cond_1c
    move v13, v7

    .line 241
    :goto_9
    iget-object v7, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 242
    iget-object v14, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    mul-int v16, v1, v4

    iget v7, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int v7, v3, v7

    .line 249
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v21, v11, v7

    move-object v15, v6

    move/from16 v17, v1

    move/from16 v18, v13

    move/from16 v19, v5

    move/from16 v20, v8

    .line 242
    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 250
    :cond_1d
    iget-object v6, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/b;->p()Landroid/graphics/Rect;

    move-result-object v7

    iget v9, v0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {v0, v6, v2, v7, v9}, Lcn/nubia/camera/panorama/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v19

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/b;->o()Lcn/nubia/camera/panorama/PanoPreviewView;

    move-result-object v14

    iget-object v15, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/b;->n()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/b;->s()I

    move-result v18

    invoke-virtual/range {v14 .. v19}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)V

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dx:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " dy:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " rgb_dy:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";cropLen: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rgb_h - Math.abs(offsetNPA / mRgbFactor): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/nubia/camera/panorama/b;->j:I

    div-int/2addr v3, v2

    .line 253
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v11, v2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-direct {v0, v1}, Lcn/nubia/camera/panorama/b;->a(Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBmpPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/panorama/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 65
    iget v0, p0, Lcn/nubia/camera/panorama/b;->h:I

    return v0
.end method

.method public b(II)V
    .locals 0

    .line 566
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/panorama/f;->b(II)V

    const/4 p1, 0x0

    .line 567
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/b;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 471
    iget v0, p0, Lcn/nubia/camera/panorama/b;->j:I

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget v1, p0, Lcn/nubia/camera/panorama/b;->k:I

    div-int/2addr v1, v0

    .line 474
    iget v0, p0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/b;->d(I)I

    move-result v0

    iget v2, p0, Lcn/nubia/camera/panorama/b;->j:I

    div-int/2addr v0, v2

    mul-int v2, v1, v0

    .line 476
    new-array v2, v2, [I

    .line 478
    invoke-static {v2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 480
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    .line 482
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcn/nubia/camera/panorama/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 486
    :cond_1
    iget v1, p0, Lcn/nubia/camera/panorama/b;->c:I

    invoke-direct {p0, v1}, Lcn/nubia/camera/panorama/b;->c(I)I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/panorama/b;->j:I

    div-int/2addr v1, v2

    .line 487
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/panorama/b;->e:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 489
    iput v0, p0, Lcn/nubia/camera/panorama/b;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 571
    iget v0, p0, Lcn/nubia/camera/panorama/b;->k:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 575
    iget v0, p0, Lcn/nubia/camera/panorama/b;->l:I

    return v0
.end method
