.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;
.super Ljava/lang/Object;
.source "AlarmClockAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->updateRecentAlarmTime(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field final synthetic val$alarm:Lcn/nubia/deskclock/model/Alarm;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 261
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 264
    const-string v1, "AlarmClockAdapter"

    const-string v2, " updateRecentAlarmTime "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-static {v1, v2}, Lcn/nubia/deskclock/model/Alarms;->updateEnableRecentAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 266
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/model/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    .line 267
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 268
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/deskclock/model/Alarms;->updateRecentAlarmTime(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 270
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 271
    return-void
.end method
