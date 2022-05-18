.class public Lcn/nubia/camera/videomaker/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(F)I
    .locals 1

    float-to-int p0, p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    :cond_1
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_0

    .line 199
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 7

    .line 129
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    float-to-double v0, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v5

    if-nez v0, :cond_0

    const p1, 0x3f666666    # 0.9f

    .line 134
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    .line 136
    div-int/lit8 p2, v3, 0x2

    int-to-float p2, p2

    div-int/lit8 v0, v4, 0x2

    int-to-float v0, v0

    invoke-virtual {v5, p1, p2, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 137
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0}, Lcn/nubia/camera/videomaker/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 180
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 184
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 185
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 186
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 187
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p1, p1

    .line 189
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 190
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 191
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 159
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    .line 165
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 167
    invoke-static {p0}, Lcn/nubia/camera/videomaker/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 169
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 170
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, v5

    .line 171
    invoke-virtual {v4, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 173
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v4, p0, v1, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    .line 175
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;Lcn/nubia/camera/videomaker/a;)Landroid/graphics/Bitmap;
    .locals 3

    .line 146
    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/a;->d()Lcn/nubia/camera/videomaker/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/c$a;->a()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/a;->d()Lcn/nubia/camera/videomaker/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/c$a;->b()I

    move-result p1

    .line 148
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 149
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    int-to-float v1, v2

    div-float/2addr p1, v1

    .line 151
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 152
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    .line 154
    invoke-static {p0, p1, v0}, Lcn/nubia/camera/videomaker/e;->a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/nubia/camera/videomaker/a;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 63
    invoke-static {v2, v0, p0}, Lcn/nubia/camera/videomaker/e;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Lcn/nubia/camera/videomaker/a;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    invoke-static {v1}, Lcn/nubia/camera/videomaker/e;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string v2, "ThreeAUtil"

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    invoke-static {v1}, Lcn/nubia/camera/videomaker/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcn/nubia/camera/videomaker/e;->a(Ljava/io/Closeable;)V

    .line 69
    throw p0
.end method

.method private static a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    .line 222
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    .line 224
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 225
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 226
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, p3

    int-to-float v1, v1

    div-float v1, v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 228
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 229
    invoke-static {v1}, Lcn/nubia/camera/videomaker/e;->a(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    .line 230
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 232
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 238
    invoke-static {p0, p2}, Lcn/nubia/camera/videomaker/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    :cond_2
    const/16 p1, 0x190

    if-gt p3, p1, :cond_3

    .line 246
    invoke-static {p0, p3, v2}, Lcn/nubia/camera/videomaker/e;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const/16 p1, 0xa

    .line 247
    invoke-static {p0, p1}, Lcn/nubia/camera/videomaker/e;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    .line 251
    :cond_3
    invoke-static {p0, v1, v2}, Lcn/nubia/camera/videomaker/e;->a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Lcn/nubia/camera/videomaker/a;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p2}, Lcn/nubia/camera/videomaker/a;->d()Lcn/nubia/camera/videomaker/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/c$a;->a()I

    move-result v1

    .line 79
    invoke-virtual {p2}, Lcn/nubia/camera/videomaker/a;->d()Lcn/nubia/camera/videomaker/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/c$a;->b()I

    move-result v2

    .line 80
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 81
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 82
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 83
    invoke-static {v1}, Lcn/nubia/camera/videomaker/e;->a(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 86
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 90
    :cond_1
    invoke-static {p0, p2}, Lcn/nubia/camera/videomaker/e;->a(Landroid/graphics/Bitmap;Lcn/nubia/camera/videomaker/a;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 207
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 209
    invoke-static {p0, v0, p1, p2}, Lcn/nubia/camera/videomaker/e;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    invoke-static {v1}, Lcn/nubia/camera/videomaker/e;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string p1, "ThreeAUtil"

    .line 211
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    invoke-static {v1}, Lcn/nubia/camera/videomaker/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcn/nubia/camera/videomaker/e;->a(Ljava/io/Closeable;)V

    .line 215
    throw p0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 279
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "ThreeAUtil"

    const-string v1, "fail to close"

    .line 281
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_1

    .line 259
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 260
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 261
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 260
    invoke-virtual {v5, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 264
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "ThreeAUtil"

    const-string v1, "Failed to rotate thumbnail"

    .line 271
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p0
.end method
