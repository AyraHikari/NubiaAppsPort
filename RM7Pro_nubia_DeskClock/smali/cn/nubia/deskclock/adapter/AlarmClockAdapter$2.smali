.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;
.super Ljava/lang/Object;
.source "AlarmClockAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field final synthetic val$alarm:Lcn/nubia/deskclock/model/Alarm;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 165
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iput-object p3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    iput-object p4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isCheck"    # Z

    .prologue
    .line 168
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-static {v1, p2, v2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$200(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;ZLcn/nubia/deskclock/model/Alarm;)V

    .line 169
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    iget-object v2, v2, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->digitalClock:Lcn/nubia/deskclock/ui/DigitalClock;

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    iget-object v3, v3, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    invoke-static {v1, p2, v2, v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$300(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;ZLcn/nubia/deskclock/ui/DigitalClock;Landroid/widget/TextView;)V

    .line 170
    move v0, p2

    .line 171
    .local v0, "isChecked":Z
    const-string v1, "AlarmClockAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged: alarm.time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget-wide v4, v3, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget-wide v2, v1, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 173
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2$1;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    if-nez p2, :cond_1

    .line 192
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$400(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)V

    .line 193
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-static {v1, v2}, Lcn/nubia/deskclock/model/Alarms;->cancelPowerOffAlarmAboveSdk26(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$500(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "open_alarm"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
