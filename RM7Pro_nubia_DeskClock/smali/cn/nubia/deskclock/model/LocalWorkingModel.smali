.class public Lcn/nubia/deskclock/model/LocalWorkingModel;
.super Ljava/lang/Object;
.source "LocalWorkingModel.java"


# instance fields
.field private mAlarmClockHandler:Landroid/os/Handler;

.field private mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

.field private mCountDownHandler:Landroid/os/Handler;

.field private mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;"
        }
    .end annotation
.end field

.field private mStopWatchHandler:Landroid/os/Handler;

.field private mStopWatchMode:Lcn/nubia/deskclock/model/StopWatchModel;

.field private mWorldTimeHandler:Landroid/os/Handler;

.field private mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getAlarmClockHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mAlarmClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getAlarmClockModel()Lcn/nubia/deskclock/model/AlarmClockModel;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    return-object v0
.end method

.method public getCountDownHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mCountDownHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCountDownModel()Lcn/nubia/deskclock/model/CountDownModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    return-object v0
.end method

.method public getStopWatchHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mStopWatchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStopWatchMode()Lcn/nubia/deskclock/model/StopWatchModel;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mStopWatchMode:Lcn/nubia/deskclock/model/StopWatchModel;

    return-object v0
.end method

.method public getWorldTimeHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mWorldTimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWorldTimeModel()Lcn/nubia/deskclock/model/WorldTimeModel;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    return-object v0
.end method

.method public setAlarmClockHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mAlarmClockHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method public setAlarmClockModel(Lcn/nubia/deskclock/model/AlarmClockModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/deskclock/model/AlarmClockModel;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    .line 30
    return-void
.end method

.method public setCountDownHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mCountDownHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public setCountDownModel(Lcn/nubia/deskclock/model/CountDownModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "model":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<*>;"
    iput-object p1, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 26
    return-void
.end method

.method public setStopWatchHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 73
    iput-object p1, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mStopWatchHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method public setStopWatchModel(Lcn/nubia/deskclock/model/StopWatchModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/deskclock/model/StopWatchModel;

    .prologue
    .line 21
    iput-object p1, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mStopWatchMode:Lcn/nubia/deskclock/model/StopWatchModel;

    .line 22
    return-void
.end method

.method public setWorldTimeHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 81
    iput-object p1, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mWorldTimeHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method public setWorldTimeModel(Lcn/nubia/deskclock/model/WorldTimeModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/deskclock/model/WorldTimeModel;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/deskclock/model/LocalWorkingModel;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    .line 34
    return-void
.end method
