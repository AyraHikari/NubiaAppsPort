.class public Lcn/nubia/gallery3d/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final DEFAULT_JPEG_QUALITY:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field public static final UNCONSTRAINED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BmpRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    return-object p0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 235
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 236
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 237
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 238
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    .line 354
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 355
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x1

    if-gt v0, p1, :cond_0

    if-le p0, p2, :cond_1

    .line 360
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 361
    div-int/lit8 p0, p0, 0x2

    .line 363
    :goto_0
    div-int p0, v0, v1

    if-le p0, p1, :cond_1

    if-le p0, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 1

    const/16 v0, 0x5a

    .line 311
    invoke-static {p0, v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2

    .line 315
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 316
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 317
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;IZ)[B
    .locals 2

    .line 326
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-eqz p2, :cond_0

    const/16 p2, 0x44

    .line 328
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 331
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;Z)[B
    .locals 1

    const/16 v0, 0x5a

    .line 321
    invoke-static {p0, v0, p1}, Lcn/nubia/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static computeInitialSampleSize(IIII)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int v0, p0, p1

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 79
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result p3

    invoke-static {p3}, Landroid/util/FloatMath;->ceil(F)F

    move-result p3

    float-to-int v0, p3

    :goto_0
    if-ne p2, v1, :cond_2

    return v0

    .line 84
    :cond_2
    div-int/2addr p0, p2

    div-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 85
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static computeSampleSize(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    .line 114
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 116
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result p0

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x7

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method public static computeSampleSize(IIII)I
    .locals 0

    .line 65
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    .line 69
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    .line 103
    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result p0

    float-to-int p0, p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 107
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result p0

    goto :goto_0

    :cond_1
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 0

    .line 93
    div-int/2addr p0, p2

    div-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x8

    if-gt p0, p1, :cond_1

    .line 97
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result p0

    goto :goto_0

    :cond_1
    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    const-string v0, "createVideoThumbnail"

    const-string v1, "BitmapUtils"

    const-string v2, "release"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.media.MediaMetadataRetriever"

    .line 268
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 269
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v7, "setDataSource"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    .line 271
    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v4

    .line 272
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-gt p0, v7, :cond_1

    const-string p0, "captureFrame"

    new-array v7, v4, [Ljava/lang/Class;

    .line 276
    invoke-virtual {v5, p0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    :try_start_3
    new-array v0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_0
    return-object p0

    :cond_1
    :try_start_4
    const-string p0, "getEmbeddedPicture"

    new-array v7, v4, [Ljava/lang/Class;

    .line 278
    invoke-virtual {v5, p0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    if-eqz p0, :cond_3

    .line 280
    array-length v7, p0

    invoke-static {p0, v4, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_3

    if-eqz v6, :cond_2

    :try_start_5
    new-array v0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_2
    return-object p0

    :cond_3
    :try_start_6
    const-string p0, "getFrameAtTime"

    new-array v7, v4, [Ljava/lang/Class;

    .line 283
    invoke-virtual {v5, p0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_4

    :try_start_7
    new-array v0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    move-object v3, v6

    goto/16 :goto_5

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_1

    :catch_5
    move-exception p0

    goto/16 :goto_2

    :catch_6
    move-exception p0

    goto/16 :goto_3

    :catch_7
    move-exception p0

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_8
    move-exception p0

    move-object v6, v3

    goto :goto_0

    :catch_9
    move-exception p0

    move-object v6, v3

    goto :goto_1

    :catch_a
    move-exception p0

    move-object v6, v3

    goto :goto_2

    :catch_b
    move-exception p0

    move-object v6, v3

    goto :goto_3

    :catch_c
    move-exception p0

    move-object v6, v3

    goto/16 :goto_4

    :catch_d
    move-object v6, v3

    goto/16 :goto_6

    :catch_e
    move-object v6, v3

    goto/16 :goto_7

    :catchall_2
    move-exception p0

    move-object v5, v3

    goto/16 :goto_5

    :catch_f
    move-exception p0

    move-object v5, v3

    move-object v6, v5

    .line 298
    :goto_0
    :try_start_8
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_6

    :try_start_9
    new-array p0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_19

    goto/16 :goto_8

    :catch_10
    move-exception p0

    move-object v5, v3

    move-object v6, v5

    .line 296
    :goto_1
    :try_start_a
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v6, :cond_6

    :try_start_b
    new-array p0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_19

    goto/16 :goto_8

    :catch_11
    move-exception p0

    move-object v5, v3

    move-object v6, v5

    .line 294
    :goto_2
    :try_start_c
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v6, :cond_6

    :try_start_d
    new-array p0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_19

    goto :goto_8

    :catch_12
    move-exception p0

    move-object v5, v3

    move-object v6, v5

    .line 292
    :goto_3
    :try_start_e
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v6, :cond_6

    :try_start_f
    new-array p0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_19

    goto :goto_8

    :catch_13
    move-exception p0

    move-object v5, v3

    move-object v6, v5

    .line 290
    :goto_4
    :try_start_10
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v6, :cond_6

    :try_start_11
    new-array p0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_19

    goto :goto_8

    :goto_5
    if-eqz v3, :cond_5

    :try_start_12
    new-array v0, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14

    .line 305
    :catch_14
    :cond_5
    throw p0

    :catch_15
    move-object v5, v3

    move-object v6, v5

    :catch_16
    :goto_6
    if-eqz v6, :cond_6

    :try_start_13
    new-array p0, v4, [Ljava/lang/Class;

    .line 302
    invoke-virtual {v5, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catch_17
    move-object v5, v3

    move-object v6, v5

    :catch_18
    :goto_7
    if-eqz v6, :cond_6

    new-array p0, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_19

    :catch_19
    :cond_6
    :goto_8
    return-object v3
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_1

    if-ne v1, p2, :cond_1

    return-object p0

    .line 173
    :cond_1
    invoke-static {p0}, Lcn/nubia/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 174
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 175
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p2, 0x0

    .line 177
    invoke-virtual {v3, p0, p2, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_2

    .line 179
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v2
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 372
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 373
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 374
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 376
    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/common/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 378
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 379
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_0

    .line 148
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method private static getExifDegree(Landroid/media/ExifInterface;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, "Orientation"

    const/4 v2, -0x1

    .line 445
    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    :cond_3
    :goto_0
    return v0
.end method

.method public static getExifDegree(Ljava/lang/String;)I
    .locals 2

    .line 433
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to find file to read exif rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BitmapUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 438
    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->getExifDegree(Landroid/media/ExifInterface;)I

    move-result p0

    return p0
.end method

.method public static getExifOrientation(Landroid/media/ExifInterface;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    const-string v2, "Orientation"

    .line 420
    invoke-virtual {p0, v2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 2

    .line 408
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to find file to read exif rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BitmapUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 413
    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->getExifOrientation(Landroid/media/ExifInterface;)I

    move-result p0

    return p0
.end method

.method public static getGrayBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 387
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 388
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 389
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 390
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 391
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 392
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_1

    .line 393
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method public static getOutMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 398
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 399
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 400
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 401
    iget-object p0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static getRotationAndScaledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7

    if-lez p2, :cond_6

    if-eqz p0, :cond_6

    .line 481
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 482
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 483
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 485
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 486
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, 0x0

    if-lez v2, :cond_5

    if-gtz v3, :cond_0

    goto :goto_1

    .line 492
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 495
    :goto_0
    div-int/lit8 v6, v5, 0x2

    if-lt v6, p2, :cond_1

    shr-int/lit8 v5, v5, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_5

    .line 500
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/2addr v2, v1

    if-gtz v2, :cond_2

    goto :goto_1

    .line 504
    :cond_2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 505
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 506
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v4

    .line 512
    :cond_3
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateAndScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_4

    .line 515
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object p1

    :cond_5
    :goto_1
    return-object v4

    .line 478
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getRotationAndScaledBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getThingsBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 6

    if-lez p2, :cond_4

    if-ltz p3, :cond_4

    if-eqz p0, :cond_4

    .line 576
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 578
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 580
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 581
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x0

    if-lez v1, :cond_3

    if-gtz v2, :cond_0

    goto :goto_1

    .line 588
    :cond_0
    div-int/lit8 v4, v1, 0x2

    .line 589
    div-int/lit8 v5, v2, 0x2

    :goto_0
    if-lt v4, p2, :cond_1

    if-lt v5, p3, :cond_1

    shr-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v5, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    .line 597
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    div-int/2addr p2, v0

    if-gtz p2, :cond_2

    goto :goto_1

    .line 601
    :cond_2
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 602
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 603
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v3

    .line 573
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getRotationAndScaledBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 345
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 346
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "image/jpeg"

    if-lt v1, v2, :cond_3

    .line 347
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dng"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 349
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "image/"

    .line 337
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "image/gif"

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dng"

    .line 339
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static recycleSilently(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "BitmapUtils"

    const-string v1, "unable recycle bitmap"

    .line 247
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 208
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 209
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v1, v2, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 218
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p0}, Lcn/nubia/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 223
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-int/2addr p2, v3

    int-to-float p2, p2

    div-float/2addr p2, v1

    .line 224
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 225
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 226
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p2, 0x0

    .line 227
    invoke-virtual {v4, p0, p2, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_2

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v0
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_1

    if-ne v1, p1, :cond_1

    return-object p0

    :cond_1
    int-to-float v2, p1

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 195
    invoke-static {p0}, Lcn/nubia/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 198
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, v5

    .line 199
    invoke-virtual {v4, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 201
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v4, p0, v1, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_2

    .line 203
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v0
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 3

    .line 132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object p0

    .line 136
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 139
    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v1, p0, v2, v2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 157
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    return-object p0

    .line 160
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 124
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    return-object p0

    .line 127
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateAndScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 523
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 524
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p2, p2

    int-to-float v2, v0

    div-float v2, p2, v2

    int-to-float v3, v1

    div-float/2addr p2, v3

    .line 525
    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 526
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v2

    if-lez v3, :cond_0

    move p2, v2

    :cond_0
    cmpl-float v2, v2, p2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    return-object p0

    :cond_1
    const/16 v2, 0x8

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    const/4 v4, 0x7

    if-ne p1, v4, :cond_3

    :cond_2
    move v9, v1

    move v1, v0

    move v0, v9

    :cond_3
    const/4 v4, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/high16 p1, 0x43870000    # 270.0f

    int-to-float v0, v0

    div-float/2addr v0, v5

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 557
    invoke-virtual {v7, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :cond_5
    const/high16 p1, 0x42b40000    # 90.0f

    int-to-float v0, v0

    div-float/2addr v0, v5

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 547
    invoke-virtual {v7, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :cond_6
    const/high16 p1, 0x43340000    # 180.0f

    int-to-float v0, v0

    div-float/2addr v0, v5

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 552
    invoke-virtual {v7, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 566
    :goto_0
    invoke-virtual {v7, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 567
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 568
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    .line 567
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    return-object p0

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 254
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 255
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 256
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 257
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method
