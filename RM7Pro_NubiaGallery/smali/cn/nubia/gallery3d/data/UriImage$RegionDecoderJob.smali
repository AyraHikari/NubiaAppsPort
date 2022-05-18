.class Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;
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
    name = "RegionDecoderJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/UriImage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/data/UriImage;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/data/UriImage;Lcn/nubia/gallery3d/data/UriImage$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcn/nubia/gallery3d/data/UriImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 5

    .line 202
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/UriImage;->access$100(Lcn/nubia/gallery3d/data/UriImage;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v1}, Lcn/nubia/gallery3d/data/UriImage;->access$200(Lcn/nubia/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/improve/drm/DrmUtil;->uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    iget-boolean v1, v1, Lcn/nubia/gallery3d/data/UriImage;->mIsProtected:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 205
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-static {p1, v0, v2}, Lcn/nubia/improve/drm/DrmUtil;->requestCreateDRMBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    .line 209
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/UriImage;->access$302(Lcn/nubia/gallery3d/data/UriImage;I)I

    .line 210
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/UriImage;->access$402(Lcn/nubia/gallery3d/data/UriImage;I)I

    :cond_1
    return-object v3

    .line 214
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/UriImage;->access$500(Lcn/nubia/gallery3d/data/UriImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v3

    .line 218
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/UriImage;->access$100(Lcn/nubia/gallery3d/data/UriImage;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    .line 219
    invoke-static {v1}, Lcn/nubia/gallery3d/data/UriImage;->access$200(Lcn/nubia/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :try_start_1
    invoke-static {p1, v0, v2}, Lcn/nubia/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    .line 222
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/data/UriImage;->access$302(Lcn/nubia/gallery3d/data/UriImage;I)I

    .line 223
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/data/UriImage;->access$402(Lcn/nubia/gallery3d/data/UriImage;I)I

    .line 224
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/data/UriImage;->access$602(Lcn/nubia/gallery3d/data/UriImage;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v3

    .line 226
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v0

    :goto_1
    return-object v3

    :goto_2
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 229
    throw p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    return-object p1
.end method
