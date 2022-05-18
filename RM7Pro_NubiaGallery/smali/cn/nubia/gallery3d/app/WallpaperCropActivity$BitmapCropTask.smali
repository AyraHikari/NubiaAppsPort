.class public Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/WallpaperCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BitmapCropTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mCropBounds:Landroid/graphics/RectF;

.field mCroppedBitmap:Landroid/graphics/Bitmap;

.field mInFilePath:Ljava/lang/String;

.field mInImageBytes:[B

.field mInResId:I

.field mInUri:Landroid/net/Uri;

.field mNoCrop:Z

.field mOnBitmapCroppedHandler:Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;

.field mOnEndRunnable:Ljava/lang/Runnable;

.field mOutHeight:I

.field mOutWidth:I

.field mOutputFormat:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field mRotation:I

.field mSaveCroppedBitmap:Z

.field mSetWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 9

    move-object v8, p0

    .line 481
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 436
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 440
    iput v1, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 441
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    const-string v0, "jpg"

    .line 444
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    move-object v0, p1

    .line 482
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    move v0, p3

    .line 483
    iput v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    move-object v0, p2

    .line 484
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mResources:Landroid/content/res/Resources;

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    .line 485
    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 9

    move-object v8, p0

    .line 472
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 436
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 440
    iput v1, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 441
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    const-string v0, "jpg"

    .line 444
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    move-object v0, p1

    .line 473
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    move-object v0, p2

    .line 474
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 475
    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 9

    move-object v8, p0

    .line 455
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 436
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 440
    iput v1, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 441
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    const-string v0, "jpg"

    .line 444
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    move-object v0, p1

    .line 456
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    move-object v0, p2

    .line 457
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 458
    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>([BLandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 9

    move-object v8, p0

    .line 464
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 436
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 440
    iput v1, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 441
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    const-string v0, "jpg"

    .line 444
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    move-object v0, p1

    .line 465
    iput-object v0, v8, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInImageBytes:[B

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 466
    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    return-void
.end method

.method private init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 492
    iput p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    .line 493
    iput p3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    .line 494
    iput p4, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    .line 495
    iput-boolean p5, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mSetWallpaper:Z

    .line 496
    iput-boolean p6, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mSaveCroppedBitmap:Z

    .line 497
    iput-object p7, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 4

    .line 514
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    const-string v1, "Launcher3.CropActivity"

    if-nez v0, :cond_0

    iget v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInImageBytes:[B

    if-nez v2, :cond_0

    const-string v0, "cannot read original file, no input URI, resource ID, or image byte array given"

    .line 515
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 520
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    .line 521
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 522
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 523
    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0

    .line 524
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInImageBytes:[B

    if-eqz v0, :cond_3

    .line 525
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInImageBytes:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 527
    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cropBitmap()Z
    .locals 16

    move-object/from16 v1, p0

    .line 562
    iget-boolean v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mSetWallpaper:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 567
    :goto_0
    iget-boolean v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mSetWallpaper:Z

    const-string v4, "cannot write stream to wallpaper"

    const-string v5, "Launcher3.CropActivity"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mNoCrop:Z

    if-eqz v0, :cond_2

    .line 569
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {v3, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 572
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 575
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    :cond_1
    :goto_1
    xor-int/lit8 v0, v6, 0x1

    return v0

    .line 581
    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 582
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 583
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 584
    iget v10, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    const/4 v11, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    if-lez v10, :cond_4

    int-to-float v10, v10

    .line 585
    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 586
    iget v10, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v0, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 588
    iget-object v10, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 589
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v10, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v0, "cannot get bounds for image"

    .line 593
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    new-array v13, v11, [F

    .line 598
    iget v14, v10, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    aput v14, v13, v6

    iget v14, v10, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    aput v14, v13, v7

    .line 599
    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 600
    aget v14, v13, v6

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    aput v14, v13, v6

    .line 601
    aget v14, v13, v7

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    aput v14, v13, v7

    .line 603
    iget-object v14, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    aget v15, v13, v6

    neg-float v15, v15

    div-float/2addr v15, v12

    aget v13, v13, v7

    neg-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v14, v15, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 604
    iget-object v13, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 605
    iget-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v13, v10, Landroid/graphics/Point;->x:I

    div-int/2addr v13, v11

    int-to-float v13, v13

    iget v10, v10, Landroid/graphics/Point;->y:I

    div-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v0, v13, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 609
    :cond_4
    iget-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_5

    goto/16 :goto_a

    .line 618
    :cond_5
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v10, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    div-int/2addr v0, v10

    .line 619
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v13, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    div-int/2addr v10, v13

    .line 618
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 624
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v13, :cond_6

    .line 626
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot get input stream for uri="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    invoke-static {v13}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v6

    .line 630
    :cond_6
    :try_start_3
    invoke-static {v13, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 631
    :try_start_4
    invoke-static {v13}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 635
    :goto_2
    invoke-static {v13}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v13

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v14, v2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object v13, v2

    move-object v14, v13

    .line 633
    :goto_3
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot open region decoder for file: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :goto_4
    if-eqz v14, :cond_8

    .line 642
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-le v10, v7, :cond_7

    .line 644
    iput v10, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 646
    :cond_7
    invoke-virtual {v14, v8, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_5

    :cond_8
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_b

    .line 652
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 655
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-le v10, v7, :cond_9

    .line 657
    iput v10, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 659
    :cond_9
    invoke-static {v12, v2, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 660
    invoke-static {v12}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_a
    if-eqz v2, :cond_b

    .line 663
    iget-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v12, v0, Landroid/graphics/RectF;->left:F

    int-to-float v10, v10

    div-float/2addr v12, v10

    iput v12, v0, Landroid/graphics/RectF;->left:F

    .line 664
    iget-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v12, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v12, v10

    iput v12, v0, Landroid/graphics/RectF;->top:F

    .line 665
    iget-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v12, v10

    iput v12, v0, Landroid/graphics/RectF;->bottom:F

    .line 666
    iget-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v12, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v12, v10

    iput v12, v0, Landroid/graphics/RectF;->right:F

    .line 667
    iget-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 669
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    .line 670
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 671
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 669
    invoke-static {v2, v0, v10, v12, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_c

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot decode file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 680
    :cond_c
    iget v2, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    if-lez v2, :cond_d

    iget v2, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    if-gtz v2, :cond_e

    :cond_d
    iget v2, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    if-lez v2, :cond_12

    :cond_e
    new-array v2, v11, [F

    .line 681
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v7

    .line 682
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 683
    aget v8, v2, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v2, v6

    .line 684
    aget v8, v2, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v2, v7

    .line 686
    iget v8, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    if-lez v8, :cond_f

    iget v8, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    if-gtz v8, :cond_10

    .line 687
    :cond_f
    aget v8, v2, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    .line 688
    aget v8, v2, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    .line 691
    :cond_10
    new-instance v8, Landroid/graphics/RectF;

    aget v9, v2, v6

    aget v10, v2, v7

    const/4 v11, 0x0

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 692
    new-instance v9, Landroid/graphics/RectF;

    iget v10, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    int-to-float v10, v10

    iget v12, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    int-to-float v12, v12

    invoke-direct {v9, v11, v11, v10, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 694
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 695
    iget v11, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    if-nez v11, :cond_11

    .line 696
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v8, v9, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_6

    .line 698
    :cond_11
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 699
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-virtual {v11, v12, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 700
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 701
    iget v14, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    int-to-float v14, v14

    invoke-virtual {v12, v14}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 702
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 703
    aget v15, v2, v6

    div-float/2addr v15, v13

    aget v2, v2, v7

    div-float/2addr v2, v13

    invoke-virtual {v14, v15, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 704
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 705
    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v8, v9, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 707
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 708
    invoke-virtual {v8, v12, v11}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 709
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 710
    invoke-virtual {v11, v2, v14}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 711
    invoke-virtual {v10, v11, v8}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 714
    :goto_6
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    .line 715
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 714
    invoke-static {v2, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 717
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 718
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 719
    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 720
    invoke-virtual {v8, v0, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v0, v2

    .line 725
    :cond_12
    iget-boolean v2, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mSaveCroppedBitmap:Z

    if-eqz v2, :cond_13

    .line 726
    iput-object v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    .line 730
    :cond_13
    iget-object v2, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    .line 731
    invoke-static {v2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 734
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x800

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v9, 0x5a

    .line 735
    invoke-virtual {v0, v2, v9, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 737
    iget-boolean v0, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mSetWallpaper:Z

    if-eqz v0, :cond_15

    if-eqz v3, :cond_15

    .line 739
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 740
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 741
    iget-object v2, v1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;

    if-eqz v2, :cond_15

    .line 742
    invoke-interface {v2, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;->onBitmapCropped([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 745
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_14
    const-string v0, "cannot compress bitmap"

    .line 750
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v6, v7

    :cond_15
    :goto_8
    xor-int/lit8 v0, v6, 0x1

    return v0

    .line 635
    :goto_9
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 637
    throw v0

    :cond_16
    :goto_a
    const-string v0, "crop has bad values for full size image"

    .line 612
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 759
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->cropBitmap()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 435
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 555
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/Point;
    .locals 4

    .line 537
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 539
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 540
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 541
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 542
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 543
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v0, :cond_0

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 764
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 765
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 435
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    return-void
.end method

.method public setNoCrop(Z)V
    .locals 0

    .line 505
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mNoCrop:Z

    return-void
.end method

.method public setOnBitmapCropped(Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;

    return-void
.end method

.method public setOnEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    return-void
.end method
