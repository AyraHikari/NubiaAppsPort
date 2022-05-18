.class final Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;
.super Landroid/os/Handler;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertService;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1472
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertService;

    .line 1473
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1474
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1478
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertService;

    invoke-virtual {v2, p1}, Lcn/nubia/calendar/submodule_alerts/AlertService;->processMessage(Landroid/os/Message;)V

    .line 1481
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 1482
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 1483
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "JobParameters"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 1485
    .local v0, "mJobParameters":Landroid/app/job/JobParameters;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertService;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcn/nubia/calendar/submodule_alerts/AlertService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 1486
    return-void
.end method
