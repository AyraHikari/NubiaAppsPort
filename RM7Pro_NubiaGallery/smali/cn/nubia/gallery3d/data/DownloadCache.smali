.class public Lcn/nubia/gallery3d/data/DownloadCache;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;,
        Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;,
        Lcn/nubia/gallery3d/data/DownloadCache$Entry;,
        Lcn/nubia/gallery3d/data/DownloadCache$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final FREESPACE_IDNEX_DATA:I = 0x1

.field private static final FREESPACE_IDNEX_ID:I = 0x0

.field private static final FREESPACE_INDEX_CONTENT_SIZE:I = 0x3

.field private static final FREESPACE_INDEX_CONTENT_URL:I = 0x2

.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id = ?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final MAX_DELETE_COUNT:I = 0x10

.field private static final QUERY_INDEX_DATA:I = 0x1

.field private static final QUERY_INDEX_ID:I = 0x0

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final SUM_INDEX_SUM:I = 0x0

.field private static final SUM_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadCache"

.field private static final WHERE_HASH_AND_URL:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mCapacity:J

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntryMap:Lcn/nubia/gallery3d/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/common/LruCache<",
            "Ljava/lang/String;",
            "Lcn/nubia/gallery3d/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mRoot:Ljava/io/File;

.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    sget-object v0, Lcn/nubia/gallery3d/data/DownloadEntry;->SCHEMA:Lcn/nubia/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "_data"

    .line 48
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/gallery3d/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "hash_code"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "content_url"

    aput-object v5, v2, v3

    const-string v6, "%s = ? AND %s = ?"

    .line 49
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/gallery3d/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const-string v2, "_size"

    .line 54
    filled-new-array {v0, v1, v5, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "last_access"

    aput-object v1, v0, v4

    const-string v1, "%s ASC"

    .line 57
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "sum(%s)"

    .line 66
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/gallery3d/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/io/File;J)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcn/nubia/gallery3d/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mInitialized:Z

    .line 82
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    .line 83
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/app/GalleryApp;

    iput-object p2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 84
    iput-wide p3, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mCapacity:J

    .line 85
    new-instance p2, Lcn/nubia/gallery3d/data/DownloadCache$DatabaseHelper;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/gallery3d/data/DownloadCache$DatabaseHelper;-><init>(Lcn/nubia/gallery3d/data/DownloadCache;Landroid/content/Context;)V

    .line 86
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/DownloadCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/data/DownloadCache;)Ljava/io/File;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/data/DownloadCache;)Ljava/util/HashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/data/DownloadCache;)Lcn/nubia/gallery3d/common/LruCache;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/data/DownloadCache;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    return-void
.end method

.method private findEntryInDatabase(Ljava/lang/String;)Lcn/nubia/gallery3d/data/DownloadCache$Entry;
    .locals 11

    .line 90
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .line 91
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const/4 v0, 0x1

    aput-object p1, v7, v0

    .line 92
    iget-object v3, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcn/nubia/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcn/nubia/gallery3d/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v6, Lcn/nubia/gallery3d/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 95
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    new-instance v3, Ljava/io/File;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 99
    iget-object v4, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    iget-object v5, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    invoke-virtual {v5, p1}, Lcn/nubia/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/DownloadCache$Entry;

    if-nez v5, :cond_0

    .line 102
    new-instance v5, Lcn/nubia/gallery3d/data/DownloadCache$Entry;

    invoke-direct {v5, p0, v0, v1, v3}, Lcn/nubia/gallery3d/data/DownloadCache$Entry;-><init>(Lcn/nubia/gallery3d/data/DownloadCache;JLjava/io/File;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    invoke-virtual {v0, p1, v5}, Lcn/nubia/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception p1

    .line 105
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 110
    throw p1
.end method

.method private declared-synchronized freeSomeSpaceIfNeed(I)V
    .locals 11

    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mCapacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcn/nubia/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcn/nubia/gallery3d/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcn/nubia/gallery3d/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 163
    :try_start_2
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J

    iget-wide v3, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mCapacity:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 165
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    .line 166
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 167
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 168
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 170
    iget-object v9, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    iget-object v10, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    invoke-virtual {v10, v4}, Lcn/nubia/gallery3d/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 172
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 175
    :try_start_4
    iget-wide v9, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J

    sub-long/2addr v9, v5

    iput-wide v9, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J

    .line 176
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 177
    iget-object v4, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcn/nubia/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v6, "_id = ?"

    new-array v7, v7, [Ljava/lang/String;

    .line 178
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 177
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 172
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 184
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    throw p1

    .line 184
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 186
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initialize()V
    .locals 9

    monitor-enter p0

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 204
    :try_start_1
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mInitialized:Z

    .line 205
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 206
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcn/nubia/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcn/nubia/gallery3d/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 212
    iput-wide v1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 215
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 218
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    throw v1

    .line 207
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized insertEntry(Ljava/lang/String;Ljava/io/File;)J
    .locals 5

    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 190
    iget-wide v2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTotalBytes:J

    .line 192
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 193
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data"

    .line 194
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hash_code"

    .line 195
    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "content_url"

    .line 196
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_size"

    .line 197
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "last_updated"

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    iget-object p1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object p2, Lcn/nubia/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, p2, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateLastAccess(J)V
    .locals 4

    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_access"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcn/nubia/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 155
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "_id = ?"

    .line 154
    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public download(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcn/nubia/gallery3d/data/DownloadCache$Entry;
    .locals 4

    .line 115
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/gallery3d/data/DownloadCache;->initialize()V

    .line 117
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mEntryMap:Lcn/nubia/gallery3d/common/LruCache;

    invoke-virtual {v1, p2}, Lcn/nubia/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/DownloadCache$Entry;

    if-eqz v1, :cond_1

    .line 123
    iget-wide p1, v1, Lcn/nubia/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    .line 124
    monitor-exit v0

    return-object v1

    .line 126
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    new-instance v0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {v0}, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;-><init>()V

    .line 130
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 131
    :try_start_1
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcn/nubia/gallery3d/data/DownloadCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 133
    iget-wide p1, v2, Lcn/nubia/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    .line 134
    monitor-exit v1

    return-object v2

    .line 139
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;

    if-nez v2, :cond_3

    .line 141
    new-instance v2, Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;

    invoke-direct {v2, p0, p2}, Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;-><init>(Lcn/nubia/gallery3d/data/DownloadCache;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p2, p0, Lcn/nubia/gallery3d/data/DownloadCache;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p2

    invoke-static {v2, p2}, Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;->access$002(Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;Lcn/nubia/gallery3d/util/Future;)Lcn/nubia/gallery3d/util/Future;

    .line 145
    :cond_3
    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;->addProxy(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;)V

    .line 146
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->get(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Lcn/nubia/gallery3d/data/DownloadCache$Entry;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 146
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 126
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
