.class public Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "VisitorModeCameraAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field public static final PATH_ALL:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "VisitorModeCameraAlbum"

.field private static mDuration:[J


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mDataManager:Lcn/nubia/gallery3d/data/DataManager;

.field private final mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private mPath:Lcn/nubia/gallery3d/data/Path;

.field private final mProjection:[Ljava/lang/String;

.field private mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mSelection:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/cameracluster/visitor/all/"

    .line 22
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "count(_id)"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string v0, "/local/image"

    .line 28
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/local/video"

    .line 29
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 3

    .line 44
    invoke-static {}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const-string v0, "external"

    .line 24
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mBaseUri:Landroid/net/Uri;

    .line 31
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mProjection:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mCachedCount:I

    .line 45
    iput-object p2, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 46
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 47
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    .line 48
    new-instance v0, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->WATCH_URIS:[Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p2, v2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 49
    iput-object p1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 50
    invoke-static {p1}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mType:I

    return-void
.end method

.method public static getCameraSelection(I[J)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 91
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    aget-wide v0, p1, v0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    :goto_0
    const/4 v2, 0x1

    .line 92
    aget-wide v5, p1, v2

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    aget-wide v3, p1, v2

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-static {p1, p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p0, " AND "

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_data"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "!=\'\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "datetaken"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "!=\'0\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " >\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " <\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " OR ("

    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataLikeWhereClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AND ("

    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "bucket_id"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " IN ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_IDS:Ljava/util/List;

    .line 107
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")) "

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hu"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelection(I[J)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->getCameraSelection(I[J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7

    .line 197
    iget v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mType:I

    sget-object v1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->getSelection(I[J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 204
    iget-object v1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    const/4 v5, 0x0

    .line 205
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VisitorModeCameraAlbum"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public getDuration()[J
    .locals 1

    .line 217
    sget-object v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    return-object v0
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 6

    .line 163
    iget v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mType:I

    sget-object v1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->getSelection(I[J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album 3 mSelction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mBaseUri:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 172
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    .line 173
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 184
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p2

    :cond_3
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p2

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 185
    throw p1
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

    .line 55
    iget v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mType:I

    sget-object v1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->getSelection(I[J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album 1 mSelction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mBaseUri:Landroid/net/Uri;

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

    move-result-object v2

    .line 59
    iget-object v1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 63
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x7

    .line 64
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v1, 0x0

    .line 65
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    .line 68
    sget-object p2, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    goto :goto_1

    .line 70
    :cond_1
    sget-object p2, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    .line 72
    :goto_1
    iget-object v2, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {p2, p1, v2, v3, v1}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p2

    .line 74
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 78
    throw p2

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 8

    .line 131
    iget v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mType:I

    sget-object v1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->getSelection(I[J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album 2 mSelction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v2, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VisitorModeCameraAlbum"

    const-string v2, "query fail"

    .line 137
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 141
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 142
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 145
    throw v1

    .line 147
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "VISITOR"

    return-object v0
.end method

.method public reload()J
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mCachedCount:I

    .line 157
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setDuration([J)V
    .locals 0

    .line 213
    sput-object p1, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->mDuration:[J

    return-void
.end method
