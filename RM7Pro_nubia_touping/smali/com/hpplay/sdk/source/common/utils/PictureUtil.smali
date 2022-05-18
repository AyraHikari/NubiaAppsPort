.class public Lcom/hpplay/sdk/source/common/utils/PictureUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BMP:Ljava/lang/String; = "bmp"

.field private static final DESIGN_HEIGHT:I = 0x2d0

.field private static final DESIGN_WIDTH:I = 0x500

.field private static final JPEG:Ljava/lang/String; = "jpeg"

.field private static final JPG:Ljava/lang/String; = "jpg"

.field private static final PNG:Ljava/lang/String; = "png"

.field private static final TAG:Ljava/lang/String; = "PictureUtil"

.field private static final mFileTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->mFileTypes:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->mFileTypes:Ljava/util/Map;

    const-string v1, "FFD8FFE0"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->mFileTypes:Ljava/util/Map;

    const-string v1, "89504E47"

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->mFileTypes:Ljava/util/Map;

    const-string v1, "424D5A52"

    const-string v2, "bmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 481
    :cond_0
    const-string v0, ""

    .line 491
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 483
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 485
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 487
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 491
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .prologue
    .line 58
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 59
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 60
    if-le v1, v2, :cond_3

    .line 65
    :goto_0
    const/4 v0, 0x1

    .line 66
    if-gt v1, p1, :cond_0

    if-le v2, p2, :cond_1

    .line 67
    :cond_0
    int-to-float v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 69
    int-to-float v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 70
    if-ge v0, v1, :cond_2

    .line 73
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_1

    :cond_3
    move v3, p2

    move p2, p1

    move p1, v3

    goto :goto_0
.end method

