.class public Lcom/zte/statistics/sdk/db/dao/UseTimesDao;
.super Ljava/lang/Object;
.source "UseTimesDao.java"


# instance fields
.field private table:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "usetimes"

    .line 20
    iput-object v0, p0, Lcom/zte/statistics/sdk/db/dao/UseTimesDao;->table:Ljava/lang/String;

    return-void
.end method

.method private getCounts()I
    .locals 10

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/zte/statistics/sdk/db/dao/UseTimesDao;->table:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 105
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
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

    .line 111
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

    .line 109
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
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


# virtual methods
.method public deleteRecord()I
    .locals 2

    .line 88
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/UseTimesDao;->table:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    const/4 p0, -0x1

    :goto_0
    return p0

    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public getJsonString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    .line 27
    :try_start_0
    new-instance v0, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-direct {v0, v1, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)V

    .line 28
    new-instance p1, Lcom/zte/statistics/sdk/db/dao/DeviceDao;

    invoke-direct {p1}, Lcom/zte/statistics/sdk/db/dao/DeviceDao;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/dao/DeviceDao;->getJsonRoot()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "device"

    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    invoke-virtual {v0}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->getAsJSON()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 58
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    :goto_0
    return-object p0

    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public increaseAppUse(Lcom/zte/statistics/sdk/obj/UseTimesObj;)J
    .locals 7

    .line 66
    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/UseTimesDao;->getCounts()I

    move-result v0

    sget v1, Lcom/zte/statistics/sdk/comm/ConstantDefine;->recordCapacity:I

    const-wide/16 v2, -0x1

    if-le v0, v1, :cond_0

    return-wide v2

    .line 72
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "time"

    .line 74
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/obj/UseTimesObj;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/UseTimesDao;->table:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 77
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    move-wide p0, v2

    :goto_0
    return-wide p0

    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method
