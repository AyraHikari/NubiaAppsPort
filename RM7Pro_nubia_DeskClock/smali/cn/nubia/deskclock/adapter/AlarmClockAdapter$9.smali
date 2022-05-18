.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;
.super Landroid/os/AsyncTask;
.source "AlarmClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->popAlarmSetToast(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;IZ)V
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
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

.field final synthetic val$hour:I

.field final synthetic val$isHoliday:Z

.field final synthetic val$minute:I


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 326
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$context:Landroid/content/Context;

    iput p3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$hour:I

    iput p4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$minute:I

    iput-object p5, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    iput-boolean p6, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$isHoliday:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 329
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$context:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$hour:I

    iget v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$minute:I

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    iget-boolean v4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$isHoliday:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 329
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 335
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$900(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;J)V

    .line 336
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 326
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
