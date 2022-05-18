.class public Lcom/huanju/ssp/base/core/request/host/RequestIpManager;
.super Ljava/lang/Object;
.source "RequestIpManager.java"


# static fields
.field static final HOST_DEFAULT_INTERVAL:J = 0x5265c00L

.field static final HOST_INTERVAL:Ljava/lang/String; = "host_interval"

.field static final HOST_KEY:Ljava/lang/String; = "host_key"

.field static final HOST_LAST_REQUEST:Ljava/lang/String; = "host_last_request"

.field private static mInstance:Lcom/huanju/ssp/base/core/request/host/RequestIpManager;


# instance fields
.field private mHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->mHostMap:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huanju/ssp/base/core/request/host/RequestIpManager;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->mInstance:Lcom/huanju/ssp/base/core/request/host/RequestIpManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->mInstance:Lcom/huanju/ssp/base/core/request/host/RequestIpManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->mInstance:Lcom/huanju/ssp/base/core/request/host/RequestIpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getIpList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->mHostMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public requestIp()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/huanju/ssp/base/core/request/host/RequestIpProcessor;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/host/RequestIpProcessor;-><init>()V

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/host/RequestIpProcessor;->process()V

    .line 39
    return-void
.end method

.method setHostData(Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 63
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 64
    .local v5, "value":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 65
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68
    :cond_2
    iget-object v7, p0, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->mHostMap:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    .end local v1    # "i":I
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Lorg/json/JSONArray;
    .end local v6    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
