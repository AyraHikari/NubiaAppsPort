.class public Lcn/nubia/gallery3d/data/ThingsAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "ThingsAlbum.java"

# interfaces
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThingAlbum"


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mCachedCount:I

.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mName:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mSelection:Ljava/lang/String;

.field private mSelectionID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V
    .locals 2

    .line 33
    invoke-static {}, Lcn/nubia/gallery3d/data/ThingsAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mName:Ljava/lang/String;

    const-string p1, "group_name"

    .line 24
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mSelectionID:Ljava/lang/String;

    const/4 p3, -0x1

    .line 26
    iput p3, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mCachedCount:I

    .line 27
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p3, "DISTINCT _id"

    .line 28
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mProjection:[Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 35
    iput-object p4, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mName:Ljava/lang/String;

    .line 36
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 37
    iget-object p2, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 p3, 0x3

    .line 38
    invoke-virtual {p2, p3, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(ILcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    .line 39
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mSelectionID:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportThingsGroup()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "tag_name"

    .line 41
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mSelectionID:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/ThingsAlbum;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mSelection:Ljava/lang/String;

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

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ","

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "_id in (%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;[Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private getSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget-object v1, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mSelectionID:Ljava/lang/String;

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

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " AND "

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "tag_confidence"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " >= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v1, Lcn/nubia/improve/database/ThingsTable;->CONFIDENCE_THRESHOLD:F

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " and ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "remove"

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is NULL or "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " <> 1)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11

    .line 166
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mSelection:Ljava/lang/String;

    .line 167
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 166
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "ThingAlbum"

    if-nez v0, :cond_0

    const-string p1, "query thingstable failed"

    .line 169
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 172
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 175
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    .line 177
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 184
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

    .line 189
    :cond_3
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    .line 191
    :goto_1
    iget-object v5, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    sget-object v6, Lcn/nubia/gallery3d/data/ThingsAlbum;->BASE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    .line 192
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v10

    .line 191
    invoke-virtual/range {v5 .. v10}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_4

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcn/nubia/gallery3d/data/ThingsAlbum;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    throw p1
.end method

.method public getDbColumnName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mName:Ljava/lang/String;

    return-object v0
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

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
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

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 52
    iget-object v2, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mSelection:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 52
    invoke-virtual/range {v2 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, "ThingAlbum"

    const-string p2, "query thingtable failed"

    .line 55
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 59
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 60
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "_id in (%s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 70
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v7

    .line 71
    iget-object v5, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    sget-object v6, Lcn/nubia/gallery3d/data/ThingsAlbum;->BASE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    .line 72
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-virtual/range {v5 .. v10}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 75
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 77
    sget-object v3, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    .line 78
    iget-object v5, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 79
    invoke-interface {v5}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 78
    invoke-static {v3, p1, v5, v6, v1}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    :cond_3
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 85
    throw p2

    .line 87
    :cond_4
    :goto_2
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/data/ThingsAlbum;->deleteNotExist(Ljava/util/HashSet;)V

    return-object v0

    :catchall_1
    move-exception p1

    .line 67
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 68
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 11

    .line 93
    iget v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v2, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v3, 0x3

    const-string v0, "count(DISTINCT _data)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ThingAlbum"

    const-string v2, "query thingstable failed"

    .line 98
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 102
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 103
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 106
    throw v1

    .line 108
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getThingsLabelLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDataUpdate()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/ThingsAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 3

    .line 146
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcn/nubia/gallery3d/data/ThingsAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mCachedCount:I

    .line 150
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbum;->mDataVersion:J

    return-wide v0
.end method
