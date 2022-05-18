.class Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;
.super Ljava/lang/Object;
.source "AlertInCaseActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 196
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 200
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 201
    .local v0, "near":F
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    .line 202
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 203
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 204
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 205
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$300(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;J)V

    .line 207
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->finish()V

    .line 209
    .end local v1    # "nm":Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method
