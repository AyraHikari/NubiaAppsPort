.class public Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils;
.super Ljava/lang/Object;
.source "CollectDataUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CollectDataUtils"

.field private static trunoff_switch_on:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils;->trunoff_switch_on:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendCurrentSuspends()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils$1;

    invoke-direct {v1}, Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static startTurnOff_switch_onAndOff(Z)V
    .locals 10
    .param p0, "switchStatus"    # Z

    .prologue
    .line 55
    const-string v6, "CollectDataUtils90123"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz p0, :cond_0

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils;->trunoff_switch_on:J

    .line 88
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    sget-boolean v6, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v6, :cond_2

    .line 62
    const-string v6, "screen_projection_type"

    const-string v7, "usb"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    :goto_1
    const-string v6, "1"

    sget-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "app_mirror_status"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 68
    .local v1, "flag_small_window":Z
    if-eqz v1, :cond_3

    .line 69
    const-string v6, "projection_status"

    const-string v7, "expend"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 74
    .local v2, "currentTime":J
    sget-wide v6, Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils;->trunoff_switch_on:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 75
    .local v4, "rest_screen_time":J
    const-string v6, "rest_screen_time"

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

    .line 76
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isSmall_Mittot_Status()Z

    move-result v6

    if-nez v6, :cond_4

    .line 77
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

    .line 78
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

    .line 83
    :goto_3
    const-string v6, "rest_screen_status"

    const-string v7, "false"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v6, "CollectDataUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bundle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v6, "turn_off_screen_and_projection"

    invoke-static {v6, v0}, Lcn/nubia/touping/Utils/TrackUtils;->sendBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 64
    .end local v1    # "flag_small_window":Z
    .end local v2    # "currentTime":J
    .end local v4    # "rest_screen_time":J
    :cond_2
    const-string v6, "screen_projection_type"

    const-string v7, "wireless"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 71
    .restart local v1    # "flag_small_window":Z
    :cond_3
    const-string v6, "projection_status"

    const-string v7, "image"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 80
    .restart local v2    # "currentTime":J
    .restart local v4    # "rest_screen_time":J
    :cond_4
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

    .line 81
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

    goto :goto_3
.end method
