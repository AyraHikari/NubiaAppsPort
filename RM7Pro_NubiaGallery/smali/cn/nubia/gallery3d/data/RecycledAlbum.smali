.class public Lcn/nubia/gallery3d/data/RecycledAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "RecycledAlbum.java"


# static fields
.field public static final ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_ALL:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "RecycledAlbum"


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mBucketId:I

.field private mCachedCount:I

.field private mCoverItem:Lcn/nubia/gallery3d/data/GridCoverItem;

.field private final mDataBaseHelper:Lcn/nubia/improve/database/RecycledDataBaseHelper;

.field private mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/recycled/all"

    .line 24
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/RecycledAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/recycled/item"

    .line 25
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/RecycledAlbum;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 36
    invoke-static {}, Lcn/nubia/gallery3d/data/RecycledAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mCachedCount:I

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput-object p2, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 38
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDataBaseHelper:Lcn/nubia/improve/database/RecycledDataBaseHelper;

    .line 39
    iput p3, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mBucketId:I

    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 49
    iget v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mBucketId:I

    return v0
.end method

.method public getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 7

    .line 71
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/data/GridCoverItem;->PATH:Lcn/nubia/gallery3d/data/Path;

    iget v2, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mBucketId:I

    .line 72
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/GridCoverItem;

    iput-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mCoverItem:Lcn/nubia/gallery3d/data/GridCoverItem;

    if-nez v0, :cond_0

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v0, Lcn/nubia/gallery3d/data/GridCoverItem;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v1, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mBucketId:I

    int-to-long v4, v1

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/data/GridCoverItem;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;JI)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mCoverItem:Lcn/nubia/gallery3d/data/GridCoverItem;

    .line 78
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mCoverItem:Lcn/nubia/gallery3d/data/GridCoverItem;

    return-object v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 2

    if-eqz p1, :cond_0

    .line 145
    iget-object p2, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDataBaseHelper:Lcn/nubia/improve/database/RecycledDataBaseHelper;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->queryAll([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDataBaseHelper:Lcn/nubia/improve/database/RecycledDataBaseHelper;

    sget-object p2, Lcn/nubia/improve/database/RecycledDataBaseHelper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->queryExpand([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getExpandRecycledData()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0, v1, v2}, Lcn/nubia/gallery3d/data/RecycledAlbum;->getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "RecycledAlbum"

    const-string v2, "null cursor"

    .line 158
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 163
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    new-instance v2, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v2}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    .line 165
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/RecycledData;->initRecoverData(Landroid/database/Cursor;Lcn/nubia/gallery3d/data/RecycledData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 173
    throw v0
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 0

    return p2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDataBaseHelper:Lcn/nubia/improve/database/RecycledDataBaseHelper;

    sget-object v2, Lcn/nubia/improve/database/RecycledDataBaseHelper;->PROJECTION:[Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v2, p1, p2}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->query([Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "RecycledAlbum"

    if-nez p1, :cond_0

    const-string p1, "null cursor"

    .line 89
    invoke-static {p2, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 94
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/RecycledAlbum;->notifyDirty()V

    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 99
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v1, "Column _data is null"

    .line 101
    invoke-static {p2, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    .line 104
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    .line 105
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v1, :cond_4

    const/16 v1, 0x8

    .line 108
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    sget-object v1, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 111
    new-instance v2, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v2, v1, v3, p1}, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_3
    sget-object v1, Lcn/nubia/gallery3d/data/RecycledImageItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 114
    new-instance v2, Lcn/nubia/gallery3d/data/RecycledImageItem;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v2, v1, v3, p1}, Lcn/nubia/gallery3d/data/RecycledImageItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_4
    sget-object v1, Lcn/nubia/gallery3d/data/RecycledVideoItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 118
    new-instance v2, Lcn/nubia/gallery3d/data/RecycledVideoItem;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v2, v1, v3, p1}, Lcn/nubia/gallery3d/data/RecycledVideoItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :cond_5
    :goto_1
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 124
    throw p2
.end method

.method public getMediaItemCount()I
    .locals 2

    .line 131
    iget v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDataBaseHelper:Lcn/nubia/improve/database/RecycledDataBaseHelper;

    invoke-virtual {v0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->queryCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mCachedCount:I

    .line 134
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyDirty()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public reload()J
    .locals 3

    .line 54
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mCachedCount:I

    .line 56
    invoke-static {}, Lcn/nubia/gallery3d/data/RecycledAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDataVersion:J

    .line 58
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AutoDeleteService;->startDeleteService(Landroid/content/Context;)V

    .line 61
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;->mDataVersion:J

    return-wide v0
.end method
