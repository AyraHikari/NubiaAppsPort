.class public Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;
.super Lcn/nubia/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V
    .locals 8

    .line 262
    invoke-static {p3}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/data/ImageCacheRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 267
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 268
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 269
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->isNeedColorSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 272
    :cond_0
    invoke-static {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "failed to get thumbnail from: "

    const-string v4, "LocalImage"

    const/4 v5, 0x0

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 299
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v2

    goto :goto_0

    .line 301
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v5, :cond_4

    .line 304
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->mPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v2

    invoke-static {v2, v5}, Lcn/nubia/gallery3d/data/LocalImage;->access$000(Lcn/nubia/gallery3d/data/MediaObject;Landroid/media/ExifInterface;)V

    goto :goto_3

    .line 282
    :cond_2
    :goto_1
    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 284
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_3

    .line 288
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v5

    .line 289
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->mPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/nubia/gallery3d/data/LocalImage;->access$000(Lcn/nubia/gallery3d/data/MediaObject;Landroid/media/ExifInterface;)V

    :cond_3
    if-eqz v5, :cond_4

    .line 293
    invoke-static {p1, v5, v0, v1}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    .line 308
    :cond_4
    :goto_3
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
