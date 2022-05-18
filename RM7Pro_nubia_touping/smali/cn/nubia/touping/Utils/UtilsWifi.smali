.class public Lcn/nubia/touping/Utils/UtilsWifi;
.super Ljava/lang/Object;
.source "UtilsWifi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UtilsWifi"

.field public static numberWifi_g:I

.field public static wifiFrequencyNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    sput v0, Lcn/nubia/touping/Utils/UtilsWifi;->wifiFrequencyNum:I

    .line 60
    sput v0, Lcn/nubia/touping/Utils/UtilsWifi;->numberWifi_g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 20
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 21
    .local v0, "isOpenWifi":Z
    return v0
.end method

.method public static getWifiFrequency(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 43
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 44
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 46
    .local v0, "freq":I
    if-lez v0, :cond_0

    .line 47
    sput v0, Lcn/nubia/touping/Utils/UtilsWifi;->wifiFrequencyNum:I

    .line 51
    .end local v0    # "freq":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWifiGeneration(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 63
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 64
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v2, -0x1

    .line 65
    .local v2, "generation":I
    if-eqz v4, :cond_0

    .line 67
    :try_start_0
    const-string v6, "android.net.wifi.WifiInfo"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    .local v0, "clazz":Ljava/lang/Class;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-le v6, v7, :cond_1

    .line 70
    const-string v6, "getWifiStandard"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 74
    .local v3, "method":Ljava/lang/reflect/Method;
    :goto_0
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    if-lez v2, :cond_0

    .line 76
    sput v2, Lcn/nubia/touping/Utils/UtilsWifi;->numberWifi_g:I

    .line 83
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return v2

    .line 72
    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_1
    const-string v6, "getWifiGeneration"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 78
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "UtilsWifi"

    const-string v7, "method not found"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static is24GHz(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 32
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 33
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 35
    .local v0, "freq":I
    const/16 v4, 0x960

    if-le v0, v4, :cond_0

    const/16 v4, 0x9c4

    if-ge v0, v4, :cond_0

    const/4 v3, 0x1

    .line 37
    .end local v0    # "freq":I
    :cond_0
    return v3
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 56
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 57
    .local v1, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method public static setWifiEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiStatus"    # Z

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 27
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 28
    return-void
.end method
