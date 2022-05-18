.class public Lcn/nubia/touping/Utils/LogShow;
.super Ljava/lang/Object;
.source "LogShow.java"


# static fields
.field private static final DEFUALT_LOG_SWITCH:Z = false

.field private static final DEFUALT_LOG_SWITCH_OFF:Z = false

.field private static final DEFUALT_LOG_SWITCH_ON:Z = true

.field private static final TAG:Ljava/lang/String; = "NubiaTouPing"

.field public static bugSwitch:Z = false

.field private static final duration:I = 0x1388

.field private static lastClickTime:J = 0x0L

.field private static mCount:I = 0x0

.field private static final openCount:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    sput v2, Lcn/nubia/touping/Utils/LogShow;->mCount:I

    .line 21
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/touping/Utils/LogShow;->lastClickTime:J

    .line 25
    sput-boolean v2, Lcn/nubia/touping/Utils/LogShow;->bugSwitch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLogSwitch(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 69
    if-nez p0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/LogShow;->getDebugSwitchStatus(Landroid/content/Context;)Z

    move-result v0

    .line 72
    .local v0, "currentSwitchStatus":Z
    if-nez v0, :cond_1

    .line 73
    .local v1, "debugLogChanged":Z
    :goto_1
    invoke-static {p0, v1}, Lcn/nubia/touping/Utils/LogShow;->setDebugSwitchStatus(Landroid/content/Context;Z)V

    .line 74
    const-string v3, "NubiaTouPing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LogShow swtich:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sput-boolean v1, Lcn/nubia/touping/Utils/LogShow;->bugSwitch:Z

    .line 76
    if-eqz v1, :cond_2

    .line 77
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setDebugMode(Z)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "currentSwitchStatus":Z
    .end local v1    # "debugLogChanged":Z
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentSwitchStatus":Z
    :cond_1
    move v1, v3

    .line 72
    goto :goto_1

    .line 79
    .restart local v1    # "debugLogChanged":Z
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setDebugMode(Z)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static click(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    .local v0, "currentTime":J
    sget-wide v4, Lcn/nubia/touping/Utils/LogShow;->lastClickTime:J

    sub-long v2, v0, v4

    .line 34
    .local v2, "durationShow":J
    sget-wide v4, Lcn/nubia/touping/Utils/LogShow;->lastClickTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 35
    :cond_0
    sput-wide v0, Lcn/nubia/touping/Utils/LogShow;->lastClickTime:J

    .line 36
    sget v4, Lcn/nubia/touping/Utils/LogShow;->mCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcn/nubia/touping/Utils/LogShow;->mCount:I

    .line 37
    sget v4, Lcn/nubia/touping/Utils/LogShow;->mCount:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 38
    invoke-static {p0}, Lcn/nubia/touping/Utils/LogShow;->changeLogSwitch(Landroid/content/Context;)V

    .line 39
    const/4 v4, 0x0

    sput v4, Lcn/nubia/touping/Utils/LogShow;->mCount:I

    .line 40
    sput-wide v8, Lcn/nubia/touping/Utils/LogShow;->lastClickTime:J

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    const/4 v4, 0x1

    sput v4, Lcn/nubia/touping/Utils/LogShow;->mCount:I

    .line 44
    sput-wide v0, Lcn/nubia/touping/Utils/LogShow;->lastClickTime:J

    goto :goto_0
.end method

.method public static debuge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/LogShow;->getDebugSwitchStatus(Landroid/content/Context;)Z

    move-result v0

    .line 90
    .local v0, "currentSwitchStatus":Z
    if-eqz v0, :cond_0

    .line 91
    const-string v2, "NubiaTouPing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0    # "currentSwitchStatus":Z
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "NubiaTouPing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 103
    const-string v0, "NubiaTouPing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return-void
.end method

.method public static eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-boolean v0, Lcn/nubia/touping/Utils/LogShow;->bugSwitch:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "NubiaTouPing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method

.method private static getDebugSwitchStatus(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    :try_start_0
    const-string v3, "LogShowName"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 60
    .local v2, "sSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "LOG_SWITCH_STATUS"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    .end local v2    # "sSharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "NubiaTouPing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public static setCurrentBugSwitch(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcn/nubia/touping/Utils/LogShow;->getDebugSwitchStatus(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/touping/Utils/LogShow;->bugSwitch:Z

    .line 28
    const-string v0, "NubiaTouPing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bugSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcn/nubia/touping/Utils/LogShow;->bugSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private static setDebugSwitchStatus(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentFlag"    # Z

    .prologue
    .line 51
    :try_start_0
    const-string v2, "LogShowName"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, "sSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LOG_SWITCH_STATUS"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "sSharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
