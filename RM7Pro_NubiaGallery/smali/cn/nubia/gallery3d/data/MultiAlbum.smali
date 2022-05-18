.class public Lcn/nubia/gallery3d/data/MultiAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "MultiAlbum.java"


# static fields
.field protected static final ORDER_BY_DESC:Ljava/lang/String; = "datetaken DESC"

.field public static final PATH_ALL:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "MultiAlbum"

.field private static sReload:Z


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mCachedCount:I

.field public mClustering:Lcn/nubia/gallery3d/data/MultiShootClustering;

.field private final mMediaType:I

.field private final mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field public mSelection:Ljava/lang/String;

.field private reloadClusters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/MultiShootcluster/all/"

    .line 23
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MultiAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/MultiShootcluster/image/"

    .line 24
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MultiAlbum;->PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/MultiShootcluster/video/"

    .line 25
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MultiAlbum;->PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcn/nubia/gallery3d/data/MultiAlbum;->sReload:Z

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 39
    invoke-static {}, Lcn/nubia/gallery3d/data/MultiAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->reloadClusters:Z

    .line 40
    iput-object p2, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 41
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 42
    new-instance v0, Lcn/nubia/gallery3d/data/MultiShootClustering;

    invoke-direct {v0, p2, p0}, Lcn/nubia/gallery3d/data/MultiShootClustering;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/MultiAlbum;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mClustering:Lcn/nubia/gallery3d/data/MultiShootClustering;

    .line 43
    new-instance v1, Lcn/nubia/gallery3d/data/MultiAlbum$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/data/MultiAlbum$1;-><init>(Lcn/nubia/gallery3d/data/MultiAlbum;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/MultiShootClustering;->setClusteringListener(Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;)V

    .line 49
    new-instance v0, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcn/nubia/gallery3d/data/MultiAlbum;->WATCH_URIS:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    const/4 p2, -0x1

    .line 50
    iput p2, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mCachedCount:I

    .line 51
    invoke-static {p1}, Lcn/nubia/gallery3d/data/MultiAlbum;->getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mMediaType:I

    .line 52
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MultiAlbum;->getSelection()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mSelection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/data/MultiAlbum;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mCachedCount:I

    return p1
.end method

.method private findMultiShootBuckeyId(Lcn/nubia/gallery3d/data/Path;)Ljava/lang/String;
    .locals 7

    .line 312
    sget-object v1, Lcn/nubia/gallery3d/data/MultiAlbum;->BASE_URI:Landroid/net/Uri;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v2, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    const-string v3, "bucket_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MultiAlbum"

    if-nez p1, :cond_0

    const-string p1, "bucket == NULL"

    .line 319
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 323
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findMultiShootBuckeyId bucketId == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :cond_1
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 330
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findMultiShootBuckeyId Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :goto_0
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 334
    throw v0
.end method

.method private findMultiShootImageId(Lcn/nubia/gallery3d/data/Path;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    .line 251
    sget-object v0, Lcn/nubia/gallery3d/data/MultiAlbum;->BASE_URI:Landroid/net/Uri;

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id"

    .line 253
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v2, v1, Lcn/nubia/gallery3d/data/MultiAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    const-string v3, "_data"

    const-string v10, "bucket_id"

    filled-new-array {v3, v10}, [Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v6, v13

    const/4 v7, 0x0

    move-object v3, v0

    .line 254
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v14, "query fail: "

    const-string v15, "MultiAlbum"

    const/16 v16, 0x0

    if-nez v2, :cond_0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    .line 263
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_6

    .line 264
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 265
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 267
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string v2, "."

    .line 278
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dng"

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "image/x-adobe-dng\'"

    goto :goto_0

    :cond_1
    const-string v2, "image/jpeg\'"

    .line 284
    :goto_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v8, v13, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "media_type = 1"

    .line 285
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mime_type = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 287
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v2, v1, Lcn/nubia/gallery3d/data/MultiAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 288
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_2

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    .line 296
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v0

    const-string v3, "datetaken ASC, _id ASC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_1

    .line 300
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 302
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :cond_4
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v16

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 308
    throw v0

    .line 275
    :cond_5
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v16

    :cond_6
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v16

    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 276
    throw v0
.end method

.method private getExpandedCameraSelection()Ljava/lang/String;
    .locals 5

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 241
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string v1, " AND ("

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataLikeWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "datetaken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "!=\'\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!=\'0\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiShootSelection()Ljava/lang/String;
    .locals 5

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 232
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string v1, " AND ("

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataLikeWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "datetaken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "!=\'\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!=\'0\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reloadSelection()V
    .locals 1

    const/4 v0, 0x1

    .line 381
    sput-boolean v0, Lcn/nubia/gallery3d/data/MultiAlbum;->sReload:Z

    return-void
.end method


# virtual methods
.method public getClustering()Lcn/nubia/gallery3d/data/MultiShootClustering;
    .locals 1

    .line 226
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mClustering:Lcn/nubia/gallery3d/data/MultiShootClustering;

    return-object v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 6

    .line 341
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/MultiAlbum;->getExpandedCameraSelection()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object v2, v0

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 347
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    sget-object v1, Lcn/nubia/gallery3d/data/MultiAlbum;->BASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 348
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcn/nubia/gallery3d/data/MultiAlbum;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MultiAlbum"

    invoke-static {v0, p2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public getExpandRecycledData()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 358
    invoke-virtual {p0, v1, v2}, Lcn/nubia/gallery3d/data/MultiAlbum;->getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 363
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    new-instance v2, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v2}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    .line 365
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/RecycledData;->initRecycledData(Landroid/database/Cursor;Lcn/nubia/gallery3d/data/RecycledData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, v2, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    .line 367
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcn/nubia/gallery3d/data/RecycledData;->ms_bucketId:I

    .line 369
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 375
    :cond_2
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 376
    throw v0
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 6

    if-eqz p1, :cond_5

    .line 177
    sget-object v0, Lcn/nubia/gallery3d/data/MultiAlbum;->BASE_URI:Landroid/net/Uri;

    .line 178
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MultiAlbum;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android:query-arg-sql-selection"

    .line 181
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:query-arg-sql-sort-order"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android:query-arg-sql-group-by"

    const-string v3, "bucket_id"

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 192
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/MultiAlbum;->findMultiShootBuckeyId(Lcn/nubia/gallery3d/data/Path;)Ljava/lang/String;

    move-result-object p1

    .line 194
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 195
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "ly"

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 207
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

    .line 208
    throw p1

    :cond_5
    return p2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    sget-object v1, Lcn/nubia/gallery3d/data/MultiAlbum;->BASE_URI:Landroid/net/Uri;

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

    .line 74
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MultiAlbum;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android:query-arg-sql-selection"

    .line 77
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:query-arg-sql-sort-order"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:query-arg-sql-group-by"

    const-string v2, "bucket_id"

    .line 80
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    const-string v1, "MultiAlbum"

    if-nez p2, :cond_1

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query fail: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 88
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x5

    .line 89
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Column _data is null."

    .line 91
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    .line 94
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    .line 95
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    move v3, v5

    :cond_3
    if-eqz v3, :cond_5

    .line 99
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 100
    sget-object p1, Lcn/nubia/gallery3d/data/MultiShootItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 102
    :cond_4
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 105
    :cond_5
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 106
    sget-object p1, Lcn/nubia/gallery3d/data/MultiShootItem;->ITEM_PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 108
    :cond_6
    sget-object p1, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    .line 111
    :goto_1
    iget-object v2, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {p1, p2, v2, v4, v3}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    :cond_7
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 116
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 2

    .line 214
    iget v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mClustering:Lcn/nubia/gallery3d/data/MultiShootClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MultiShootClustering;->getTotalCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mCachedCount:I

    .line 217
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    sget-object v1, Lcn/nubia/gallery3d/data/MultiAlbum;->BASE_URI:Landroid/net/Uri;

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

    .line 124
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MultiAlbum;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android:query-arg-sql-selection"

    .line 127
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:query-arg-sql-sort-order"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:query-arg-sql-group-by"

    const-string v2, "bucket_id"

    .line 130
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    const-string v1, "MultiAlbum"

    if-nez p2, :cond_1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query fail: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 138
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x5

    .line 139
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Column _data is null."

    .line 141
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    .line 144
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    .line 145
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    move v3, v5

    :cond_3
    if-eqz v3, :cond_5

    .line 149
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    sget-object p1, Lcn/nubia/gallery3d/data/MultiShootItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 152
    :cond_4
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 155
    :cond_5
    sget-object p1, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    .line 157
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :cond_6
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 161
    throw p1
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 385
    sget-boolean v0, Lcn/nubia/gallery3d/data/MultiAlbum;->sReload:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mSelection:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/data/MultiAlbum;->getMultiShootSelection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mSelection:Ljava/lang/String;

    const/4 v0, 0x0

    .line 387
    sput-boolean v0, Lcn/nubia/gallery3d/data/MultiAlbum;->sReload:Z

    .line 389
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public needReloadClusters(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->reloadClusters:Z

    return-void
.end method

.method public reload()J
    .locals 2

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->reloadClusters:Z

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MultiAlbum;->updateClusters()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->reloadClusters:Z

    .line 65
    invoke-static {}, Lcn/nubia/gallery3d/data/MultiAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mDataVersion:J

    .line 67
    :cond_1
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public updateClusters()V
    .locals 2

    const-string v0, "MultiAlbum"

    const-string v1, "updateClusters"

    .line 221
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum;->mClustering:Lcn/nubia/gallery3d/data/MultiShootClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MultiShootClustering;->run()V

    return-void
.end method
