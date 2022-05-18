.class public abstract Lcom/zte/statistics/sdk/module/metric/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# instance fields
.field protected root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/zte/statistics/sdk/module/metric/Payload;->root:Lorg/json/JSONObject;

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->getTypeValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/module/metric/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->did:Ljava/lang/String;

    const-string v0, "did"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/module/metric/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->model:Ljava/lang/String;

    const-string v0, "model"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/module/metric/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "5.0.5"

    const-string v0, "sdkVersion"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/module/metric/Payload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAsJSON()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zte/statistics/sdk/module/metric/Payload;->root:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJsonRoot()Lorg/json/JSONObject;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/statistics/sdk/module/metric/Payload;->root:Lorg/json/JSONObject;

    return-object p0
.end method

.method public putJsonArray(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/zte/statistics/sdk/module/metric/Payload;->root:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/zte/statistics/sdk/module/metric/Payload;->root:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public varargs setString(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/zte/statistics/sdk/module/metric/Payload;->root:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 46
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 47
    aget-object v1, p2, v0

    .line 48
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 49
    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_1

    .line 54
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p0, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
