.class public Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;
.super Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriBitmapSource"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    .line 261
    invoke-direct {p0, p3}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;-><init>(I)V

    .line 262
    iput-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->mContext:Landroid/content/Context;

    .line 263
    iput-object p2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method public loadBitmapRegionDecoder()Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;
    .locals 3

    .line 272
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 274
    invoke-static {v0, v1}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoderWrapper;->newInstance(Ljava/io/InputStream;Z)Lcn/nubia/improve/photos/SimpleBitmapRegionDecoderWrapper;

    move-result-object v1

    .line 275
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    if-nez v1, :cond_0

    .line 277
    invoke-direct {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;

    move-result-object v1

    .line 279
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BitmapRegionTileSource"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 291
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 292
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BitmapRegionTileSource"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public readExif(Lcn/nubia/gallery3d/exif/ExifInterface;)Z
    .locals 5

    const-string v0, "Failed to load URI "

    const-string v1, "BitmapRegionTileSource"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 304
    invoke-virtual {p1, v3}, Lcn/nubia/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 305
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 314
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v2

    :catch_1
    move-exception p1

    .line 308
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 315
    throw p1
.end method
