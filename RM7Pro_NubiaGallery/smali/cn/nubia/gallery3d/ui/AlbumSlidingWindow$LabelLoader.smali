.class Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;
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
    name = "LabelLoader"
.end annotation


# static fields
.field public static final TYPE_DATE:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1


# instance fields
.field private final mLabelText:Ljava/lang/String;

.field private final mSlotIndex:I

.field private final mType:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;I)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;-><init>()V

    .line 428
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->mSlotIndex:I

    .line 429
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->mLabelText:Ljava/lang/String;

    .line 430
    iput p4, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->mType:I

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

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

    .line 436
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 440
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$900(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->mLabelText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->requestDateLabel(Ljava/lang/String;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/JobLimiter;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1

    .line 438
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$900(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->mLabelText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->requestItemLabel(Ljava/lang/String;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/JobLimiter;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 4

    .line 452
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->mSlotIndex:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    return-void

    .line 461
    :cond_1
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 462
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 463
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iput-object v0, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->label:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 464
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->mSlotIndex:I

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$1000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    .line 466
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$606(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)I

    .line 467
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$600(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v0

    if-nez v0, :cond_2

    .line 468
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$700(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)V

    .line 469
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 470
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$LabelLoader;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->access$1000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    :cond_4
    :goto_0
    return-void
.end method
