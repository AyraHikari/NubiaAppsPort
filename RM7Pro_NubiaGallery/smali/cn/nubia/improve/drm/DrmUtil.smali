.class public Lcn/nubia/improve/drm/DrmUtil;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/drm/DrmUtil$DecodeCanceller;
    }
.end annotation


# static fields
.field public static final DRM_MIME_TYPE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static final TAG:Ljava/lang/String; = "DrmUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .line 78
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBitmap filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drm"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "createBitmap......................."

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->open(Ljava/lang/String;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    .line 92
    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 94
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v7, 0x280

    invoke-static {v5, v6, v7}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v5

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    .line 96
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 99
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->open(Ljava/lang/String;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 100
    :try_start_2
    invoke-static {v5, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 103
    invoke-static {p0, v7, v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 104
    invoke-static {p0}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    invoke-static {v5}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v3, v5

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v3, v1

    .line 107
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 112
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_1
    if-nez v1, :cond_0

    const-string p0, "createBitmap bimap == null"

    .line 118
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :catchall_2
    move-exception p0

    move-object v1, v3

    .line 112
    :goto_2
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 113
    throw p0
.end method

.method public static createMovie(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 4

    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->open(Ljava/lang/String;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 177
    :try_start_1
    invoke-static {p0}, Lcn/nubia/improve/drm/DrmUtil;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 178
    new-instance v2, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 184
    :cond_0
    :goto_0
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 181
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_2
    return-object v0

    :catchall_1
    move-exception v0

    .line 184
    :goto_3
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 185
    throw v0
.end method

.method public static getDRMBitmap(Ljava/lang/String;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 259
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 260
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDRMBitmap...filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drm"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {p2}, Lcn/nubia/improve/drm/DrmUtil;->getTargetSize(I)I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcn/nubia/improve/drm/DrmUtil;->requestDRMDecode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p1, "getDRMBitmap...bimap == null "

    .line 274
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTargetSize(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0xc8

    return p0

    .line 349
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "should only request thumb/microthumb from cache"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x280

    return p0
.end method

.method public static isProtected(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 48
    invoke-static {p0}, Lcn/nubia/improve/ImproveConfig;->enableDrm(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 54
    :cond_1
    invoke-static {p1}, Lzte/com/cn/drm/JBDrmImpl;->isProtected(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static requestCreateDRMBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1

    const/4 v0, 0x0

    .line 228
    :try_start_0
    invoke-static {p1}, Lzte/com/cn/drm/DrmInputStream;->open(Ljava/lang/String;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 244
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 248
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object p1, v0

    .line 240
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_0

    .line 244
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 252
    :cond_1
    :goto_3
    throw p0
.end method

.method public static requestDRMDecode(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 372
    :try_start_0
    invoke-static {p1}, Lzte/com/cn/drm/DrmInputStream;->open(Ljava/lang/String;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p1

    .line 373
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "drm"

    const-string v2, "requestDRMDecode....1....."

    .line 374
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 375
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 376
    :cond_0
    new-instance p1, Lcn/nubia/improve/drm/DrmUtil$DecodeCanceller;

    invoke-direct {p1, p2}, Lcn/nubia/improve/drm/DrmUtil$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 380
    invoke-interface {p0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 408
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    .line 382
    :cond_1
    :try_start_2
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, v2, p3}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    .line 384
    iput-boolean p0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 388
    invoke-static {v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 391
    invoke-static {p0, p3, p1}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 392
    invoke-static {p0}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 408
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

    .line 394
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 408
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 409
    throw p0
.end method

.method public static startDrmService(Landroid/content/Context;)V
    .locals 1

    .line 444
    invoke-static {p0}, Lcn/nubia/improve/ImproveConfig;->enableDrm(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-static {p0}, Lzte/com/cn/drm/JBDrmImpl;->startDrmService(Landroid/content/Context;)V

    return-void
.end method

.method private static startUsage(I)V
    .locals 0

    return-void
.end method

.method public static stopDrmService(Landroid/content/Context;)V
    .locals 0

    .line 451
    invoke-static {p0}, Lcn/nubia/improve/ImproveConfig;->enableDrm(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-static {}, Lzte/com/cn/drm/JBDrmImpl;->stopDrmService()V

    return-void
.end method

.method private static stopUsage(I)V
    .locals 0

    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;)[B
    .locals 4

    .line 158
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    .line 162
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 163
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 191
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v2, "file"

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "_data"

    .line 198
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .line 199
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 p1, 0x0

    .line 203
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p0

    move-object p0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 195
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v1, p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p0, v1

    .line 206
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    .line 209
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_4
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_4
    throw p1
.end method

.method public static verifyRights(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
