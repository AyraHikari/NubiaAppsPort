.class public Lcn/nubia/gallery3d/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    .line 339
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "DecodeUtils"

    .line 341
    invoke-static {p1, p0}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    .line 349
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestCreateBitmapRegionDecoder: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeUtils"

    invoke-static {p1, p0}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 329
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string p2, "DecodeUtils"

    .line 331
    invoke-static {p2, p1}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public static createBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 1

    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    add-int p0, p2, p3

    .line 310
    array-length v0, p1

    if-gt p0, v0, :cond_0

    .line 317
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "DecodeUtils"

    .line 320
    invoke-static {p1, p0}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 311
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 313
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p2

    const/4 p2, 0x2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p2

    const-string p1, "offset = %s, length = %s, bytes = %s"

    .line 311
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p2, :cond_0

    .line 58
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 60
    invoke-static {p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    const/4 p0, 0x0

    .line 62
    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p4, :cond_0

    .line 80
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 82
    invoke-static {p4}, Lcn/nubia/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 84
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 83
    invoke-static {p0}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->decode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBounds(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 67
    :goto_0
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 68
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    new-instance v0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    const/4 p0, 0x0

    .line 70
    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 71
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method public static decodeBounds(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 89
    :goto_0
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 90
    iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    new-instance v0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 92
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method public static decodeIfBigEnough(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p2, :cond_0

    .line 276
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 277
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 280
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 281
    invoke-interface {p0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    return-object v0

    .line 282
    :cond_1
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt p0, p3, :cond_3

    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge p0, p3, :cond_2

    goto :goto_0

    .line 285
    :cond_2
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, v0, p3}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 287
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 288
    invoke-static {p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 290
    array-length p0, p1

    .line 291
    invoke-static {p1, v1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 290
    invoke-static {p0}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p2, :cond_0

    .line 129
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 130
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 133
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 134
    invoke-interface {p0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 136
    :cond_1
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 137
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x2

    if-ne p4, v3, :cond_2

    int-to-float v4, p3

    .line 142
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 143
    invoke-static {v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, p0, v4

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v2, v5

    mul-int/2addr v4, v5

    const v5, 0x9c400

    if-le v4, v5, :cond_3

    const v4, 0x491c4000    # 640000.0f

    mul-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr v4, p0

    float-to-double v4, v4

    .line 150
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p0, v4

    .line 149
    invoke-static {p0}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_2
    int-to-float v4, p3

    .line 154
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v4, p0

    .line 155
    invoke-static {v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 158
    iput-boolean p0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    invoke-static {p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 161
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    int-to-float p1, p3

    if-ne p4, v3, :cond_5

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 168
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1
    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p2, p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, p2, v1

    if-gtz p2, :cond_6

    .line 170
    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 172
    :cond_6
    invoke-static {p0}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;IILandroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p2, :cond_0

    .line 177
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 181
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 182
    invoke-interface {p0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 184
    :cond_1
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 185
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 188
    iget v3, p5, Landroid/graphics/Rect;->left:I

    .line 189
    iget v4, p5, Landroid/graphics/Rect;->top:I

    .line 190
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 191
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x3

    if-ne v7, p6, :cond_2

    sub-int p6, v2, v5

    sub-int/2addr p6, v3

    .line 197
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 198
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v3, v4

    move v4, p6

    goto :goto_0

    :cond_2
    if-ne v8, p6, :cond_3

    sub-int p5, p0, v3

    sub-int v3, p5, v5

    sub-int p5, v2, v4

    sub-int v4, p5, v6

    goto :goto_0

    :cond_3
    const/16 v7, 0x8

    if-ne v7, p6, :cond_4

    sub-int p6, p0, v4

    sub-int v3, p6, v6

    .line 206
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 207
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v4, v3

    .line 209
    :cond_4
    :goto_0
    new-instance p5, Landroid/graphics/Rect;

    add-int/2addr v5, v3

    add-int/2addr v6, v4

    invoke-direct {p5, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p6, 0x9

    const/4 v3, 0x2

    if-eq p4, v3, :cond_6

    if-ne p4, p6, :cond_5

    goto :goto_1

    :cond_5
    int-to-float v4, p3

    .line 225
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 226
    invoke-static {v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    :cond_6
    :goto_1
    int-to-float v4, p3

    .line 214
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 215
    invoke-static {v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 220
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, p0, v4

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v2, v5

    mul-int/2addr v4, v5

    const v5, 0x9c400

    if-le v4, v5, :cond_7

    const v4, 0x491c4000    # 640000.0f

    mul-int v5, p0, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 221
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v4

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_7
    :goto_2
    const/4 v4, 0x0

    .line 229
    iput-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 230
    invoke-static {p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 232
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v1

    :cond_8
    int-to-float p2, p3

    if-eq p4, v3, :cond_a

    if-ne p4, p6, :cond_9

    goto :goto_3

    .line 240
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_4

    .line 239
    :cond_a
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_4
    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double p3, p3, v5

    if-gtz p3, :cond_b

    .line 242
    invoke-static {p1, p2, v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 244
    :cond_b
    iget p2, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x5

    mul-int/lit8 p3, p3, 0x4

    sub-int/2addr p2, p3

    if-gez p2, :cond_c

    move p2, v4

    .line 248
    :cond_c
    iget p3, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/2addr p4, v8

    sub-int/2addr p3, p4

    if-gez p3, :cond_d

    goto :goto_5

    :cond_d
    move v4, p3

    .line 252
    :goto_5
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/lit8 p4, p4, 0x5

    mul-int/lit8 p4, p4, 0x4

    mul-int/2addr p4, v3

    add-int/2addr p3, p4

    add-int p4, p2, p3

    if-le p4, p0, :cond_e

    sub-int p3, p0, p2

    .line 256
    :cond_e
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    div-int/2addr p5, v8

    mul-int/2addr p5, v3

    add-int/2addr p4, p5

    add-int p5, v4, p4

    if-le p5, v2, :cond_f

    sub-int p4, v2, v4

    .line 260
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    int-to-float p0, p0

    div-float/2addr p5, p0

    int-to-float p0, p2

    mul-float/2addr p0, p5

    float-to-int p0, p0

    int-to-float p2, v4

    mul-float/2addr p2, p5

    float-to-int p2, p2

    int-to-float p3, p3

    mul-float/2addr p3, p5

    float-to-int p3, p3

    int-to-float p4, p4

    mul-float/2addr p4, p5

    float-to-int p4, p4

    .line 261
    invoke-static {p1, p0, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 264
    invoke-static {p0}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 100
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 102
    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

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
    const-string p1, "DecodeUtils"

    .line 104
    invoke-static {p1, p0}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 108
    throw p0
.end method

.method public static decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    .line 115
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 117
    invoke-static {p1}, Lcn/nubia/gallery3d/common/BitmapUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v8

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 118
    invoke-static/range {v2 .. v8}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;IILandroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

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
    const-string p1, "DecodeUtils"

    .line 120
    invoke-static {p1, p0}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 124
    throw p0
.end method

.method public static decodeUsingPool(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p2, :cond_0

    .line 386
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 387
    :cond_0
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 388
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 389
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 390
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->findCachedBitmap(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 392
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->decode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_3

    .line 394
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v1

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 395
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 399
    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const-string v0, "DecodeUtils"

    const-string v1, "decode fail with a given bitmap, try decode to a new bitmap"

    .line 401
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 403
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 404
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->decode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 399
    :cond_4
    throw v0
.end method

.method public static decodeUsingPool(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p4, :cond_0

    .line 360
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 361
    :cond_0
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 362
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 363
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 364
    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/DecodeUtils;->findCachedBitmap(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 366
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/DecodeUtils;->decode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_3

    .line 368
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v1

    iget-object v3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 369
    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 373
    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const-string v0, "DecodeUtils"

    const-string v1, "decode fail with a given bitmap, try decode to a new bitmap"

    .line 375
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 377
    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 378
    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/DecodeUtils;->decode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 373
    :cond_4
    throw v0
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    .line 299
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static findCachedBitmap(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 416
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeBounds(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V

    .line 417
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object p0

    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static findCachedBitmap(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 410
    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeBounds(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V

    .line 411
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object p0

    iget p1, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method
