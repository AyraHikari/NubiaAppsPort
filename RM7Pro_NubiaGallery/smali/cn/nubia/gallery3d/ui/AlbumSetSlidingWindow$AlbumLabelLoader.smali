.class Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;
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
    name = "AlbumLabelLoader"
.end annotation


# instance fields
.field private final mSlotIndex:I

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field private final mTotalCount:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;-><init>()V

    .line 497
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    .line 498
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    .line 499
    iput p4, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    .line 500
    iput p5, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 511
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$300(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected submitBitmapTask(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
    .locals 6
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

    .line 505
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$200(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$900(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    .line 506
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    .line 505
    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 4

    .line 516
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 520
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 521
    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    if-eqz v1, :cond_1

    .line 523
    iput-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 525
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    .line 527
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$606(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)I

    .line 528
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$700(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)V

    .line 529
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 531
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    :cond_4
    :goto_0
    return-void
.end method
