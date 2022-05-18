.class public Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public bssid:Ljava/lang/String;

.field public localip:Ljava/lang/String;

.field public localport:Ljava/lang/String;

.field public pol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "CapbilityBean"

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :try_start_0
    const-string v0, "pol"

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->pol:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v0, "localip"

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->localip:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v0, "localport"

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->localport:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v0, "bssid"

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v2, "CapbilityBean"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
