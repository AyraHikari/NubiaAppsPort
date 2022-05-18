.class public Lcom/android/gallery3d/filtershow/materials/r;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :catch_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/materials/r;->f(Ljava/io/InputStream;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/filtershow/materials/r;->g(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static d(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    const/4 p1, 0x0

    const/4 v1, 0x1

    move v3, p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    aget v4, v0, v2

    add-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v3, p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static e(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget v3, Lcom/android/gallery3d/filtershow/materials/s;->a:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    array-length v8, v0

    if-ge v4, v8, :cond_6

    aget-char v8, v0, v4

    const/16 v9, 0xa

    const/4 v10, 0x1

    if-eq v8, v9, :cond_1

    array-length v8, v0

    sub-int/2addr v8, v10

    if-ne v4, v8, :cond_5

    :cond_1
    array-length v8, v0

    sub-int/2addr v8, v10

    if-ne v4, v8, :cond_2

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-static {v7, v2, p1}, Lcom/android/gallery3d/filtershow/materials/r;->d(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v8

    if-le v8, v10, :cond_3

    invoke-static {v7, v2, p1}, Lcom/android/gallery3d/filtershow/materials/r;->d(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v3, v8, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    :cond_4
    add-int/lit8 v7, v4, 0x1

    add-int/2addr v5, v10

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    sget p0, Lcom/android/gallery3d/filtershow/materials/s;->a:I

    add-int/lit8 p1, p0, 0x0

    add-int/2addr p1, v3

    mul-int/2addr v5, p1

    add-int/2addr v5, p0

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr v6, p0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/io/InputStream;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    :goto_0
    const/4 v2, 0x1

    if-eq p0, v2, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "bubble"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    const-string v2, "left"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    const-string v2, "right"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_2
    const-string v2, "top"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_3
    const-string v2, "bottom"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v3, "name"

    invoke-interface {v0, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/g/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    move v1, p1

    :cond_1
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    :cond_2
    return v1
.end method
