.class public Lcom/zte/statistics/sdk/db/dao/DailyDao;
.super Ljava/lang/Object;
.source "DailyDao.java"


# static fields
.field public static final sync:[Ljava/lang/Byte;


# instance fields
.field private table:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Lcom/zte/statistics/sdk/db/dao/DailyDao;->sync:[Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "daily"

    .line 23
    iput-object v0, p0, Lcom/zte/statistics/sdk/db/dao/DailyDao;->table:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteRecord()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 98
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 99
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/DailyDao;->table:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "DailyDao_deleteRecord"

    .line 100
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v4, v1

    move v1, p0

    move-object p0, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 102
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    move p0, v1

    :goto_1
    return p0

    :goto_2
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public getCounts()I
    .locals 10

    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/zte/statistics/sdk/db/dao/DailyDao;->table:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 122
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move v1, v0

    .line 120
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    move v0, v1

    :goto_2
    return v0

    :goto_3
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public getJsonString(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-string v0, ""

    const/4 v1, 0x0

    .line 30
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/zte/statistics/sdk/db/dao/DailyDao;->table:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 33
    new-instance v2, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    sget-object v3, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-direct {v2, v3, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)V

    .line 35
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    move v3, v1

    .line 36
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    const-string v4, "day"

    .line 38
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    const-string v3, "launch"

    .line 43
    invoke-virtual {v2, v3, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->putJsonArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 44
    invoke-virtual {v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->getAsJSON()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 52
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 55
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :cond_2
    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    return-object v0

    :goto_2
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public update(Landroid/content/Context;)J
    .locals 9

    .line 67
    sget-object v0, Lcom/zte/statistics/sdk/db/dao/DailyDao;->sync:[Ljava/lang/Byte;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/comm/DateUtil;->getDate_yyyy_MM_dd()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->getDaily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DailyDao:cur = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " lastDate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/statistics/sdk/Log;->s(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-wide v3

    .line 77
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 78
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "day"

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/DailyDao;->table:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, p0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    invoke-static {p1, v1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->writeDaily(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DailyDao:writeDaily = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/statistics/sdk/Log;->s(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-wide v5, v3

    .line 84
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    :try_start_5
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    goto :goto_0

    .line 88
    :goto_2
    monitor-exit v0

    return-wide v5

    .line 86
    :goto_3
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0

    :catchall_1
    move-exception p0

    .line 88
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method
