.class public Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;,
        Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;
    }
.end annotation


# instance fields
.field public dmr_name:Ljava/lang/String;

.field public hid:Ljava/lang/String;

.field public prot_ver:Ljava/lang/String;

.field public reg_time:J

.field public scan_time:I

.field public serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

.field public server_time:J

.field public switch_conf:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

.field public tid:I

.field public token:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 64
    if-nez p1, :cond_1

    .line 65
    const-string v0, "AuthSDKBean"

    const-string v1, "decode DataEntity is emtpy"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v0, "server_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->server_time:J

    .line 69
    const-string v0, "dmr_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->dmr_name:Ljava/lang/String;

    .line 70
    const-string v0, "tid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->tid:I

    .line 71
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->token:Ljava/lang/String;

    .line 72
    const-string v0, "prot_ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->prot_ver:Ljava/lang/String;

    .line 73
    const-string v0, "scan_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->scan_time:I

    .line 74
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->uid:Ljava/lang/String;

    .line 75
    const-string v0, "hid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->hid:Ljava/lang/String;

    .line 76
    const-string v0, "reg_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->reg_time:J

    .line 78
    const-string v0, "serv_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 80
    new-instance v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;-><init>()V

    iput-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    .line 81
    iget-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    const-string v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;->ver:I

    .line 83
    const-string v1, "url_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;->url_list:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    .line 88
    new-instance v3, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;-><init>(Lorg/json/JSONObject;)V

    .line 89
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;->decode(Lorg/json/JSONObject;)V

    .line 91
    iget-object v4, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->serv_list:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;

    iget-object v4, v4, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;->url_list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    const-string v0, "switch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;-><init>()V

    iput-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->switch_conf:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

    .line 98
    iget-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->switch_conf:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

    const-string v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;->ver:I

    .line 99
    const-string v1, "sw_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity;->switch_conf:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;

    new-instance v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity$SwitchBean;

    invoke-direct {v2, v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity$SwitchBean;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity;->switchBean:Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$SwitchEntity$SwitchBean;

    goto/16 :goto_0
.end method
