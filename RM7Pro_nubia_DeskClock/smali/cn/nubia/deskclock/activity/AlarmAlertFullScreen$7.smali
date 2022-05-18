.class Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;
.super Ljava/lang/Object;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 646
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 650
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 654
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$800(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 655
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    iget-object v0, v0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$900(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    iget-object v0, v0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1000(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .line 656
    invoke-static {v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1100(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1000(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    const/4 v0, -0x1

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1200(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1200(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .line 658
    invoke-static {v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1300(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$700(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    .line 660
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1302(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;Z)Z

    .line 661
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "Wave Hand Go Into Snooze State"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1202(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;I)I

    .line 666
    :cond_1
    return-void
.end method
