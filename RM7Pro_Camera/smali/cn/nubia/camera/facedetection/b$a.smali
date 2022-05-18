.class Lcn/nubia/camera/facedetection/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/facedetection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/facedetection/b$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/facedetection/b;

.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/facedetection/b$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/nubia/camera/facedetection/b;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lcn/nubia/camera/facedetection/b$a;->b:Z

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/facedetection/b;Lcn/nubia/camera/facedetection/b$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcn/nubia/camera/facedetection/b$a;-><init>(Lcn/nubia/camera/facedetection/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 318
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/facedetection/b$a;->b:Z

    .line 319
    iget-object v1, p0, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 320
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a([BLandroid/graphics/Matrix;[Lcn/nubia/camera/k/j;)V
    .locals 3

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/facedetection/b$a;->b:Z

    if-eqz v1, :cond_0

    .line 308
    monitor-exit v0

    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 311
    iget-object v1, p0, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    new-instance v2, Lcn/nubia/camera/facedetection/b$a$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcn/nubia/camera/facedetection/b$a$a;-><init>(Lcn/nubia/camera/facedetection/b$a;[BLandroid/graphics/Matrix;[Lcn/nubia/camera/k/j;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 313
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 221
    :catch_0
    :cond_0
    :goto_0
    iget-boolean v0, v1, Lcn/nubia/camera/facedetection/b$a;->b:Z

    if-nez v0, :cond_c

    .line 222
    iget-object v2, v1, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    monitor-enter v2

    .line 223
    :try_start_0
    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 225
    :try_start_1
    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 227
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 229
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/facedetection/b$a$a;

    .line 232
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    iget-object v2, v0, Lcn/nubia/camera/facedetection/b$a$a;->a:[B

    .line 234
    iget-object v4, v0, Lcn/nubia/camera/facedetection/b$a$a;->b:Landroid/graphics/Matrix;

    .line 235
    iget-object v5, v0, Lcn/nubia/camera/facedetection/b$a$a;->c:[Lcn/nubia/camera/k/j;

    .line 236
    new-instance v6, Landroid/util/Size;

    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v0}, Lcn/nubia/camera/facedetection/b;->c(Lcn/nubia/camera/facedetection/b;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v7, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v7}, Lcn/nubia/camera/facedetection/b;->c(Lcn/nubia/camera/facedetection/b;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v6, v0, v7}, Landroid/util/Size;-><init>(II)V

    .line 237
    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v0}, Lcn/nubia/camera/facedetection/b;->d(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->g()I

    move-result v13

    .line 238
    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v0}, Lcn/nubia/camera/facedetection/b;->d(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->h()I

    move-result v14

    mul-int v0, v13, v14

    mul-int/lit8 v7, v0, 0x4

    .line 239
    array-length v8, v2

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-ne v7, v13, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-eq v7, v14, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    new-array v8, v0, [I

    move v7, v3

    :goto_2
    if-ge v7, v0, :cond_3

    mul-int/lit8 v9, v7, 0x4

    add-int/lit8 v10, v9, 0x3

    .line 247
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v11, v2, v9

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v9, 0x1

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v9, v9, 0x2

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v10, v11, v12, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 249
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v2

    move v10, v13

    .line 250
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 252
    array-length v0, v5

    new-array v7, v0, [Landroid/graphics/RectF;

    .line 253
    array-length v0, v5

    new-array v8, v0, [Landroid/graphics/Rect;

    .line 254
    array-length v0, v5

    new-array v9, v0, [Landroid/graphics/Rect;

    move v10, v3

    .line 256
    :goto_3
    array-length v0, v5

    const/4 v11, 0x1

    if-ge v10, v0, :cond_a

    .line 257
    aget-object v0, v5, v10

    invoke-virtual {v0}, Lcn/nubia/camera/k/j;->a()Landroid/graphics/Rect;

    move-result-object v0

    aput-object v0, v8, v10

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    aput-object v0, v7, v10

    .line 259
    aget-object v0, v7, v10

    aget-object v12, v8, v10

    invoke-virtual {v0, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 260
    aget-object v0, v7, v10

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 261
    aget-object v0, v7, v10

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    aget-object v12, v7, v10

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v12, v12

    div-int/lit8 v12, v12, 0xa

    sub-int/2addr v0, v12

    .line 262
    aget-object v12, v7, v10

    iget v12, v12, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    aget-object v13, v7, v10

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    .line 263
    aget-object v13, v7, v10

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    aget-object v14, v7, v10

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0xa

    sub-int/2addr v13, v14

    .line 264
    aget-object v14, v7, v10

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    aget-object v15, v7, v10

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v15, v15

    div-int/lit8 v15, v15, 0xa

    add-int/2addr v14, v15

    .line 265
    new-instance v15, Landroid/graphics/Rect;

    if-gez v0, :cond_4

    move v0, v3

    :cond_4
    if-gez v13, :cond_5

    move v13, v3

    .line 267
    :cond_5
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v16

    add-int/lit8 v3, v16, -0x1

    if-le v12, v3, :cond_6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .line 268
    :cond_6
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v3, v11

    if-le v14, v3, :cond_7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    :cond_7
    invoke-direct {v15, v0, v13, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v15, v9, v10

    const-string v0, "SmileShot"

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "face rect:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v12, v9, v10

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    aget-object v0, v9, v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_9

    aget-object v0, v9, v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_8

    goto :goto_4

    .line 274
    :cond_8
    aget-object v0, v9, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    aget-object v3, v9, v10

    iget v3, v3, Landroid/graphics/Rect;->top:I

    aget-object v12, v9, v10

    iget v12, v12, Landroid/graphics/Rect;->right:I

    aget-object v13, v9, v10

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    aget-object v13, v9, v10

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    aget-object v14, v9, v10

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    invoke-static {v2, v0, v3, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 277
    :try_start_3
    iget-object v3, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v3}, Lcn/nubia/camera/facedetection/b;->e(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/as/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/as/b;->a()Lcn/nubia/camera/as/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/camera/as/a;->a(Landroid/graphics/Bitmap;)[F

    move-result-object v0

    .line 278
    iget-object v3, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v3}, Lcn/nubia/camera/facedetection/b;->e(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/as/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/as/b;->a()Lcn/nubia/camera/as/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/camera/as/a;->a([F)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v0, v11, :cond_9

    move v3, v11

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v3, "SmileShot"

    const-string v11, "recognizeEmotion error"

    .line 284
    invoke-static {v3, v11, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x0

    .line 289
    :goto_5
    :try_start_4
    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v0}, Lcn/nubia/camera/facedetection/b;->e(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/as/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/as/b;->a()Lcn/nubia/camera/as/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/camera/as/a;->a(I)I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 291
    iget-object v2, v1, Lcn/nubia/camera/facedetection/b$a;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 292
    :try_start_5
    iget-boolean v0, v1, Lcn/nubia/camera/facedetection/b$a;->b:Z

    if-nez v0, :cond_b

    const-string v0, "SmileShot"

    const-string v3, "smile takePicture"

    .line 293
    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v0}, Lcn/nubia/camera/facedetection/b;->f(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/facedetection/b$b;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcn/nubia/camera/facedetection/b$b;->removeMessages(I)V

    .line 295
    iget-object v0, v1, Lcn/nubia/camera/facedetection/b$a;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {v0}, Lcn/nubia/camera/facedetection/b;->f(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/facedetection/b$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/camera/facedetection/b$b;->sendEmptyMessage(I)Z

    .line 297
    :cond_b
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v0

    .line 232
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_c
    return-void
.end method
