.class public Lcn/nubia/analytic/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTime(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 60
    invoke-static {p0, p1, v6, v7}, Lcn/nubia/analytic/util/PrefEditor;->readCommonLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 62
    const-string v2, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkTime-delta:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dstTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lcn/nubia/analytic/util/CommonUtils;->writeTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 66
    :cond_0
    cmp-long v0, v0, p2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    const-string v0, ""

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getServerTimeOffset(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 97
    invoke-static {p0}, Lcn/nubia/analytic/util/SharedPreferEditor;->getServerTimeOffset(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sServerTimeOffset:J

    .line 98
    return-void
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 21
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stopOverDo(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/analytic/util/CommonUtils;->checkTime(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcn/nubia/analytic/util/CommonUtils;->writeTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 47
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateNubiaConfigParams(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    const-string v2, "event_collect_time"

    sget-wide v4, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectTimeInterval:J

    invoke-static {p0, v2, v4, v5}, Lcn/nubia/analytic/util/CommonUtils;->checkTime(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {p0, v6}, Lcn/nubia/analytic/util/SharedPreferEditor;->setEventCollectNumber(Landroid/content/Context;I)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcn/nubia/analytic/util/SharedPreferEditor;->setEventCollectTime(Landroid/content/Context;J)V

    .line 81
    sput v6, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectNum:I

    .line 82
    const-string v2, "CommonUtils"

    const-string v3, "event collect time is exceed,so reset time"

    invoke-static {v2, v3}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    invoke-static {p0}, Lcn/nubia/analytic/util/SharedPreferEditor;->getEventCollectTime(Landroid/content/Context;)J

    move-result-wide v2

    sput-wide v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectTime:J

    .line 88
    const-string v2, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateNubiaConfig sEventCollectNum:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NubiaConfig.sEventCollectTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    const-string v4, " COST time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v2, v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 84
    :cond_0
    invoke-static {p0}, Lcn/nubia/analytic/util/SharedPreferEditor;->getEventCollectNumber(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectNum:I

    goto :goto_0
.end method

.method public static writeTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/analytic/util/PrefEditor;->writeCommonLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 52
    return-void
.end method
