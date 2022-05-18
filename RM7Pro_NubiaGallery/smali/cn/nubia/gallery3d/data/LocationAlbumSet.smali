.class public Lcn/nubia/gallery3d/data/LocationAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "LocationAlbumSet.java"

# interfaces
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/LocationAlbumSet$AlbumsLoader;
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
.field private static final TAG:Ljava/lang/String; = "LocationAlbumSet"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    .line 38
    invoke-static {}, Lcn/nubia/gallery3d/data/LocationAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 40
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 p2, 0x2

    .line 41
    invoke-virtual {p1, p2, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(ILcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 68
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    return v0
.end method

.method public getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 3

    .line 113
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcn/nubia/gallery3d/data/ResourceCoverItem;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const v2, 0x7f08009c

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/ResourceCoverItem;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 116
    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 2

    .line 180
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-virtual {p2, p3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    .line 182
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    monitor-exit v0

    return-object p1

    .line 186
    :cond_0
    new-instance p1, Lcn/nubia/gallery3d/data/LocationAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {p1, p2, v1, p3, p4}, Lcn/nubia/gallery3d/data/LocationAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubCoverMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 83
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSubSetMediaItemCount(I)I
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 78
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 9
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

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "city_classification"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "!=\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    sget-object v3, Lcn/nubia/improve/database/PlaceTable;->PROJECTION_GROUPBY:[Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "city_classification"

    const-string v8, "city_classification ASC"

    .line 134
    invoke-virtual/range {v1 .. v8}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    const-string p1, "LocationAlbumSet"

    const-string v0, "cannot open placeTable database"

    .line 138
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 142
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    .line 143
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget v5, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    iget-object v6, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v5, v6}, Lcn/nubia/gallery3d/data/LocationAlbumSet;->getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    const/16 v2, 0xa

    .line 147
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    .line 148
    iget-object v2, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    .line 149
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 155
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object p1

    :cond_1
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 156
    throw p1
.end method

.method public onDataUpdate()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocationAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public declared-synchronized onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
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

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mIsLoading:Z

    if-nez p1, :cond_1

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 170
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocationAlbumSet;->notifyContentChanged()V

    .line 172
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 173
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getParent()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->onDataUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reload()J
    .locals 3

    .line 51
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 52
    iput-boolean v1, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mIsLoading:Z

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/data/LocationAlbumSet$AlbumsLoader;

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/data/LocationAlbumSet$AlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/LocationAlbumSet;Lcn/nubia/gallery3d/data/LocationAlbumSet$1;)V

    invoke-virtual {v0, v1, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 56
    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 57
    iput-object v2, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    .line 59
    iget-object v1, v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lcn/nubia/gallery3d/data/LocationAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mDataVersion:J

    .line 63
    :cond_2
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocationAlbumSet;->mDataVersion:J

    return-wide v0
.end method
