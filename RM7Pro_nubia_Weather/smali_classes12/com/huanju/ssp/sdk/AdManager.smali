.class public final Lcom/huanju/ssp/sdk/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;
    }
.end annotation


# static fields
.field static adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/huanju/ssp/sdk/AdManager;->initManager(Landroid/content/Context;)V

    return-void
.end method

.method public static add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "arrayKey"    # Ljava/lang/String;

    .prologue
    .line 829
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 830
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 831
    .local v4, "length":I
    new-array v0, v4, [Ljava/lang/String;

    .line 832
    .local v0, "dataArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 833
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 836
    .end local v0    # "dataArray":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 839
    const/4 v0, 0x0

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v0
.end method

.method public static checkupdate(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getShortPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/huanju/ssp/sdk/AdManager$2;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/sdk/AdManager$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public static crashTest()V
    .locals 3

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "crashTest":Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v1

    sget-object v2, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->ONLINE:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    if-ne v1, v2, :cond_0

    .line 422
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static generateCommonAd(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-object v1

    .line 469
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 474
    :try_start_0
    invoke-static {p0}, Lcom/huanju/ssp/sdk/AdManager;->getBeanFromJson(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateWebAd(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 425
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v7

    if-nez v7, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-object v6

    .line 428
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 432
    const-string v7, "dataJson"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getOneParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "dataBase64":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataBase64:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 435
    const/4 v2, 0x0

    .line 437
    .local v2, "dataJson":Ljava/lang/String;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 441
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataJson:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 442
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 443
    const-string v7, "json \u4e3a\u7a7a\uff01"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :catch_0
    move-exception v3

    .line 439
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 447
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 448
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, ""

    .line 449
    .local v5, "reqId":Ljava/lang/String;
    const-string v7, "request_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 450
    const-string v7, "request_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    :cond_3
    invoke-static {v4}, Lcom/huanju/ssp/sdk/AdManager;->parserAd(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v0

    .line 453
    .local v0, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    iput-object v5, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->request_id:Ljava/lang/String;

    .line 454
    iput-object v2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    .line 455
    new-instance v7, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-direct {v7, v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    goto/16 :goto_0

    .line 456
    .end local v0    # "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "reqId":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 457
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getAdShareClickListener()Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/huanju/ssp/sdk/AdManager;->adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    return-object v0
.end method

.method private static declared-synchronized getBeanFromJson(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;",
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

    .line 506
    const-class v9, Lcom/huanju/ssp/sdk/AdManager;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 507
    const-string v8, "json \u4e3a\u7a7a\uff01"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_0
    :goto_0
    monitor-exit v9

    return-object v1

    .line 510
    :cond_1
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "error_code"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 514
    .local v2, "error_code":I
    const/4 v8, 0x6

    if-eq v2, v8, :cond_0

    .line 517
    if-nez v2, :cond_0

    .line 522
    invoke-static {v5}, Lcom/huanju/ssp/sdk/AdManager;->parserSwitch(Lorg/json/JSONObject;)V

    .line 523
    const-string v7, ""

    .line 524
    .local v7, "reqId":Ljava/lang/String;
    const-string v8, "request_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 525
    const-string v8, "request_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 528
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v1, "adms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;>;"
    const-string v8, "adms"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 531
    .local v4, "jsonArray":Lorg/json/JSONArray;
    if-nez v4, :cond_3

    .line 532
    const-string v8, "\u670d\u52a1\u5668\u8fd4\u56de\u7684\u5e7f\u544a\u96c6\u5408\u4e3anull"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 506
    .end local v1    # "adms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;>;"
    .end local v2    # "error_code":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "reqId":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 536
    .restart local v1    # "adms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;>;"
    .restart local v2    # "error_code":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "reqId":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 537
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 538
    .local v6, "opt":Lorg/json/JSONObject;
    if-nez v6, :cond_4

    .line 536
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 541
    :cond_4
    invoke-static {v6}, Lcom/huanju/ssp/sdk/AdManager;->parserAd(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v0

    .line 542
    .local v0, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    iput-object v7, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->request_id:Ljava/lang/String;

    .line 543
    iput-object p0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    .line 544
    new-instance v8, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-direct {v8, v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static getDownloadingCommonAdItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    .locals 3
    .param p0, "adid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 484
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.nubia."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-static {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdUtil;->query(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huanju/ssp/sdk/AdManager;->init(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z

    .prologue
    .line 102
    const-string v0, ""

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/AdManager;->init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)Z

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .param p3, "iMei"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/huanju/ssp/sdk/AdManager;->init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)Z

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .param p3, "iMei"    # Ljava/lang/String;
    .param p4, "netType"    # I

    .prologue
    const/4 v0, 0x1

    .line 120
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 142
    :cond_1
    :goto_0
    return v0

    .line 123
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    if-eqz p2, :cond_3

    .line 127
    sget-object v1, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/common/Config;->setNetEnvironment(Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;)V

    .line 131
    :goto_1
    invoke-static {p0, p2}, Lcom/huanju/ssp/base/utils/Utils;->init(Landroid/content/Context;Z)V

    .line 132
    invoke-static {p1}, Lcom/huanju/ssp/base/core/common/Config;->init(Ljava/lang/String;)V

    .line 133
    invoke-static {p3}, Lcom/huanju/ssp/base/core/common/Config;->setImei(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v1

    iput p4, v1, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    .line 135
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getShortPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v1

    new-instance v2, Lcom/huanju/ssp/sdk/AdManager$1;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/sdk/AdManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 129
    :cond_3
    sget-object v1, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->ONLINE:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/common/Config;->setNetEnvironment(Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;)V

    goto :goto_1
.end method

.method private static initManager(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-static {}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->getInstance()Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->initExceptionHandler()V

    .line 182
    invoke-static {}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->getInstance()Lcom/huanju/ssp/base/core/request/host/RequestIpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->requestIp()V

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 186
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    .line 187
    return-void
.end method

.method public static isAdInit()Z
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u521d\u59cb\u5316\uff01Utils.getContext()=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/hotfix/DexManager;->release()V

    .line 397
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 398
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->onDestroy()V

    goto :goto_0
.end method

.method private static parserAd(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 13
    .param p0, "jsonAd"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;-><init>()V

    .line 604
    .local v0, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mSourceData:Ljava/lang/String;

    .line 606
    const-string v10, "adslot_id"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 607
    const-string v10, "adslot_id"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    .line 609
    :cond_0
    const-string v10, "ad_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 610
    const-string v10, "ad_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setAdType(I)V

    .line 612
    :cond_1
    const-string v10, "interaction_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 613
    const-string v10, "interaction_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setInteractionType(I)V

    .line 615
    :cond_2
    const-string v10, "w"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 616
    const-string v10, "w"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    .line 618
    :cond_3
    const-string v10, "h"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 619
    const-string v10, "h"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    .line 621
    :cond_4
    const-string v10, "cl_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 622
    const-string v10, "cl_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->cl_type:I

    .line 624
    :cond_5
    const-string v10, "ad_source"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 625
    const-string v10, "ad_source"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_source:Ljava/lang/String;

    .line 627
    :cond_6
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    .line 631
    :try_start_0
    const-string v10, "lg"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lg:I

    .line 632
    const-string v10, "lgsrc"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lgsrc:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    :try_start_1
    const-string v10, "rqto"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setRqto(I)V

    .line 641
    const-string v10, "rdto"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setRdto(I)V

    .line 642
    const-string v10, "ctop"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setCtop(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 648
    :goto_1
    :try_start_2
    const-string v10, "extend"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 649
    const-string v10, "extend"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 650
    .local v4, "json_exten":Lorg/json/JSONObject;
    if-eqz v4, :cond_d

    .line 651
    const-string v10, "wk_app_id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 652
    const-string v10, "wk_app_id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_app_id:Ljava/lang/String;

    .line 654
    :cond_7
    const-string v10, "wk_app_secret"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 655
    const-string v10, "wk_app_secret"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_app_secret:Ljava/lang/String;

    .line 657
    :cond_8
    const-string v10, "wk_channel_id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 658
    const-string v10, "wk_channel_id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_channel_id:Ljava/lang/String;

    .line 660
    :cond_9
    const-string v10, "wk_dwnlsttracker"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 661
    const-string v10, "wk_dwnlsttracker"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_dwnlsttracker:Ljava/lang/String;

    .line 663
    :cond_a
    const-string v10, "wk_dwnltracker"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 664
    const-string v10, "wk_dwnltracker"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_dwnltracker:Ljava/lang/String;

    .line 666
    :cond_b
    const-string v10, "wk_imptracker"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 667
    const-string v10, "wk_imptracker"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_imptracker:Ljava/lang/String;

    .line 669
    :cond_c
    const-string v10, "wk_app_id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 670
    const-string v10, "wk_intltracker"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_intltracker:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 693
    .end local v4    # "json_exten":Lorg/json/JSONObject;
    :cond_d
    :goto_2
    :try_start_3
    const-string v10, "creative_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    .line 694
    iget v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    packed-switch v10, :pswitch_data_0

    .line 727
    :goto_3
    :pswitch_0
    const-string v10, "clkurl"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 728
    sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v11, "clkurl"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-ne v10, v11, :cond_17

    .line 729
    const-string v10, "getAdID111 ad.click is null"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 734
    :cond_e
    :goto_4
    const-string v10, "clkurl"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .line 735
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAdID111 ad.clkurl:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    if-nez v10, :cond_18

    const-string v10, "null"

    :goto_5
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 741
    :goto_6
    :try_start_4
    const-string v10, "imperrors"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 742
    const-string v10, "imperrors"

    invoke-static {p0, v10}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 743
    .local v9, "urls":[Ljava/lang/String;
    if-eqz v9, :cond_f

    array-length v10, v9

    if-lez v10, :cond_f

    .line 744
    const/4 v10, 0x0

    aget-object v10, v9, v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    .line 745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ad.imperrors:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 752
    .end local v9    # "urls":[Ljava/lang/String;
    :cond_f
    :goto_7
    const-string v10, "dl_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 753
    const-string v10, "dl_type"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_type:I

    .line 755
    :cond_10
    const-string v10, "app_name"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 756
    const-string v10, "app_name"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->app_name:Ljava/lang/String;

    .line 758
    :cond_11
    const-string v10, "dl_url"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 759
    const-string v10, "dl_url"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 761
    :cond_12
    const-string v10, "soft_src"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 762
    const-string v10, "soft_src"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    .line 764
    :cond_13
    const-string v10, "hasreplace"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 765
    const-string v10, "hasreplace"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    .line 769
    :cond_14
    :try_start_5
    const-string v10, "convert"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 770
    const-string v10, "convert"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 771
    .local v1, "convert":Lorg/json/JSONObject;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parserAd convert:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 772
    const-string v10, "url"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 773
    const-string v10, "url"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_url:Ljava/lang/String;

    .line 775
    :cond_15
    const-string v10, "type"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 776
    const-string v10, "type"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_type:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 783
    .end local v1    # "convert":Lorg/json/JSONObject;
    :cond_16
    :goto_8
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x0

    const-string v12, "imptrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 786
    iget v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    packed-switch v10, :pswitch_data_1

    .line 818
    :goto_9
    return-object v0

    .line 633
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Lorg/json/JSONException;
    const-string v10, "lg or lgsrc is null"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 644
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string v10, "rqto or rdto or ctop is null"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 674
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 675
    .local v3, "ex":Ljava/lang/Exception;
    const-string v10, "extend is null"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 698
    .end local v3    # "ex":Ljava/lang/Exception;
    :pswitch_1
    :try_start_6
    const-string v10, "imgurl"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 736
    :catch_3
    move-exception v3

    .line 737
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 701
    .end local v3    # "ex":Ljava/lang/Exception;
    :pswitch_2
    :try_start_7
    const-string v10, "mix"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 702
    .local v5, "json_mix":Lorg/json/JSONObject;
    new-instance v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    invoke-direct {v7}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;-><init>()V

    .line 703
    .local v7, "mix":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;
    iput-object v7, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    .line 704
    const-string v10, "title"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->title:Ljava/lang/String;

    .line 705
    const-string v10, "sub_title"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->sub_title:Ljava/lang/String;

    .line 706
    const-string v10, "imgurl"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->imgurl:Ljava/lang/String;

    .line 707
    const-string v10, "acimgurl"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acimgurl:Ljava/lang/String;

    .line 708
    const-string v10, "bg_color"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->bg_color:Ljava/lang/String;

    .line 709
    const-string v10, "text_color"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->text_color:Ljava/lang/String;

    goto/16 :goto_3

    .line 714
    .end local v5    # "json_mix":Lorg/json/JSONObject;
    .end local v7    # "mix":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;
    :pswitch_3
    const-string v10, "nativ"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 715
    .local v6, "json_nativ":Lorg/json/JSONObject;
    new-instance v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    invoke-direct {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;-><init>()V

    .line 716
    .local v8, "nativ":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;
    iput-object v8, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    .line 717
    const-string v10, "type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->type:I

    .line 718
    const-string v10, "title"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->title:Ljava/lang/String;

    .line 719
    const-string v10, "sub_title"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->sub_title:Ljava/lang/String;

    .line 720
    const-string v10, "imgurl"

    invoke-static {v6, v10}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->imgurl:[Ljava/lang/String;

    .line 721
    const-string v10, "source"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->source:Ljava/lang/String;

    goto/16 :goto_3

    .line 731
    .end local v6    # "json_nativ":Lorg/json/JSONObject;
    .end local v8    # "nativ":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;
    :cond_17
    const-string v10, "getAdID111 ad.click is not null"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 735
    :cond_18
    const-string v10, "not null"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_5

    .line 748
    :catch_4
    move-exception v2

    .line 749
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 779
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 780
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v10, "convert is null"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 789
    .end local v3    # "ex":Ljava/lang/Exception;
    :pswitch_4
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x1

    const-string v12, "clktrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 790
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x7

    const-string v12, "exposuretrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 793
    :pswitch_5
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x1

    const-string v12, "clktrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 794
    const-string v10, "bundle"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 795
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x2

    const-string v12, "dwnlst"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 796
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x3

    const-string v12, "dwnltrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 797
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x4

    const-string v12, "intltrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 798
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x5

    const-string v12, "actvtrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 799
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x7

    const-string v12, "exposuretrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 803
    :pswitch_6
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x1

    const-string v12, "clktrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    const-string v10, "bundle"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 805
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x2

    const-string v12, "dwnlst"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 806
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x3

    const-string v12, "dwnltrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 807
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x4

    const-string v12, "intltrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x5

    const-string v12, "actvtrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 809
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x6

    const-string v12, "dplkwkup"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 810
    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v11, 0x7

    const-string v12, "exposuretrackers"

    invoke-static {p0, v12}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 786
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private static parserSwitch(Lorg/json/JSONObject;)V
    .locals 14
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
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

    .line 552
    const-string v8, "expiration_time"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 553
    .local v4, "ex_time":J
    cmp-long v8, v4, v10

    if-lez v8, :cond_0

    .line 554
    mul-long v8, v4, v12

    sput-wide v8, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->EXPIRATION_TIME:J

    .line 556
    :cond_0
    const-string v8, "get_ad_in_same_view_interval"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 557
    .local v0, "ad_interval":J
    cmp-long v8, v0, v10

    if-lez v8, :cond_1

    .line 558
    mul-long v8, v0, v12

    sput-wide v8, Lcom/huanju/ssp/base/core/common/Config;->BANNER_REQUEST_INTERVAL:J

    .line 561
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 563
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v9, "dex_update_switch"

    const-string v8, "swich"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v8, v6

    :goto_0
    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_1
    :try_start_1
    const-string v8, "is_report_crash_log_switch"

    const-string v9, "brkdwn"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    :goto_2
    :try_start_2
    const-string v9, "dwlconfirm"

    const-string v8, "dwlconfirm"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v8, v6

    :goto_3
    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 587
    :goto_4
    :try_start_3
    const-string v8, "lg_swh"

    const-string v9, "lg_swh"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v6, :cond_4

    :goto_5
    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 593
    :goto_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 594
    return-void

    :cond_2
    move v8, v7

    .line 563
    goto :goto_0

    .line 564
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "\u65e0\u81ea\u66f4\u65b0\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 572
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 573
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "\u65e0\u4e0a\u62a5\u5f02\u5e38\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move v8, v7

    .line 579
    goto :goto_3

    .line 580
    :catch_2
    move-exception v2

    .line 581
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "\u65e0\u4e0b\u8f7d\u4e8c\u6b21\u786e\u8ba4\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move v6, v7

    .line 587
    goto :goto_5

    .line 588
    :catch_3
    move-exception v2

    .line 589
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "\u65e0logo\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static recommendPackage(Lcom/huanju/ssp/sdk/inf/IRecommendListener;Ljava/util/List;)V
    .locals 2
    .param p0, "iRecommendListener"    # Lcom/huanju/ssp/sdk/inf/IRecommendListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/IRecommendListener;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "packageInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 848
    const-string v0, "packageInfos not null"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/huanju/ssp/sdk/inf/IRecommendListener;->onErrorr(Ljava/lang/String;I)V

    .line 852
    :goto_0
    return-void

    .line 851
    :cond_0
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;-><init>(Lcom/huanju/ssp/sdk/inf/IRecommendListener;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->process()V

    goto :goto_0
.end method

.method public static reportErrorCach()V
    .locals 1

    .prologue
    .line 843
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportErrorCache()V

    .line 844
    return-void
.end method

.method public static reqNativeAd(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/huanju/ssp/sdk/listener/NativeAdListener;)V
    .locals 1
    .param p0, "nativeAd"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "nativeAdListener"    # Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    .prologue
    .line 361
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    if-eqz p0, :cond_0

    .line 367
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAd(Lcom/huanju/ssp/sdk/listener/NativeAdListener;)V

    goto :goto_0
.end method

.method public static reqRewardVideoAd(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;ILcom/huanju/ssp/sdk/inf/RewardVideoAdListener;)V
    .locals 1
    .param p0, "rewardVideoAd"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
    .param p1, "type"    # I
    .param p2, "rewardVideoAdListener"    # Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    .prologue
    .line 196
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0, p2}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->setRewardVideoAdListener(Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->loadAndShowAd(I)V

    goto :goto_0
.end method

.method public static reqSearchAd(Lcom/huanju/ssp/sdk/normal/SearchAd;Lcom/huanju/ssp/sdk/listener/SearchAdListener;)V
    .locals 1
    .param p0, "searchAd"    # Lcom/huanju/ssp/sdk/normal/SearchAd;
    .param p1, "searchAdListener"    # Lcom/huanju/ssp/sdk/listener/SearchAdListener;

    .prologue
    .line 378
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    if-eqz p0, :cond_0

    .line 384
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->requestAd(Lcom/huanju/ssp/sdk/listener/SearchAdListener;)V

    goto :goto_0
.end method

.method public static setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .prologue
    .line 67
    sput-object p0, Lcom/huanju/ssp/sdk/AdManager;->adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .line 68
    return-void
.end method

.method public static showBanner(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "stripeId"    # Ljava/lang/String;
    .param p2, "gravity"    # I

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/huanju/ssp/sdk/AdManager;->showBanner(Landroid/app/Activity;Ljava/lang/String;ILcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 338
    return-void
.end method

.method public static showBanner(Landroid/app/Activity;Ljava/lang/String;ILcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adSlotId"    # Ljava/lang/String;
    .param p2, "gravity"    # I
    .param p3, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 347
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->showBanner(Landroid/app/Activity;Ljava/lang/String;ILcom/huanju/ssp/sdk/listener/AdListener;)V

    goto :goto_0
.end method

.method public static showFuseSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "splashAd"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p2, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 228
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->showFuseSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    goto :goto_0
.end method

.method public static showInsertAdView(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adSlotId"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huanju/ssp/sdk/AdManager;->showInsertAdView(Landroid/app/Activity;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 317
    return-void
.end method

.method public static showInsertAdView(Landroid/app/Activity;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adSlotId"    # Ljava/lang/String;
    .param p2, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 325
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->showInsertAdView(Landroid/app/Activity;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    goto :goto_0
.end method

.method public static showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "splashAd"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 214
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    goto :goto_0
.end method

.method public static showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "splashAd"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p2, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 242
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->showSplashAd(Landroid/app/Activity;Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/listener/AdListener;)V

    goto :goto_0
.end method

.method public static showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "paramClass"    # Ljava/lang/Class;
    .param p2, "adSlotId"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/AdManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V

    .line 272
    return-void
.end method

.method public static showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "paramClass"    # Ljava/lang/Class;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "resId"    # I

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/huanju/ssp/sdk/AdManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V

    .line 260
    return-void
.end method

.method public static showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "paramClass"    # Ljava/lang/Class;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 284
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V

    goto :goto_0
.end method

.method public static showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "paramClass"    # Ljava/lang/Class;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "adListener"    # Lcom/huanju/ssp/sdk/listener/AdListener;
    .param p4, "resId"    # I

    .prologue
    .line 302
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->isAdInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huanju/ssp/sdk/normal/NormalAdManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Lcom/huanju/ssp/sdk/listener/AdListener;I)V

    goto :goto_0
.end method
