.class public Lcom/zte/statistics/sdk/module/metric/MetricPayload;
.super Lcom/zte/statistics/sdk/module/metric/Payload;
.source "MetricPayload.java"


# direct methods
.method public constructor <init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/module/metric/Payload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V

    .line 24
    :try_start_0
    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    const-string v0, "appid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->market:Ljava/lang/String;

    const-string v0, "market"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->versionCode:Ljava/lang/String;

    const-string v0, "appVersion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->versionName:Ljava/lang/String;

    const-string v0, "appVerName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    invoke-static {p2}, Lcom/zte/statistics/sdk/util/Util;->getWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "wifi"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
