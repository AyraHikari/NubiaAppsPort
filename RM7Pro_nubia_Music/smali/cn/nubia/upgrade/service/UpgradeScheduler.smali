.class public Lcn/nubia/upgrade/service/UpgradeScheduler;
.super Ljava/lang/Object;
.source "UpgradeScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeScheduler"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static isSupportForegroundService()Z
    .locals 2

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static schedule(Landroid/content/Context;Landroid/content/Intent;Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 33
    invoke-static {}, Lcn/nubia/upgrade/service/UpgradeScheduler;->isSupportForegroundService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-class v0, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "cmd"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 40
    packed-switch v1, :pswitch_data_0

    .line 48
    const-string v0, "UpgradeScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupport cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-virtual {p2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadRunMode()Lcn/nubia/upgrade/api/RunMode;

    move-result-object v0

    .line 51
    :goto_1
    const-string v2, "UpgradeScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " runMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    instance-of v1, v0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;

    if-eqz v1, :cond_1

    .line 53
    const-class v1, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    check-cast v0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;

    .line 55
    const-string v1, "notification_icon"

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->getNotificationIcon()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string v1, "notification_title"

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->getNotificationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getInstallRunMode()Lcn/nubia/upgrade/api/RunMode;

    move-result-object v0

    goto :goto_1

    .line 59
    :cond_1
    const-string v0, "job_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v0, "jobscheduler"

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    .line 63
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcn/nubia/upgrade/service/UpgradeJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v4, 0x0

    .line 64
    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto/16 :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
