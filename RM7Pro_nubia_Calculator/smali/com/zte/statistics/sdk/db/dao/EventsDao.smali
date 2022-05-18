.class public Lcom/zte/statistics/sdk/db/dao/EventsDao;
.super Ljava/lang/Object;
.source "EventsDao.java"


# instance fields
.field private table:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "events"

    .line 21
    iput-object v0, p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;->table:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteRecord(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;->table:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 112
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "events"

    .line 113
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;->table:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " where time IN ("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    move p0, v0

    .line 116
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 117
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "time"

    .line 118
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p0, v3, :cond_1

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 123
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_2
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    return-void

    :goto_3
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public getCounts()I
    .locals 10

    const/4 v0, 0x0

    .line 139
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;->table:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
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

    .line 148
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

    .line 146
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
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
    .locals 12

    const-string v0, ""

    .line 52
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;->table:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "time"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " desc limit 500"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 58
    new-instance v1, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-direct {v1, v2, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)V

    .line 59
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 60
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "time"

    .line 62
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 61
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event"

    .line 64
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 63
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    .line 66
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 65
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    const-string v7, ","

    .line 68
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 69
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 70
    array-length v8, v5

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v5, v9

    .line 71
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 73
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "time"

    .line 74
    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "names"

    .line 75
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "\\*\\|\\*\\&"

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 79
    array-length v7, v4

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v4, v8

    const-string v10, "\\*\\|\\*\\%"

    .line 80
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 81
    aget-object v10, v9, v2

    const/4 v11, 0x1

    aget-object v9, v9, v11

    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "params"

    .line 83
    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_2
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string v2, "events"

    .line 88
    invoke-virtual {v1, v2, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->putJsonArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    if-lez v3, :cond_4

    .line 90
    invoke-virtual {v1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->getAsJSON()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 92
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 96
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_5
    :goto_3
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    return-object v0

    :goto_4
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method

.method public insert(Lcom/zte/statistics/sdk/obj/EventsObj;)J
    .locals 8

    .line 24
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;->getCounts()I

    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventsDao insert count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget v1, Lcom/zte/statistics/sdk/comm/ConstantDefine;->recordCapacity:I

    const-wide/16 v3, -0x1

    if-le v0, v1, :cond_0

    return-wide v3

    .line 32
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "time"

    .line 34
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/obj/EventsObj;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "event"

    .line 35
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/obj/EventsObj;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "value"

    .line 36
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/obj/EventsObj;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;->table:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 40
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    move-wide p0, v3

    :goto_0
    return-wide p0

    :goto_1
    invoke-static {}, Lcom/zte/statistics/sdk/db/DatabaseManager;->getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->closeDatabase()V

    throw p0
.end method
