.class public Lcn/nubia/gallery3d/data/FacesAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "FacesAlbumSet.java"

# interfaces
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/FacesAlbumSet$AlbumsLoader;
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
.field private static final COUNT:Ljava/lang/String; = "count(merge_id)"

.field private static final QUERY_SQL:Ljava/lang/String; = "select merge_id,count(merge_id) from face where merge_id not in (select face_id from face_operation where face_id == face.merge_id and (ignore = 1 or hide = 1)) and merge_id >= 0 and (remove is NULL or remove <> 1) group by merge_id having count(merge_id) >= 5 order by count(merge_id) desc"

.field private static final TAG:Ljava/lang/String; = "FaceAlbumSet"


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

.field private mAllAlbums:Ljava/util/ArrayList;
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

.field private mHasFaceAlbum:Z

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

    .line 55
    invoke-static {}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAllAlbums:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHasFaceAlbum:Z

    .line 56
    iput-object p2, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 57
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 p2, 0x4

    .line 58
    invoke-virtual {p1, p2, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(ILcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    .line 59
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(ILcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/data/FacesAlbumSet;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->updateDatabase()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/data/FacesAlbumSet;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private addFictitiousAlbums(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getFaceHideAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    const-string v2, "facehide"

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    check-cast v2, Lcn/nubia/gallery3d/data/MediaSet;

    goto :goto_0

    .line 251
    :cond_0
    new-instance v2, Lcn/nubia/gallery3d/data/FacesHideAlbumSet;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v2, v1, v3}, Lcn/nubia/gallery3d/data/FacesHideAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    .line 253
    :goto_0
    iput-object v2, v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    .line 254
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHasFaceAlbum:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHasFaceAlbum:Z

    :goto_1
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

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ","

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "_id in (%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItemWithoutNotification(ILjava/lang/String;[Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private filterHideAlbums()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAllAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    .line 300
    iget v2, v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_HIDE_ALBUM_SET_BUCKET_ID:I

    if-eq v2, v3, :cond_0

    .line 301
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getFaceSelection()Ljava/lang/String;
    .locals 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge_id"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <> -1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "remove"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is NULL or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <> 1)"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 6
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

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const-string v2, "select merge_id,count(merge_id) from face where merge_id not in (select face_id from face_operation where face_id == face.merge_id and (ignore = 1 or hide = 1)) and merge_id >= 0 and (remove is NULL or remove <> 1) group by merge_id having count(merge_id) >= 5 order by count(merge_id) desc"

    invoke-virtual {v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "FaceAlbumSet"

    const-string v1, "cannot open faceTable database"

    .line 219
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 223
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "merge_id"

    .line 224
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 225
    new-instance v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget v5, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-virtual {p0, v2, v4, v5}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/Path;I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    const-string v2, "count(merge_id)"

    .line 227
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    .line 228
    iget-object v2, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    .line 229
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 236
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object p1

    .line 234
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->addFictitiousAlbums(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 237
    throw p1
.end method

.method private updateDatabase()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->updateFaceDB()V

    .line 152
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->updateFaceOperationDB()V

    return-void
.end method

.method private updateFaceDB()V
    .locals 11

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 158
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->getFaceSelection()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 158
    invoke-virtual/range {v2 .. v9}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "FaceAlbumSet"

    const-string v1, "updateFaceDB query facetable failed"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 166
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "_id in (%s)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v7

    .line 178
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v5

    sget-object v6, Lcn/nubia/gallery3d/data/FacesAlbumSet;->BASE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    .line 179
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v10

    .line 178
    invoke-virtual/range {v5 .. v10}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 182
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 187
    :cond_3
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 188
    throw v1

    .line 190
    :cond_4
    :goto_2
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->deleteNotExist(Ljava/util/HashSet;)V

    return-void

    :catchall_1
    move-exception v0

    .line 174
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 175
    throw v0
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 86
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    return v0
.end method

.method public getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 3

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcn/nubia/gallery3d/data/ResourceCoverItem;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const v2, 0x7f080093

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/ResourceCoverItem;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 134
    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/Path;I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 3

    .line 286
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    invoke-virtual {p2, p3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    .line 288
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 290
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    monitor-exit v0

    return-object p1

    .line 292
    :cond_0
    new-instance p1, Lcn/nubia/gallery3d/data/FaceAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, p3, v2}, Lcn/nubia/gallery3d/data/FaceAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZ)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubCoverMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 101
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 91
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSubSetMediaItemCount(I)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 96
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasHideAlbum()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHasFaceAlbum:Z

    return v0
.end method

.method public onDataUpdate()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->notifyContentChanged()V

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

    .line 263
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 264
    monitor-exit p0

    return-void

    .line 266
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mIsLoading:Z

    if-nez p1, :cond_1

    .line 269
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 271
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAllAlbums:Ljava/util/ArrayList;

    .line 272
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mHasFaceAlbum:Z

    if-eqz v0, :cond_2

    .line 273
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->filterHideAlbums()V

    goto :goto_0

    .line 275
    :cond_2
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->notifyContentChanged()V

    .line 278
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 279
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getParent()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz p1, :cond_3

    .line 281
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->onDataUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reload()J
    .locals 3

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 70
    iput-boolean v1, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mIsLoading:Z

    .line 71
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/data/FacesAlbumSet$AlbumsLoader;

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/data/FacesAlbumSet$AlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/FacesAlbumSet;Lcn/nubia/gallery3d/data/FacesAlbumSet$1;)V

    invoke-virtual {v0, v1, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    .line 73
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 74
    iput-object v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mAllAlbums:Ljava/util/ArrayList;

    .line 75
    iput-object v2, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    .line 77
    iget-object v1, v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lcn/nubia/gallery3d/data/FacesAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mDataVersion:J

    .line 81
    :cond_2
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/FacesAlbumSet;->mDataVersion:J

    return-wide v0
.end method
