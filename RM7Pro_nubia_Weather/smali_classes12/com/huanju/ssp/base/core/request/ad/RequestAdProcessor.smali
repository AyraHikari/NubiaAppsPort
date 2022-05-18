.class public Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "RequestAdProcessor.java"


# instance fields
.field private mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

.field private mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

.field private mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;)V
    .locals 0
    .param p1, "adParameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .param p2, "errorInfo"    # Lcom/huanju/ssp/base/core/report/error/ErrorInfo;
    .param p3, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 47
    iput-object p3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    .line 48
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    .line 49
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    .line 50
    return-void
.end method

.method private declared-synchronized getBeanFromJson(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huanju/ssp/base/core/request/ad/bean/Ad;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 252
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 253
    const-string v11, "json \u4e3a\u7a7a\uff01"

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 256
    :cond_1
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    .local v7, "jsonObject":Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    const-string v12, "request_id"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->request_id:Ljava/lang/String;

    .line 258
    iget-object v11, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-object v9, v11, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->request_id:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .local v9, "requestid":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 262
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v11, "sp_request_id"

    invoke-interface {v3, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    :goto_1
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "---mErrorInfo.request_id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 268
    const-string v11, "error_code"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 269
    .local v4, "error_code":I
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->requestTime:J

    .line 270
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "---getBeanFromJson requestTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v12

    iget-wide v12, v12, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->requestTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 271
    const-string v11, "ad_refresh_cycle"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 272
    const-string v11, "ad_refresh_cycle"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 273
    .local v10, "time":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "---getBeanFromJson time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    :try_start_4
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 277
    .restart local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v11, "sp_request_interval"

    mul-int/lit16 v12, v10, 0x3e8

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "time":I
    :cond_2
    :goto_2
    const/4 v11, 0x6

    if-ne v4, v11, :cond_3

    .line 285
    :try_start_5
    const-string v11, "\u65e0\u5e7f\u544a"

    const-string v12, ""

    invoke-direct {p0, v11, v4, v12}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 252
    .end local v4    # "error_code":I
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "requestid":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 264
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "requestid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 279
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "error_code":I
    .restart local v10    # "time":I
    :catch_1
    move-exception v2

    .line 280
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "time":I
    :cond_3
    if-eqz v4, :cond_4

    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "business_error_code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-direct {p0, v11, v4, v12}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_4
    invoke-direct {p0, v7}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->parserSwitch(Lorg/json/JSONObject;)V

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, "adms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    const-string v11, "adms"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 297
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-nez v6, :cond_5

    .line 298
    const-string v11, "\u670d\u52a1\u5668\u8fd4\u56de\u7684\u5e7f\u544a\u96c6\u5408\u4e3anull"

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 303
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 304
    .local v8, "opt":Lorg/json/JSONObject;
    if-nez v8, :cond_6

    .line 302
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 307
    :cond_6
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v12}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->parserAd(Lorg/json/JSONObject;Z)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v0

    .line 308
    .local v0, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    iput-object v9, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->request_id:Ljava/lang/String;

    .line 309
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method private onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;-><init>(Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method private onStart()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;->onStart()V

    .line 242
    :cond_0
    return-void
.end method

.method private parserSwitch(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 328
    const-string v8, "expiration_time"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 329
    .local v4, "ex_time":J
    cmp-long v8, v4, v10

    if-lez v8, :cond_0

    .line 330
    mul-long v8, v4, v12

    sput-wide v8, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->EXPIRATION_TIME:J

    .line 332
    :cond_0
    const-string v8, "get_ad_in_same_view_interval"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 333
    .local v0, "ad_interval":J
    cmp-long v8, v0, v10

    if-lez v8, :cond_1

    .line 334
    mul-long v8, v0, v12

    sput-wide v8, Lcom/huanju/ssp/base/core/common/Config;->BANNER_REQUEST_INTERVAL:J

    .line 337
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 339
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v9, "dex_update_switch"

    const-string v8, "swich"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v8, v6

    :goto_0
    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_1
    :try_start_1
    const-string v8, "is_report_crash_log_switch"

    const-string v9, "brkdwn"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :goto_2
    :try_start_2
    const-string v9, "dwlconfirm"

    const-string v8, "dwlconfirm"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v8, v6

    :goto_3
    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 363
    :goto_4
    :try_start_3
    const-string v8, "lg_swh"

    const-string v9, "lg_swh"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v6, :cond_4

    :goto_5
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 369
    :goto_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    return-void

    :cond_2
    move v8, v7

    .line 339
    goto :goto_0

    .line 340
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "\u65e0\u81ea\u66f4\u65b0\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 348
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 349
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "\u65e0\u4e0a\u62a5\u5f02\u5e38\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move v8, v7

    .line 355
    goto :goto_3

    .line 356
    :catch_2
    move-exception v2

    .line 357
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "\u65e0\u4e0b\u8f7d\u4e8c\u6b21\u786e\u8ba4\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move v6, v7

    .line 363
    goto :goto_5

    .line 364
    :catch_3
    move-exception v2

    .line 365
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "\u65e0logo\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdTask;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdTask;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)V

    return-object v0
.end method

.method public onAdError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    invoke-interface {v0, p3}, Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;->reportErrUrl(Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;->onAdError(Ljava/lang/String;I)V

    .line 233
    :cond_1
    return-void
.end method

.method public onAdStatusChange(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    if-eqz v2, :cond_1

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "curTime":J
    if-nez p1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iput-wide v0, v2, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->requestTime:J

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    invoke-interface {v2, p1}, Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;->onAdStatusChange(I)V

    .line 68
    .end local v0    # "curTime":J
    :cond_1
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 14
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v10, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->returnTime:J

    .line 93
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->getBeanFromJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 95
    .local v2, "adms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    if-nez v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 101
    const-string v10, "\u5e7f\u544a\u8fd4\u56de\u7a7a\u96c6\u5408"

    const/4 v11, -0x7

    const-string v12, ""

    invoke-direct {p0, v10, v11, v12}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    const/4 v9, 0x0

    .line 107
    .local v9, "videoAd":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    const/4 v6, 0x0

    .line 108
    .local v6, "noVideoAd":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 109
    .local v7, "temp":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    iget v11, v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_5

    iget v11, v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v12, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v12}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 110
    move-object v9, v7

    .line 114
    :cond_3
    :goto_1
    if-eqz v6, :cond_2

    if-eqz v9, :cond_2

    .line 119
    .end local v7    # "temp":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    :cond_4
    if-eqz v9, :cond_6

    .line 120
    move-object v0, v9

    .line 121
    .local v0, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 125
    :goto_2
    if-nez v0, :cond_7

    .line 127
    const-string v10, "\u5e7f\u544a\u8fd4\u56de\u7a7a\u96c6\u5408"

    const/4 v11, -0x7

    const-string v12, ""

    invoke-direct {p0, v10, v11, v12}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0    # "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .restart local v7    # "temp":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    :cond_5
    if-nez v6, :cond_3

    .line 112
    move-object v6, v7

    goto :goto_1

    .line 123
    .end local v7    # "temp":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    :cond_6
    move-object v0, v6

    .restart local v0    # "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    goto :goto_2

    .line 130
    :cond_7
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 132
    .local v4, "curTime":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDataReceived curTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mErrorInfo.requestTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-wide v12, v11, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->requestTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",ad.rqto:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rqto:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mErrorInfo.returnTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-wide v12, v11, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->returnTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 133
    iget-object v10, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v10, v10, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    sget-object v11, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    if-eq v10, v11, :cond_8

    .line 134
    iget-object v10, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-wide v10, v10, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->returnTime:J

    iget-object v12, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-wide v12, v12, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->requestTime:J

    sub-long/2addr v10, v12

    iget-wide v12, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rqto:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_8

    .line 136
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v11, v11, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v11}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u8bf7\u6c42\u8d85\u65f6   \uff1a   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rqto:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x2

    iget-object v12, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    invoke-direct {p0, v10, v11, v12}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    iget v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    iget-object v11, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v11, v11, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v11}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v11

    if-eq v10, v11, :cond_a

    .line 144
    iget v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    invoke-static {v10}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getAdTypeByType(I)Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    move-result-object v8

    .line 145
    .local v8, "type":Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    if-nez v8, :cond_9

    .line 147
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u672a\u77e5 \u5e7f\u544a\u7c7b\u578b \uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x6

    iget-object v12, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    invoke-direct {p0, v10, v11, v12}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  \u65e0\u6cd5\u8f6c\u6362\u6210  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v11, v11, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v11}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  \u5c55\u793a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x6

    iget-object v12, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    invoke-direct {p0, v10, v11, v12}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 156
    .end local v8    # "type":Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    :cond_a
    iget-object v10, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    if-nez v10, :cond_b

    .line 158
    const-string v10, "\u56de\u8c03Listener == null"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_b
    iget v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v11, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->NATIVE:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v11}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v11

    if-eq v10, v11, :cond_c

    iget v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v11, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SEARCH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v11}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v11

    if-eq v10, v11, :cond_c

    iget v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v11, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v11}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v11

    if-ne v10, v11, :cond_e

    .line 163
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_d

    .line 164
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 165
    .local v1, "adTemp":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 168
    .end local v1    # "adTemp":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    :cond_d
    iget-object v10, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    invoke-interface {v10, v2}, Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;->onNativeAdReach(Ljava/util/List;)V

    goto/16 :goto_0

    .line 172
    .end local v3    # "i":I
    :cond_e
    iget-object v10, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    invoke-interface {v10, v0}, Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;->onAdReach(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    goto/16 :goto_0
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 4
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->returnTime:J

    .line 73
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public onNetworkError()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->returnTime:J

    .line 55
    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    const/16 v1, -0x500

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public process()V
    .locals 4

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onStart()V

    .line 200
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetworkType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 201
    const-string v0, "\u65e0\u7f51\u7edc"

    const/16 v1, -0x500

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const-string v0, "\u5e7f\u544a id \u4e3a\u7a7a"

    const/16 v1, -0x501

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    .line 212
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->requestTime:J

    .line 213
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    iput-object v1, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->ad_slot_id:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->app_id:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    iput-object v1, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u5f00\u59cb\u8bf7\u6c42:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-wide v2, v1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->requestTime:J

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
