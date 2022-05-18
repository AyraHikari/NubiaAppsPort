.class public Lcom/nubia/reyun/utils/ReYunDatabaseUtil;
.super Ljava/lang/Object;
.source "ReYunDatabaseUtil.java"


# static fields
.field public static final TABLE_AUDIT:Ljava/lang/String; = "audit"

.field public static final TABLE_GAME:Ljava/lang/String; = "game"

.field public static final TABLE_TRACK:Ljava/lang/String; = "track"

.field private static mInstance:Lcom/nubia/reyun/utils/ReYunDatabaseUtil;


# instance fields
.field final TAG:Ljava/lang/String;

.field private mDBHelper:Lcom/nubia/reyun/sdk/DBHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private openCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "ReyunDB"

    iput-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "ReyunDB"

    iput-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/nubia/reyun/sdk/DBHelper;

    invoke-direct {v0, p1}, Lcom/nubia/reyun/sdk/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mDBHelper:Lcom/nubia/reyun/sdk/DBHelper;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    return-void
.end method

.method private byteArrayToJsonObj([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    if-eqz p1, :cond_0

    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mInstance:Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mInstance:Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    .line 48
    :cond_0
    sget-object v0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mInstance:Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    return-object v0
.end method

.method private declared-synchronized query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 351
    monitor-enter p0

    if-nez p1, :cond_0

    .line 352
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tableName:null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 354
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 355
    :cond_1
    const-string v1, "ReyunDB"

    const-string v2, "Did you call method \'open\' before you call this method?"

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    .line 359
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 358
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized queryCount(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 409
    const-string v1, "ReyunDB"

    const-string v2, "Did you call method \'open\' before you call this method?"

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 412
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT COUNT(*) FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 416
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 420
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private toDay(J)J
    .locals 7

    .prologue
    .line 258
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized updateAudit(Ljava/lang/String;Ljava/lang/String;JJJ)I
    .locals 7

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 234
    const-string v1, "count"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string v1, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v1, "audit"

    .line 237
    const-string v2, "account_id=? and day=? and event_name=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 238
    aput-object p2, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 236
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 239
    monitor-exit p0

    return v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    :cond_0
    const-string v0, "ReyunDB"

    const-string v1, "Database was closed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_2
    if-nez v0, :cond_1

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 78
    const-string v0, "ReyunDB"

    const-string v1, "Did you call method \'open\' before you call this method?"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "ReyunDB"

    const-string v1, "Your memory is not enough!"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized deleteAudit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 370
    monitor-enter p0

    if-nez p1, :cond_0

    .line 371
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tableName:null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    :cond_1
    const-string v0, "ReyunDB"

    const-string v1, "Did you call method \'open\' before you call this method?"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    const/4 v0, -0x1

    .line 377
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public deleteFromGameByExpiredSeconds(I)V
    .locals 6

    .prologue
    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 160
    sub-int/2addr v0, p1

    .line 161
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "game"

    const-string v3, "priority<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public deleteFromGameById(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 139
    const-string v0, "game"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public deleteFromTrackById(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 143
    const-string v0, "track"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public declared-synchronized insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 63
    const-string v2, "ReyunDB"

    const-string v3, "Did you call method \'open\' before you call this method?"

    invoke-static {v2, v3}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 66
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    const-string v2, "ReyunDB"

    const-string v3, "Your memory is not enough!"

    invoke-static {v2, v3}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method public declared-synchronized insertAudit(Ljava/lang/String;Ljava/lang/String;JJJ)J
    .locals 5

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 213
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "day"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    const-string v1, "event_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "count"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v1, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "audit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 219
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 220
    monitor-exit p0

    return-wide v0

    .line 222
    :cond_0
    :try_start_1
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Failed to insert row into audit"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertOrUpdateAudit(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x1

    .line 245
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->toDay(J)J

    move-result-wide v8

    .line 246
    invoke-virtual {p0, p1, p2, v8, v9}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryAuditIsExit(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 247
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 248
    add-long v6, v0, v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->updateAudit(Ljava/lang/String;Ljava/lang/String;JJJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 250
    :cond_0
    const-wide/16 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    :try_start_1
    invoke-virtual/range {v1 .. v9}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->insertAudit(Ljava/lang/String;Ljava/lang/String;JJJ)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insertToGame(Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 131
    const-string v0, "game"

    invoke-virtual {p0, v0, p1}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertToTrack(Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 135
    const-string v0, "track"

    invoke-virtual {p0, v0, p1}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 136
    return-void
.end method

.method public declared-synchronized open()V
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const-string v0, "ReyunDB"

    const-string v1, "Database was opened!"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mDBHelper:Lcom/nubia/reyun/sdk/DBHelper;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryAuditAll(J)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/reyun/sdk/AuditData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    monitor-enter p0

    const/4 v7, 0x0

    .line 263
    const/4 v6, 0x0

    .line 265
    :try_start_0
    const-string v1, "audit"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v1

    .line 266
    if-eqz v1, :cond_9

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 271
    :cond_0
    const-string v0, "account_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 270
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    const-string v0, "count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 272
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 274
    const-string v0, "day"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 276
    const-string v0, "event_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 275
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 278
    const-string v0, "timestamp"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 277
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 280
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 281
    if-nez v12, :cond_3

    .line 282
    new-instance v0, Lcom/nubia/reyun/sdk/AuditData;

    invoke-direct {v0}, Lcom/nubia/reyun/sdk/AuditData;-><init>()V

    .line 283
    iput-object v4, v0, Lcom/nubia/reyun/sdk/AuditData;->mAccountId:Ljava/lang/String;

    .line 284
    iput-wide v8, v0, Lcom/nubia/reyun/sdk/AuditData;->mDay:J

    .line 285
    iput-wide v10, v0, Lcom/nubia/reyun/sdk/AuditData;->mTimestamp:J

    .line 286
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/nubia/reyun/sdk/AuditData;->map:Ljava/util/Map;

    .line 287
    iget-object v3, v0, Lcom/nubia/reyun/sdk/AuditData;->map:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "audit_"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 321
    :goto_1
    if-eqz v1, :cond_2

    .line 322
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v0

    .line 291
    :cond_3
    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-lt v3, v12, :cond_4

    .line 303
    :goto_4
    if-lt v3, v12, :cond_1

    .line 304
    :try_start_4
    new-instance v0, Lcom/nubia/reyun/sdk/AuditData;

    invoke-direct {v0}, Lcom/nubia/reyun/sdk/AuditData;-><init>()V

    .line 305
    iput-object v4, v0, Lcom/nubia/reyun/sdk/AuditData;->mAccountId:Ljava/lang/String;

    .line 306
    iput-wide v8, v0, Lcom/nubia/reyun/sdk/AuditData;->mDay:J

    .line 307
    iput-wide v10, v0, Lcom/nubia/reyun/sdk/AuditData;->mTimestamp:J

    .line 308
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/nubia/reyun/sdk/AuditData;->map:Ljava/util/Map;

    .line 309
    iget-object v3, v0, Lcom/nubia/reyun/sdk/AuditData;->map:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "audit_"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v3, v0, Lcom/nubia/reyun/sdk/AuditData;->map:Ljava/util/Map;

    const-string v4, "audittime"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object v0, v2

    move-object v2, v1

    move-object/from16 v1, v16

    .line 319
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 321
    if-eqz v2, :cond_2

    .line 322
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 292
    :cond_4
    :try_start_7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nubia/reyun/sdk/AuditData;

    .line 293
    iget-object v13, v0, Lcom/nubia/reyun/sdk/AuditData;->mAccountId:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 294
    iget-wide v14, v0, Lcom/nubia/reyun/sdk/AuditData;->mDay:J

    cmp-long v13, v8, v14

    if-nez v13, :cond_7

    .line 295
    iget-wide v14, v0, Lcom/nubia/reyun/sdk/AuditData;->mTimestamp:J

    cmp-long v13, v14, v10

    if-gez v13, :cond_5

    .line 296
    iput-wide v10, v0, Lcom/nubia/reyun/sdk/AuditData;->mTimestamp:J

    .line 297
    iget-object v13, v0, Lcom/nubia/reyun/sdk/AuditData;->map:Ljava/util/Map;

    const-string v14, "audittime"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_5
    iget-object v0, v0, Lcom/nubia/reyun/sdk/AuditData;->map:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "audit_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    :goto_6
    if-eqz v1, :cond_6

    .line 322
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_6
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 291
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    .line 320
    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 318
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v7

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :cond_8
    move-object v0, v2

    goto/16 :goto_1

    :cond_9
    move-object v0, v7

    goto/16 :goto_1
.end method

.method public declared-synchronized queryAuditIsExit(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 190
    monitor-enter p0

    .line 191
    const-wide/16 v6, -0x1

    .line 193
    :try_start_0
    const-string v1, "audit"

    const/4 v2, 0x0

    .line 194
    const-string v3, "account_id=? and day=? and event_name=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 195
    aput-object p2, v4, v0

    const/4 v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 196
    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 197
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    const-string v0, "count"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v6

    move-wide v0, v6

    .line 204
    :goto_0
    if-eqz v2, :cond_0

    .line 205
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    :cond_0
    :goto_1
    monitor-exit p0

    return-wide v0

    .line 201
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 202
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 204
    if-eqz v1, :cond_2

    .line 205
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    :goto_3
    if-eqz v8, :cond_1

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :catchall_2
    move-exception v0

    move-object v8, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 201
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-wide v0, v6

    goto :goto_1

    :cond_3
    move-wide v0, v6

    goto :goto_0
.end method

.method public queryDataFromGameWithLimit(IZ)Lcom/nubia/reyun/sdk/QueryData;
    .locals 1

    .prologue
    .line 147
    const-string v0, "game"

    invoke-virtual {p0, v0, p1, p2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryDataWithLimit(Ljava/lang/String;IZ)Lcom/nubia/reyun/sdk/QueryData;

    move-result-object v0

    return-object v0
.end method

.method public queryDataFromTrackWithLimit(IZ)Lcom/nubia/reyun/sdk/QueryData;
    .locals 1

    .prologue
    .line 151
    const-string v0, "track"

    invoke-virtual {p0, v0, p1, p2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryDataWithLimit(Ljava/lang/String;IZ)Lcom/nubia/reyun/sdk/QueryData;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized queryDataWithLimit(Ljava/lang/String;IZ)Lcom/nubia/reyun/sdk/QueryData;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    :cond_0
    const-string v1, "ReyunDB"

    const-string v2, "Did you call method \'open\' before you call this method?"

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 97
    :cond_2
    if-lez p2, :cond_3

    .line 98
    :try_start_1
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limit ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 107
    :goto_1
    if-eqz v1, :cond_1

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    new-instance v0, Lcom/nubia/reyun/sdk/QueryData;

    invoke-direct {v0, v2, v3, v4}, Lcom/nubia/reyun/sdk/QueryData;-><init>(Ljava/util/ArrayList;Lorg/json/JSONArray;Ljava/util/List;)V

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limit ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 113
    :cond_4
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 112
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 115
    const-string v5, "value"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 114
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 116
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-direct {p0, v5}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->byteArrayToJsonObj([B)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz p3, :cond_5

    .line 119
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 121
    :cond_5
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public queryDbCount()I
    .locals 1

    .prologue
    .line 155
    const-string v0, "game"

    invoke-direct {p0, v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 391
    monitor-enter p0

    if-nez p1, :cond_0

    .line 392
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tableName:null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    :cond_1
    const-string v0, "ReyunDB"

    const-string v1, "Did you call method \'open\' before you call this method?"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    const/4 v0, -0x1

    .line 398
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized washOldData(J)V
    .locals 7

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->toDay(J)J

    move-result-wide v0

    .line 336
    const-string v2, "day <? "

    .line 337
    const-string v3, "audit"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v2, v4}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
