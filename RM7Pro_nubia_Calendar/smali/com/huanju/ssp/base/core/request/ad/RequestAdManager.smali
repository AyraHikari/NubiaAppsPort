.class public Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;
.super Ljava/lang/Object;
.source "RequestAdManager.java"


# static fields
.field public static final AD_SLOTID:Ljava/lang/String; = "slot_id"

.field public static final COLUMN_LOCK_AD_CACHE:Ljava/lang/String; = "ad_cache"

.field public static final COLUMN_REPORT_CONFIG:Ljava/lang/String; = "config"

.field public static final FLOATING_CONFIG_UPDATE:Ljava/lang/String; = "REPLACE INTO ad_cache(ad_cache,request_time,_id) VALUES ( ?,?,? ) "

.field public static final REPORT_CONFIG_UPDATE:Ljava/lang/String; = "REPLACE INTO report_config(config,request_time,_id) VALUES ( ?,?,? ) "

.field public static final REQUEST_TIME:Ljava/lang/String; = "request_time"

.field public static final SLOT_CONFIG_INSERT:Ljava/lang/String; = "INSERT INTO ad_config(slot_id,config,request_time) VALUES ( ?,?,? ) "

.field public static final SLOT_CONFIG_UPDATE:Ljava/lang/String; = "UPDATE ad_config SET config = ?,request_time = ? WHERE slot_id = ?"

.field public static final SP_REQUEST_ID:Ljava/lang/String; = "sp_request_id"

.field public static final SP_REQUEST_INTERVAL:Ljava/lang/String; = "sp_request_interval"

.field private static mInstance:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;


# instance fields
.field private mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

.field public mCheckTime:J

.field private mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

.field private mLockScreenAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field public mNetType:I

.field public requestTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mCheckTime:J

    .line 55
    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->requestTime:J

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    .line 62
    invoke-static {}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->getInstance()Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;)Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    return-object p1
.end method

