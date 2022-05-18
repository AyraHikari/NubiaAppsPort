.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;
.super Landroid/os/AsyncTask;
.source "AlarmClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->createChoseCloseDialog(Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field final synthetic val$alarm:Lcn/nubia/deskclock/model/Alarm;

.field final synthetic val$tv1:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 219
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iput-object p3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->val$tv1:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 221
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$500(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget v1, v1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget v2, v2, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget-object v3, v3, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    iget-object v4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget v4, v4, Lcn/nubia/deskclock/model/Alarm;->id:I

    iget-object v5, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget-boolean v5, v5, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    invoke-static/range {v0 .. v5}, Lcn/nubia/deskclock/util/AlarmUtils;->getNextAlarmText(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;->val$tv1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method
