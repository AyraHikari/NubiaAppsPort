.class Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;
.super Landroid/os/AsyncTask;
.source "HandleSetAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/HandleSetAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnoozeAlarmAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 761
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 762
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mContext:Landroid/content/Context;

    .line 763
    iput-object p1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mIntent:Landroid/content/Intent;

    .line 764
    iput-object p2, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mActivity:Landroid/app/Activity;

    .line 765
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 755
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "parameters"    # [Ljava/lang/Void;

    .prologue
    .line 769
    iget-object v3, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 770
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v0, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    .line 771
    .local v0, "alarmInstances":Lcn/nubia/deskclock/model/Alarm;
    if-nez v0, :cond_0

    .line 772
    iget-object v3, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mContext:Landroid/content/Context;

    const v4, 0x7f0d007c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->access$000(Landroid/app/Activity;Ljava/lang/String;)V

    .line 774
    const-string v3, "HandleSetAlarm"

    const-string v4, "No firing alarms"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .end local v2    # "reason":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 779
    const/4 v3, 0x0

    return-object v3

    .line 776
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->snoozeAlarm(Lcn/nubia/deskclock/model/Alarm;Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_0
.end method