.method private add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "arrayKey"    # Ljava/lang/String;

    .prologue
    .line 403
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 404
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 405
    .local v3, "length":I
    new-array v0, v3, [Ljava/lang/String;

    .line 406
    .local v0, "dataArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 407
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "dataArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "length":I
    :catch_0
    move-exception v4

    .line 413
    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private getConfig()Ljava/lang/String;
    .locals 14

    .prologue
    .line 85
    const-string v8, ""

    .line 86
    .local v8, "config":Ljava/lang/String;
    const/4 v9, 0x0

    .line 87
    .local v9, "cursor":Landroid/database/Cursor;
    const-class v13, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v13

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ad_cache"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "request_time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ad_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 97
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 102
    .local v11, "id":I
    const-string v1, "request_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, "rqTime":Ljava/lang/String;
    const-string v1, "ad_cache"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 112
    .end local v11    # "id":I
    .end local v12    # "rqTime":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 113
    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 115
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    .line 109
    :catch_0
    move-exception v10

    .line 110
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    :try_start_3
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 113
    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 116
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 112
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 113
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 114
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mInstance:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mInstance:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mInstance:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public delConfigbyId(Ljava/lang/String;)V
    .locals 7
    .param p1, "slotid"    # Ljava/lang/String;

    .prologue
    .line 607
    const-class v3, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v3

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    const-string v2, "deletebyId slotid\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 619
    if-eqz v0, :cond_0

    .line 620
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    :goto_0
    return-void

    .line 614
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 615
    const-string v2, "ad_config"

    const-string v4, "slot_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    if-eqz v0, :cond_2

    .line 620
    :try_start_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 623
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

    .line 616
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 619
    if-eqz v0, :cond_2

    .line 620
    :try_start_5
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_1

    .line 619
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 620
    iget-object v4, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 622
    :cond_3
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public deleteAd()V
    .locals 6

    .prologue
    .line 135
    const-class v3, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v3

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 138
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "ad_cache"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 144
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    :try_start_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 142
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 143
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getAd()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 5

    .prologue
    .line 417
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mLockScreenAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v3, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getConfig()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    const/4 v3, 0x0

    .line 430
    .end local v0    # "config":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 422
    .restart local v0    # "config":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---getAd config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 424
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->parserAd(Lorg/json/JSONObject;Z)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mLockScreenAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mLockScreenAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    goto :goto_0

    .line 426
    .restart local v0    # "config":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getAdConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "slotid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 438
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;

    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$1;-><init>(Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;-><init>(Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->process()V

    .line 485
    return-void
.end method

.method public getAdReportConfig()Ljava/lang/String;
    .locals 14

    .prologue
    .line 671
    const-string v8, ""

    .line 672
    .local v8, "config":Ljava/lang/String;
    const/4 v9, 0x0

    .line 673
    .local v9, "cursor":Landroid/database/Cursor;
    const-class v13, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v13

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 676
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "report_config"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "request_time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "config"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 683
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 688
    .local v11, "id":I
    const-string v1, "request_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 689
    .local v12, "rqTime":Ljava/lang/String;
    const-string v1, "config"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 698
    .end local v11    # "id":I
    .end local v12    # "rqTime":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 699
    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 701
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    .line 695
    :catch_0
    move-exception v10

    .line 696
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 698
    :try_start_3
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 699
    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 702
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 698
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 699
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 700
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getAdSlotidConfig(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    .locals 18
    .param p1, "slotId"    # Ljava/lang/String;

    .prologue
    .line 706
    const/4 v10, 0x0

    .line 707
    .local v10, "config":Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    const/4 v11, 0x0

    .line 708
    .local v11, "cursor":Landroid/database/Cursor;
    const-class v17, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v17

    .line 710
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 711
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "ad_config"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "request_time"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "config"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "slot_id"

    aput-object v5, v3, v4

    const-string v4, "slot_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 718
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 720
    .local v13, "id":I
    const-string v2, "request_time"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 721
    .local v15, "rqTime":Ljava/lang/String;
    const-string v2, "config"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 722
    .local v9, "adSlotConfig":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdSlotidConfig slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adSlotConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 723
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 724
    .local v14, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->parserAdSlotConfig(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    move-result-object v10

    .line 725
    if-eqz v10, :cond_0

    iget v2, v10, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->flowRatio:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    .line 726
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->randomSeed()I

    move-result v16

    .line 727
    .local v16, "seed":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdSlotidConfig seed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", config.flowRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->flowRatio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 728
    iget v2, v10, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->flowRatio:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, v16

    if-lt v0, v2, :cond_0

    .line 729
    const/4 v10, 0x0

    .line 738
    .end local v9    # "adSlotConfig":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "rqTime":Ljava/lang/String;
    .end local v16    # "seed":I
    :cond_0
    :try_start_1
    invoke-static {v11}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 741
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v10

    .line 735
    :catch_0
    move-exception v12

    .line 736
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 738
    :try_start_3
    invoke-static {v11}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 742
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 738
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v11}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 740
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getRequestAdUrl(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p1, "adslotInfo"    # Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    .param p2, "adType"    # Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .param p3, "dspType"    # Ljava/lang/String;
    .param p4, "is_download"    # I

    .prologue
    .line 758
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    if-nez v3, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdReportConfig()Ljava/lang/String;

    move-result-object v10

    .line 761
    .local v10, "adReportconfig":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->parserAdReportConfig(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v10    # "adReportconfig":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    .line 767
    :cond_1
    const-string v14, ""

    .line 799
    :goto_1
    return-object v14

    .line 762
    .restart local v10    # "adReportconfig":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 763
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 769
    .end local v10    # "adReportconfig":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v12, ""

    .line 770
    .local v12, "jsonData":Ljava/lang/String;
    const-string v14, ""

    .line 781
    .local v14, "url":Ljava/lang/String;
    :try_start_1
    const-string v5, ""

    .line 782
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 783
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 785
    :cond_3
    new-instance v2, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    const-string v7, ""

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->appId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->adslotId:Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    .local v2, "adParameter":Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    invoke-static {v2}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->getDspParams(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)Ljava/lang/String;

    move-result-object v13

    .line 787
    .local v13, "strDspPareams":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequestAdUrl strDspPareams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 788
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/huanju/ssp/base/utils/KeyUtil;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->request:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/v2.0/getdspad?reqjson=%s"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "UTF-8"

    invoke-static {v12, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 790
    invoke-static {}, Lcom/huanju/ssp/base/core/common/ParameterInfoProducer;->appendCommonParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&requestid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ad_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ipush="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&client_ts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&is_download="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 794
    goto/16 :goto_1

    .line 795
    .end local v2    # "adParameter":Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v13    # "strDspPareams":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 796
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 799
    const-string v14, ""

    goto/16 :goto_1
.end method

.method public getmAdReportConfigInfo()Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    .locals 3

    .prologue
    .line 659
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    if-nez v2, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdReportConfig()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "adReportConfig":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->parserAdReportConfig(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v0    # "adReportConfig":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    return-object v2

    .line 663
    .restart local v0    # "adReportConfig":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insOrUpAdConfig(Ljava/lang/String;)V
    .locals 8
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insOrUpAdConfig config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    :goto_0
    return-void

    .line 579
    :cond_0
    const-class v3, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v3

    .line 581
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 582
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "REPLACE INTO report_config(config,request_time,_id) VALUES ( ?,?,? ) "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 582
    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 588
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 590
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    :try_start_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 589
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public insOrUpSlotConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotid"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insOrUpAdConfig slotid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 595
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdSlotidConfig(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    move-result-object v0

    .line 599
    .local v0, "adSlotConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->updateSlotConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->insertSlotConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertOrUpdate(Ljava/lang/String;)V
    .locals 8
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 120
    const-class v3, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v3

    .line 122
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertOrUpdate config:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "REPLACE INTO ad_cache(ad_cache,request_time,_id) VALUES ( ?,?,? ) "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 124
    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 132
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    return-void

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :try_start_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 130
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 131
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public insertSlotConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "slotid"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertSlotConfig slotid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 628
    const-class v3, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v3

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 631
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "INSERT INTO ad_config(slot_id,config,request_time) VALUES ( ?,?,? ) "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 631
    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 637
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 639
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    return-void

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 637
    :try_start_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 639
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 637
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 638
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public parserAd(Lorg/json/JSONObject;Z)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 22
    .param p1, "jsonAd"    # Lorg/json/JSONObject;
    .param p2, "isCacheData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;-><init>()V

    .line 155
    .local v4, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    const-string v17, "adslot_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    .line 156
    const-string v17, "ad_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setAdType(I)V

    .line 157
    const-string v17, "interaction_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setInteractionType(I)V

    .line 158
    const-string v17, "w"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    .line 159
    const-string v17, "h"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    .line 160
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    .line 164
    :try_start_0
    const-string v17, "lg"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lg:I

    .line 165
    const-string v17, "lgsrc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lgsrc:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    :try_start_1
    const-string v17, "rqto"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setRqto(I)V

    .line 174
    const-string v17, "rdto"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setRdto(I)V

    .line 175
    const-string v17, "ctop"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setCtop(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_1
    :try_start_2
    const-string v17, "creative_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    .line 196
    iget v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    move/from16 v17, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sparse-switch v17, :sswitch_data_0

    .line 277
    :cond_0
    :goto_2
    :sswitch_0
    const-string v17, "clkurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .line 278
    const-string v17, "imperrors"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 279
    const-string v17, "imperrors"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 280
    .local v15, "urls":[Ljava/lang/String;
    if-eqz v15, :cond_1

    array-length v0, v15

    move/from16 v17, v0

    if-lez v17, :cond_1

    .line 281
    const/16 v17, 0x0

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    .line 282
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ad.imperrors:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 285
    .end local v15    # "urls":[Ljava/lang/String;
    :cond_1
    const-string v17, "imgmd5"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 286
    const-string v17, "imgmd5"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgmd5:Ljava/lang/String;

    .line 288
    :cond_2
    const-string v17, "dl_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 289
    const-string v17, "dl_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_type:I

    .line 291
    :cond_3
    const-string v17, "app_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 292
    const-string v17, "app_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->app_name:Ljava/lang/String;

    .line 294
    :cond_4
    const-string v17, "dl_url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 295
    const-string v17, "dl_url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 297
    :cond_5
    const-string v17, "campaign_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 298
    const-string v17, "campaign_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->campaign_id:Ljava/lang/String;

    .line 300
    :cond_6
    const-string v17, "soft_src"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 301
    const-string v17, "soft_src"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    .line 303
    :cond_7
    const-string v17, "is_activate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 304
    const-string v17, "is_activate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_activate:I

    .line 306
    :cond_8
    const-string v17, "ad_identify"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 307
    const-string v17, "ad_identify"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    .line 309
    :cond_9
    const-string v17, "is_brand_promotion"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 310
    const-string v17, "is_brand_promotion"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_brand_pormotion:I

    .line 312
    :cond_a
    const-string v17, "is_cache"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 313
    const-string v17, "is_cache"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_cache:I

    .line 315
    :cond_b
    const-string v17, "cache_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 316
    const-string v17, "cache_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->cache_time:J

    .line 318
    :cond_c
    const-string v17, "end_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 319
    const-string v17, "end_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    .line 321
    :cond_d
    const-string v17, "reqtime"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    if-nez p2, :cond_e

    .line 322
    const-string v17, "reqtime"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_time:J

    .line 324
    :cond_e
    const-string v17, "click_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 325
    const-string v17, "click_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clickid:Ljava/lang/String;

    .line 327
    :cond_f
    const-string v17, "hasreplace"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 328
    const-string v17, "hasreplace"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    .line 330
    :cond_10
    const-string v17, "ad_source"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 331
    const-string v17, "ad_source"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_source:Ljava/lang/String;

    .line 334
    :cond_11
    :try_start_3
    const-string v17, "click_region_restrict"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 335
    const-string v17, "click_region_restrict"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_region_restrict:I

    .line 337
    :cond_12
    const-string v17, "click_template"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 338
    const-string v17, "click_template"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_template:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 344
    :cond_13
    :goto_3
    :try_start_4
    const-string v17, "convert"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 345
    const-string v17, "convert"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 346
    .local v5, "convert":Lorg/json/JSONObject;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "parserAd convert:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 347
    if-eqz v5, :cond_14

    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 348
    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_url:Ljava/lang/String;

    .line 350
    :cond_14
    if-eqz v5, :cond_15

    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 351
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_type:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 357
    .end local v5    # "convert":Lorg/json/JSONObject;
    :cond_15
    :goto_4
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "imptrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    iget v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 389
    :goto_5
    iget v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_cache:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    sget-object v17, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual/range {v17 .. v17}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v17

    iget v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    :cond_16
    if-eqz p2, :cond_17

    .line 390
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ad.is_cache:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_cache:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",ad.ad_type:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 391
    const-string v17, "reqtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 392
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->insertOrUpdate(Ljava/lang/String;)V

    .line 394
    :cond_17
    return-object v4

    .line 166
    :catch_0
    move-exception v6

    .line 167
    .local v6, "e":Lorg/json/JSONException;
    const-string v17, "lg or lgsrc is null"

    invoke-static/range {v17 .. v17}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .line 177
    .restart local v6    # "e":Lorg/json/JSONException;
    const-string v17, "rqto or rdto or ctop is null"

    invoke-static/range {v17 .. v17}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 200
    .end local v6    # "e":Lorg/json/JSONException;
    :sswitch_1
    :try_start_5
    const-string v17, "imgurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 272
    :catch_2
    move-exception v6

    .line 273
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 203
    .end local v6    # "e":Ljava/lang/Exception;
    :sswitch_2
    :try_start_6
    const-string v17, "mix"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 204
    .local v8, "json_mix":Lorg/json/JSONObject;
    new-instance v12, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    invoke-direct {v12}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;-><init>()V

    .line 205
    .local v12, "mix":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;
    iput-object v12, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    .line 206
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->title:Ljava/lang/String;

    .line 207
    const-string v17, "sub_title"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->sub_title:Ljava/lang/String;

    .line 208
    const-string v17, "imgurl"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->imgurl:Ljava/lang/String;

    .line 209
    const-string v17, "acimgurl"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acimgurl:Ljava/lang/String;

    .line 210
    const-string v17, "bg_color"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->bg_color:Ljava/lang/String;

    .line 211
    const-string v17, "text_color"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->text_color:Ljava/lang/String;

    goto/16 :goto_2

    .line 216
    .end local v8    # "json_mix":Lorg/json/JSONObject;
    .end local v12    # "mix":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;
    :sswitch_3
    const-string v17, "nativ"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 217
    .local v9, "json_nativ":Lorg/json/JSONObject;
    new-instance v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    invoke-direct {v13}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;-><init>()V

    .line 218
    .local v13, "nativ":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;
    iput-object v13, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    .line 219
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->type:I

    .line 220
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->title:Ljava/lang/String;

    .line 221
    const-string v17, "sub_title"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->sub_title:Ljava/lang/String;

    .line 222
    const-string v17, "imgurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->imgurl:[Ljava/lang/String;

    .line 223
    const-string v17, "source"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->source:Ljava/lang/String;

    goto/16 :goto_2

    .line 226
    .end local v9    # "json_nativ":Lorg/json/JSONObject;
    .end local v13    # "nativ":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;
    :sswitch_4
    new-instance v14, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;

    invoke-direct {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;-><init>()V

    .line 227
    .local v14, "search":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;
    const-string v17, "search"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 228
    .local v10, "json_search":Lorg/json/JSONObject;
    iput-object v14, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->search:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;

    .line 229
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->type:I

    .line 230
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->title:Ljava/lang/String;

    .line 231
    const-string v17, "sub_title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->sub_title:Ljava/lang/String;

    .line 232
    const-string v17, "imgurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->imgurl:[Ljava/lang/String;

    .line 233
    const-string v17, "source"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->source:Ljava/lang/String;

    goto/16 :goto_2

    .line 236
    .end local v10    # "json_search":Lorg/json/JSONObject;
    .end local v14    # "search":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;
    :sswitch_5
    const-string v17, "imgurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 237
    const-string v17, "imgurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 240
    :cond_18
    :try_start_7
    const-string v17, "video"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 241
    .local v11, "json_video":Lorg/json/JSONObject;
    new-instance v16, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    invoke-direct/range {v16 .. v16}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;-><init>()V

    .line 242
    .local v16, "video":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    .line 243
    const-string v17, "tile"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 244
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->title:Ljava/lang/String;

    .line 246
    :cond_19
    const-string v17, "sub_title"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 247
    const-string v17, "sub_title"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->sub_title:Ljava/lang/String;

    .line 249
    :cond_1a
    const-string v17, "source"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 250
    const-string v17, "source"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->source:Ljava/lang/String;

    .line 252
    :cond_1b
    const-string v17, "duration"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 253
    const-string v17, "duration"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->duration:I

    .line 255
    :cond_1c
    const-string v17, "format"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 256
    const-string v17, "format"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->format:Ljava/lang/String;

    .line 258
    :cond_1d
    const-string v17, "videoImg"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 259
    const-string v17, "videoImg"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->videoImg:Ljava/lang/String;

    .line 261
    :cond_1e
    const-string v17, "videoMD5"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 262
    const-string v17, "videoMD5"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->videoMD5:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 264
    .end local v11    # "json_video":Lorg/json/JSONObject;
    .end local v16    # "video":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;
    :catch_3
    move-exception v6

    .line 265
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 340
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 341
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 354
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 355
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 363
    .end local v7    # "ex":Ljava/lang/Exception;
    :pswitch_0
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "clktrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    const-string v19, "exposuretrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 367
    :pswitch_1
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "clktrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    const-string v17, "bundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 369
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const-string v19, "dwnlst"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const-string v19, "dwnltrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    const-string v19, "intltrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    const-string v19, "actvtrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    const-string v19, "exposuretrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 376
    :pswitch_2
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "clktrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    const-string v17, "bundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 378
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const-string v19, "dwnlst"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const-string v19, "dwnltrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    const-string v19, "intltrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    const-string v19, "actvtrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    const-string v19, "dplkwkup"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    iget-object v0, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    const-string v19, "exposuretrackers"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
        0x6 -> :sswitch_5
        0x65 -> :sswitch_4
    .end sparse-switch

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public parserAdReportConfig(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 488
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;-><init>()V

    .line 490
    .local v0, "adConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    if-nez p1, :cond_1

    .line 491
    const/4 v0, 0x0

    .line 517
    .end local v0    # "adConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 493
    .restart local v0    # "adConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    :cond_1
    :try_start_0
    const-string v2, "actvTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 494
    const-string v2, "actvTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->actvTrackers:Ljava/lang/String;

    .line 496
    :cond_2
    const-string v2, "clkTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    const-string v2, "clkTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->clkTrackers:Ljava/lang/String;

    .line 499
    :cond_3
    const-string v2, "dwnlTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 500
    const-string v2, "dwnlTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->dwnlTrackers:Ljava/lang/String;

    .line 502
    :cond_4
    const-string v2, "exposureTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 503
    const-string v2, "exposureTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->exposureTrackers:Ljava/lang/String;

    .line 505
    :cond_5
    const-string v2, "impTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 506
    const-string v2, "impTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->impTrackers:Ljava/lang/String;

    .line 508
    :cond_6
    const-string v2, "intlTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 509
    const-string v2, "intlTrackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->intlTrackers:Ljava/lang/String;

    .line 511
    :cond_7
    const-string v2, "request"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    const-string v2, "request"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->request:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public parserAdSlotConfig(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 521
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;-><init>()V

    .line 523
    .local v0, "adSlotConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    if-nez p1, :cond_1

    .line 524
    const/4 v0, 0x0

    .line 571
    .end local v0    # "adSlotConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 526
    .restart local v0    # "adSlotConfigInfo":Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    :cond_1
    :try_start_0
    const-string v2, "adslotId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    const-string v2, "adslotId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->adslotId:Ljava/lang/String;

    .line 529
    :cond_2
    const-string v2, "dspAdslotId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    const-string v2, "dspAdslotId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    .line 532
    :cond_3
    const-string v2, "adType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 533
    const-string v2, "adType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->adType:Ljava/lang/String;

    .line 535
    :cond_4
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 536
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->width:Ljava/lang/String;

    .line 538
    :cond_5
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 539
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->height:Ljava/lang/String;

    .line 541
    :cond_6
    const-string v2, "dspAdType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 542
    const-string v2, "dspAdType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdType:I

    .line 544
    :cond_7
    const-string v2, "dspName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 545
    const-string v2, "dspName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspName:Ljava/lang/String;

    .line 547
    :cond_8
    const-string v2, "sdkSource"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 548
    const-string v2, "sdkSource"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkSource:I

    .line 550
    :cond_9
    const-string v2, "sdkEndTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 551
    const-string v2, "sdkEndTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkEndTime:J

    .line 553
    :cond_a
    const-string v2, "sdkStartTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 554
    const-string v2, "sdkStartTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkStartTime:J

    .line 556
    :cond_b
    const-string v2, "dspAppId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 557
    const-string v2, "dspAppId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    .line 559
    :cond_c
    const-string v2, "appId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 560
    const-string v2, "appId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->appId:Ljava/lang/String;

    .line 562
    :cond_d
    const-string v2, "dspId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 563
    const-string v2, "dspId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspId:Ljava/lang/String;

    .line 565
    :cond_e
    const-string v2, "flowRatio"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    const-string v2, "flowRatio"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->flowRatio:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V
    .locals 8
    .param p1, "adslotInfo"    # Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    .param p2, "type"    # I

    .prologue
    .line 803
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    if-nez v3, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdReportConfig()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "adReportconfig":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->parserAdReportConfig(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v0    # "adReportconfig":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    .line 855
    :cond_1
    :goto_1
    return-void

    .line 807
    .restart local v0    # "adReportconfig":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 808
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 814
    .end local v0    # "adReportconfig":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportTTAdImp type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 815
    const-string v2, ""

    .line 816
    .local v2, "url":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 838
    :goto_2
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportTTAdImp url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 839
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 842
    const-string v3, "${REQUEST_ID}"

    iget-object v4, p1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${APP_ID}"

    iget-object v5, p1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->appId:Ljava/lang/String;

    .line 843
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${ADSLOT_ID}"

    iget-object v5, p1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->adslotId:Ljava/lang/String;

    .line 844
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${TIME}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
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

    const-string v4, "${IMP_ID}"

    const-string v5, "1"

    .line 846
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${IP}"

    const-string v5, "1"

    .line 847
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 848
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportTTAdImp url1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 849
    new-instance v3, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;

    new-instance v4, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$3;

    invoke-direct {v4, p0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$3;-><init>(Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;)V

    invoke-direct {v3, v2, v4}, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 854
    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->process()V

    goto/16 :goto_1

    .line 818
    :pswitch_1
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    iget-object v2, v3, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->impTrackers:Ljava/lang/String;

    .line 819
    goto/16 :goto_2

    .line 821
    :pswitch_2
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    iget-object v2, v3, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->clkTrackers:Ljava/lang/String;

    .line 822
    goto/16 :goto_2

    .line 824
    :pswitch_3
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    iget-object v2, v3, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->dwnlTrackers:Ljava/lang/String;

    .line 825
    goto/16 :goto_2

    .line 827
    :pswitch_4
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    iget-object v2, v3, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->intlTrackers:Ljava/lang/String;

    .line 828
    goto/16 :goto_2

    .line 830
    :pswitch_5
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    iget-object v2, v3, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->exposureTrackers:Ljava/lang/String;

    .line 831
    goto/16 :goto_2

    .line 833
    :pswitch_6
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mAdReportConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;

    iget-object v2, v3, Lcom/huanju/ssp/base/core/sdk/AdReportConfigInfo;->actvTrackers:Ljava/lang/String;

    .line 834
    goto/16 :goto_2

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public requestAd(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;)V
    .locals 1
    .param p1, "adParameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .param p2, "errorInfo"    # Lcom/huanju/ssp/base/core/report/error/ErrorInfo;
    .param p3, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    .prologue
    .line 81
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;)V

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->process()V

    .line 82
    return-void
.end method

.method public sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "adslotInfo"    # Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
    .param p2, "adType"    # Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .param p3, "dspType"    # Ljava/lang/String;
    .param p4, "is_download"    # I

    .prologue
    .line 746
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getRequestAdUrl(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReqTTAd url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 748
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 749
    new-instance v1, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;

    new-instance v2, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$2;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$2;-><init>(Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;)V

    invoke-direct {v1, v0, v2}, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 754
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->process()V

    .line 756
    :cond_0
    return-void
.end method

.method public setAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 0
    .param p1, "mAd"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mLockScreenAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 435
    return-void
.end method

.method public updateSlotConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "slotid"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlotConfig slotid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 644
    const-class v3, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v3

    .line 646
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 647
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "UPDATE ad_config SET config = ?,request_time = ? WHERE slot_id = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    .line 647
    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 653
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 655
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    return-void

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 653
    :try_start_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 655
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 653
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mDbManager:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->closeDatabase()V

    .line 654
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
