.class final Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils$1;
.super Ljava/lang/Object;
.source "CollectDataUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils;->sendCurrentSuspends()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 27
    .local v2, "currentTime":J
    sget-wide v6, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->suspendStatusTime:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 28
    .local v4, "pause_duration":J
    const-string v6, "pause_duration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isSmall_Mittot_Status()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 30
    const-string v6, "cast_package"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v6, "cast_app"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v6, :cond_3

    .line 38
    const-string v6, "type"

    const-string v7, "usb"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_1
    const-string v6, "pause_screen_projection"

    invoke-static {v6, v0}, Lcn/nubia/touping/Utils/TrackUtils;->sendBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "currentTime":J
    .end local v4    # "pause_duration":J
    :cond_1
    :goto_2
    return-void

    .line 33
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "currentTime":J
    .restart local v4    # "pause_duration":J
    :cond_2
    const-string v6, "cast_package"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v6, "cast_app"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "currentTime":J
    .end local v4    # "pause_duration":J
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "currentTime":J
    .restart local v4    # "pause_duration":J
    :cond_3
    :try_start_1
    const-string v6, "type"

    const-string v7, "wireless"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
