.class public Lcn/nubia/gallery3d/data/LocalMergeAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "LocalMergeAlbum"


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private final mSources:[Lcn/nubia/gallery3d/data/MediaSet;

.field private mSupportedOperation:J


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/Comparator;[Lcn/nubia/gallery3d/data/MediaSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/Path;",
            "Lcn/nubia/gallery3d/app/GalleryApp;",
            "Ljava/util/Comparator<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;[",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            "I)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 63
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 70
    iput-object p3, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 71
    iput-object p4, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    .line 72
    array-length p1, p4

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    aget-object p1, p4, p3

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 73
    iput p5, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    .line 74
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 75
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 76
    array-length p1, p4

    :goto_1
    if-ge p3, p1, :cond_1

    aget-object p2, p4, p3

    .line 77
    invoke-virtual {p2, p0}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static final getSelection()Ljava/lang/String;
    .locals 3

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media_type = 1"

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media_type = 3"

    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ( bucket_id = ?)"

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invalidateCache()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 99
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 102
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateData()V
    .locals 8

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 84
    :goto_0
    array-length v3, v0

    new-array v3, v3, [Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;

    iput-object v3, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;

    .line 85
    array-length v0, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    .line 86
    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;

    new-instance v6, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;

    iget-object v7, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    aget-object v7, v7, v4

    invoke-direct {v6, v7}, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;-><init>(Lcn/nubia/gallery3d/data/MediaSet;)V

    aput-object v6, v5, v4

    .line 87
    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    aget-object v6, v5, v4

    if-eqz v6, :cond_1

    .line 88
    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v5

    and-long/2addr v1, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 91
    :cond_2
    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:J

    .line 92
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 93
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    if-nez v1, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 257
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->delete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 318
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    const-string v0, "external"

    .line 107
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    .line 108
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucketId"

    .line 107
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 0

    .line 314
    invoke-super {p0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I

    move-result p1

    return p1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-virtual {v2, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 133
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 134
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->getSelection()Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x1

    new-array v6, p2, [Ljava/lang/String;

    iget v3, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    .line 135
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v6, v8

    const-string v7, "datetaken DESC, _id DESC"

    move-object v3, p1

    .line 134
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "LocalMergeAlbum"

    if-nez v2, :cond_0

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 143
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    .line 144
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Column _data is null."

    .line 146
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v4, 0x7

    .line 151
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, p2, :cond_2

    .line 156
    sget-object v4, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v4, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    .line 159
    sget-object v4, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v4, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    move p1, v8

    goto :goto_2

    :cond_3
    :goto_1
    move p1, p2

    :goto_2
    if-nez v5, :cond_4

    goto :goto_0

    .line 166
    :cond_4
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v5, v2, v1, v4, p1}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    .line 168
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 172
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    .line 251
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:J

    return-wide v0
.end method

.method public getTotalMediaItemCount()I
    .locals 5

    .line 224
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 225
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 246
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 7

    .line 233
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 234
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 237
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    .line 238
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->updateData()V

    .line 239
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->invalidateCache()V

    .line 241
    :cond_2
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public rotate(I)V
    .locals 4

    .line 263
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum;->mSources:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 264
    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/data/MediaSet;->rotate(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
