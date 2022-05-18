.class public Lcn/nubia/gallery3d/data/FavorAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "FavorAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field public static final PATH_ALL:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "FavorAlbum"


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private final mDataManager:Lcn/nubia/gallery3d/data/DataManager;

.field private final mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mProjection:[Ljava/lang/String;

.field private mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mSelection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "count(_id)"

    .line 23
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/FavorAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string v0, "/local/all/mark"

    .line 24
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/FavorAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/local/image"

    .line 25
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/FavorAlbum;->PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/local/video"

    .line 26
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/FavorAlbum;->PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 40
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 28
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mBaseUri:Landroid/net/Uri;

    .line 29
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mProjection:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mCachedCount:I

    .line 41
    iput-object p2, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 42
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 43
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    .line 44
    iput p3, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mBucketId:I

    .line 45
    new-instance p3, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcn/nubia/gallery3d/data/FavorAlbum;->WATCH_URIS:[Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p3, p0, v0, p2, v1}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;Z)V

    iput-object p3, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 46
    invoke-static {p1}, Lcn/nubia/gallery3d/data/FavorAlbum;->getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I

    move-result p1

    invoke-static {p1}, Lcn/nubia/gallery3d/data/FavorAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mSelection:Ljava/lang/String;

    return-void
.end method

.method public static getSelection(I)Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-static {v0, p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p0, " AND "

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "is_favorite"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 122
    iget v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mBucketId:I

    return v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledDataProjection()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 158
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mSelection:Ljava/lang/String;

    const/4 v5, 0x0

    .line 159
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FavorAlbum"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 6

    .line 126
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mBaseUri:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mSelection:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->getCurrentOder()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 132
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    .line 133
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 144
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

    .line 145
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

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mBaseUri:Landroid/net/Uri;

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

    .line 53
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mSelection:Ljava/lang/String;

    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->getCurrentOder()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 57
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x7

    .line 58
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v1, 0x0

    .line 59
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    .line 62
    sget-object p2, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    goto :goto_1

    .line 64
    :cond_1
    sget-object p2, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    .line 66
    :goto_1
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {p2, p1, v2, v3, v1}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p2

    .line 68
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 72
    throw p2

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 8

    .line 86
    iget v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v2, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/gallery3d/data/FavorAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "FavorAlbum"

    const-string v2, "query fail"

    .line 89
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 94
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    throw v1

    .line 99
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

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

.method public reload()J
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mNotifier:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mCachedCount:I

    .line 118
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/FavorAlbum;->mDataVersion:J

    return-wide v0
.end method
