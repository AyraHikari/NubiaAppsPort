.class public Lcom/zte/statistics/sdk/db/dao/ExceptionDao;
.super Ljava/lang/Object;
.source "ExceptionDao.java"


# instance fields
.field private table:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "exception"

    .line 20
    iput-object v0, p0, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->table:Ljava/lang/String;

    return-void
.end method

.method private getCounts()I
    .locals 10

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->table:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
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

    .line 98
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

    .line 96
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
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

    .line 75
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->table:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
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
    .locals 11

    const-string v0, ""

    const/4 v1, 0x0

    .line 27
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->table:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 30
    new-instance v2, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    sget-object v3, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EXCEPTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-direct {v2, v3, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)V

    .line 32
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    move v3, v1

    .line 33
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    const-string v4, "content"

    .line 35
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    const-string v3, "contents"

    .line 39
    invoke-virtual {v2, v3, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->putJsonArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 40
    invoke-virtual {v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->getAsJSON()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 42
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

    .line 45
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
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

.method public insert(Lcom/zte/statistics/sdk/obj/ExceptionObj;)J
    .locals 5

    .line 53
    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->getCounts()I

    move-result v0

    sget v1, Lcom/zte/statistics/sdk/comm/ConstantDefine;->recordCapacity:I

    div-int/lit8 v1, v1, 0x64

    const-wide/16 v2, -0x1

    if-le v0, v1, :cond_0

    return-wide v2

    .line 59
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "content"

    .line 61
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/obj/ExceptionObj;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->table:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 64
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
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
