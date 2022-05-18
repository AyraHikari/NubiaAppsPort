.class public Lcn/nubia/gallery3d/data/ItemFlagManager;
.super Ljava/lang/Object;
.source "ItemFlagManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemFlagManager"


# instance fields
.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mMarkData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mMarkData:Ljava/util/Set;

    .line 37
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 38
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    return-void
.end method

.method private initMarkData()V
    .locals 18

    move-object/from16 v1, p0

    .line 48
    iget-object v0, v1, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, ","

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 54
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 55
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 56
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 64
    throw v0

    .line 67
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id"

    .line 68
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " IN ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " AND "

    .line 69
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "_data"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " IS NOT NULL"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v12, v1, Lcn/nubia/gallery3d/data/ItemFlagManager;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    const-string v8, "external"

    invoke-static {v8}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 71
    invoke-virtual/range {v12 .. v17}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 75
    :goto_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 76
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 77
    iget-object v8, v1, Lcn/nubia/gallery3d/data/ItemFlagManager;->mMarkData:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 81
    :cond_3
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 82
    throw v0

    .line 85
    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 89
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 91
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 92
    iget-object v4, v1, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v4, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableHashCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v0, v1, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public checkMarkFlagById(I)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mMarkData:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dumpState()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mMarkData:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemFlagManager"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getMarkAlbumCover(Lcn/nubia/gallery3d/app/GalleryApp;I)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 11

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableHashCode(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 134
    invoke-static {p2}, Lcn/nubia/gallery3d/data/MarkAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 135
    invoke-virtual {p2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getOrderByTime()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 133
    invoke-virtual/range {v2 .. v9}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-object v2

    .line 138
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_6

    .line 142
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, ","

    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "_id in (%s)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 153
    iget-object v5, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 154
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 155
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v10

    .line 153
    invoke-virtual/range {v5 .. v10}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 158
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 159
    new-instance v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    const-string v5, "mark"

    invoke-direct {v2, v3, v5}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x7

    .line 161
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 162
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v3, p2, :cond_3

    move v3, p2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 165
    sget-object v6, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v6, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v6

    goto :goto_2

    .line 167
    :cond_4
    sget-object v6, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v6, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v6

    .line 169
    :goto_2
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v7

    invoke-static {v6, v0, v7, p1, v3}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    .line 171
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 172
    iput-object v3, v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    .line 173
    iput v1, v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    throw p1

    :catchall_1
    move-exception p1

    .line 150
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 151
    throw p1

    :cond_6
    :goto_3
    return-object v2
.end method

.method public initData()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/ItemFlagManager;->initMarkData()V

    return-void
.end method

.method public removeMarkFlagById(I)V
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageid"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mMarkData:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMarkFlagByIds(Ljava/lang/String;)V
    .locals 6

    const-string v0, ","

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 185
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 186
    iget-object v5, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mMarkData:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageid"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    return-void
.end method

.method public setMarkFlagById(IJI)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-static {p1, p2, p3, p4}, Lcn/nubia/improve/database/MarkTable;->getContentValues(IJI)Landroid/content/ContentValues;

    move-result-object p2

    const-string p3, "recent"

    invoke-virtual {v0, p3, p2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 104
    iget-object p2, p0, Lcn/nubia/gallery3d/data/ItemFlagManager;->mMarkData:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
