.class public Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlListEntity"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;->decode(Lorg/json/JSONObject;)V

    .line 121
    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string v0, "AuthSDKBean"

    const-string v1, "decode UrlListEntity is emtpy"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;->name:Ljava/lang/String;

    .line 129
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/cloud/AuthSDKBean$DataEntity$ServListEntity$UrlListEntity;->url:Ljava/lang/String;

    goto :goto_0
.end method
