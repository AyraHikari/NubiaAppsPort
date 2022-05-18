.class Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;
.super Lcn/nubia/gallery3d/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private final mItem:Lcn/nubia/gallery3d/data/MediaItem;

.field private final mSlotIndex:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;-><init>()V

    .line 364
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    .line 365
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 390
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$300(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected submitBitmapTask(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->isASyncLoadImage()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 371
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/util/JobLimiter;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    new-instance v2, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader$1;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader$1;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/gallery3d/data/MediaItem;->requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcn/nubia/gallery3d/util/JobLimiter;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1

    .line 381
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    const/4 v0, 0x4

    .line 384
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/util/JobLimiter;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcn/nubia/gallery3d/util/JobLimiter;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 4

    .line 394
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    return-void

    .line 401
    :cond_1
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 402
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iput-object v0, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 404
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    .line 406
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$606(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)I

    .line 407
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$600(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$700(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 412
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    :cond_4
    :goto_0
    return-void
.end method
