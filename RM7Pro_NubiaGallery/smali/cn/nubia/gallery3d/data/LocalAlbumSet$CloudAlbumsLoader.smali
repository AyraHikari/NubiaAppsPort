.class Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudAlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/util/ArrayList<",
        "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/data/LocalAlbumSet;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/data/LocalAlbumSet;Lcn/nubia/gallery3d/data/LocalAlbumSet$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/LocalAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 331
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->CloudLoadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    .line 332
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 337
    :cond_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    .line 338
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    .line 342
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getAlbumOrder()[I

    move-result-object v1

    .line 343
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-ge v4, v2, :cond_3

    aget v7, v1, v4

    .line 344
    invoke-static {p1, v7}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$000([Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;I)I

    move-result v7

    if-eq v7, v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    .line 346
    invoke-static {p1, v5, v7}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$100([Ljava/lang/Object;II)V

    move v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    :cond_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 351
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_TAIL:[I

    .line 352
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_5

    .line 353
    aget v5, v2, v4

    invoke-static {p1, v5}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$000([Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;I)I

    move-result v5

    if-eq v5, v6, :cond_4

    add-int/lit8 v7, v1, -0x1

    .line 355
    invoke-static {p1, v1, v5}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$200([Ljava/lang/Object;II)V

    move v1, v7

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 359
    :cond_5
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 361
    array-length v2, p1

    :goto_2
    if-ge v3, v2, :cond_18

    aget-object v10, p1, v3

    .line 363
    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    if-ne v4, v5, :cond_8

    .line 364
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v4, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    iget v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 365
    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 367
    check-cast v5, Lcn/nubia/gallery3d/data/MediaSet;

    goto/16 :goto_4

    .line 369
    :cond_6
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 371
    new-instance v5, Lcn/nubia/gallery3d/data/FavorAlbum;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    iget v7, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-direct {v5, v4, v6, v7}, Lcn/nubia/gallery3d/data/FavorAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_4

    .line 373
    :cond_7
    new-instance v5, Lcn/nubia/gallery3d/data/MarkAlbum;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    iget v7, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-direct {v5, v4, v6, v7}, Lcn/nubia/gallery3d/data/MarkAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_4

    .line 376
    :cond_8
    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    if-eq v4, v5, :cond_16

    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    if-ne v4, v5, :cond_9

    goto/16 :goto_3

    .line 387
    :cond_9
    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    if-ne v4, v5, :cond_b

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/local/all/recycled/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 389
    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 391
    check-cast v5, Lcn/nubia/gallery3d/data/MediaSet;

    goto/16 :goto_4

    .line 393
    :cond_a
    new-instance v5, Lcn/nubia/gallery3d/data/RecycledAlbum;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    iget v7, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-direct {v5, v4, v6, v7}, Lcn/nubia/gallery3d/data/RecycledAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_4

    .line 395
    :cond_b
    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOTSYSTEM_ALBUM_SET_BUCKET_ID:I

    if-ne v4, v5, :cond_d

    .line 396
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v4, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    iget v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 397
    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 399
    check-cast v5, Lcn/nubia/gallery3d/data/MediaSet;

    goto/16 :goto_4

    .line 401
    :cond_c
    new-instance v5, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    iget v7, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-direct {v5, v4, v6, v7}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_4

    .line 403
    :cond_d
    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->COLLECTION:I

    if-ne v4, v5, :cond_f

    .line 404
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v4, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    iget v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 405
    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 407
    check-cast v5, Lcn/nubia/gallery3d/data/MediaSet;

    goto/16 :goto_4

    .line 409
    :cond_e
    new-instance v5, Lcn/nubia/gallery3d/data/CollectAlbumSet;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    iget v7, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-direct {v5, v4, v6, v7}, Lcn/nubia/gallery3d/data/CollectAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_4

    .line 411
    :cond_f
    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    if-ne v4, v5, :cond_11

    .line 412
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v4, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 413
    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 415
    check-cast v5, Lcn/nubia/gallery3d/data/MediaSet;

    goto/16 :goto_4

    .line 417
    :cond_10
    new-instance v5, Lcn/nubia/gallery3d/data/FacesAlbumSet;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcn/nubia/gallery3d/data/FacesAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    goto/16 :goto_4

    .line 419
    :cond_11
    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    if-ne v4, v5, :cond_13

    .line 420
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v4, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 421
    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 423
    check-cast v5, Lcn/nubia/gallery3d/data/MediaSet;

    goto :goto_4

    .line 425
    :cond_12
    new-instance v5, Lcn/nubia/gallery3d/data/LocationAlbumSet;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcn/nubia/gallery3d/data/LocationAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    goto :goto_4

    .line 427
    :cond_13
    iget v4, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    if-ne v4, v5, :cond_15

    .line 428
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v4, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 429
    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 431
    check-cast v5, Lcn/nubia/gallery3d/data/MediaSet;

    goto :goto_4

    .line 433
    :cond_14
    new-instance v5, Lcn/nubia/gallery3d/data/ThingsAlbumSet;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcn/nubia/gallery3d/data/ThingsAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    goto :goto_4

    .line 436
    :cond_15
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget v6, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v7, v5, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget v8, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    iget-object v9, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v5

    goto :goto_4

    .line 378
    :cond_16
    :goto_3
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v4, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 379
    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 381
    check-cast v5, Lcn/nubia/gallery3d/data/MediaSet;

    goto :goto_4

    .line 383
    :cond_17
    new-instance v5, Lcn/nubia/gallery3d/data/MultiShootAlbum;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-static {v6}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v6

    iget v7, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    iget-object v8, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-direct {v5, v4, v6, v7, v8}, Lcn/nubia/gallery3d/data/MultiShootAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    .line 439
    :goto_4
    iput-object v5, v10, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    .line 440
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_18
    return-object v0
.end method
