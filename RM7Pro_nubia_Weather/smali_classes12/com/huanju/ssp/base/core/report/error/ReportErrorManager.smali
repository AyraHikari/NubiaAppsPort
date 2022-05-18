.class public Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;
.super Ljava/lang/Object;
.source "ReportErrorManager.java"


# static fields
.field public static final COLUMN_ERROR_MSG:Ljava/lang/String; = "error_msg"

.field private static final ERROR_MSG_DATA:Ljava/lang/String; = "error_msg_data"

.field private static final ERROR_MSG_SWITCH:Ljava/lang/String; = "error_msg_switch"

.field private static final INSTALL_FAILED_POST_ERO_VAL:J = 0x5265c00L

.field private static final LAST_POST_ERO:Ljava/lang/String; = "lastPostEro"

.field private static final POST_ERO_VAL:J = 0x1b7740L

.field private static final REPORT_INSTALL_FAILED_LAST_TIME:Ljava/lang/String; = "report_install_failed_last_time"

.field private static mInstance:Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

.field static sErrorSwitch:Z


# instance fields
.field private mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

.field private volatile mEroMsgFilterList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->sErrorSwitch:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mEroMsgFilterList:Ljava/util/Set;

    .line 60
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "error_msg_switch"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->sErrorSwitch:Z

    .line 61
    invoke-static {}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->getInstance()Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    .line 64
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "error_msg_data"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    .end local v1    # "json":Ljava/lang/String;
    :goto_0
    return-void

    .line 68
    .restart local v1    # "json":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->setEroMsgSwitch(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private canReportEro(I)Z
    .locals 1
    .param p1, "eroCode"    # I

    .prologue
    .line 218
    if-gtz p1, :cond_0

    const/16 v0, -0x500

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getEroCaches()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .local v10, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 232
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "error_cache"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "error_msg"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string v1, "error_msg"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 243
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    .line 244
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    :try_start_3
    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 247
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v10

    .line 242
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_4
    const-string v1, "error_cache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 246
    :try_start_5
    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 247
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 228
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 246
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 247
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 248
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static declared-synchronized getInstance()Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;
    .locals 2

    .prologue
    .line 75
    const-class v1, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mInstance:Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mInstance:Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    .line 78
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mInstance:Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private serializeJson(Lcom/huanju/ssp/base/core/report/error/ErrorInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    .prologue
    .line 118
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mEroMsgFilterList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, "eroMsg":Ljava/lang/String;
    iget-object v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->error_msg:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    const-string v3, "\u4e0d\u53d1\u9001\u672c\u6b21\u9519\u8bef\u4fe1\u606f \u4fe1\u606f\u5982\u4e0b:"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->error_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->error_msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x0

    .line 146
    .end local v1    # "eroMsg":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 128
    :cond_1
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 130
    .local v2, "js":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "response_id"

    .line 131
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->request_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "create_time"

    .line 132
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "request_time"

    .line 133
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-wide v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->requestTime:J

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "return_time"

    .line 134
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-wide v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->returnTime:J

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "connect_type"

    .line 135
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetworkType()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "appId"

    .line 136
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "ad_slot_id"

    .line 137
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->ad_slot_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "ad_type"

    .line 138
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "ero_code"

    .line 139
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->error_code:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "ero_msg"

    .line 140
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->error_msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private setEroMsgSwitch(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "eroMsg"    # Lorg/json/JSONArray;

    .prologue
    .line 197
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mEroMsgFilterList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 198
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mEroMsgFilterList:Ljava/util/Set;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setErrorSwitch(Z)V
    .locals 2
    .param p1, "error_switch"    # Z

    .prologue
    .line 182
    sget-boolean v0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->sErrorSwitch:Z

    if-ne v0, p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    sput-boolean p1, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->sErrorSwitch:Z

    .line 187
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "error_msg_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method addEroHistory(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 260
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-class v4, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v4

    .line 262
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "error_msg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, "error_cache"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    :try_start_1
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 270
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    :try_start_3
    iget-object v3, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 270
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 268
    :catchall_1
    move-exception v3

    :try_start_4
    iget-object v5, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->mDBManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 269
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public reportError(Lcom/huanju/ssp/base/core/report/error/ErrorInfo;ILjava/lang/String;)V
    .locals 2
    .param p1, "info"    # Lcom/huanju/ssp/base/core/report/error/ErrorInfo;
    .param p2, "error_code"    # I
    .param p3, "error_msg"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportError error_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public declared-synchronized reportHisEros()V
    .locals 0

    .prologue
    .line 298
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized reportInstallFailedErrors()V
    .locals 0

    .prologue
    .line 325
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method saveEroSwitch(Ljava/lang/String;)V
    .locals 7
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "swich"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "swich":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->setErrorSwitch(Z)V

    .line 165
    const-string v4, "emgSwich"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 167
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "error_msg_data"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->setEroMsgSwitch(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "swich":Ljava/lang/String;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
