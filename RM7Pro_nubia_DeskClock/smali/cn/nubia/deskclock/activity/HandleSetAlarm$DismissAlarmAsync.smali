.class Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;
.super Landroid/os/AsyncTask;
.source "HandleSetAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/HandleSetAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DismissAlarmAsync"
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
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 431
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 432
    iput-object p1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mContext:Landroid/content/Context;

    .line 433
    iput-object p2, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mIntent:Landroid/content/Intent;

    .line 434
    iput-object p3, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    .line 435
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "parameters"    # [Ljava/lang/Void;

    .prologue
    .line 439
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 440
    .local v2, "cr":Landroid/content/ContentResolver;
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcn/nubia/deskclock/model/Alarms;->getEnabledAlarms(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 441
    .local v1, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 442
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mContext:Landroid/content/Context;

    const v11, 0x7f0d007e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "reason":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-static {v10, v7}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->access$000(Landroid/app/Activity;Ljava/lang/String;)V

    .line 444
    const-string v10, "HandleSetAlarm"

    const-string v11, "No scheduled alarms"

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v10, 0x0

    .line 495
    .end local v7    # "reason":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 449
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/deskclock/model/Alarm;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 450
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/deskclock/model/Alarm;

    iget v10, v10, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v2, v10}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v5

    .line 451
    .local v5, "instance":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v5, :cond_2

    iget v10, v5, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    if-nez v10, :cond_1

    .line 452
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 456
    .end local v5    # "instance":Lcn/nubia/deskclock/model/Alarm;
    :cond_3
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mIntent:Landroid/content/Intent;

    const-string v11, "android.intent.extra.alarm.SEARCH_MODE"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, "searchMode":Ljava/lang/String;
    if-nez v8, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 465
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mContext:Landroid/content/Context;

    const v11, 0x7f0d00c1

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, "voiceMessage":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-static {v10, v9}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->access$100(Landroid/app/Activity;Ljava/lang/String;)V

    .line 467
    const/4 v10, 0x0

    goto :goto_0

    .line 471
    .end local v9    # "voiceMessage":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;

    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mIntent:Landroid/content/Intent;

    iget-object v12, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v10, v1, v11, v12}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/app/Activity;)V

    .line 473
    .local v3, "fmaa":Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;
    invoke-virtual {v3}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->run()V

    .line 474
    invoke-virtual {v3}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->getMatchingAlarms()Ljava/util/List;

    move-result-object v6

    .line 478
    .local v6, "matchingAlarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    const-string v10, "android.all"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    .line 485
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mContext:Landroid/content/Context;

    const v11, 0x7f0d00c1

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 486
    .restart local v9    # "voiceMessage":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-static {v10, v9}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->access$100(Landroid/app/Activity;Ljava/lang/String;)V

    .line 487
    const/4 v10, 0x0

    goto :goto_0

    .line 491
    .end local v9    # "voiceMessage":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 492
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    iget-object v11, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v11}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->dismissAlarm(Lcn/nubia/deskclock/model/Alarm;Landroid/app/Activity;)V

    .line 493
    const-string v11, "HandleSetAlarm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alarm dismissed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 495
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 425
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 500
    iget-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 501
    return-void
.end method
