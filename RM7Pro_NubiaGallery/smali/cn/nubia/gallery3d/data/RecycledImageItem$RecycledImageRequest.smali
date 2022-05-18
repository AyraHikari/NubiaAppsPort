.class Lcn/nubia/gallery3d/data/RecycledImageItem$RecycledImageRequest;
.super Lcn/nubia/gallery3d/data/ImageCacheRequest;
.source "RecycledImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/RecycledImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecycledImageRequest"
.end annotation


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V
    .locals 8

    .line 68
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
    .locals 5

    .line 73
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 77
    invoke-static {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 81
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/RecycledImageItem$RecycledImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get thumbnail from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/gallery3d/data/RecycledImageItem$RecycledImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RecycledImageItem"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v3}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 91
    invoke-static {p1, v2, v0, v1}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 95
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/data/RecycledImageItem$RecycledImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
