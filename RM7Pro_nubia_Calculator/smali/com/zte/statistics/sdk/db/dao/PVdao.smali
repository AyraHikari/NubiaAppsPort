.class public Lcom/zte/statistics/sdk/db/dao/PVdao;
.super Ljava/lang/Object;
.source "PVdao.java"


# instance fields
.field private table:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pv"

    .line 20
    iput-object v0, p0, Lcom/zte/statistics/sdk/db/dao/PVdao;->table:Ljava/lang/String;

    return-void
.end method

.method private genSessionArray(Landroid/database/sqlite/SQLiteDatabase;Lorg/json/JSONArray;Ljava/lang/Integer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "activity"

    const-string v1, "inTime"

    const-string v2, "outTime"

    .line 93
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "outTime != ? and sessionid = ?"

    const/4 v0, 0x2

    .line 95
    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "-1"

    const/4 v1, 0x0

    aput-object v0, v7, v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, v7, v0

    const-string v10, "inTime asc"

    .line 101
    iget-object v4, p0, Lcom/zte/statistics/sdk/db/dao/PVdao;->table:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 105
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-wide v0, 0xe8d4a50fffL

    const-wide/16 v2, 0x0

    .line 108
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "activity"

    .line 109
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v4, "inTime"

    .line 110
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "outTime"

    .line 111
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v8, v0, v4

    if-lez v8, :cond_0

    move-wide v0, v4

    :cond_0
    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    move-wide v2, v6

    .line 119
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "activity"

    .line 120
    invoke-virtual {v8, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "inTime"

    .line 121
    invoke-virtual {v8, p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p3, "outTime"

    .line 122
    invoke-virtual {v8, p3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 126
    :cond_2
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "duration"

    sub-long/2addr v2, v0

    .line 127
    invoke-virtual {p3, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "degree"

    .line 128
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "startTime"

    .line 129
    invoke-virtual {p3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "array"

    .line 131
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    return-void
.end method

.method private getCounts()I
    .locals 10

    const/4 v0, 0x0

    .line 167
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 168
    iget-object v3, p0, Lcom/zte/statistics/sdk/db/dao/PVdao;->table:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
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

    .line 176
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

    .line 174
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
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

.method private getSessionIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT distinct sessionid FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/PVdao;->table:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " WHERE "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "outTime"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " != ?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 141
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "sessionid"

    .line 142
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method


# virtual methods
.method public deleteRecord()I
    .locals 2

    .line 153
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/PVdao;->table:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 156
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
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
    .locals 7

    .line 68
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, ""

    .line 70
    new-instance v2, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    sget-object v3, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->PAGEVIEW:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-direct {v2, v3, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 72
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 73
    invoke-direct {p0, v0}, Lcom/zte/statistics/sdk/db/dao/PVdao;->getSessionIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, p1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 76
    invoke-direct {p0, v0, v3, v6}, Lcom/zte/statistics/sdk/db/dao/PVdao;->genSessionArray(Landroid/database/sqlite/SQLiteDatabase;Lorg/json/JSONArray;Ljava/lang/Integer;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "pvArray"

    .line 79
    invoke-virtual {v2, p0, v3}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->putJsonArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    if-lez v5, :cond_1

    .line 81
    invoke-virtual {v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->getAsJSON()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 85
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_1
    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    return-object v1

    :goto_2
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public insert(ILjava/lang/String;J)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/PVdao;->getCounts()I

    move-result p0

    sget v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->recordCapacity:I

    if-le p0, v0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "insert into pv (sessionid,activity,inTime,outTime) values(?,?,?,?)"

    const/4 v2, 0x4

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 46
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    return-void

    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public update(ILjava/lang/String;J)V
    .locals 4

    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 56
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "outTime"

    .line 57
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/PVdao;->table:Ljava/lang/String;

    const-string p3, "sessionid = ? and  activity =? and outTime =-1"

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v0

    const/4 p1, 0x1

    aput-object p2, p4, p1

    .line 58
    invoke-virtual {v1, p0, v2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    return-void

    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public verify()V
    .locals 4

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 27
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/PVdao;->table:Ljava/lang/String;

    const-string v3, "outTime=?"

    invoke-virtual {v1, p0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 29
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    return-void

    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method
