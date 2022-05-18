.class public Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequestWithoutExif;
.super Lcn/nubia/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequestWithoutExif"
.end annotation


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V
    .locals 8

    .line 329
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
    .locals 3

    .line 334
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 335
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 336
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequestWithoutExif;->mLocalFilePath:Ljava/lang/String;

    .line 337
    invoke-static {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    .line 336
    invoke-static {p1, v1, v0, v2, p2}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
