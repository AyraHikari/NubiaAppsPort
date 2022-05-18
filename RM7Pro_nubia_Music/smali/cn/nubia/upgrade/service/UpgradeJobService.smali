.class public Lcn/nubia/upgrade/service/UpgradeJobService;
.super Landroid/app/job/JobService;
.source "UpgradeJobService.java"

# interfaces
.implements Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeJobService"


# instance fields
.field private mJobParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 16
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-direct {v0}, Lcn/nubia/upgrade/service/UpgradeWork;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mJobParameters:Ljava/util/List;

    return-void
.end method

.method private static getCmd(Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 88
    const-string v0, "cmd"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getExtraInfos(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 98
    const-string v2, "CMD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeJobService;->getCmd(Landroid/os/Bundle;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, " JOB_PID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeJobService;->getJobPid(Landroid/os/Bundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getJobPid(Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 92
    const-string v0, "job_pid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static toJobStr(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/upgrade/service/UpgradeJobService;->getExtraInfos(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 22
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0, p0}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;)V

    .line 23
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    const-string v1, "UpgradeJobService"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 29
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->a()V

    .line 30
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 44
    const-string v0, "UpgradeJobService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartJob:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcn/nubia/upgrade/service/UpgradeJobService;->toJobStr(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeJobService;->getCmd(Landroid/os/Bundle;)I

    move-result v3

    .line 48
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mJobParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 49
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeJobService;->getCmd(Landroid/os/Bundle;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 50
    const-string v0, "UpgradeJobService"

    const-string v2, "FORBIDDEN: has contain sample cmd"

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 67
    :goto_0
    return v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 56
    const-string v3, "job_pid"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 57
    const-string v4, "UpgradeJobService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldPid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newPid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eq v3, v7, :cond_2

    if-eq v3, v0, :cond_2

    .line 59
    const-string v0, "UpgradeJobService"

    const-string v2, "FORBIDDEN: this job from system cache"

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 60
    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mJobParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Landroid/content/Intent;)V

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .prologue
    .line 72
    const-string v0, "UpgradeJobService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopJob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcn/nubia/upgrade/service/UpgradeJobService;->toJobStr(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mJobParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 74
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 75
    const-string v1, "UpgradeJobService"

    const-string v2, "onStopJob find in running job"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mJobParameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onWorkTerminated()V
    .locals 5

    .prologue
    .line 34
    const-string v0, "UpgradeJobService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWorkTerminated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mJobParameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mJobParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 36
    const-string v2, "UpgradeJobService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jobFinished:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeJobService;->toJobStr(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/nubia/upgrade/service/UpgradeJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeJobService;->mJobParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    return-void
.end method
