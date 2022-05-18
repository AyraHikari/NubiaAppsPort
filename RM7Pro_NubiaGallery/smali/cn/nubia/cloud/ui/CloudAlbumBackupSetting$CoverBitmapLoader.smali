.class Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;
.super Lcn/nubia/gallery3d/ui/BitmapLoader;
.source "CloudAlbumBackupSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverBitmapLoader"
.end annotation


# instance fields
.field private mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;-><init>()V

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 270
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CoverBitmapLoader onLoadComplete name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud_Gallery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Lcn/nubia/cloud/ui/AlbumInfo;

    invoke-direct {v0}, Lcn/nubia/cloud/ui/AlbumInfo;-><init>()V

    .line 283
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v3, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/cloud/ui/AlbumInfo;->setSize(I)V

    .line 286
    iget-object v3, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/cloud/ui/AlbumInfo;->setName(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    .line 288
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isMergedAlbum(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getMergedBucketPaths(I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->access$500(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketPaths(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_1

    .line 296
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 300
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 302
    :cond_2
    invoke-virtual {v0, v2}, Lcn/nubia/cloud/ui/AlbumInfo;->setPath(Ljava/util/List;)V

    .line 303
    invoke-virtual {v0, p1}, Lcn/nubia/cloud/ui/AlbumInfo;->setCoverBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 305
    iput v1, p1, Landroid/os/Message;->what:I

    .line 306
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->access$600(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

    .line 275
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->access$400(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method
