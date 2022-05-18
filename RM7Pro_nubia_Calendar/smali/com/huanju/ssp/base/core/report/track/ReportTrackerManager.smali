.class public Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;
.super Ljava/lang/Object;
.source "ReportTrackerManager.java"


# static fields
.field public static final COLUMN_TRACK_TIME:Ljava/lang/String; = "last_request_time"

.field public static final COLUMN_TRACK_URL:Ljava/lang/String; = "url"

.field public static EXPIRATION_TIME:J = 0x0L

.field public static final TABLE:Ljava/lang/String; = "trackers"

.field private static mInstance:Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;


# instance fields
.field private dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

.field private mReportCacheTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->EXPIRATION_TIME:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->mReportCacheTime:J

    .line 39
    invoke-static {}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->getInstance()Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->mInstance:Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->mInstance:Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->mInstance:Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTrackerCaches()Ljava/util/Set;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v14, "trackers":Ljava/util/Set;, "Ljava/util/Set<Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;>;"
    const-wide/16 v16, 0x0

    .line 162
    .local v16, "validTime":J
    const/4 v10, 0x0

    .line 163
    .local v10, "cursor":Landroid/database/Cursor;
    const-class v18, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v18

    .line 165
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 166
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "trackers"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "url"

    aput-object v6, v4, v5

    const-string v5, "last_request_time >= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "last_request_time"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 173
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    :cond_0
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 177
    .local v13, "id":I
    new-instance v11, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    invoke-direct {v11}, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;-><init>()V

    .line 178
    .local v11, "dnsBean":Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;
    int-to-long v4, v13

    iput-wide v4, v11, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->id:J

    .line 179
    const-string v3, "url"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "url":Ljava/lang/String;
    iput-object v15, v11, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    .line 181
    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    .line 189
    .end local v11    # "dnsBean":Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;
    .end local v13    # "id":I
    .end local v15    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v10}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 192
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v14

    .line 186
    :catch_0
    move-exception v12

    .line 187
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    :try_start_3
    invoke-static {v10}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 193
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 189
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v10}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 191
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method addTracker(Ljava/lang/String;)J
    .locals 9
    .param p1, "track"    # Ljava/lang/String;

    .prologue
    .line 246
    const-class v8, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v8

    .line 247
    const-wide/16 v2, -0x1

    .line 248
    .local v2, "id":J
    const/4 v0, 0x0

    .line 250
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    const-string v5, "\u76d1\u64ad\u4e3a\u7a7a"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    const-wide/16 v6, -0x1

    .line 265
    if-eqz v0, :cond_1

    .line 267
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    :cond_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :goto_1
    return-wide v6

    .line 254
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTracker track  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 257
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "url"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v5, "last_request_time"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v5, "trackers"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    if-eqz v0, :cond_4

    .line 267
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    :cond_3
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 276
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_3
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide v6, v2

    goto :goto_1

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 265
    if-eqz v0, :cond_4

    .line 267
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 268
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 273
    :cond_5
    :goto_4
    :try_start_8
    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_3

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v5

    .line 265
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_7

    .line 267
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 268
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 273
    :cond_6
    :goto_5
    :try_start_a
    iget-object v6, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 275
    :cond_7
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 270
    :catch_1
    move-exception v6

    goto :goto_5

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v5

    goto :goto_2

    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v5

    goto/16 :goto_0
.end method

.method deletebyId(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    .line 221
    const-class v3, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v3

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    .line 225
    :try_start_0
    const-string v2, "\u76d1\u64ad\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    if-eqz v0, :cond_0

    .line 234
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :goto_0
    return-void

    .line 228
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 229
    const-string v2, "trackers"

    const-string v4, "_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    if-eqz v0, :cond_2

    .line 234
    :try_start_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 237
    :cond_2
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    if-eqz v0, :cond_2

    .line 234
    :try_start_5
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_1

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 234
    iget-object v4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 236
    :cond_3
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized reportErrorCache()V
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrackerCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportImpErrorTrack url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",errCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",errorMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    const-string v3, "{ERROR_CODE}"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{ERROR_TIME}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{ERROR_MESSAGE}"

    const-string v5, "UTF-8"

    .line 99
    invoke-static {p3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{EXTRA_JSON}"

    .line 100
    invoke-virtual {v3, v4, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 105
    :goto_1
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v2, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;

    const/4 v3, 0x0

    check-cast v3, Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    invoke-direct {v1, v2, v3, v8}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;-><init>(Ljava/util/Set;Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;Z)V

    .line 110
    .local v1, "processor":Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->process()V

    goto :goto_0

    .line 101
    .end local v1    # "processor":Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;
    .end local v2    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public reportTrack(ILcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .param p1, "trackType"    # I
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;
    .param p4, "softSrc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;

    const/4 v1, 0x0

    const-string v2, "adhub"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, p3, p2, v1, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;-><init>(Ljava/util/Set;Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;ZZ)V

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->process()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportTrack(Ljava/util/Set;Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;[B)V
    .locals 3
    .param p2, "reqType"    # Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;
    .param p3, "entity"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;",
            "[B)V"
        }
    .end annotation

    .prologue
    .local p1, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 113
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "\u6ca1\u6709\u9519\u8bef\u76d1\u64ad\u5386\u53f2"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;

    const/4 v1, 0x0

    check-cast v1, Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;-><init>(Ljava/util/Set;Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;Z)V

    .line 119
    .local v0, "processor":Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;
    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {v0, p2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->setReqType(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 123
    :cond_1
    if-eqz p3, :cond_2

    .line 124
    invoke-virtual {v0, p3}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->setEntity([B)V

    .line 127
    :cond_2
    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->setIsGzip(Z)V

    .line 128
    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->process()V

    goto :goto_0
.end method

.method public reportTrack(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .param p2, "softSrc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "\u6ca1\u6709\u9519\u8bef\u76d1\u64ad\u5386\u53f2"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "reportTrack"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "adhub"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;-><init>(Ljava/util/Set;Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;ZZ)V

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->process()V

    goto :goto_0
.end method

.method declared-synchronized reportTrackerCache()V
    .locals 5

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getTrackerCaches()Ljava/util/Set;

    move-result-object v0

    .line 151
    .local v0, "dnsBeans":Ljava/util/Set;, "Ljava/util/Set<Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;>;"
    new-instance v1, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;-><init>(ZLjava/util/Set;Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;Z)V

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "dnsBeans":Ljava/util/Set;, "Ljava/util/Set<Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateTrackCache(JJ)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "time"    # J

    .prologue
    .line 198
    const-class v4, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v4

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-gez v3, :cond_1

    .line 202
    :try_start_0
    const-string v3, "\u76d1\u64ad\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    if-eqz v0, :cond_0

    .line 213
    :try_start_1
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :goto_0
    return-void

    .line 205
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "last_request_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v3, "trackers"

    const-string v5, "_id =?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v3, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    if-eqz v0, :cond_2

    .line 213
    :try_start_3
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 216
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    if-eqz v0, :cond_2

    .line 213
    :try_start_5
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_1

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_3

    .line 213
    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->dManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 215
    :cond_3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
