.class public Lcn/nubia/video/mediaeditorview/n;
.super Lcn/nubia/video/mediaeditorview/c;
.source "SourceFile"


# instance fields
.field private B:Landroid/graphics/Rect;

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/graphics/Canvas;

.field private E:Landroid/graphics/Bitmap;


# virtual methods
.method public A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->d:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    .line 4
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/n;->D:Landroid/graphics/Canvas;

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/n;->z(Ljava/util/ArrayList;)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on draw mVideoSrcRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; Scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->A:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTrackShow"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/n;->B:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->n:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->o:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/c;->r:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/c;->c:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/video/mediaeditorview/c;->c(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public y(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/video/mediaeditorview/c;->y(F)V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/n;->A()V

    return-void
.end method

.method public z(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/c;->d:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    .line 6
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->p:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/n;->D:Landroid/graphics/Canvas;

    :cond_2
    const/high16 v0, 0x42480000    # 50.0f

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_b

    .line 7
    iget v6, p0, Lcn/nubia/video/mediaeditorview/c;->s:I

    if-nez v6, :cond_b

    .line 8
    iget v6, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 9
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr p1, v1

    if-gt v0, p1, :cond_4

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr p1, v0

    move v1, v4

    move v5, v1

    .line 12
    :cond_3
    :goto_0
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 13
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v4, -0x1

    .line 14
    rem-int/2addr v7, p1

    if-nez v7, :cond_3

    if-ge v1, v0, :cond_3

    .line 15
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/n;->D:Landroid/graphics/Canvas;

    int-to-float v8, v5

    invoke-virtual {v7, v6, v8, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 16
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr p1, v1

    if-le v0, p1, :cond_d

    .line 18
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    .line 19
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, p1

    move v1, v4

    move v5, v1

    .line 20
    :goto_1
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 21
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v4, -0x1

    .line 22
    rem-int/2addr v7, v0

    if-nez v7, :cond_5

    if-ge v1, p1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_5
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/n;->D:Landroid/graphics/Canvas;

    int-to-float v8, v5

    invoke-virtual {v7, v6, v8, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 24
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    .line 25
    :cond_6
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int v6, v0, v6

    .line 26
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v0, v7

    move v7, v4

    move v8, v7

    .line 27
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_d

    .line 28
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    move v10, v5

    :goto_3
    if-gt v10, v6, :cond_7

    .line 29
    iget-object v11, p0, Lcn/nubia/video/mediaeditorview/n;->D:Landroid/graphics/Canvas;

    int-to-float v12, v7

    invoke-virtual {v11, v9, v12, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_a

    .line 31
    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int/2addr v10, v1

    if-gt v0, v10, :cond_8

    .line 32
    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int/2addr v10, v0

    add-int/lit8 v11, v4, 0x1

    sub-int/2addr v11, v5

    .line 33
    rem-int/2addr v11, v10

    if-nez v11, :cond_a

    if-ge v8, v0, :cond_a

    .line 34
    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/n;->D:Landroid/graphics/Canvas;

    int-to-float v11, v7

    invoke-virtual {v10, v9, v11, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_4

    .line 36
    :cond_8
    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int/2addr v10, v1

    if-le v0, v10, :cond_a

    .line 37
    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v0

    .line 38
    iget-object v11, p0, Lcn/nubia/video/mediaeditorview/n;->C:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    div-int/2addr v11, v10

    add-int/lit8 v12, v4, 0x1

    sub-int/2addr v12, v5

    .line 39
    rem-int/2addr v12, v11

    if-nez v12, :cond_9

    if-ge v8, v10, :cond_9

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 40
    :cond_9
    iget-object v10, p0, Lcn/nubia/video/mediaeditorview/n;->D:Landroid/graphics/Canvas;

    int-to-float v11, v7

    invoke-virtual {v10, v9, v11, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    if-nez p1, :cond_d

    .line 42
    iget p1, p0, Lcn/nubia/video/mediaeditorview/c;->s:I

    if-ne p1, v1, :cond_d

    .line 43
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/n;->E:Landroid/graphics/Bitmap;

    if-nez p1, :cond_c

    .line 44
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 45
    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 46
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/c;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/16 v1, 0x32

    const/16 v6, 0x78

    .line 47
    invoke-static {p1, v1, v6}, Lcn/nubia/video/mediaeditorview/l;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v7

    .line 48
    iput-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    iput v7, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/c;->e:Ljava/lang/String;

    invoke-static {v7, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 51
    invoke-static {p1, v1, v6, v5}, Lcn/nubia/video/mediaeditorview/l;->c(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/n;->E:Landroid/graphics/Bitmap;

    .line 52
    :cond_c
    iget p1, p0, Lcn/nubia/video/mediaeditorview/c;->l:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    move v0, v4

    :goto_6
    if-ge v4, p1, :cond_d

    .line 53
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/n;->D:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/n;->E:Landroid/graphics/Bitmap;

    int-to-float v6, v0

    invoke-virtual {v1, v5, v6, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 54
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/n;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method
