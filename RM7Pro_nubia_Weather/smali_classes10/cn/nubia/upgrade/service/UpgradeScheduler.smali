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
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "config"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .prologue
    const/4 v8, 0x0

    .line 33
    invoke-static {}, Lcn/nubia/upgrade/service/UpgradeScheduler;->isSupportForegroundService()Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    const-class v5, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-virtual {p1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v4, 0x0

    .line 39
    .local v4, "runMode":Lcn/nubia/upgrade/api/RunMode;
    const-string v5, "cmd"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, "cmd":I
    packed-switch v0, :pswitch_data_0

    .line 48
    const-string v5, "UpgradeScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupport cmd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-virtual {p2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadRunMode()Lcn/nubia/upgrade/api/RunMode;

    move-result-object v4

    .line 51
    :goto_1
    const-string v5, "UpgradeScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " runMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    instance-of v5, v4, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;

    if-eqz v5, :cond_1

    .line 53
    const-class v5, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-virtual {p1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v1, v4

    .line 54
    check-cast v1, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;

    .line 55
    .local v1, "fRunMode":Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;
    const-string v5, "notification_icon"

    invoke-virtual {v1}, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->getNotificationIcon()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string v5, "notification_title"

    invoke-virtual {v1}, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->getNotificationTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 45
    .end local v1    # "fRunMode":Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;
    :pswitch_1
    invoke-virtual {p2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getInstallRunMode()Lcn/nubia/upgrade/api/RunMode;

    move-result-object v4

    .line 46
    goto :goto_1

    .line 59
    :cond_1
    const-string v5, "job_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v5, "jobscheduler"

    .line 61
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    .line 62
    .local v3, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v2, v6

    .line 63
    .local v2, "jobId":I
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcn/nubia/upgrade/service/UpgradeJobService;

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v5, v2, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v6, 0x0

    .line 64
    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 65
    invoke-virtual {v5, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 66
    invoke-virtual {v5, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 69
    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    .line 63
    invoke-virtual {v3, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto/16 :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
