.class public Lcn/nubia/weather/utils/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field public static final NETWORN_MOBILE:I = 0x2

.field public static final NETWORN_NONE:I = 0x0

.field public static final NETWORN_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkContectState(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lcn/nubia/weather/utils/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcn/nubia/weather/utils/NetUtil;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 54
    .local v0, "isConnected":Z
    :goto_0
    const-string v1, "NetUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkContectState isConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v0

    .line 53
    .end local v0    # "isConnected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    const-string v4, "connectivity"

    .line 21
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 23
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 24
    .local v1, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_2

    :cond_0
    move v2, v3

    .line 32
    :cond_1
    :goto_0
    return v2

    .line 28
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 29
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_1

    .line 30
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    .line 37
    .local v0, "netState":I
    const/4 v1, 0x0

    .line 38
    .local v1, "type":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-object v1

    .line 40
    :pswitch_0
    const-string v1, "NETWORN_WIFI"

    .line 41
    goto :goto_0

    .line 43
    :pswitch_1
    const-string v1, "NETWORN_MOBILE"

    .line 44
    goto :goto_0

    .line 46
    :pswitch_2
    const-string v1, "NETWORN_NONE"

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isMobileConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 75
    .local v2, "isConnect":Z
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 76
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    .line 80
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    const-string v4, "NetUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMobileConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v2

    .line 76
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isWifiConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 62
    .local v2, "isConnect":Z
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 63
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eq v5, v4, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    :cond_0
    move v2, v4

    .line 67
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    const-string v4, "NetUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return v2

    .line 63
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 64
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
