.class public Lcom/android/gallery3d/filtershow/utils/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "Utils"

.field private static b:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/app/Application;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/File;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    const/4 p1, 0x1

    new-array p2, p1, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object p2

    invoke-interface {p2}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x3

    aget v1, v1, v4

    add-int/lit8 v3, v3, -0x50

    add-int/lit8 v1, v1, -0x50

    invoke-static {p0, v3, v1, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x28

    invoke-static {v4, v5}, Lcom/android/gallery3d/filtershow/utils/b;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/utils/b;->c(Landroid/graphics/Bitmap;)[F

    move-result-object v4

    invoke-interface {p2}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-interface {p2, v5}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;

    move-result-object v5

    array-length v6, v4

    new-array v7, v2, [I

    invoke-virtual {v5, v4, v2, v6, v7}, Lcom/qualcomm/qti/snpe/FloatTensor;->write([FII[I)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/FloatTensor;

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/Tensor;->getSize()I

    move-result v4

    new-array v6, v4, [F

    new-array v7, v2, [I

    invoke-virtual {v0, v6, v2, v4, v7}, Lcom/qualcomm/qti/snpe/FloatTensor;->read([FII[I)I

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/Tensor;->release()V

    invoke-virtual {v5}, Lcom/qualcomm/qti/snpe/Tensor;->release()V

    invoke-interface {p2}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    invoke-static {v6, v3, v1}, Lcom/android/gallery3d/filtershow/utils/b;->h([FII)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :goto_0
    throw p0
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, p1

    invoke-direct {v2, p1, p1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v7, p1

    int-to-float v7, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v0, v8, v8, p0, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v5, v4, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, p0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {v1, v5, v4, p1, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, p0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method public static c(Landroid/graphics/Bitmap;)[F
    .locals 10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v9, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x3

    new-array p0, v1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v1, 0x3

    aget v3, v9, v1

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    aget v4, v9, v1

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, p0, v3

    add-int/lit8 v2, v2, 0x2

    aget v3, v9, v1

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/utils/b;->l(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static e(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method

.method public static f(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static g(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static h([FII)Landroid/graphics/Bitmap;
    .locals 7

    mul-int v0, p1, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/16 v3, 0xff

    mul-int/lit8 v4, v2, 0x3

    aget v5, p0, v4

    float-to-int v5, v5

    add-int/lit8 v6, v4, 0x1

    aget v6, p0, v6

    float-to-int v6, v6

    add-int/lit8 v4, v4, 0x2

    aget v4, p0, v4

    float-to-int v4, v4

    invoke-static {v3, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    mul-long/2addr v3, v0

    return-wide v3

    :catch_0
    return-wide v0
.end method

.method public static j(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/gallery3d/filtershow/utils/b;->a:Ljava/lang/String;

    const-string p1, "srcUri is null."

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/android/gallery3d/filtershow/utils/b;->a:Ljava/lang/String;

    const-string p1, "scheme is null."

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/filtershow/utils/b$a;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/utils/b$a;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/g/b;->q(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/g/b$f;)V

    goto :goto_1

    :cond_2
    const-string p0, "file"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object p0, v0, v3

    :cond_3
    :goto_1
    aget-object p0, v0, v3

    return-object p0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    sget-object v0, Lcom/android/gallery3d/filtershow/utils/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriFromPath, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v2, "content://media/external/images/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id"

    const-string v4, "_data"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 p0, 0x1

    new-array v9, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v9, p0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    sget-object p0, Lcom/android/gallery3d/filtershow/utils/b;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monkey imageUri = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p0

    :goto_4
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1

    :cond_4
    :goto_5
    return-object v0
.end method

.method private static l(C)Z
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "camera_screen_light"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/utils/b;->b:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/android/gallery3d/filtershow/utils/b;->b:Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object p0, Lcom/android/gallery3d/filtershow/utils/b;->b:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static p(Ljava/lang/String;J)Z
    .locals 2

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/utils/b;->i(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
