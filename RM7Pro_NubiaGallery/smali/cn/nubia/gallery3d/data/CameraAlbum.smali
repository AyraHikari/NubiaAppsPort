.class public Lcn/nubia/gallery3d/data/CameraAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "CameraAlbum.java"


# static fields
.field public static final PATH_ALL:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "CameraAlbum"

.field private static sReload:Z


# instance fields
.field private duration:[J

.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mCachedCount:I

.field public mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

.field private final mMediaType:I

.field private final mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field public mSelection:Ljava/lang/String;

.field private reloadClusters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/cameracluster/all/"

    .line 20
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/cameracluster/image/"

    .line 21
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/cameracluster/video/"

    .line 22
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcn/nubia/gallery3d/data/CameraAlbum;->sReload:Z

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 36
    invoke-static {}, Lcn/nubia/gallery3d/data/CameraAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->reloadClusters:Z

    .line 37
    iput-object p2, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 38
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 39
    new-instance v0, Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-direct {v0, p2, p0}, Lcn/nubia/gallery3d/data/CameraClustering;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/CameraAlbum;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    .line 40
    new-instance v1, Lcn/nubia/gallery3d/data/CameraAlbum$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/data/CameraAlbum$1;-><init>(Lcn/nubia/gallery3d/data/CameraAlbum;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/CameraClustering;->setClusteringListener(Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;)V

    .line 46
    new-instance v0, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcn/nubia/gallery3d/data/CameraAlbum;->WATCH_URIS:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    const/4 p2, -0x1

    .line 47
    iput p2, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mCachedCount:I

    .line 48
    invoke-static {p1}, Lcn/nubia/gallery3d/data/CameraAlbum;->getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mMediaType:I

    .line 49
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/CameraAlbum;->getSelection()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mSelection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/data/CameraAlbum;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mCachedCount:I

    return p1
.end method

.method private findMultiShootImageId(Lcn/nubia/gallery3d/data/Path;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    .line 254
    sget-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->BASE_URI:Landroid/net/Uri;

    .line 255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id"

    .line 256
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v2, v1, Lcn/nubia/gallery3d/data/CameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    const-string v3, "_data"

    const-string v10, "bucket_id"

    filled-new-array {v3, v10}, [Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
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

    .line 257
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v14, "query fail: "

    const-string v15, "CameraAlbum"

    const/16 v16, 0x0

    if-nez v2, :cond_0

    .line 262
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

    .line 266
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_6

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 268
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 270
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string v2, "."

    .line 281
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dng"

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "image/x-adobe-dng\'"

    goto :goto_0

    :cond_1
    const-string v2, "image/jpeg\'"

    .line 287
    :goto_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v8, v13, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "media_type = 1"

    .line 288
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

    .line 289
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v2, v1, Lcn/nubia/gallery3d/data/CameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v5

    .line 292
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

    .line 291
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_2

    .line 295
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

    .line 299
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v0

    const-string v3, "datetaken ASC, _id ASC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    goto :goto_1

    .line 303
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
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

    .line 310
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :cond_4
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v16

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 311
    throw v0

    .line 278
    :cond_5
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v16

    :cond_6
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v16

    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 279
    throw v0
.end method

.method public static getCameraSelection(I)Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-static {v0, p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p0, " AND "

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_data"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "!=\'\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AND ("

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "bucket_id"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " IN ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_IDS:Ljava/util/List;

    .line 231
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    .line 232
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraSelections(I)Ljava/lang/String;
    .locals 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-static {v0, p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p0, " AND "

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_data"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "!=\'\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AND ("

    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "bucket_id"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " IN ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->FOR_CAMERA_BUCKET_IDS:Ljava/util/List;

    .line 218
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    .line 219
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " OR "

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataLikeWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExpandedCameraSelection()Ljava/lang/String;
    .locals 5

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    .line 243
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND ("

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_IDS:Ljava/util/List;

    .line 246
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiShootSelection()Ljava/lang/String;
    .locals 4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 204
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string v2, " AND ("

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataLikeWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AND files."

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "media_type"

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reloadSelection()V
    .locals 1

    const/4 v0, 0x1

    .line 357
    sput-boolean v0, Lcn/nubia/gallery3d/data/CameraAlbum;->sReload:Z

    return-void
.end method


# virtual methods
.method public getClustering()Lcn/nubia/gallery3d/data/CameraClustering;
    .locals 1

    .line 198
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    return-object v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 6

    .line 317
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/CameraAlbum;->getExpandedCameraSelection()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object v2, v0

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 323
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    sget-object v1, Lcn/nubia/gallery3d/data/CameraAlbum;->BASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 324
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 326
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraAlbum"

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

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 334
    invoke-virtual {p0, v1, v2}, Lcn/nubia/gallery3d/data/CameraAlbum;->getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 339
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    new-instance v2, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v2}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    .line 341
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/RecycledData;->initRecycledData(Landroid/database/Cursor;Lcn/nubia/gallery3d/data/RecycledData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, v2, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    .line 343
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcn/nubia/gallery3d/data/RecycledData;->ms_bucketId:I

    .line 345
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 351
    :cond_2
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 352
    throw v0
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 7

    if-eqz p1, :cond_5

    .line 151
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/CameraAlbum;->findMultiShootImageId(Lcn/nubia/gallery3d/data/Path;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_0
    sget-object v2, Lcn/nubia/gallery3d/data/CameraAlbum;->BASE_URI:Landroid/net/Uri;

    .line 160
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/CameraAlbum;->getSelection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 161
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    return p2

    .line 167
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 168
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_2

    .line 179
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p2

    :cond_4
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 180
    throw p2

    :cond_5
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

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    sget-object v1, Lcn/nubia/gallery3d/data/CameraAlbum;->BASE_URI:Landroid/net/Uri;

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

    .line 71
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/CameraAlbum;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v2, p1

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-string v1, "CameraAlbum"

    if-nez p2, :cond_0

    .line 74
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

    .line 79
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    .line 80
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Column _data is null."

    .line 82
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    .line 85
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    .line 86
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    move v3, v5

    :cond_2
    if-eqz v3, :cond_4

    .line 90
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 91
    sget-object p1, Lcn/nubia/gallery3d/data/MultiShootItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 93
    :cond_3
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 96
    :cond_4
    sget-object p1, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    .line 98
    :goto_1
    iget-object v2, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {p1, p2, v2, v4, v3}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :cond_5
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 103
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 2

    .line 186
    iget v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CameraClustering;->getTotalCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mCachedCount:I

    .line 189
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    sget-object v1, Lcn/nubia/gallery3d/data/CameraAlbum;->BASE_URI:Landroid/net/Uri;

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

    .line 112
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/CameraAlbum;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v2, p1

    .line 112
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-string v1, "CameraAlbum"

    if-nez p2, :cond_0

    .line 115
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

    .line 120
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    .line 121
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Column _data is null."

    .line 123
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    .line 126
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    .line 127
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    move v3, v5

    :cond_2
    if-eqz v3, :cond_4

    .line 131
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->checkMultiShootDir(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 132
    sget-object p1, Lcn/nubia/gallery3d/data/MultiShootItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 134
    :cond_3
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_1

    .line 137
    :cond_4
    sget-object p1, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    .line 139
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    :cond_5
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 143
    throw p1
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 361
    sget-boolean v0, Lcn/nubia/gallery3d/data/CameraAlbum;->sReload:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mSelection:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 362
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mMediaType:I

    invoke-static {v0}, Lcn/nubia/gallery3d/data/CameraAlbum;->getCameraSelection(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mSelection:Ljava/lang/String;

    const/4 v0, 0x0

    .line 363
    sput-boolean v0, Lcn/nubia/gallery3d/data/CameraAlbum;->sReload:Z

    .line 365
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public needReloadClusters(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->reloadClusters:Z

    return-void
.end method

.method public reload()J
    .locals 2

    .line 59
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->reloadClusters:Z

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/CameraAlbum;->updateClusters()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->reloadClusters:Z

    .line 62
    invoke-static {}, Lcn/nubia/gallery3d/data/CameraAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mDataVersion:J

    .line 64
    :cond_1
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public updateClusters()V
    .locals 2

    const-string v0, "CameraAlbum"

    const-string v1, "updateClusters"

    .line 193
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CameraClustering;->run()V

    return-void
.end method
