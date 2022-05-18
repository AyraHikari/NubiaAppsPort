.class public Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;,
        Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;,
        Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;,
        Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;,
        Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;,
        Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;,
        Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;,
        Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    }
.end annotation


# instance fields
.field private adGroup:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;

.field private adSlot:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;

.field private api_version:Ljava/lang/String;

.field private app:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;",
            ">;"
        }
    .end annotation
.end field

.field private device:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

.field private extend:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;

.field private gps:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

.field private network:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

.field private search:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)V
    .locals 6
    .param p1, "p"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "1.3.2"

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->api_version:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->sspAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->sspAdSlotId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->pk:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->app:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .line 92
    :goto_0
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->device:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .line 93
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->adSlot:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;

    .line 94
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    invoke-direct {v0, v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$1;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->gps:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    .line 95
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    invoke-direct {v0, v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$1;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->network:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .line 96
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSearchKeyword:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->search:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;

    .line 97
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->session_id:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->adGroup:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;

    .line 98
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->extend:Ljava/util/Map;

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->str_extend:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->extend:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;

    .line 100
    return-void

    .line 90
    :cond_1
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->pk:Ljava/lang/String;

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->sspAppId:Ljava/lang/String;

    iget-object v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->sspAdSlotId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->app:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .local p1, "packageInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v3, "1.3.2"

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->api_version:Ljava/lang/String;

    .line 103
    new-instance v3, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    invoke-direct {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;-><init>()V

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->app:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->apps:Ljava/util/List;

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 107
    .local v2, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    invoke-direct {v0, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;-><init>(Ljava/util/Map;)V

    .line 108
    .local v0, "app1":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->apps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "app1":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    .end local v2    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v3, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    invoke-direct {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;-><init>()V

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->device:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .line 111
    new-instance v3, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    invoke-direct {v3, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$1;)V

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->gps:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    .line 112
    new-instance v3, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    invoke-direct {v3, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$1;)V

    iput-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->network:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .line 113
    return-void
.end method

.method public static getDspParams(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)Ljava/lang/String;
    .locals 2
    .param p0, "parameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)V

    .line 126
    .local v0, "jParam":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
    invoke-static {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->serializeDspJson(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getParams(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)Ljava/lang/String;
    .locals 2
    .param p0, "parameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)V

    .line 119
    .local v0, "jParam":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
    invoke-static {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->serializeJson(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getParams(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "packageInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;-><init>(Ljava/util/List;)V

    .line 132
    .local v0, "jParam":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
    invoke-static {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->serializeRecommendJson(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static serializeDspJson(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;)Ljava/lang/String;
    .locals 23
    .param p0, "parameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .prologue
    .line 292
    new-instance v11, Lorg/json/JSONStringer;

    invoke-direct {v11}, Lorg/json/JSONStringer;-><init>()V

    .line 294
    .local v11, "js":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "api_version"

    .line 295
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->api_version:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->app:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .line 298
    .local v4, "app":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    if-eqz v4, :cond_0

    .line 299
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request ad app id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 300
    const-string v19, "app"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 301
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "app_id"

    .line 302
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "ssp_app_id"

    .line 303
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$5500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "ssp_slot_id"

    .line 304
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$5400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "channel_id"

    .line 305
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "app_version"

    .line 306
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "package_name"

    .line 307
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    .line 308
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 309
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request app.app_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 311
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->device:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .line 312
    .local v5, "device":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
    if-eqz v5, :cond_1

    .line 313
    const-string v19, "device"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 314
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "device_type"

    .line 315
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$3100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "os_type"

    .line 316
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$3000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "os_version"

    .line 317
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "vendor"

    .line 318
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "model"

    .line 319
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "android_id"

    .line 320
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "imei_md5"

    .line 321
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "imei"

    .line 322
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "vaid"

    .line 323
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "oaid"

    .line 324
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "udid"

    .line 325
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "mac"

    .line 326
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "w"

    .line 327
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "h"

    .line 328
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "dpi"

    .line 329
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "ua"

    .line 330
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "UA_KEY"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "por"

    .line 331
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "language"

    .line 332
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "rp"

    .line 333
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "isroot"

    .line 334
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "btmac"

    .line 335
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "pdunid"

    .line 336
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "cputy"

    .line 337
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "cpusn"

    .line 338
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "imsi"

    .line 339
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "battery"

    .line 340
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "avail_memory"

    .line 341
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    .line 342
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 343
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request device.w:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",device.h:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 346
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->adSlot:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;

    .line 347
    .local v3, "adSlot":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;
    if-eqz v3, :cond_2

    .line 348
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request ad adslot id :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 349
    const-string v19, "adslot"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 350
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "adslot_id"

    .line 351
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "adslot_w"

    .line 352
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "adslot_h"

    .line 353
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    .line 354
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 355
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request adSlot.adSlotId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",adSlot.adSlotW:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",adSlot.adSlotH:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 357
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->network:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .line 358
    .local v14, "network":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
    if-eqz v14, :cond_3

    .line 359
    const-string v19, "network"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 360
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "ip"

    .line 361
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "connect_type"

    .line 362
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "carrier"

    .line 363
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "cellular_id"

    .line 364
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "lac"

    .line 365
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "mcc"

    .line 366
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "bss_id"

    .line 367
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "netwk_id"

    .line 368
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "ssid"

    .line 369
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "lksd"

    .line 370
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "rssi"

    .line 371
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "roaming"

    .line 372
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "stbif"

    .line 373
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 374
    invoke-static {v11}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNeighboringCellInfo(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;

    .line 375
    invoke-virtual {v11}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 377
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->gps:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    .line 378
    .local v8, "gps":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
    if-eqz v8, :cond_4

    .line 379
    const-string v19, "gps"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 380
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "coordinate_type"

    .line 381
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "lon"

    .line 382
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)[D

    move-result-object v20

    const/16 v21, 0x0

    aget-wide v20, v20, v21

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "lat"

    .line 383
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)[D

    move-result-object v20

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "timestamp"

    .line 384
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    .line 385
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 387
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->search:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;

    move-object/from16 v16, v0

    .line 388
    .local v16, "search":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;
    if-eqz v16, :cond_5

    .line 389
    const-string v19, "search"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 390
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "keyword"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;->access$5000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 394
    :cond_5
    const-string v19, "adpolicy"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 395
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "disable_loc"

    .line 396
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDisableLoc()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "disable_rec"

    .line 397
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDisableRec()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    .line 398
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->adGroup:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;

    .line 402
    .local v2, "adGroup":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;
    if-eqz v2, :cond_6

    .line 403
    const-string v19, "adGroup"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 404
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "session_id"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v2}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;->access$5100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 407
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->extend:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;

    .line 408
    .local v7, "extend":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;
    if-eqz v7, :cond_8

    .line 409
    invoke-static {v7}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;->access$5200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;)Ljava/util/Map;

    move-result-object v15

    .line 410
    .local v15, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v15, :cond_7

    .line 411
    const-string v19, "extend"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 412
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 413
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 414
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 415
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 416
    .local v18, "v":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v2    # "adGroup":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;
    .end local v3    # "adSlot":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;
    .end local v4    # "app":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    .end local v5    # "device":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
    .end local v7    # "extend":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;
    .end local v8    # "gps":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "network":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
    .end local v15    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "search":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;
    .end local v18    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 442
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 445
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 419
    .restart local v2    # "adGroup":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;
    .restart local v3    # "adSlot":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;
    .restart local v4    # "app":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    .restart local v5    # "device":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
    .restart local v7    # "extend":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;
    .restart local v8    # "gps":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
    .restart local v14    # "network":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
    .restart local v15    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "search":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;
    :cond_7
    :try_start_1
    invoke-static {v7}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;->access$5300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;)Ljava/lang/String;

    move-result-object v17

    .line 420
    .local v17, "strExtend":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 421
    const-string v19, "extend"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 424
    .local v12, "jsonObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_8

    .line 425
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 426
    .local v10, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 427
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 428
    .restart local v13    # "key":Ljava/lang/String;
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 429
    .restart local v18    # "v":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 432
    .end local v10    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "key":Ljava/lang/String;
    .end local v18    # "v":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 433
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v15    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "strExtend":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private static serializeJson(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;)Ljava/lang/String;
    .locals 23
    .param p0, "parameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .prologue
    .line 137
    new-instance v11, Lorg/json/JSONStringer;

    invoke-direct {v11}, Lorg/json/JSONStringer;-><init>()V

    .line 139
    .local v11, "js":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "api_version"

    .line 140
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->api_version:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->app:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .line 143
    .local v4, "app":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    if-eqz v4, :cond_0

    .line 144
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request ad app id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 145
    const-string v19, "app"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 146
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "app_id"

    .line 147
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "channel_id"

    .line 148
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "app_version"

    .line 149
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "package_name"

    .line 150
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    .line 151
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 152
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request app.app_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->device:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .line 155
    .local v5, "device":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
    if-eqz v5, :cond_1

    .line 156
    const-string v19, "device"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 157
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "device_type"

    .line 158
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$3100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "os_type"

    .line 159
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$3000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "os_version"

    .line 160
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "vendor"

    .line 161
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "model"

    .line 162
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "android_id"

    .line 163
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "imei_md5"

    .line 164
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "imei"

    .line 165
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "vaid"

    .line 166
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "oaid"

    .line 167
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "udid"

    .line 168
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "mac"

    .line 169
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "w"

    .line 170
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "h"

    .line 171
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "dpi"

    .line 172
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "ua"

    .line 173
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "UA_KEY"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "por"

    .line 174
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "language"

    .line 175
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "rp"

    .line 176
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "isroot"

    .line 177
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "btmac"

    .line 178
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "pdunid"

    .line 179
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "cputy"

    .line 180
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "cpusn"

    .line 181
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "imsi"

    .line 182
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "battery"

    .line 183
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "avail_memory"

    .line 184
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    .line 185
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 186
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request device.w:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",device.h:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 189
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->adSlot:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;

    .line 190
    .local v3, "adSlot":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;
    if-eqz v3, :cond_2

    .line 191
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request ad adslot id :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 192
    const-string v19, "adslot"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 193
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "adslot_id"

    .line 194
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "adslot_w"

    .line 195
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "adslot_h"

    .line 196
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    .line 197
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 198
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request adSlot.adSlotId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",adSlot.adSlotW:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",adSlot.adSlotH:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->access$3300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 200
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->network:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .line 201
    .local v14, "network":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
    if-eqz v14, :cond_3

    .line 202
    const-string v19, "network"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 203
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "ip"

    .line 204
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "connect_type"

    .line 205
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "carrier"

    .line 206
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "cellular_id"

    .line 207
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "lac"

    .line 208
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "mcc"

    .line 209
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "bss_id"

    .line 210
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "netwk_id"

    .line 211
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "ssid"

    .line 212
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "lksd"

    .line 213
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "rssi"

    .line 214
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "roaming"

    .line 215
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v14}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "stbif"

    .line 216
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 217
    invoke-static {v11}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNeighboringCellInfo(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;

    .line 218
    invoke-virtual {v11}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 220
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->gps:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    .line 221
    .local v8, "gps":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
    if-eqz v8, :cond_4

    .line 222
    const-string v19, "gps"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 223
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "coordinate_type"

    .line 224
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "lon"

    .line 225
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)[D

    move-result-object v20

    const/16 v21, 0x0

    aget-wide v20, v20, v21

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "lat"

    .line 226
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)[D

    move-result-object v20

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "timestamp"

    .line 227
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v8}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    .line 228
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 230
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->search:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;

    move-object/from16 v16, v0

    .line 231
    .local v16, "search":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;
    if-eqz v16, :cond_5

    .line 232
    const-string v19, "search"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 233
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "keyword"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;->access$5000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 237
    :cond_5
    const-string v19, "adpolicy"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 238
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "disable_loc"

    .line 239
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDisableLoc()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "disable_rec"

    .line 240
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDisableRec()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v19

    .line 241
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->adGroup:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;

    .line 244
    .local v2, "adGroup":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;
    if-eqz v2, :cond_6

    .line 245
    const-string v19, "adGroup"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 246
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    const-string v20, "session_id"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-static {v2}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;->access$5100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 249
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->extend:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;

    .line 250
    .local v7, "extend":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;
    if-eqz v7, :cond_8

    .line 251
    invoke-static {v7}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;->access$5200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;)Ljava/util/Map;

    move-result-object v15

    .line 252
    .local v15, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v15, :cond_7

    .line 253
    const-string v19, "extend"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 254
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 255
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 256
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 257
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 258
    .local v18, "v":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v2    # "adGroup":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;
    .end local v3    # "adSlot":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;
    .end local v4    # "app":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    .end local v5    # "device":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
    .end local v7    # "extend":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;
    .end local v8    # "gps":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "network":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
    .end local v15    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "search":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;
    .end local v18    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 284
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 287
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 261
    .restart local v2    # "adGroup":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;
    .restart local v3    # "adSlot":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;
    .restart local v4    # "app":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    .restart local v5    # "device":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
    .restart local v7    # "extend":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;
    .restart local v8    # "gps":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
    .restart local v14    # "network":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
    .restart local v15    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "search":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;
    :cond_7
    :try_start_1
    invoke-static {v7}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;->access$5300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;)Ljava/lang/String;

    move-result-object v17

    .line 262
    .local v17, "strExtend":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 263
    const-string v19, "extend"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    .local v12, "jsonObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_8

    .line 267
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 268
    .local v10, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 269
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 270
    .restart local v13    # "key":Ljava/lang/String;
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 271
    .restart local v18    # "v":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 274
    .end local v10    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "key":Ljava/lang/String;
    .end local v18    # "v":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 275
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v15    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "strExtend":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private static serializeRecommendJson(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;)Ljava/lang/String;
    .locals 15
    .param p0, "parameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;

    .prologue
    .line 449
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    .line 451
    .local v7, "js":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "api_version"

    .line 452
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    iget-object v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->api_version:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 453
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->app:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .line 455
    .local v0, "app":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    if-eqz v0, :cond_0

    .line 456
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "request ad app id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 457
    const-string v11, "app"

    invoke-virtual {v7, v11}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 458
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "app_version"

    .line 459
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "package_name"

    .line 460
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "version_code"

    .line 461
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$5600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    .line 462
    invoke-virtual {v11}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 463
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "request package_name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->apps:Ljava/util/List;

    .line 467
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;>;"
    if-eqz v2, :cond_2

    .line 468
    const-string v11, "apps"

    invoke-virtual {v7, v11}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 469
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 470
    .local v8, "jsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 471
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .line 472
    .local v1, "appTemp":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 473
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "app_version"

    invoke-static {v1}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v11, "package_name"

    invoke-static {v1}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v11, "version_code"

    invoke-static {v1}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->access$5600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    invoke-virtual {v7, v9}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 470
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "appTemp":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v7}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 481
    .end local v6    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->device:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .line 482
    .local v3, "device":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
    if-eqz v3, :cond_3

    .line 483
    const-string v11, "device"

    invoke-virtual {v7, v11}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 484
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "device_type"

    .line 485
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$3100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "os_type"

    .line 486
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$3000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "os_version"

    .line 487
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "vendor"

    .line 488
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "model"

    .line 489
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "android_id"

    .line 490
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "imei_md5"

    .line 491
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "imei"

    .line 492
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "vaid"

    .line 493
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "oaid"

    .line 494
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "udid"

    .line 495
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "mac"

    .line 496
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$2000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "w"

    .line 497
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "h"

    .line 498
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "dpi"

    .line 499
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "ua"

    .line 500
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "UA_KEY"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "por"

    .line 501
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "language"

    .line 502
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "rp"

    .line 503
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "isroot"

    .line 504
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "btmac"

    .line 505
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "pdunid"

    .line 506
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "cputy"

    .line 507
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "cpusn"

    .line 508
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "imsi"

    .line 509
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "battery"

    .line 510
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "avail_memory"

    .line 511
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    .line 512
    invoke-virtual {v11}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 513
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "request device.w:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",device.h:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->access$1800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 516
    :cond_3
    iget-object v10, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->network:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .line 517
    .local v10, "network":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
    if-eqz v10, :cond_4

    .line 518
    const-string v11, "network"

    invoke-virtual {v7, v11}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 519
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "ip"

    .line 520
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "connect_type"

    .line 521
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "carrier"

    .line 522
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "cellular_id"

    .line 523
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "lac"

    .line 524
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "mcc"

    .line 525
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "bss_id"

    .line 526
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$4000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "netwk_id"

    .line 527
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "ssid"

    .line 528
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "lksd"

    .line 529
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "rssi"

    .line 530
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "roaming"

    .line 531
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v10}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->access$3500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "stbif"

    .line 532
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 533
    invoke-static {v7}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNeighboringCellInfo(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;

    .line 534
    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 536
    :cond_4
    iget-object v5, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->gps:Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    .line 537
    .local v5, "gps":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
    if-eqz v5, :cond_5

    .line 538
    const-string v11, "gps"

    invoke-virtual {v7, v11}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 539
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "coordinate_type"

    .line 540
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "lon"

    .line 541
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)[D

    move-result-object v12

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "lat"

    .line 542
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)[D

    move-result-object v12

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "timestamp"

    .line 543
    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-static {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->access$4700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    .line 544
    invoke-virtual {v11}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 546
    :cond_5
    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v0    # "app":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;>;"
    .end local v3    # "device":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
    .end local v5    # "gps":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
    .end local v10    # "network":Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 547
    :catch_0
    move-exception v4

    .line 548
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
