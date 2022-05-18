.class Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;
.super Ljava/lang/Object;
.source "CloudMediaItem.java"

# interfaces
.implements Lcn/nubia/improve/xcloud/CloudManager$LoadImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/ui/CloudMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field private mImageLoaderAsync:Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;

.field private mType:I

.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudMediaItem;


# direct methods
.method private constructor <init>(Lcn/nubia/cloud/ui/CloudMediaItem;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/cloud/ui/CloudMediaItem;Lcn/nubia/cloud/ui/CloudMediaItem$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;)V

    return-void
.end method


# virtual methods
.method public loadIconCompleted(Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;)V
    .locals 5

    .line 147
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->bitmap:Landroid/graphics/Bitmap;

    .line 148
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$200(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getImageCacheService()Lcn/nubia/gallery3d/data/ImageCacheService;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->mType:I

    invoke-static {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 153
    iget v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->mType:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 154
    invoke-static {p1, v1, v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {p1, v1, v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 159
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_3

    .line 161
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v1, :cond_2

    return-void

    :cond_2
    move-object p1, v1

    .line 167
    :cond_3
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->mImageLoaderAsync:Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;

    if-eqz v1, :cond_4

    .line 168
    invoke-interface {v1, p1}, Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;->loadCompleted(Landroid/graphics/Bitmap;)V

    .line 170
    :cond_4
    invoke-static {p1}, Lcn/nubia/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 171
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$300(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    iget v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->mType:I

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/gallery3d/data/ImageCacheService;->putImageData(Lcn/nubia/gallery3d/data/Path;I[B)V

    .line 172
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {p1, v4}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$402(Lcn/nubia/cloud/ui/CloudMediaItem;Z)Z

    return-void
.end method

.method public setImageLoaderAsync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)V
    .locals 0

    .line 141
    iput p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->mType:I

    .line 142
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->mImageLoaderAsync:Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;

    return-void
.end method