.method public static checkImageFormat(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 405
    sget-object v0, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->mFileTypes:Ljava/util/Map;

    invoke-static {p0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->getFileHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 82
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const-string v1, ""

    .line 89
    invoke-static {p0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->checkImageFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->contextPath:Lcom/hpplay/common/utils/ContextPath;

    const-string v3, "cache_data_av"

    invoke-virtual {v2, v3}, Lcom/hpplay/common/utils/ContextPath;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "localtemp.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {p0, v1, p1, p2}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->convertToJpg(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    .line 92
    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->zoomBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static convertToJpg(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 420
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->zoomBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 421
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 424
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 425
    if-eqz v1, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 427
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    const/4 v0, 0x1

    .line 436
    :cond_1
    :goto_0
    return v0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    const-string v2, "PictureUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDegree(Landroid/media/ExifInterface;)I
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    :try_start_0
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    packed-switch v1, :pswitch_data_0

    .line 358
    :goto_0
    :pswitch_0
    return v0

    .line 344
    :pswitch_1
    const/16 v0, 0x5a

    .line 345
    goto :goto_0

    .line 347
    :pswitch_2
    const/16 v0, 0xb4

    .line 348
    goto :goto_0

    .line 350
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    const-string v2, "PictureUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getFileHeader(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 463
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B

    .line 464
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 465
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    .line 466
    :catch_0
    move-exception v1

    .line 467
    const-string v2, "PictureUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method private static getFileHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 446
    .line 447
    const/4 v1, 0x0

    .line 449
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 451
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 452
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 453
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 457
    :goto_0
    return-object v0

    .line 454
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 455
    :goto_1
    const-string v2, "PictureUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 454
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static matrixResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/16 v0, 0x2d0

    const/4 v1, 0x0

    const/16 v2, 0x500

    const/high16 v6, 0x41800000    # 16.0f

    .line 293
    int-to-float v3, p1

    const/high16 v4, 0x44a00000    # 1280.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 294
    int-to-float v4, p2

    const/high16 v5, 0x44340000    # 720.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 296
    if-gt p1, v2, :cond_0

    if-le p2, v0, :cond_2

    .line 297
    :cond_0
    if-le p1, v2, :cond_1

    .line 299
    div-int v0, v2, v3

    mul-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x10

    .line 309
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 311
    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 312
    int-to-float v0, v0

    int-to-float v3, p2

    div-float/2addr v0, v3

    .line 313
    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 314
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 302
    :cond_1
    div-int v2, v0, v4

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 306
    :cond_2
    int-to-float v0, p2

    div-float/2addr v0, v6

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x10

    .line 307
    int-to-float v2, p1

    div-float/2addr v2, v6

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x10

    goto :goto_0
.end method

.method public static readPictureDegree(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 329
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 330
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->getDegree(Landroid/media/ExifInterface;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 335
    :goto_0
    return v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "PictureUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readPictureDegree(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 320
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->getDegree(Landroid/media/ExifInterface;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 324
    :goto_0
    return v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const-string v1, "PictureUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 390
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 391
    int-to-float v0, p0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 392
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
    return-object v0
.end method

.method public static savePicture([BLjava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 495
    .line 500
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 504
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 505
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 507
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 508
    const-string v1, "PictureUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "picture save success path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    if-eqz v3, :cond_1

    .line 515
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 521
    :cond_1
    :goto_0
    return-object v0

    .line 516
    :catch_0
    move-exception v1

    .line 517
    const-string v2, "PictureUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 509
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 510
    :goto_1
    :try_start_4
    const-string v3, "PictureUtil"

    invoke-static {v3, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    if-eqz v2, :cond_1

    .line 515
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 516
    :catch_2
    move-exception v1

    .line 517
    const-string v2, "PictureUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    .line 515
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 518
    :cond_2
    :goto_3
    throw v0

    .line 516
    :catch_3
    move-exception v1

    .line 517
    const-string v2, "PictureUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3

    .line 513
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 509
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method public static zoomBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/16 v11, 0x1770

    const/16 v10, 0x1388

    const/16 v9, 0xfa0

    const/16 v8, 0xbb8

    const/4 v2, 0x0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 206
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 210
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 212
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 213
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 214
    const-string v4, "PictureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " relWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " relHight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    invoke-static {v0, p1, p2}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 216
    const-string v4, "PictureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 220
    mul-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x4

    int-to-long v4, v3

    .line 221
    :try_start_1
    const-string v3, "PictureUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -totalMemory---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  options.inSampleSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x4

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 223
    if-gt v1, v8, :cond_2

    .line 224
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 238
    :cond_0
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 239
    const-string v0, "PictureUtil"

    const-string v1, " start zoom agin "

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 243
    :try_start_2
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 248
    :try_start_3
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    if-nez v1, :cond_8

    .line 285
    :goto_1
    return-object v2

    .line 225
    :cond_2
    if-le v1, v8, :cond_3

    if-ge v1, v9, :cond_3

    .line 226
    const/4 v1, 0x3

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    const-string v1, "PictureUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :goto_2
    move-object v0, v2

    :goto_3
    move-object v2, v0

    .line 285
    goto :goto_1

    .line 227
    :cond_3
    if-le v1, v9, :cond_4

    if-ge v1, v10, :cond_4

    .line 228
    const/4 v1, 0x4

    :try_start_4
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 229
    :cond_4
    if-le v1, v10, :cond_5

    if-ge v1, v11, :cond_5

    .line 230
    const/4 v1, 0x5

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 231
    :cond_5
    if-le v1, v11, :cond_6

    const/16 v3, 0x1b58

    if-ge v1, v3, :cond_6

    .line 232
    const/4 v1, 0x6

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 233
    :cond_6
    const/16 v3, 0x1b58

    if-le v1, v3, :cond_7

    const/16 v3, 0x1f40

    if-ge v1, v3, :cond_7

    .line 234
    const/4 v1, 0x7

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 235
    :cond_7
    const/16 v3, 0x1f40

    if-le v1, v3, :cond_0

    .line 236
    const/16 v1, 0x8

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 253
    :cond_8
    :try_start_5
    const-string v0, "PictureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handle post size  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "---------------"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v3, 0x500

    if-le v0, v3, :cond_9

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 256
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->matrixResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 257
    const-string v0, "PictureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " matrixResize post size  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  haoshi  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    .line 261
    :cond_9
    :try_start_6
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    .line 266
    :try_start_7
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->readPictureDegree(Ljava/io/InputStream;)I

    move-result v0

    .line 269
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 270
    const-string v3, "PictureUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  getWidth---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  getHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 278
    :catch_1
    move-exception v0

    .line 279
    :try_start_8
    const-string v1, "PictureUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    .line 276
    goto/16 :goto_3

    .line 262
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 244
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 207
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private static zoomBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/16 v12, 0x1b58

    const/16 v11, 0x1770

    const/16 v10, 0x1388

    const/16 v9, 0xfa0

    const/16 v8, 0xbb8

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    const/4 v2, 0x0

    .line 133
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 135
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 136
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 137
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 138
    const-string v4, "PictureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " relWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " relHight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-static {v0, p1, p2}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    const-string v4, "PictureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 144
    int-to-long v4, v1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    .line 145
    const-string v3, "PictureUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -totalMemory---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  options.inSampleSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x4

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 147
    if-gt v1, v8, :cond_2

    .line 148
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    :cond_0
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 163
    const-string v1, "PictureUtil"

    const-string v3, " start zoom agin "

    invoke-static {v1, v3}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 166
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 167
    if-nez v1, :cond_8

    .line 168
    const/4 v0, 0x0

    .line 196
    :goto_1
    return-object v0

    .line 149
    :cond_2
    if-le v1, v8, :cond_3

    if-ge v1, v9, :cond_3

    .line 150
    const/4 v1, 0x3

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "PictureUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :goto_2
    move-object v0, v2

    goto :goto_1

    .line 151
    :cond_3
    if-le v1, v9, :cond_4

    if-ge v1, v10, :cond_4

    .line 152
    const/4 v1, 0x4

    :try_start_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 153
    :cond_4
    if-le v1, v10, :cond_5

    if-ge v1, v11, :cond_5

    .line 154
    const/4 v1, 0x5

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 155
    :cond_5
    if-le v1, v11, :cond_6

    if-ge v1, v12, :cond_6

    .line 156
    const/4 v1, 0x6

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 157
    :cond_6
    if-le v1, v12, :cond_7

    const/16 v3, 0x1f40

    if-ge v1, v3, :cond_7

    .line 158
    const/4 v1, 0x7

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 159
    :cond_7
    const/16 v3, 0x1f40

    if-le v1, v3, :cond_0

    .line 160
    const/16 v1, 0x8

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :cond_8
    :try_start_2
    const-string v0, "PictureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handle post size  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "---------------"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v3, 0x500

    if-le v0, v3, :cond_9

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 174
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->matrixResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    const-string v0, "PictureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " matrixResize post size  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  haoshi  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    :cond_9
    invoke-static {p0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    .line 180
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 181
    const-string v3, "PictureUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  getWidth---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  getHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    :try_start_3
    const-string v1, "PictureUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    .line 187
    goto/16 :goto_1
.end method
