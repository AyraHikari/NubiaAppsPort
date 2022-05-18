.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;
.super Landroid/os/AsyncTask;
.source "AlarmClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;Z)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    .prologue
    .line 173
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iput-boolean p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->val$isChecked:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v0, v0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v1, v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget v1, v1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v2, v2, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget v2, v2, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v3, v3, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget-object v3, v3, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    iget-object v4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v4, v4, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    .line 176
    invoke-virtual {v4}, Lcn/nubia/deskclock/model/Alarm;->getHolidayAlarm()Z

    move-result v4

    .line 175
    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 175
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 180
    const-string v0, "AlarmClockAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v0, v0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 182
    iget-boolean v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->val$isChecked:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v0, v0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$400(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v0, v0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v1, v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/model/Alarms;->cancelPowerOffAlarmAboveSdk26(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->this$1:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    iget-object v0, v0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$500(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "open_alarm"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
