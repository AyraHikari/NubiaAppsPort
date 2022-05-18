.class Lcn/nubia/gallery3d/data/GridCoverItem$GridImageRequest;
.super Lcn/nubia/gallery3d/data/ImageCacheRequest;
.source "GridCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/GridCoverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridImageRequest"
.end annotation


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;I)V
    .locals 8

    .line 66
    invoke-static {p3}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    const-wide/16 v4, 0x0

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/data/ImageCacheRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 70
    iget-object p1, p0, Lcn/nubia/gallery3d/data/GridCoverItem$GridImageRequest;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800aa

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
