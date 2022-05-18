.class public Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;
.super Ljava/lang/Object;
.source "DownloadDBManager.java"


# static fields
.field private static mInstance:Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v0, Lcom/huanju/ssp/base/core/download/database/DownloadDBHelper;

    invoke-direct {v0, p1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 57
    return-void
.end method

.method private declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_0
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-class v1, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mInstance:Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mInstance:Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mInstance:Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 6
    .param p1, "info"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "REPLACE INTO download_info(name , size , desc , down_url , downloaded_tracker , installed_tracker , open_tracker , click_tracker , deep_link_tracker , deep_link_path , down_path , file_state , download_expiration_time , start_time , net_type , e_tag) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 74
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownloadedTracker()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 75
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getInstalledTracker()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getOpenTracker()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 76
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getClickTracker()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDeepLinkTracker()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDeepLink()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 77
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getExpirationTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 78
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getNetType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->geteTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 8
    .param p1, "info"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 156
    monitor-enter p0

    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    .line 161
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 164
    const-string v3, "download_info"

    const-string v4, "down_url = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 164
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    if-eqz v0, :cond_3

    .line 172
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 179
    :cond_3
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 182
    const-string v3, "\u5b89\u88c5\u5305\u6210\u529f\u5220\u9664"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    if-eqz v0, :cond_3

    .line 172
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 173
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    :cond_4
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    :cond_5
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 177
    :cond_6
    throw v3

    .line 184
    .restart local v2    # "file":Ljava/io/File;
    :cond_7
    const-string v3, "\u5b89\u88c5\u5305\u5220\u9664\u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public deleteTracker(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V
    .locals 8
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .param p2, "trackerType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 242
    if-nez p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 265
    :goto_2
    const/4 v0, 0x0

    .line 267
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 270
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v3, "download_info"

    const-string v4, "down_url = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 274
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 273
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    :cond_3
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    goto :goto_0

    .line 245
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "values":Landroid/content/ContentValues;
    :sswitch_0
    const-string v5, "click_tracker"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v3, "downloaded_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "installed_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "open_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "deep_link_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    .line 247
    :pswitch_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setClickTracker(Ljava/lang/String;)V

    goto :goto_2

    .line 250
    :pswitch_1
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDownloadedTracker(Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :pswitch_2
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setInstalledTracker(Ljava/lang/String;)V

    goto :goto_2

    .line 256
    :pswitch_3
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setOpenTracker(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :pswitch_4
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDeepLinkTracker(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 277
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    :cond_4
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    goto/16 :goto_0

    .line 280
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_6

    .line 281
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    :cond_5
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 286
    :cond_6
    throw v3

    .line 245
    :sswitch_data_0
    .sparse-switch
        -0x659ac5e0 -> :sswitch_1
        -0x3fde648d -> :sswitch_2
        -0x2a079f9a -> :sswitch_4
        -0x229945bd -> :sswitch_3
        0x4b5c3b81 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getInstallFailedInfo()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "install_failed_table_name"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "app_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "app_package_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 311
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 312
    const-string v3, ""

    .line 346
    :cond_0
    :goto_0
    return-object v3

    .line 315
    :cond_1
    const/4 v13, 0x0

    .line 317
    .local v13, "mCount":I
    const/4 v11, 0x0

    .line 319
    .local v11, "js":Lorg/json/JSONStringer;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    new-instance v12, Lorg/json/JSONStringer;

    invoke-direct {v12}, Lorg/json/JSONStringer;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .end local v11    # "js":Lorg/json/JSONStringer;
    .local v12, "js":Lorg/json/JSONStringer;
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 322
    const-string v1, "apps"

    invoke-virtual {v12, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 325
    :cond_2
    invoke-virtual {v12}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "app_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "app_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "app_package_name"

    .line 326
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "app_package_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "count"

    .line 327
    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, "count":I
    int-to-long v4, v8

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 329
    add-int/2addr v13, v8

    .line 330
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    invoke-virtual {v12}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 333
    const-string v1, "count"

    invoke-virtual {v12, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    int-to-long v4, v13

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v2, "ero_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    const-wide/16 v4, -0xa

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 334
    invoke-virtual {v12}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 337
    const-string v1, "install_failed_table_name"

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 342
    .end local v8    # "count":I
    .end local v12    # "js":Lorg/json/JSONStringer;
    .restart local v11    # "js":Lorg/json/JSONStringer;
    :cond_3
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 343
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 346
    :goto_1
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 339
    :catch_0
    move-exception v10

    .line 340
    .local v10, "e":Lorg/json/JSONException;
    :goto_2
    :try_start_2
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 343
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    goto :goto_1

    .line 342
    .end local v10    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    :goto_3
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 343
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 344
    throw v1

    .line 342
    .end local v11    # "js":Lorg/json/JSONStringer;
    .restart local v12    # "js":Lorg/json/JSONStringer;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12    # "js":Lorg/json/JSONStringer;
    .restart local v11    # "js":Lorg/json/JSONStringer;
    goto :goto_3

    .line 339
    .end local v11    # "js":Lorg/json/JSONStringer;
    .restart local v12    # "js":Lorg/json/JSONStringer;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12    # "js":Lorg/json/JSONStringer;
    .restart local v11    # "js":Lorg/json/JSONStringer;
    goto :goto_2
.end method

.method public declared-synchronized query()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huanju/ssp/base/core/download/bean/DownloadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    const/4 v0, 0x0

    .line 91
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 93
    const-string v1, "download_info"

    const-string v2, " ? - start_time > download_expiration_time"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    if-eqz v0, :cond_1

    .line 100
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 107
    :cond_1
    :goto_0
    const/4 v8, 0x0

    .line 108
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .local v9, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/base/core/download/bean/DownloadItem;>;"
    :try_start_2
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    const-string v1, "download_info"

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "desc"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "down_path"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "down_url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "e_tag"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "file_state"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "download_expiration_time"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "name"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "downloaded_tracker"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "open_tracker"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "installed_tracker"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "click_tracker"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "deep_link_tracker"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "deep_link_path"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "net_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    :cond_2
    new-instance v11, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-direct {v11}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;-><init>()V

    .line 119
    .local v11, "info":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    const-string v1, "desc"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDescription(Ljava/lang/String;)V

    .line 120
    const-string v1, "size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v11, v2, v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentFileSize(J)V

    .line 121
    const-string v1, "down_path"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setSavePath(Ljava/lang/String;)V

    .line 122
    const-string v1, "down_url"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDownLoadUrl(Ljava/lang/String;)V

    .line 123
    const-string v1, "e_tag"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->seteTag(Ljava/lang/String;)V

    .line 124
    const-string v1, "file_state"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 125
    const-string v1, "download_expiration_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v11, v2, v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setExpirationTime(J)V

    .line 126
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setName(Ljava/lang/String;)V

    .line 128
    const-string v1, "downloaded_tracker"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDownloadedTracker(Ljava/lang/String;)V

    .line 129
    const-string v1, "open_tracker"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setOpenTracker(Ljava/lang/String;)V

    .line 130
    const-string v1, "deep_link_tracker"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDeepLinkTracker(Ljava/lang/String;)V

    .line 131
    const-string v1, "deep_link_path"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDeepLink(Ljava/lang/String;)V

    .line 132
    const-string v1, "installed_tracker"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setInstalledTracker(Ljava/lang/String;)V

    .line 133
    const-string v1, "click_tracker"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setClickTracker(Ljava/lang/String;)V

    .line 134
    const-string v1, "net_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setNetType(I)V

    .line 137
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    .line 143
    .end local v11    # "info":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    :cond_3
    :try_start_3
    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 144
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    :goto_1
    monitor-exit p0

    return-object v9

    .line 96
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/base/core/download/bean/DownloadItem;>;"
    :catch_0
    move-exception v10

    .line 97
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    if-eqz v0, :cond_1

    .line 100
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 103
    :cond_4
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 89
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 99
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 100
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 103
    :cond_5
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 105
    :cond_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/base/core/download/bean/DownloadItem;>;"
    :catch_1
    move-exception v10

    .line 141
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 143
    :try_start_8
    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 144
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    goto :goto_1

    .line 143
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 144
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 145
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public recordInstallFailedInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "REPLACE INTO install_failed_table_name(app_name , app_package_name , count ) VALUES (?,?,count+1)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 300
    return-void
.end method

.method public declared-synchronized update(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 8
    .param p1, "info"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 196
    monitor-enter p0

    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    .line 201
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 205
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "downloaded_tracker"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownloadedTracker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "installed_tracker"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getInstalledTracker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v3, "open_tracker"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getOpenTracker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v3, "deep_link_tracker"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDeepLinkTracker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v3, "deep_link_path"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDeepLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "click_tracker"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getClickTracker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 213
    :cond_2
    const-string v3, "file_state"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    :cond_3
    const-string v3, "e_tag"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->geteTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "size"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v3, "net_type"

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getNetType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v3, "download_info"

    const-string v4, "down_url = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 220
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 219
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    if-eqz v0, :cond_0

    .line 227
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 196
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    if-eqz v0, :cond_0

    .line 227
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 230
    :cond_5
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    goto/16 :goto_0

    .line 226
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_7

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 230
    :cond_6
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->closeDatabase()V

    .line 232
    :cond_7
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
