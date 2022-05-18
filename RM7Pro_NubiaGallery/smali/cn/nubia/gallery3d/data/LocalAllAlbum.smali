.class public Lcn/nubia/gallery3d/data/LocalAllAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "LocalAllAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalAllAlbum"


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field public mClustering:Lcn/nubia/gallery3d/data/AlbumClustering;

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 1

    .line 56
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    .line 55
    invoke-static {v0, p3}, Lcn/nubia/gallery3d/data/BucketHelper;->getBucketName(Lcn/nubia/gallery3d/app/ContentProviderProxy;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/gallery3d/data/LocalAllAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V
    .locals 2

    .line 37
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 31
    sget-object p1, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBaseUri:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mCachedCount:I

    .line 38
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 39
    iput p3, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    .line 40
    new-instance p1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object p3, Lcn/nubia/gallery3d/data/LocalAllAlbum;->WATCH_URIS:[Landroid/net/Uri;

    invoke-direct {p1, p0, p3, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 41
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 42
    new-instance p1, Lcn/nubia/gallery3d/data/AlbumClustering;

    invoke-direct {p1, p2, p0}, Lcn/nubia/gallery3d/data/AlbumClustering;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/LocalAllAlbum;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mClustering:Lcn/nubia/gallery3d/data/AlbumClustering;

    .line 43
    new-instance p2, Lcn/nubia/gallery3d/data/LocalAllAlbum$1;

    invoke-direct {p2, p0}, Lcn/nubia/gallery3d/data/LocalAllAlbum$1;-><init>(Lcn/nubia/gallery3d/data/LocalAllAlbum;)V

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/AlbumClustering;->setClusteringListener(Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;)V

    .line 49
    iput-object p4, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/data/LocalAllAlbum;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mCachedCount:I

    return p1
.end method

.method public static final getSelection(I)Ljava/lang/String;
    .locals 6

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media_type = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media_type = 3"

    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!=\'\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isMergedAlbum(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " IN "

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getSubBucketIdsAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " = "

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 236
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 237
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBaseUri:Landroid/net/Uri;

    iget v2, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    invoke-static {v2}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 231
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    return v0
.end method

.method public getClustering()Lcn/nubia/gallery3d/data/AlbumClustering;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mClustering:Lcn/nubia/gallery3d/data/AlbumClustering;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 266
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBaseUri:Landroid/net/Uri;

    iget p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    invoke-static {p1}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 267
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClauseByDateModify(Z)Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LocalAllAlbum"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 6

    if-nez p1, :cond_0

    return p2

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBaseUri:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    .line 196
    invoke-static {v3}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 203
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 204
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 215
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p2

    :cond_4
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p2

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 216
    throw p1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-virtual {v2, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 89
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v4

    iget p2, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    .line 90
    invoke-static {p2}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-object v3, p1

    .line 89
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_0

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalAllAlbum"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 97
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 98
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x7

    .line 99
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 104
    iget p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPanoBucket(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PANO_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    goto :goto_1

    .line 107
    :cond_1
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 111
    sget-object v3, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v5

    :goto_2
    if-nez v4, :cond_4

    goto :goto_0

    .line 118
    :cond_4
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v4, p2, v1, v2, p1}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 124
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 2

    .line 130
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mClustering:Lcn/nubia/gallery3d/data/AlbumClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/AlbumClustering;->getTotalCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mCachedCount:I

    .line 133
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    sget-object v1, Lcn/nubia/gallery3d/data/LocalAllAlbum;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-virtual {v1, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 158
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v3

    iget p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    .line 159
    invoke-static {p1}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    .line 158
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "LocalAllAlbum"

    if-nez p1, :cond_0

    const-string p1, "query placetable failed"

    .line 161
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 165
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 166
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Column _data is null."

    .line 168
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    .line 171
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    .line 172
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    move v2, v4

    :cond_2
    if-eqz v2, :cond_3

    .line 176
    sget-object v1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1

    .line 178
    :cond_3
    sget-object v1, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 180
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    :cond_4
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 184
    throw p2
.end method

.method public getSupportedOperations()J
    .locals 2

    .line 223
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mBucketId:I

    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeShifted(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x11000005

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1000005

    :goto_0
    return-wide v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mCachedCount:I

    .line 71
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->updateClusters()V

    .line 72
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mDataVersion:J

    .line 74
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public updateClusters()V
    .locals 2

    const-string v0, "LocalAllAlbum"

    const-string v1, "updateClusters"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum;->mClustering:Lcn/nubia/gallery3d/data/AlbumClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/AlbumClustering;->run()V

    return-void
.end method
