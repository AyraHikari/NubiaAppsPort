.class public Lcn/nubia/gallery3d/data/MarkAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "MarkAlbum.java"

# interfaces
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MarkAlbum"


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private final mDataManager:Lcn/nubia/gallery3d/data/DataManager;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private final mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mProjection:[Ljava/lang/String;

.field private mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 42
    invoke-static {}, Lcn/nubia/gallery3d/data/MarkAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const-string v0, "external"

    .line 29
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mBaseUri:Landroid/net/Uri;

    .line 30
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mProjection:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mCachedCount:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 43
    iput-object p2, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 44
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 45
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    .line 46
    iput p3, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mBucketId:I

    .line 47
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 48
    invoke-virtual {p3, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    .line 49
    new-instance p3, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcn/nubia/gallery3d/data/MarkAlbum;->WATCH_URIS:[Landroid/net/Uri;

    invoke-direct {p3, p0, v0, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p3, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 50
    invoke-static {p1}, Lcn/nubia/gallery3d/data/MarkAlbum;->getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I

    move-result p1

    invoke-static {p1}, Lcn/nubia/gallery3d/data/MarkAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mSelection:Ljava/lang/String;

    return-void
.end method

.method private deleteExistingItems()V
    .locals 12

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableHashCode(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v3, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    .line 174
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    iget-object v4, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 175
    invoke-virtual {v4}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getOrderByTime()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 173
    invoke-virtual/range {v3 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 179
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ","

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 184
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v5, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 189
    throw v0

    :cond_2
    :goto_1
    new-array v1, v11, [Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "_id in (%s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteNoExist(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableHashCode(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 123
    iget-object v3, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getSelection(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 156
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 157
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/MarkAlbum;->deleteExistingItems()V

    .line 158
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 202
    iget v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mBucketId:I

    return v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10

    .line 239
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mSelection:Ljava/lang/String;

    .line 240
    invoke-virtual {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getOrderByTime()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 239
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 248
    invoke-virtual {v2, v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableHashCode(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ","

    .line 250
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 255
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "_id in (%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    move-object v6, v0

    goto :goto_1

    .line 263
    :cond_3
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 265
    :goto_1
    iget-object v4, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v5, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mBaseUri:Landroid/net/Uri;

    const/4 v8, 0x0

    .line 266
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v9

    .line 265
    invoke-virtual/range {v4 .. v9}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_4

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MarkAlbum"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 255
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 256
    throw p1
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 10

    .line 206
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 207
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 208
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableHashCode(I)Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v5, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mSelection:Ljava/lang/String;

    .line 210
    invoke-virtual {v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getOrderByTime()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 209
    invoke-virtual/range {v2 .. v9}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v2, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4, p1}, Lcn/nubia/gallery3d/data/LocalAlbum;->getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v0, :cond_4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 217
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_4

    .line 223
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 224
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 231
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 232
    throw p1

    :cond_4
    :goto_1
    return p2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p2, p1

    .line 62
    iget-object v1, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableHashCode(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v3, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v6, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mSelection:Ljava/lang/String;

    .line 64
    invoke-virtual {v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getOrderByTime()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 63
    invoke-virtual/range {v3 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v0

    .line 67
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_6

    .line 72
    :try_start_0
    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    add-int/lit8 v6, p1, 0x1

    if-ge p1, p2, :cond_2

    .line 74
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, ","

    .line 76
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move p1, v6

    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "_id in (%s)"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 85
    iget-object v6, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v7, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v8, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mProjection:[Ljava/lang/String;

    const/4 v10, 0x0

    .line 86
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v11

    .line 85
    invoke-virtual/range {v6 .. v11}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 89
    :goto_1
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    .line 90
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 91
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v1, p1, :cond_3

    move v1, p1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 94
    sget-object v4, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    goto :goto_3

    .line 96
    :cond_4
    sget-object v4, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 98
    :goto_3
    iget-object v6, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    iget-object v7, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v4, p2, v6, v7, v1}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 105
    throw p1

    :catchall_1
    move-exception p1

    .line 82
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 83
    throw p1

    .line 108
    :cond_6
    :goto_4
    invoke-direct {p0, v5}, Lcn/nubia/gallery3d/data/MarkAlbum;->deleteNoExist(Ljava/util/HashSet;)V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 10

    .line 128
    iget v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v2, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 130
    invoke-virtual {v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getOrderByTime()Ljava/lang/String;

    move-result-object v9

    .line 129
    invoke-virtual/range {v2 .. v9}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MarkAlbum"

    const-string v1, "query fail"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    throw v1

    .line 141
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 146
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/32 v0, 0x1000005

    return-wide v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDataUpdate()V
    .locals 1

    const/4 v0, -0x1

    .line 197
    iput v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mCachedCount:I

    .line 198
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->fakeChange()V

    return-void
.end method

.method public reload()J
    .locals 2

    .line 163
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcn/nubia/gallery3d/data/MarkAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mCachedCount:I

    .line 167
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/MarkAlbum;->mDataVersion:J

    return-wide v0
.end method
