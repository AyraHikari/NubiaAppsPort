.class public Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;
.super Landroid/app/job/JobService;
.source "ShowNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final JobParametersString:Ljava/lang/String; = "JobParameters"

.field public static final hasSaveMatchIdString:Ljava/lang/String; = "hasSaveMatchId"


# instance fields
.field private volatile mServiceHandler:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 118
    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 87
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AlertService"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 89
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 91
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->mServiceLooper:Landroid/os/Looper;

    .line 92
    new-instance v3, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;

    iget-object v4, p0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;-><init>(Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->mServiceHandler:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "hasSaveMatchId"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-string v5, "hasSaveMatchId"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v3, "JobParameters"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v3, p0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->mServiceHandler:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;

    invoke-virtual {v3}, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 98
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 99
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v3, p0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->mServiceHandler:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;

    invoke-virtual {v3, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    const/4 v3, 0x1

    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
