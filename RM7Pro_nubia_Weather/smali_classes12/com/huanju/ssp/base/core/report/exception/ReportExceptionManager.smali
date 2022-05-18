.class public Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;
.super Ljava/lang/Object;
.source "ReportExceptionManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final COLUMN_EXCEPTION_MSG:Ljava/lang/String; = "exception_msg"

.field public static final IS_REPORT_CRASH_LOG_SWITCH:Ljava/lang/String; = "is_report_crash_log_switch"

.field static final REPORT_EXCEPTION_INTERVAL:J = 0x5265c00L

.field static final REPORT_EXCEPTION_LAST_TIME:Ljava/lang/String; = "report_exception_last_time"

.field private static mInstance:Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;


# instance fields
.field private mCrashLog:Ljava/lang/String;

.field private mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

.field private mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private volatile mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mCrashLog:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->getInstance()Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    .line 54
    new-instance v0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    .line 55
    return-void
.end method

.method private createJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "threadLog"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 148
    .local v1, "js":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "svr"

    .line 149
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "device"

    .line 150
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "cuid"

    .line 151
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getCuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "client_id"

    .line 152
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getClientID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "device_id"

    .line 153
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "app_id"

    .line 154
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "ovr"

    .line 155
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getOSVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "info_ms"

    .line 156
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "os_id"

    .line 157
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAndroidID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "net_type"

    .line 158
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "sn"

    .line 159
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->SDK_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "os_level"

    .line 160
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getOsVersionInt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "channel_id"

    .line 161
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->SDK_CHANNEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "error_info"

    .line 162
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "current_time"

    .line 163
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mInstance:Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mInstance:Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mInstance:Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized saveExceptionInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "threadLog"    # Ljava/lang/String;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-class v4, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "exception_msg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v3, "exception_cache"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 187
    :try_start_2
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 189
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 187
    :try_start_4
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 187
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception v3

    :try_start_6
    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 188
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method declared-synchronized getExceptionCaches()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .local v9, "exceptionCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 202
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 203
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "exception_cache"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "exception_msg"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 215
    :cond_1
    :try_start_2
    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 216
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-object v9

    .line 212
    :catch_0
    move-exception v1

    .line 215
    :try_start_3
    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 216
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 198
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "exceptionCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 215
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "exceptionCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 216
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 217
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public initExceptionHandler()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 112
    sget-object v0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mInstance:Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 113
    return-void
.end method

.method public readCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "buffer":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 126
    .local v4, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 127
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 129
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 131
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method declared-synchronized removeExceptionCaches()V
    .locals 5

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "exception_cache"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 231
    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 232
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public reportException()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionProcessor;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionProcessor;-><init>()V

    .line 240
    .local v0, "processor":Lcom/huanju/ssp/base/core/report/exception/ReportExceptionProcessor;
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionProcessor;->setNetTaskManager(Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;)V

    .line 241
    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionProcessor;->process()V

    .line 242
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->readCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "threadLog":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threadLog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "threadLog":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v0    # "threadLog":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mCrashLog:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const-string v1, "\u91cd\u590d\u6355\u83b7\u76f8\u540cLOG,\u4e2d\u65ad\u4e0a\u62a5"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v0    # "threadLog":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    .restart local v0    # "threadLog":Ljava/lang/String;
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mCrashLog:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mCrashLog:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->createJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->saveExceptionInfo(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
