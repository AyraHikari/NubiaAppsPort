.class Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;
.super Lcn/nubia/gallery3d/data/ImageCacheRequest;
.source "ResourceCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/ResourceCoverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceImageRequest"
.end annotation


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;II)V
    .locals 8

    .line 27
    invoke-static {p3}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    const-wide/16 v4, 0x0

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/data/ImageCacheRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;I)V

    .line 28
    iput p4, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;->mId:I

    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 33
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 35
    iget-object p2, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;->mId:I

    invoke-static {p2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 36
    iget p2, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;->mTargetSize:I

    iget v0, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;->mTargetSize:I

    invoke-static {p1, p2, v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    iget-object p2, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;->mId:I

    invoke-static {p2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
