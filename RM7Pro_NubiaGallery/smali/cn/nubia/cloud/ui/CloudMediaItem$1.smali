.class Lcn/nubia/cloud/ui/CloudMediaItem$1;
.super Ljava/lang/Object;
.source "CloudMediaItem.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/ui/CloudMediaItem;->requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

.field final synthetic val$l:Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudMediaItem;ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    iput p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->val$type:I

    iput-object p3, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->val$l:Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    .line 299
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaItem;->getCloudBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/BytesBufferPool;->get()Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$500(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getImageCacheService()Lcn/nubia/gallery3d/data/ImageCacheService;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {v2}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$600(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    iget v3, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->val$type:I

    invoke-virtual {v1, v2, v3, v0}, Lcn/nubia/gallery3d/data/ImageCacheService;->getImageData(Lcn/nubia/gallery3d/data/Path;ILcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v1

    .line 302
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    if-eqz v1, :cond_3

    .line 305
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 306
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 308
    iget v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->val$type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 309
    iget-object v2, v0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v3, v0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v0, v0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v2, v3, v0, v1}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_1
    iget-object v2, v0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v3, v0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v0, v0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v2, v3, v0, v1}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 315
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    :cond_2
    return-object v0

    .line 319
    :cond_3
    iget p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->val$type:I

    invoke-static {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result p1

    .line 320
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$700(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 322
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    iget-object v1, v1, Lcn/nubia/cloud/ui/CloudMediaItem;->mListener:Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

    iget v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->val$type:I

    iget-object v4, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->val$l:Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;

    invoke-virtual {v1, v2, v4}, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;->setImageLoaderAsync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zh.shj CloudFilePath = %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {v2}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$800(Lcn/nubia/cloud/ui/CloudMediaItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " targetSize ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudImage"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudMediaItem;->access$800(Lcn/nubia/cloud/ui/CloudMediaItem;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem$1;->this$0:Lcn/nubia/cloud/ui/CloudMediaItem;

    iget-object v2, v2, Lcn/nubia/cloud/ui/CloudMediaItem;->mListener:Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/improve/xcloud/CloudManager;->loadIcon(Ljava/lang/String;ILcn/nubia/improve/xcloud/CloudManager$LoadImageListener;)V

    :cond_4
    return-object v3
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudMediaItem$1;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
