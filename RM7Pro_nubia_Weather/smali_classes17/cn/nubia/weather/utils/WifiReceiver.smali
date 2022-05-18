.class public Lcn/nubia/weather/utils/WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "WifiReceiver"

    const-string v1, "SCAN_RESULTS_AVAILABLE_ACTION"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/presenter/OverAllControl;->onReceiveScanResult()V

    .line 19
    :cond_0
    return-void
.end method
