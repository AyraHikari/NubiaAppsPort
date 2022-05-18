.class public Lcn/nubia/calendar/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "JqStdOCcb7a0bef0"

.field public static final NETWORN_MOBILE:I = 0x2

.field public static final NETWORN_NONE:I = 0x0

.field public static final NETWORN_WIFI:I = 0x1

.field public static final SECRET_KEY:Ljava/lang/String; = "e18712e92e5d1fb0"

.field public static final UPGRADE_CHECK:Ljava/lang/String; = "UPGRADE_CHECK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    const-string v4, "connectivity"

    .line 17
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 21
    .local v1, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_2

    :cond_0
    move v2, v3

    .line 30
    :cond_1
    :goto_0
    return v2

    .line 25
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 27
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_1

    .line 28
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method
