.class public Lcom/hpplay/sdk/source/bean/ErrorBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private errorCode:I

.field private manifestVer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "ErrorBean"

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_0
    const-string v0, "manifestVer"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->manifestVer:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v0, "errorCode"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->errorCode:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v0, "error"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->error:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v0, "data"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->data:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v2, "ErrorBean"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->errorCode:I

    return v0
.end method

.method public getManifestVer()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->manifestVer:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->data:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->error:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->errorCode:I

    .line 41
    return-void
.end method

.method public setManifestVer(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/hpplay/sdk/source/bean/ErrorBean;->manifestVer:I

    .line 33
    return-void
.end method
