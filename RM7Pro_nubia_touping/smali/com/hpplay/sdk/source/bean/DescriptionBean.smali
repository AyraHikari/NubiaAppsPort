.class public Lcom/hpplay/sdk/source/bean/DescriptionBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DescriptionBean"


# instance fields
.field private cuid:Ljava/lang/String;

.field private handler:I

.field private id:Ljava/lang/String;

.field private manifestType:I

.field private manifestVer:I

.field private sessionID:Ljava/lang/String;

.field private subscribe:I

.field private uid:Ljava/lang/String;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->decode(Lorg/json/JSONObject;)V

    .line 30
    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 105
    const-string v0, "ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->ver:I

    .line 106
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->id:Ljava/lang/String;

    .line 107
    const-string v0, "manifestType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->manifestType:I

    .line 108
    const-string v0, "manifestVer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->manifestVer:I

    .line 109
    const-string v0, "handler"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->handler:I

    .line 110
    const-string v0, "subscribe"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->subscribe:I

    .line 111
    const-string v0, "sessionID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->sessionID:Ljava/lang/String;

    .line 112
    const-string v0, "cuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->cuid:Ljava/lang/String;

    .line 113
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->uid:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 117
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 119
    :try_start_0
    const-string v0, "ver"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->ver:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v0, "id"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v0, "manifestType"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->manifestType:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v0, "manifestVer"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->manifestVer:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v0, "handler"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->handler:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v0, "subscribe"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->subscribe:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v0, "sessionID"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->sessionID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v0, "cuid"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->cuid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "uid"

    iget-object v2, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->uid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v2, "DescriptionBean"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->cuid:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->handler:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->manifestType:I

    return v0
.end method

.method public getManifestVer()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->manifestVer:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribe()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->subscribe:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->ver:I

    return v0
.end method

.method public setCuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->cuid:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setHandler(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->handler:I

    .line 70
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->id:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setManifestType(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->manifestType:I

    .line 54
    return-void
.end method

.method public setManifestVer(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->manifestVer:I

    .line 62
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->sessionID:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setSubscribe(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->subscribe:I

    .line 78
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->uid:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setVer(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DescriptionBean;->ver:I

    .line 38
    return-void
.end method
