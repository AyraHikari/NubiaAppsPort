.class Lcn/nubia/camera/s/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/s/a$a$b;,
        Lcn/nubia/camera/s/a$a$a;
    }
.end annotation


# instance fields
.field a:Lcn/nubia/camera/s/a$a$a;

.field b:Lcn/nubia/camera/s/a$a$a;

.field c:Lcn/nubia/camera/s/a$a$a;

.field final synthetic d:Lcn/nubia/camera/s/a;

.field private e:J

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/s/a$a$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcn/nubia/camera/s/a;)V
    .locals 2

    .line 144
    iput-object p1, p0, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lcn/nubia/camera/s/a$a;->e:J

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/s/a$a;->f:Ljava/util/ArrayList;

    .line 252
    invoke-static {p1}, Lcn/nubia/camera/s/a;->f(Lcn/nubia/camera/s/a;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    .line 453
    new-instance p1, Lcn/nubia/camera/s/a$a$a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/s/a$a$a;-><init>(Lcn/nubia/camera/s/a$a;)V

    iput-object p1, p0, Lcn/nubia/camera/s/a$a;->a:Lcn/nubia/camera/s/a$a$a;

    .line 454
    new-instance p1, Lcn/nubia/camera/s/a$a$a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/s/a$a$a;-><init>(Lcn/nubia/camera/s/a$a;)V

    iput-object p1, p0, Lcn/nubia/camera/s/a$a;->b:Lcn/nubia/camera/s/a$a$a;

    .line 455
    new-instance p1, Lcn/nubia/camera/s/a$a$a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/s/a$a$a;-><init>(Lcn/nubia/camera/s/a$a;)V

    iput-object p1, p0, Lcn/nubia/camera/s/a$a;->c:Lcn/nubia/camera/s/a$a$a;

    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 1

    .line 382
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 384
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 385
    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x168

    .line 386
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x168

    .line 388
    rem-int/lit16 p1, v0, 0x168

    :goto_0
    return p1
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 418
    iget-object v0, p0, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->b(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->c()I

    move-result v0

    .line 419
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    add-int/lit16 v0, v0, -0x168

    int-to-float v0, v0

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Matrix;
    .locals 8

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->g(Lcn/nubia/camera/s/a;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    .line 395
    iget-object v1, p0, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v1}, Lcn/nubia/camera/s/a;->g(Lcn/nubia/camera/s/a;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/s/a$a;->a(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 396
    iget-object v2, p0, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v2}, Lcn/nubia/camera/s/a;->g(Lcn/nubia/camera/s/a;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 397
    iget-object v3, p0, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 398
    iget-object v4, p0, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 401
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v3, v3

    int-to-float v4, v4

    div-float v6, v3, v4

    sub-float/2addr v5, v6

    const v6, 0x3a83126f    # 0.001f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v4, p1

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v3, p1

    .line 407
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/high16 v7, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    move v7, v6

    .line 408
    :goto_1
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    invoke-virtual {v5, v0, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 410
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v0, v1

    .line 411
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 412
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v4, p1

    div-float/2addr v3, p1

    .line 413
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v5
.end method

.method private a()V
    .locals 17

    move-object/from16 v1, p0

    .line 255
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/s/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    new-instance v2, Lcn/nubia/algorithm/camera/FaceDetector;

    invoke-direct {v2}, Lcn/nubia/algorithm/camera/FaceDetector;-><init>()V

    .line 262
    invoke-virtual {v2}, Lcn/nubia/algorithm/camera/FaceDetector;->a()V

    .line 264
    new-instance v3, Lcn/nubia/camera/s/b;

    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->b(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v3, v0}, Lcn/nubia/camera/s/b;-><init>(Landroid/app/Application;)V

    .line 266
    :cond_1
    :goto_0
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/s/a;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 269
    iget-object v6, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    monitor-enter v6

    .line 270
    :try_start_0
    iget-wide v7, v1, Lcn/nubia/camera/s/a$a;->e:J

    sub-long v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v9, 0x32

    cmp-long v0, v7, v9

    if-gez v0, :cond_2

    .line 272
    :try_start_1
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    iget-wide v7, v1, Lcn/nubia/camera/s/a$a;->e:J

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long/2addr v9, v4

    invoke-virtual {v0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 274
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 276
    :goto_1
    monitor-exit v6

    goto :goto_0

    .line 278
    :cond_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    iput-wide v4, v1, Lcn/nubia/camera/s/a$a;->e:J

    .line 281
    iget-object v4, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    monitor-enter v4

    .line 282
    :try_start_3
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 284
    :try_start_4
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 286
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 288
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 290
    :cond_3
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/s/a$a$b;

    .line 291
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 293
    iget-object v4, v0, Lcn/nubia/camera/s/a$a$b;->a:[B

    .line 294
    iget-object v6, v0, Lcn/nubia/camera/s/a$a$b;->b:Landroid/graphics/Matrix;

    .line 295
    iget-object v0, v0, Lcn/nubia/camera/s/a$a$b;->c:[Lcn/nubia/camera/k/j;

    .line 296
    iget-object v7, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v7}, Lcn/nubia/camera/s/a;->c(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/v/b;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/v/b;->g()I

    move-result v14

    .line 297
    iget-object v7, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v7}, Lcn/nubia/camera/s/a;->c(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/v/b;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/v/b;->h()I

    move-result v15

    mul-int v7, v14, v15

    mul-int/lit8 v8, v7, 0x4

    .line 298
    array-length v9, v4

    if-ne v8, v9, :cond_10

    iget-object v9, v1, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-ne v9, v15, :cond_10

    iget-object v9, v1, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-eq v9, v14, :cond_4

    goto/16 :goto_8

    .line 305
    :cond_4
    new-array v9, v7, [I

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_5

    mul-int/lit8 v10, v8, 0x4

    add-int/lit8 v11, v10, 0x3

    .line 308
    aget-byte v11, v4, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v12, v4, v10

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v10, v10, 0x2

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    invoke-static {v11, v12, v13, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 310
    :cond_5
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v4

    move v11, v14

    .line 311
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 313
    array-length v7, v0

    new-array v7, v7, [Landroid/graphics/RectF;

    .line 314
    array-length v8, v0

    new-array v8, v8, [Landroid/graphics/Rect;

    .line 315
    array-length v9, v0

    new-array v9, v9, [Landroid/graphics/Rect;

    const/4 v10, 0x0

    move v11, v5

    .line 317
    :goto_4
    array-length v12, v0

    if-ge v11, v12, :cond_e

    .line 318
    aget-object v12, v0, v11

    invoke-virtual {v12}, Lcn/nubia/camera/k/j;->a()Landroid/graphics/Rect;

    move-result-object v12

    aput-object v12, v8, v11

    .line 319
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    aput-object v12, v7, v11

    .line 320
    aget-object v12, v7, v11

    aget-object v13, v8, v11

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 321
    aget-object v12, v7, v11

    invoke-virtual {v6, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 322
    aget-object v12, v7, v11

    iget v12, v12, Landroid/graphics/RectF;->left:F

    float-to-int v12, v12

    aget-object v13, v7, v11

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0xa

    sub-int/2addr v12, v13

    .line 323
    aget-object v13, v7, v11

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    aget-object v14, v7, v11

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    .line 324
    aget-object v14, v7, v11

    iget v14, v14, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    aget-object v15, v7, v11

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v15, v15

    div-int/lit8 v15, v15, 0xa

    sub-int/2addr v14, v15

    .line 325
    aget-object v15, v7, v11

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    aget-object v16, v7, v11

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v15, v5

    .line 326
    new-instance v5, Landroid/graphics/Rect;

    if-gez v12, :cond_6

    const/4 v12, 0x0

    :cond_6
    move-object/from16 v16, v0

    if-gez v14, :cond_7

    const/4 v14, 0x0

    :cond_7
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    .line 328
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v13, v0, :cond_8

    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/lit8 v13, v0, -0x1

    :cond_8
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    .line 329
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v15, v0, :cond_9

    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    add-int/lit8 v15, v0, -0x1

    :cond_9
    invoke-direct {v5, v12, v14, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v9, v11

    const-string v0, "GenderEffectControl"

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "face rect:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v12, v9, v11

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    aget-object v0, v9, v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_c

    aget-object v0, v9, v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_6

    :cond_a
    if-nez v10, :cond_b

    .line 336
    aget-object v0, v9, v11

    :goto_5
    move-object v10, v0

    goto :goto_7

    .line 339
    :cond_b
    aget-object v0, v9, v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    aget-object v5, v9, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v0, v5

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int/2addr v5, v12

    if-le v0, v5, :cond_d

    .line 340
    aget-object v0, v9, v11

    goto :goto_5

    :cond_c
    :goto_6
    const-string v0, "GenderEffectControl"

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rect warn: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v12, v9, v11

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v12, v9, v11

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_e
    if-nez v10, :cond_f

    goto/16 :goto_0

    .line 347
    :cond_f
    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v4, v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    invoke-direct {v1, v0}, Lcn/nubia/camera/s/a$a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    invoke-direct {v1, v2, v0}, Lcn/nubia/camera/s/a$a;->a(Lcn/nubia/algorithm/camera/FaceDetector;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    invoke-virtual {v3, v0}, Lcn/nubia/camera/s/b;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 353
    iget-object v4, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/s/a;Lcn/nubia/camera/s/a$b;)Lcn/nubia/camera/s/a$b;

    const-string v0, "GenderEffectControl"

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gender: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v5}, Lcn/nubia/camera/s/a;->d(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/a$b;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->e(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/a$c;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcn/nubia/camera/s/a$c;->removeMessages(I)V

    .line 357
    iget-object v0, v1, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->e(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/a$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/camera/s/a$c;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_10
    :goto_8
    const-string v0, "GenderEffectControl"

    const-string v5, "width * height * 4 != rgba.length || mPreviewSize.getHeight() != width || mPreviewSize.getWidth() != height"

    .line 299
    invoke-static {v0, v5}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GenderEffectControl"

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcn/nubia/camera/s/a$a;->g:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 291
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 278
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 360
    :cond_11
    :goto_9
    invoke-virtual {v3}, Lcn/nubia/camera/s/b;->a()V

    .line 361
    invoke-virtual {v2}, Lcn/nubia/algorithm/camera/FaceDetector;->b()V

    return-void
.end method

.method private a([BLandroid/graphics/Matrix;[Lcn/nubia/camera/k/j;)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/s/a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v1, p0, Lcn/nubia/camera/s/a$a;->f:Ljava/util/ArrayList;

    new-instance v2, Lcn/nubia/camera/s/a$a$b;

    invoke-direct {v2, p0, p1, p2, p3}, Lcn/nubia/camera/s/a$a$b;-><init>(Lcn/nubia/camera/s/a$a;[BLandroid/graphics/Matrix;[Lcn/nubia/camera/k/j;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object p1, p0, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 378
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcn/nubia/algorithm/camera/FaceDetector;Landroid/graphics/Bitmap;)Z
    .locals 11

    .line 425
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 426
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v0, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v4

    double-to-int v6, v0

    int-to-double v0, v3

    mul-double/2addr v0, v4

    double-to-int v5, v0

    move-object v0, p1

    move-object v1, p2

    move v4, v6

    .line 427
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/algorithm/camera/FaceDetector;->b(Landroid/graphics/Bitmap;IIII)[D

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-eqz p1, :cond_0

    .line 432
    aget-wide v2, p1, v0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    aget-wide v2, p1, p2

    .line 433
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget-wide v6, p1, v2

    .line 434
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    aget-wide v3, p1, v0

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v7

    double-to-int v1, v3

    .line 436
    aget-wide v3, p1, p2

    mul-double/2addr v3, v5

    div-double/2addr v3, v7

    double-to-int v3, v3

    .line 437
    aget-wide v9, p1, v2

    mul-double/2addr v9, v5

    div-double/2addr v9, v7

    double-to-int p1, v9

    goto :goto_0

    :cond_0
    move p1, v1

    move v3, p1

    .line 444
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/s/a$a;->a:Lcn/nubia/camera/s/a$a$a;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/s/a$a$a;->a(I)I

    move-result v1

    .line 445
    iget-object v2, p0, Lcn/nubia/camera/s/a$a;->b:Lcn/nubia/camera/s/a$a$a;

    invoke-virtual {v2, v3}, Lcn/nubia/camera/s/a$a$a;->a(I)I

    move-result v2

    .line 446
    iget-object v3, p0, Lcn/nubia/camera/s/a$a;->c:Lcn/nubia/camera/s/a$a$a;

    invoke-virtual {v3, p1}, Lcn/nubia/camera/s/a$a$a;->a(I)I

    move-result p1

    .line 447
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xf

    if-gt v1, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v2, :cond_1

    return p2

    :cond_1
    return v0
.end method


# virtual methods
.method public a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcn/nubia/camera/s/a$a;->d:Lcn/nubia/camera/s/a;

    invoke-static {v0}, Lcn/nubia/camera/s/a;->c(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/camera/s/a$a;->a(Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 370
    invoke-direct {p0, v0, p2, p1}, Lcn/nubia/camera/s/a$a;->a([BLandroid/graphics/Matrix;[Lcn/nubia/camera/k/j;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 152
    invoke-static {}, Lcn/nubia/camera/s/a;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GenderEffectControl"

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DetectThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/s/a$a;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcn/nubia/camera/s/a$a;->a()V

    const-string v1, "GenderEffectControl"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DetectThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/s/a$a;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
