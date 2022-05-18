.class public Lcom/nubia/nucms/utils/NuCmsNetworkUtils;
.super Ljava/lang/Object;
.source "NuCmsNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "connectivity"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 116
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 117
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    :cond_0
    sget-object v4, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->None:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    .line 161
    :goto_0
    return-object v4

    .line 121
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "type":Ljava/lang/String;
    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    sget-object v4, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Wifi:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    goto :goto_0

    .line 126
    :cond_2
    const-string v4, "MOBILE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 127
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "strSubTypeName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 153
    const-string v4, "TD-SCDMA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "WCDMA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "CDMA2000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    :cond_3
    sget-object v4, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_3G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    goto :goto_0

    .line 136
    :pswitch_0
    sget-object v4, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_2G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    goto :goto_0

    .line 147
    :pswitch_1
    sget-object v4, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_3G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    goto :goto_0

    .line 150
    :pswitch_2
    sget-object v4, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_4G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    goto :goto_0

    .line 156
    :cond_4
    sget-object v4, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Other:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    goto :goto_0

    .line 161
    .end local v2    # "strSubTypeName":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->None:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 39
    .local v0, "manager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 43
    .local v1, "net":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isConnectedOrConnecting(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 54
    .local v1, "manager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v2

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 58
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static printNetworkInfo(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 70
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 72
    .local v2, "in":Landroid/net/NetworkInfo;
    sget-object v5, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    const-string v6, "-------------$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-------------"

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v5, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActiveNetworkInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_3

    .line 76
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 77
    .local v3, "info":[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 79
    sget-object v5, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkInfoType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    sget-object v5, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    const-string v6, "\n"

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v1    # "i":I
    .end local v2    # "in":Landroid/net/NetworkInfo;
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    return v5

    .line 84
    .restart local v2    # "in":Landroid/net/NetworkInfo;
    .restart local v3    # "info":[Landroid/net/NetworkInfo;
    :cond_2
    sget-object v5, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    const-string v6, "getAllNetworkInfo is null"

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 88
    .local v4, "infos":[Landroid/net/Network;
    if-eqz v4, :cond_5

    .line 89
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 90
    aget-object v5, v4, v1

    .line 91
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 92
    .local v3, "info":Landroid/net/NetworkInfo;
    sget-object v5, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkInfoType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_4
    sget-object v5, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    const-string v6, "\n"

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v1    # "i":I
    :cond_5
    sget-object v5, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->TAG:Ljava/lang/String;

    const-string v6, "getAllNetworkInfo is null"

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
