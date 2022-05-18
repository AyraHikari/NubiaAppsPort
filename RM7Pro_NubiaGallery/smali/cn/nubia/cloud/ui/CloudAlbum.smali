.class public Lcn/nubia/cloud/ui/CloudAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "CloudAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudAlbum"


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mCloudAlbumPath:Ljava/lang/String;

.field private mForceUpdate:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLocalItemPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mNewAddItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldLocalItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/Path;",
            "Lcn/nubia/gallery3d/app/GalleryApp;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcn/nubia/cloud/ui/CloudAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p3, 0x0

    .line 32
    iput-boolean p3, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mForceUpdate:Z

    const/4 p3, 0x0

    .line 33
    iput-object p3, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mCloudAlbumPath:Ljava/lang/String;

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "path "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CloudAlbum"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 40
    iput-object p4, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mName:Ljava/lang/String;

    .line 41
    invoke-direct {p0, p5}, Lcn/nubia/cloud/ui/CloudAlbum;->initLocalItemPaths(Ljava/util/ArrayList;)V

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 179
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->XCLOUD_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    const p1, 0x7f1000dd

    .line 180
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private initLocalItemPaths(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addLocalItem(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    .line 215
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    const-string p2, ""

    .line 217
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mNewAddItems:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 219
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mNewAddItems:Ljava/util/ArrayList;

    .line 221
    :cond_2
    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mNewAddItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_3
    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mOldLocalItems:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 224
    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mOldLocalItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p3, :cond_5

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mForceUpdate:Z

    .line 228
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/cloud/ui/CloudAlbum$2;

    invoke-direct {p2, p0}, Lcn/nubia/cloud/ui/CloudAlbum$2;-><init>(Lcn/nubia/cloud/ui/CloudAlbum;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 343
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mCloudAlbumPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcn/nubia/cloud/ui/CloudAlbum;

    if-eqz v1, :cond_0

    .line 344
    check-cast p1, Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudAlbum;->getCloudPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAllCloudItemPath()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mCloudAlbumPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 4

    .line 286
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 288
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 289
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int v4, v2, p2

    .line 52
    iget-object v0, v1, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 53
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v0, v6

    .line 54
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 55
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lt v0, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v8, v0, 0x1

    .line 64
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cloudPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " localPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CloudAlbum"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v9, Lcn/nubia/cloud/ui/CloudMediaItem;

    iget-object v11, v1, Lcn/nubia/cloud/ui/CloudAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v9, v0, v11}, Lcn/nubia/cloud/ui/CloudMediaItem;-><init>(Ljava/lang/String;Lcn/nubia/gallery3d/app/GalleryApp;)V

    .line 68
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 69
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cloudpath"

    .line 70
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 71
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v12, v1, Lcn/nubia/cloud/ui/CloudAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v12}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v13

    const/4 v14, 0x1

    const-string v12, "localpath"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v15

    .line 75
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 73
    invoke-virtual/range {v13 .. v20}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 78
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 79
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 80
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "localPath="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 82
    iget-object v12, v1, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v12, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_2
    :goto_1
    invoke-static {v11}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 86
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getMediaItem failed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 89
    invoke-static {v11}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 90
    throw v0

    .line 93
    :cond_3
    :goto_2
    invoke-virtual {v9, v7}, Lcn/nubia/cloud/ui/CloudMediaItem;->setLocalPath(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v8

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-object v3
.end method

.method public getMediaItemCount()I
    .locals 2

    .line 160
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printPath()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 276
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 279
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reload()J
    .locals 2

    .line 189
    iget-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mForceUpdate:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcn/nubia/cloud/ui/CloudAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mDataVersion:J

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mForceUpdate:Z

    .line 193
    :cond_0
    iget-wide v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public removePath(Ljava/lang/String;)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 304
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iput-boolean v2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mForceUpdate:Z

    move v1, v2

    .line 309
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mOldLocalItems:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mOldLocalItems:Ljava/util/ArrayList;

    .line 313
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mOldLocalItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 315
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/cloud/ui/CloudAlbum$4;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/ui/CloudAlbum$4;-><init>(Lcn/nubia/cloud/ui/CloudAlbum;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setCloudItems(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 115
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    .line 118
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "CloudAlbum"

    if-eqz v2, :cond_2

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Cloudalbum remove path : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CloudAlbum new path : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    const-string v4, ""

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_5
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->updateDeleteColumnAfterDeleteCloudItem(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mForceUpdate:Z

    .line 149
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/cloud/ui/CloudAlbum$1;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/ui/CloudAlbum$1;-><init>(Lcn/nubia/cloud/ui/CloudAlbum;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public setCloudPath(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mCloudAlbumPath:Ljava/lang/String;

    return-void
.end method

.method public updateLocalItem()Z
    .locals 5

    .line 245
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mOldLocalItems:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mOldLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    iget-object v4, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iput-boolean v1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mForceUpdate:Z

    move v2, v1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mNewAddItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 256
    iput-boolean v1, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mForceUpdate:Z

    .line 257
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mNewAddItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 259
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mLocalItemPaths:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mOldLocalItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const-string v0, "CloudAlbum"

    const-string v2, " updateLocalItem  need to reload cloudalbum"

    .line 261
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbum;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/cloud/ui/CloudAlbum$3;

    invoke-direct {v2, p0}, Lcn/nubia/cloud/ui/CloudAlbum$3;-><init>(Lcn/nubia/cloud/ui/CloudAlbum;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return v1
.end method
