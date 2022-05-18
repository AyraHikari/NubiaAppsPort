.class public Lcn/nubia/gallery3d/data/ThingsAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "ThingsAlbumSet.java"

# interfaces
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/ThingsAlbumSet$AlbumsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/gallery3d/data/MediaSet;",
        "Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Ljava/util/ArrayList<",
        "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ThingsAlbumSet"


# instance fields
.field private GROUP_ORDER_BY:Ljava/lang/String;

.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mGroupBy:Ljava/lang/String;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 40
    invoke-static {}, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const-string p1, "group_name"

    .line 36
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mGroupBy:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 42
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v0, 0x3

    .line 43
    invoke-virtual {p2, v0, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(ILcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    .line 44
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mGroupBy:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportThingsGroup()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "tag_name"

    .line 46
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mGroupBy:Ljava/lang/String;

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mGroupBy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ASC"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->GROUP_ORDER_BY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 75
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    return v0
.end method

.method public getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 3

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcn/nubia/gallery3d/data/ResourceCoverItem;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const v2, 0x7f0800b2

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/ResourceCoverItem;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 123
    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 2

    .line 194
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    invoke-virtual {p2, p3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    .line 196
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    monitor-exit v0

    return-object p1

    .line 200
    :cond_0
    new-instance p1, Lcn/nubia/gallery3d/data/ThingsAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {p1, p2, v1, p3, p4}, Lcn/nubia/gallery3d/data/ThingsAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubCoverMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSubSetMediaItemCount(I)I
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    iget p1, p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
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

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag_confidence"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/improve/database/ThingsTable;->CONFIDENCE_THRESHOLD:F

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "remove"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is NULL or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <> 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v3, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    sget-object v5, Lcn/nubia/improve/database/ThingsTable;->DISTINCT_PROJECTION_GROUPBY:[Ljava/lang/String;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mGroupBy:Ljava/lang/String;

    iget-object v10, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->GROUP_ORDER_BY:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 161
    invoke-virtual/range {v3 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "ThingsAlbumSet"

    if-nez v0, :cond_0

    const-string p1, "cannot open placeTable database"

    .line 165
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 169
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 170
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 171
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportThingsGroup()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    .line 176
    :cond_1
    new-instance v4, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5, v3}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget v6, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    iget-object v7, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6, v7}, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    iput-object v3, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    const/4 v3, 0x2

    .line 179
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    .line 180
    iget-object v3, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    iput-object v3, v4, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThingsAlbumeSet:loadBucketEntries entry is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 188
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object p1

    :cond_2
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 189
    throw p1
.end method

.method public onDataUpdate()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    if-eq v0, p1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mIsLoading:Z

    if-nez p1, :cond_1

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 146
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->notifyContentChanged()V

    .line 148
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 149
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getParent()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->onDataUpdate()V

    :cond_2
    return-void
.end method

.method public reload()J
    .locals 3

    .line 58
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 59
    iput-boolean v1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mIsLoading:Z

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/data/ThingsAlbumSet$AlbumsLoader;

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/data/ThingsAlbumSet$AlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/ThingsAlbumSet;Lcn/nubia/gallery3d/data/ThingsAlbumSet$1;)V

    invoke-virtual {v0, v1, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 63
    iput-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 64
    iput-object v2, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    .line 66
    iget-object v1, v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mDataVersion:J

    .line 70
    :cond_2
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->mDataVersion:J

    return-wide v0
.end method
