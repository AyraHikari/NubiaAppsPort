.class public Lcn/nubia/gallery3d/data/LocationAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "LocationAlbum.java"

# interfaces
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationAlbum"


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mBucketId:I

.field private mCachedCount:I

.field private mClustering:Lcn/nubia/gallery3d/data/NubiaLocationClustering;

.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mName:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mReloadClusters:Z

.field private mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V
    .locals 2

    .line 41
    invoke-static {}, Lcn/nubia/gallery3d/data/LocationAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mCachedCount:I

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mReloadClusters:Z

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "_id"

    .line 37
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mProjection:[Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 43
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 44
    new-instance p1, Lcn/nubia/gallery3d/data/NubiaLocationClustering;

    invoke-direct {p1, p2, p0}, Lcn/nubia/gallery3d/data/NubiaLocationClustering;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/LocationAlbum;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mClustering:Lcn/nubia/gallery3d/data/NubiaLocationClustering;

    .line 45
    iput p3, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mBucketId:I

    .line 46
    iput-object p4, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p4}, Lcn/nubia/gallery3d/data/LocationAlbum;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mSelection:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 p2, 0x2

    .line 49
    invoke-virtual {p1, p2, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(ILcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    return-void
.end method

.method private deleteNotExist(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ","

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "_id in (%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;[Ljava/lang/String;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 162
    iget v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mBucketId:I

    return v0
.end method

.method public getClustering()Lcn/nubia/gallery3d/data/NubiaLocationClustering;
    .locals 1

    .line 201
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mClustering:Lcn/nubia/gallery3d/data/NubiaLocationClustering;

    return-object v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11

    .line 206
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mSelection:Ljava/lang/String;

    .line 207
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 206
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "LocationAlbum"

    if-nez v0, :cond_0

    const-string p1, "query placetable failed"

    .line 209
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 215
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    .line 217
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "_id in (%s)"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v4

    move-object v7, v0

    goto :goto_1

    .line 229
    :cond_3
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    .line 231
    :goto_1
    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    sget-object v6, Lcn/nubia/gallery3d/data/LocationAlbum;->BASE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    .line 232
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v10

    .line 231
    invoke-virtual/range {v5 .. v10}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_4

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcn/nubia/gallery3d/data/LocationAlbum;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 222
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 223
    throw p1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 58
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mSelection:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 58
    invoke-virtual/range {v2 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, "LocationAlbum"

    const-string p2, "query placetable failed"

    .line 61
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 65
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 66
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "_id in (%s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v7

    .line 78
    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    sget-object v6, Lcn/nubia/gallery3d/data/LocationAlbum;->BASE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    .line 79
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-virtual/range {v5 .. v10}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 82
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 84
    sget-object v3, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    .line 85
    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 86
    invoke-interface {v5}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 85
    invoke-static {v3, p1, v5, v6, v1}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    :cond_3
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 92
    throw p2

    .line 94
    :cond_4
    :goto_2
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/data/LocationAlbum;->deleteNotExist(Ljava/util/HashSet;)V

    return-object v0

    :catchall_1
    move-exception p1

    .line 74
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 75
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 11

    .line 100
    iget v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v3, 0x2

    const-string v0, "count(_id)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "LocationAlbum"

    const-string v2, "query placetable failed"

    .line 104
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 108
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 109
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 112
    throw v1

    .line 114
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(II)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mSelection:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 121
    invoke-virtual/range {v1 .. v9}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "LocationAlbum"

    const-string p2, "query placetable failed"

    .line 124
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 128
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 129
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 130
    sget-object v1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, p2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    .line 131
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 135
    throw p2
.end method

.method public getSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city_classification"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needReloadClusters(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mReloadClusters:Z

    return-void
.end method

.method public onDataUpdate()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocationAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 3

    .line 172
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mReloadClusters:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mCachedCount:I

    .line 174
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocationAlbum;->updateClusters()V

    .line 175
    iput-boolean v2, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mReloadClusters:Z

    .line 176
    invoke-static {}, Lcn/nubia/gallery3d/data/LocationAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mDataVersion:J

    .line 178
    :cond_1
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public updateClusters()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbum;->mClustering:Lcn/nubia/gallery3d/data/NubiaLocationClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->run()V

    return-void
.end method
