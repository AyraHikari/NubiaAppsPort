.class public Lcn/nubia/gallery3d/data/MultiShootItem;
.super Lcn/nubia/gallery3d/data/LocalImage;
.source "MultiShootItem.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/IMultiShoot;


# static fields
.field private static final COUNT_SELECTION:Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field public static final ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

.field public static final ITEM_PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "MultiShootItem"


# instance fields
.field private mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private mSupportOperation:J

.field private mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootItem;->getMultiShootFileCountSelection()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MultiShootItem;->COUNT_SELECTION:Ljava/lang/String;

    const-string v0, "/local/image/multishootitem"

    .line 23
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MultiShootItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/local/video/multishootitem"

    .line 24
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MultiShootItem;->ITEM_PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/LocalImage;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mTotalCount:I

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    .line 36
    new-instance p1, Lcn/nubia/gallery3d/data/ItemChangeNotifier;

    sget-object p3, Lcn/nubia/gallery3d/data/MediaSet;->WATCH_URIS:[Landroid/net/Uri;

    invoke-direct {p1, p0, p3, p2}, Lcn/nubia/gallery3d/data/ItemChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaItem;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/LocalImage;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mTotalCount:I

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    .line 31
    new-instance p1, Lcn/nubia/gallery3d/data/ItemChangeNotifier;

    sget-object p3, Lcn/nubia/gallery3d/data/MediaSet;->WATCH_URIS:[Landroid/net/Uri;

    invoke-direct {p1, p0, p3, p2}, Lcn/nubia/gallery3d/data/ItemChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaItem;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private static getMultiShootFileCountSelection()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media_type = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media_type = 3"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 5

    .line 65
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const-string v0, "external"

    .line 66
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->bucketId:I

    .line 68
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "bucket_id = ?"

    .line 67
    invoke-virtual {v1, v0, v3, v2}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public getExpandRecycledData()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "external"

    .line 125
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 126
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v2

    .line 127
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget v1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->bucketId:I

    .line 128
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v6, v5

    const-string v5, "bucket_id=?"

    const-string v7, "datetaken DESC, _id DESC"

    .line 126
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 133
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v2}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    .line 135
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/RecycledData;->initRecycledData(Landroid/database/Cursor;Lcn/nubia/gallery3d/data/RecycledData;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    .line 136
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcn/nubia/gallery3d/data/RecycledData;->ms_bucketId:I

    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 144
    throw v0
.end method

.method public getFilePathList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_data"

    .line 151
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "external"

    .line 152
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 153
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v2

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget v1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->bucketId:I

    .line 154
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const-string v5, "bucket_id=?"

    const-string v7, "datetaken ASC, _id ASC"

    .line 153
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 160
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "MultiShootItem"

    const-string v3, "Filepath is null."

    .line 163
    invoke-static {v2, v3}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 170
    throw v0
.end method

.method public getMediaType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    .line 51
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/32 v0, 0x438005

    .line 52
    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    .line 54
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->bucketId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->hasVideo(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    const-wide/32 v2, -0x10001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    const-wide/32 v2, -0x20001

    and-long/2addr v0, v2

    .line 56
    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    .line 59
    :cond_1
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mSupportOperation:J

    return-wide v0
.end method

.method public getTotalCount()I
    .locals 8

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mTotalCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_1
    const-string v0, "external"

    .line 76
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 78
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v2

    sget-object v4, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->COUNT_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcn/nubia/gallery3d/data/MultiShootItem;->COUNT_SELECTION:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    iget v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->bucketId:I

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v7, 0x0

    .line 78
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mTotalCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    throw v1

    .line 92
    :cond_3
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mTotalCount:I

    return v0
.end method

.method public getTotalPaths()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    iget v3, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->bucketId:I

    .line 99
    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    .line 100
    new-instance v2, Lcn/nubia/gallery3d/data/MultiShootItem$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/gallery3d/data/MultiShootItem$1;-><init>(Lcn/nubia/gallery3d/data/MultiShootItem;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;)V

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mTotalCount:I

    return-void
.end method

.method public updateData()V
    .locals 2

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mTotalCount:I

    .line 119
    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MultiShootItem;->mDataVersion:J

    return-void
.end method
