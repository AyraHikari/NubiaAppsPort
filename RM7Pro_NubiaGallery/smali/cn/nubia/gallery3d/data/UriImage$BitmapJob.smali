.class Lcn/nubia/gallery3d/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
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
.field private mType:I

.field final synthetic this$0:Lcn/nubia/gallery3d/data/UriImage;


# direct methods
.method protected constructor <init>(Lcn/nubia/gallery3d/data/UriImage;I)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput p2, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    .line 244
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/UriImage;->access$100(Lcn/nubia/gallery3d/data/UriImage;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v1}, Lcn/nubia/gallery3d/data/UriImage;->access$200(Lcn/nubia/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/improve/drm/DrmUtil;->uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    iget-boolean v1, v1, Lcn/nubia/gallery3d/data/UriImage;->mIsProtected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 247
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget v1, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {v0, p1, v1}, Lcn/nubia/improve/drm/DrmUtil;->getDRMBitmap(Ljava/lang/String;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    return-object v2

    .line 252
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/UriImage;->access$500(Lcn/nubia/gallery3d/data/UriImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    .line 253
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    .line 254
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 256
    iget-object v3, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    .line 257
    invoke-static {v3}, Lcn/nubia/gallery3d/data/UriImage;->access$700(Lcn/nubia/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget v4, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->mType:I

    .line 256
    invoke-static {p1, v3, v1, v0, v4}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 258
    iget-object v3, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/nubia/gallery3d/data/UriImage;->access$602(Lcn/nubia/gallery3d/data/UriImage;I)I

    .line 259
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_5

    if-nez v1, :cond_3

    goto :goto_1

    .line 263
    :cond_3
    iget p1, p0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_4

    .line 264
    invoke-static {v1, v0, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_4
    invoke-static {v1, v0, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_5
    :goto_1
    return-object v2
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
