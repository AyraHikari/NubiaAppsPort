.class Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;
.super Lcn/nubia/gallery3d/ui/BitmapLoader;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCoverLoader"
.end annotation


# instance fields
.field private mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

.field private final mSlotIndex:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;ILcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;-><init>()V

    .line 414
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    .line 415
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 440
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$300(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x1

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

    .line 420
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isASyncLoadImage()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 421
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$200(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    new-instance v2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;-><init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)V

    .line 422
    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/data/MediaItem;->requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    .line 421
    invoke-virtual {p1, v0, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1

    .line 433
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$200(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 4

    .line 445
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 449
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_1

    .line 451
    iput-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 454
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 456
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    .line 457
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$606(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)I

    .line 458
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$700(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)V

    .line 459
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 460
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 464
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 465
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    :cond_4
    :goto_0
    return-void
.end method
