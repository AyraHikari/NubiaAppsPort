.class public Lcom/hpplay/sdk/source/bean/ConnectInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectInfoBean"


# instance fields
.field private appID:Ljava/lang/String;

.field private manifestVer:I

.field private mf:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private sm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->decode(Lorg/json/JSONObject;)V

    .line 18
    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    const-string v0, "manifestVer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->manifestVer:I

    .line 63
    const-string v0, "model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->model:Ljava/lang/String;

    .line 64
    const-string v0, "sm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->sm:Ljava/lang/String;

    .line 65
    const-string v0, "mf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->mf:Ljava/lang/String;

    .line 66
    const-string v0, "appID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->appID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "ConnectInfoBean"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVer()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->manifestVer:I

    return v0
.end method

.method public getMf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->mf:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->sm:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->appID:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setManifestVer(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->manifestVer:I

    .line 26
    return-void
.end method

.method public setMf(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->mf:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->model:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->sm:Ljava/lang/String;

    .line 42
    return-void
.end method
