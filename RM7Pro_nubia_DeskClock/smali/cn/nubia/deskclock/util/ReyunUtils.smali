.class public Lcn/nubia/deskclock/util/ReyunUtils;
.super Ljava/lang/Object;
.source "ReyunUtils.java"


# static fields
.field private static final DESKCLOCK_FEATURE:Ljava/lang/String; = "nubia_deskclock_feature"

.field private static final ENABLE_REYUN:Ljava/lang/String; = "DeskClock_enableUmeng"

.field private static final PKG_NAME:Ljava/lang/String; = "cn.nubia.deskclock.preset"

.field private static final TAG:Ljava/lang/String; = "ReyunUtils"

.field private static mInit:Z

.field private static mIsAndroidO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcn/nubia/deskclock/util/ReyunUtils;->mInit:Z

    .line 15
    sput-boolean v0, Lcn/nubia/deskclock/util/ReyunUtils;->mIsAndroidO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 18
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 22
    sput-boolean v2, Lcn/nubia/deskclock/util/ReyunUtils;->mIsAndroidO:Z

    .line 24
    :cond_2
    sput-boolean v2, Lcn/nubia/deskclock/util/ReyunUtils;->mInit:Z

    .line 25
    sget-boolean v0, Lcn/nubia/deskclock/util/ReyunUtils;->mIsAndroidO:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcn/nubia/deskclock/util/NubiaTrackManager;->getInstance()Lcn/nubia/deskclock/util/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/NubiaTrackManager;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventString"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    sget-boolean v1, Lcn/nubia/deskclock/util/ReyunUtils;->mInit:Z

    if-nez v1, :cond_2

    .line 35
    invoke-static {p0}, Lcn/nubia/deskclock/util/ReyunUtils;->init(Landroid/content/Context;)V

    .line 38
    :cond_2
    :try_start_0
    sget-boolean v1, Lcn/nubia/deskclock/util/ReyunUtils;->mIsAndroidO:Z

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lcn/nubia/deskclock/util/NubiaTrackManager;->getInstance()Lcn/nubia/deskclock/util/NubiaTrackManager;

    move-result-object v1

    const-string v2, "cn.nubia.deskclock.preset"

    const-string v3, "count"

    const-string v4, "1"

    invoke-virtual {v1, v2, p1, v3, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReyunUtils"

    const-string v2, "trackCustomEvent error"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventString"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-boolean v1, Lcn/nubia/deskclock/util/ReyunUtils;->mInit:Z

    if-nez v1, :cond_2

    .line 80
    invoke-static {p0}, Lcn/nubia/deskclock/util/ReyunUtils;->init(Landroid/content/Context;)V

    .line 83
    :cond_2
    :try_start_0
    sget-boolean v1, Lcn/nubia/deskclock/util/ReyunUtils;->mIsAndroidO:Z

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lcn/nubia/deskclock/util/NubiaTrackManager;->getInstance()Lcn/nubia/deskclock/util/NubiaTrackManager;

    move-result-object v1

    const-string v2, "cn.nubia.deskclock.preset"

    invoke-virtual {v1, v2, p1, p2, p3}, Lcn/nubia/deskclock/util/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReyunUtils"

    const-string v2, "trackCustomEvent error"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmTime"    # Ljava/lang/String;
    .param p2, "currenttime"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "repeat"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-boolean v2, Lcn/nubia/deskclock/util/ReyunUtils;->mInit:Z

    if-nez v2, :cond_2

    .line 52
    invoke-static {p0}, Lcn/nubia/deskclock/util/ReyunUtils;->init(Landroid/content/Context;)V

    .line 54
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "alarm_time"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "current_time"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "alarm_label"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "alarm_repeat"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :try_start_0
    sget-boolean v2, Lcn/nubia/deskclock/util/ReyunUtils;->mIsAndroidO:Z

    if-eqz v2, :cond_0

    .line 61
    invoke-static {}, Lcn/nubia/deskclock/util/NubiaTrackManager;->getInstance()Lcn/nubia/deskclock/util/NubiaTrackManager;

    move-result-object v2

    const-string v3, "cn.nubia.deskclock.preset"

    invoke-virtual {v2, v3, v0}, Lcn/nubia/deskclock/util/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ReyunUtils"

    const-string v3, "trackCustomEvent extra error"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unbindReYun()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-boolean v0, Lcn/nubia/deskclock/util/ReyunUtils;->mInit:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/nubia/deskclock/util/ReyunUtils;->mIsAndroidO:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcn/nubia/deskclock/util/NubiaTrackManager;->getInstance()Lcn/nubia/deskclock/util/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/NubiaTrackManager;->unbindServiceInvoked()V

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/deskclock/util/ReyunUtils;->mInit:Z

    goto :goto_0
.end method
