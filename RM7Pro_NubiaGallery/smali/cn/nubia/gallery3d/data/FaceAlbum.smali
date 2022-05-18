.class public Lcn/nubia/gallery3d/data/FaceAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "FaceAlbum.java"

# interfaces
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceAlbum"


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mCachedCount:I

.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCoverItem:Lcn/nubia/gallery3d/data/FaceCoverItem;

.field private mCoverPath:Ljava/lang/String;

.field private mFaceId:I

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mIsHide:Z

.field private mName:Ljava/lang/String;

.field private mNeedRefreshCover:Z

.field private mProjection:[Ljava/lang/String;

.field private mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZ)V
    .locals 2

    .line 47
    invoke-static {}, Lcn/nubia/gallery3d/data/FaceAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCachedCount:I

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mName:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    const-string p1, "_id"

    const-string v0, "_data"

    .line 39
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mProjection:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mNeedRefreshCover:Z

    .line 43
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mIsHide:Z

    .line 48
    iput-object p2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 49
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 50
    iput p3, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    .line 51
    iput-boolean p4, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mIsHide:Z

    .line 52
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/data/FaceAlbum;->getFaceSelection(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mSelection:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 p2, 0x4

    .line 54
    invoke-virtual {p1, p2, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(ILcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    .line 55
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 p2, 0x5

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

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ","

    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "_id in (%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;[Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private getFaceOperationSelection(I)Ljava/lang/String;
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face_id"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFaceSelection(I)Ljava/lang/String;
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge_id"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " and ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "remove"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is NULL or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " <> 1)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRealPathFromUri(I)Ljava/lang/String;
    .locals 10

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " and ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "remove"

    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is NULL or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " <> 1)"

    .line 408
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 409
    invoke-virtual/range {v2 .. v9}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 413
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 414
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 423
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 421
    :try_start_1
    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 423
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 424
    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method private initCoverAndName()V
    .locals 4

    const/4 v0, 0x0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    .line 382
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/data/FaceAlbum;->getFaceOperationSelection(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 381
    invoke-virtual {v1, v3, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 383
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 384
    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mName:Ljava/lang/String;

    const/4 v1, 0x4

    .line 385
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    .line 386
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 387
    iget-object v3, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 388
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/data/FaceAlbum;->getRealPathFromUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    goto :goto_0

    .line 391
    :cond_1
    iput-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mName:Ljava/lang/String;

    .line 392
    iput-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    :cond_2
    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 396
    throw v1
.end method

.method private updateCover(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/FaceAlbum;->setCoverPath(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/FaceAlbum;->updateFaceCoverFromDB(Ljava/util/HashSet;)V

    :cond_2
    return-void
.end method

.method private updateFaceAlbumName(Ljava/lang/String;)V
    .locals 4

    .line 300
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mName:Ljava/lang/String;

    .line 301
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 302
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mName:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget v1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    .line 304
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/data/FaceAlbum;->getFaceOperationSelection(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "face_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v0, v2, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    :cond_0
    return-void
.end method

.method private updateFaceCoverFromDB(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ","

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "\'"

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 173
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->updateFaceCoverFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 225
    iget v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    return v0
.end method

.method public getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 11

    .line 62
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/FaceAlbum;->initCoverAndName()V

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v3, 0x4

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 71
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v9

    const-string v10, "0,1"

    .line 69
    invoke-virtual/range {v2 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "FaceAlbum"

    const-string v2, "query facetable failed"

    .line 73
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    move-object v2, v1

    .line 77
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 78
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    iput-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    .line 88
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    sget-object v3, Lcn/nubia/gallery3d/data/FaceCoverItem;->PATH:Lcn/nubia/gallery3d/data/Path;

    .line 90
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    iget v4, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/FaceCoverItem;

    iput-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverItem:Lcn/nubia/gallery3d/data/FaceCoverItem;

    if-nez v2, :cond_4

    .line 93
    new-instance v2, Lcn/nubia/gallery3d/data/FaceCoverItem;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v4, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    invoke-direct {v2, v3, v4, v1, v0}, Lcn/nubia/gallery3d/data/FaceCoverItem;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;IILjava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverItem:Lcn/nubia/gallery3d/data/FaceCoverItem;

    .line 95
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverItem:Lcn/nubia/gallery3d/data/FaceCoverItem;

    return-object v0

    :catchall_0
    move-exception v1

    .line 82
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 83
    throw v1
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11

    .line 266
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mSelection:Ljava/lang/String;

    .line 267
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 266
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "FaceAlbum"

    if-nez v0, :cond_0

    const-string p1, "query facetable failed"

    .line 269
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 275
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    .line 277
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 282
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 284
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

    .line 289
    :cond_3
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    .line 291
    :goto_1
    iget-object v5, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    sget-object v6, Lcn/nubia/gallery3d/data/FaceAlbum;->BASE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    .line 292
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v10

    .line 291
    invoke-virtual/range {v5 .. v10}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_4

    .line 294
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcn/nubia/gallery3d/data/FaceAlbum;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    throw p1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 104
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 105
    iget-object v4, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v6, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mProjection:[Ljava/lang/String;

    iget-object v7, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mSelection:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 105
    invoke-virtual/range {v4 .. v12}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v2, "FaceAlbum"

    const-string v3, "query facetable failed"

    .line 108
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 112
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 113
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 114
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v4}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    new-array v3, v6, [Ljava/lang/Object;

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    const-string v2, "_id in (%s)"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 126
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v17

    .line 127
    iget-object v15, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    sget-object v16, Lcn/nubia/gallery3d/data/FaceAlbum;->BASE_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    .line 128
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v20

    .line 127
    invoke-virtual/range {v15 .. v20}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 131
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x5

    .line 133
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    sget-object v5, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v5, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    .line 135
    iget-object v8, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 136
    invoke-interface {v8}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v8

    iget-object v9, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 135
    invoke-static {v5, v2, v8, v9, v6}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v5

    .line 137
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v14, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 142
    :cond_3
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 143
    throw v0

    .line 145
    :cond_4
    :goto_2
    invoke-direct {v1, v13}, Lcn/nubia/gallery3d/data/FaceAlbum;->deleteNotExist(Ljava/util/HashSet;)V

    .line 146
    invoke-direct {v1, v14}, Lcn/nubia/gallery3d/data/FaceAlbum;->updateCover(Ljava/util/HashSet;)V

    return-object v0

    :catchall_1
    move-exception v0

    .line 123
    invoke-static {v4}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 124
    throw v0
.end method

.method public getMediaItemCount()I
    .locals 11

    .line 179
    iget v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v3, 0x4

    const-string v0, "count(_id)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "FaceAlbum"

    const-string v2, "query facetable failed"

    .line 183
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 187
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 188
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 191
    throw v1

    .line 193
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    .line 256
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mIsHide:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x40000007

    goto :goto_0

    :cond_0
    const-wide/32 v0, -0x3ffffffa

    :goto_0
    return-wide v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needRefreshCover()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mNeedRefreshCover:Z

    return v0
.end method

.method public onDataUpdate()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 250
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/FaceAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 3

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcn/nubia/gallery3d/data/FaceAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 237
    iput v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCachedCount:I

    .line 239
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 4

    .line 350
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mCoverPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mNeedRefreshCover:Z

    .line 353
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 354
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget v1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    .line 356
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/data/FaceAlbum;->getFaceOperationSelection(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 355
    invoke-virtual {p1, v3, v0, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 358
    iget p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "face_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {p1, v3, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    :cond_1
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name"

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and ("

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ignore"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is NULL or "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " <> 1)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-boolean v4, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mIsHide:Z

    const/4 v8, 0x1

    const-string v9, "hide"

    if-eqz v4, :cond_0

    const-string v2, " and "

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v2, 0x0

    .line 326
    :try_start_0
    iget-object v10, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v11, 0x5

    const-string v3, "face_id"

    filled-new-array {v3, v9}, [Ljava/lang/String;

    move-result-object v12

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 326
    invoke-virtual/range {v10 .. v17}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 329
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 331
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 332
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v8, :cond_2

    move v0, v8

    .line 334
    :cond_2
    iget-boolean v4, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mIsHide:Z

    if-ne v0, v4, :cond_1

    .line 335
    iget-object v0, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget v4, v1, Lcn/nubia/gallery3d/data/FaceAlbum;->mFaceId:I

    invoke-virtual {v0, v4, v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mergeFaceAlbum(II)V

    goto :goto_1

    .line 339
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcn/nubia/gallery3d/data/FaceAlbum;->updateFaceAlbumName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_4
    :goto_2
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 342
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "FaceAlbum"

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setName failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 345
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 346
    throw v0
.end method

.method public setRefreshCover(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/FaceAlbum;->mNeedRefreshCover:Z

    return-void
.end method
