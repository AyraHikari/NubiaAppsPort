.class public Lcn/nubia/gallery3d/data/LocalAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "LocalAlbum"


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcn/nubia/gallery3d/data/Path;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mProjection:[Ljava/lang/String;

.field private mProvider:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "count(_id)"

    .line 55
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/data/LocalAlbum;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZ)V
    .locals 7

    .line 92
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    .line 91
    invoke-static {v0, p3}, Lcn/nubia/gallery3d/data/BucketHelper;->getBucketName(Lcn/nubia/gallery3d/app/ContentProviderProxy;I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZLjava/lang/String;)V
    .locals 2

    .line 71
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 72
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 73
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mProvider:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 74
    iput p3, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 75
    iput-object p5, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 77
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 78
    sget-object p1, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 79
    invoke-direct {p0, p4}, Lcn/nubia/gallery3d/data/LocalAlbum;->getSelection(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 81
    invoke-static {p3}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPanoBucket(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PANO_PATH:Lcn/nubia/gallery3d/data/Path;

    goto :goto_0

    :cond_0
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    :goto_0
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    goto :goto_1

    .line 84
    :cond_1
    sget-object p1, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 87
    :goto_1
    new-instance p1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object p3, Lcn/nubia/gallery3d/data/LocalAlbum;->WATCH_URIS:[Landroid/net/Uri;

    invoke-direct {p1, p0, p3, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private getAlbumPath()Ljava/lang/String;
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalAlbum;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "/"

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 166
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 171
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getSelection(Z)Ljava/lang/String;
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media_type"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, " AND "

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bucket_id"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isMergedAlbum(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " IN "

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getSubBucketIdsAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, " = "

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_data"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "!=\'\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 1

    const/4 v0, 0x2

    .line 137
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 138
    sget-object v0, Lcn/nubia/gallery3d/data/LocalAlbum;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-virtual {p2, p0}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-nez p2, :cond_4

    if-eqz p4, :cond_2

    .line 142
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "multishoot"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 143
    new-instance p2, Lcn/nubia/gallery3d/data/MultiShootItem;

    invoke-direct {p2, p0, p3, p1}, Lcn/nubia/gallery3d/data/MultiShootItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "panorama"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 145
    new-instance p2, Lcn/nubia/gallery3d/data/PanoramaItem;

    invoke-direct {p2, p0, p3, p1}, Lcn/nubia/gallery3d/data/PanoramaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance p2, Lcn/nubia/gallery3d/data/LocalImage;

    invoke-direct {p2, p0, p3, p1}, Lcn/nubia/gallery3d/data/LocalImage;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "multishoot"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 151
    new-instance p2, Lcn/nubia/gallery3d/data/MultiShootItem;

    invoke-direct {p2, p0, p3, p1}, Lcn/nubia/gallery3d/data/MultiShootItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    .line 153
    :cond_3
    new-instance p2, Lcn/nubia/gallery3d/data/LocalVideo;

    invoke-direct {p2, p0, p3, p1}, Lcn/nubia/gallery3d/data/LocalVideo;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    .line 160
    :goto_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 218
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 219
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/gallery3d/data/LocalAlbum;->getAlbumPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteCloudTaskRecordByFilePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mProvider:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 260
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .line 97
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mIsImage:Z

    const-string v1, "bucketId"

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 99
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 103
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

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

    .line 298
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 300
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mProvider:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-boolean p1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/LocalAlbum;->getSelection(Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 301
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LocalAlbum"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 6

    if-eqz p1, :cond_5

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mProvider:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    .line 235
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 241
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 242
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 253
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

    .line 254
    throw p1

    :cond_5
    :goto_1
    return p2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ","

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

    move-result-object p1

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 115
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mProvider:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalAlbum"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 122
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 123
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 124
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    .line 125
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-boolean v3, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {p1, v1, v0, v2, v3}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    .line 127
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 131
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 8

    .line 176
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mProvider:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "LocalAlbum"

    const-string v2, "query fail"

    .line 180
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 184
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 185
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    throw v1

    .line 190
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 195
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    .line 210
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mBucketId:I

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

    .line 200
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 204
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalAlbum;->mDataVersion:J

    return-wide v0
.end method
