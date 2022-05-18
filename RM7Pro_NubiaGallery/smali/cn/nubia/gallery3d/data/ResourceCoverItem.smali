.class public Lcn/nubia/gallery3d/data/ResourceCoverItem;
.super Lcn/nubia/gallery3d/data/MediaItem;
.source "ResourceCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;
    }
.end annotation


# instance fields
.field private final mApp:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mResId:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cover/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-static {}, Lcn/nubia/gallery3d/data/ResourceCoverItem;->nextVersionNumber()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/gallery3d/data/MediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 18
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem;->mApp:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 19
    iput p2, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem;->mResId:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem;->mApp:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget v3, p0, Lcn/nubia/gallery3d/data/ResourceCoverItem;->mResId:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcn/nubia/gallery3d/data/ResourceCoverItem$ResourceImageRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;II)V

    return-object v0
.end method

.method public requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
