.class Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;
.super Ljava/lang/Object;
.source "HandleSetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/HandleSetAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetchMatchingAlarmsAction"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mMatchingAlarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    .line 570
    iput-object p1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    .line 572
    iput-object p2, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    .line 573
    iput-object p3, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    .line 574
    iput-object p4, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    .line 575
    return-void
.end method

.method private getAlarmsByHourMinutes(IILandroid/content/ContentResolver;)Ljava/util/List;
    .locals 9
    .param p1, "hour24"    # I
    .param p2, "minutes"    # I
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 683
    const-string v2, "%s=? AND %s=? AND %s=?"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "hour"

    aput-object v4, v3, v5

    const-string v4, "minutes"

    aput-object v4, v3, v6

    const-string v4, "enabled"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "selection":Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, "1"

    aput-object v2, v0, v7

    .line 686
    .local v0, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcn/nubia/deskclock/model/Alarms;->getAlarms(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 694
    invoke-static {p2, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->access$000(Landroid/app/Activity;Ljava/lang/String;)V

    .line 695
    return-void
.end method


# virtual methods
.method public getMatchingAlarms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    return-object v0
.end method

.method public run()V
    .locals 25

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.extra.alarm.SEARCH_MODE"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 583
    .local v19, "searchMode":Ljava/lang/String;
    if-nez v19, :cond_1

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 589
    .local v10, "cr":Landroid/content/ContentResolver;
    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v20, :pswitch_data_0

    goto :goto_0

    .line 592
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.extra.alarm.HOUR"

    const/16 v22, -0x1

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 594
    .local v11, "hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.extra.alarm.MINUTES"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 595
    .local v15, "minutes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "android.intent.extra.alarm.IS_PM"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 596
    .local v13, "isPm":Ljava/lang/Boolean;
    if-eqz v13, :cond_5

    const/16 v20, 0xc

    move/from16 v0, v20

    if-le v11, v0, :cond_5

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_5

    const/4 v9, 0x1

    .line 597
    .local v9, "badInput":Z
    :goto_2
    if-ltz v11, :cond_3

    const/16 v20, 0x17

    move/from16 v0, v20

    if-le v11, v0, :cond_6

    :cond_3
    const/16 v20, 0x1

    :goto_3
    or-int v9, v9, v20

    .line 598
    if-ltz v15, :cond_4

    const/16 v20, 0x3b

    move/from16 v0, v20

    if-le v15, v0, :cond_7

    :cond_4
    const/16 v20, 0x1

    :goto_4
    or-int v9, v9, v20

    .line 600
    if-eqz v9, :cond_a

    .line 601
    new-instance v20, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v20 .. v20}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 602
    .local v8, "ampm":[Ljava/lang/String;
    if-nez v13, :cond_8

    const-string v7, ""

    .line 603
    .local v7, "amPm":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d006e

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    aput-object v7, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 604
    .local v18, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 589
    .end local v7    # "amPm":Ljava/lang/String;
    .end local v8    # "ampm":[Ljava/lang/String;
    .end local v9    # "badInput":Z
    .end local v11    # "hour":I
    .end local v13    # "isPm":Ljava/lang/Boolean;
    .end local v15    # "minutes":I
    .end local v18    # "reason":Ljava/lang/String;
    :sswitch_0
    const-string v21, "android.time"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v20, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v21, "android.next"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v20, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v21, "android.all"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v20, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v21, "android.label"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v20, 0x3

    goto/16 :goto_1

    .line 596
    .restart local v11    # "hour":I
    .restart local v13    # "isPm":Ljava/lang/Boolean;
    .restart local v15    # "minutes":I
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 597
    .restart local v9    # "badInput":Z
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 598
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 602
    .restart local v8    # "ampm":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    aget-object v7, v8, v20

    goto/16 :goto_5

    :cond_9
    const/16 v20, 0x0

    aget-object v7, v8, v20

    goto/16 :goto_5

    .line 608
    .end local v8    # "ampm":[Ljava/lang/String;
    :cond_a
    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0xc

    move/from16 v0, v20

    if-ge v11, v0, :cond_c

    add-int/lit8 v12, v11, 0xc

    .line 611
    .local v12, "hour24":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/model/Alarm;

    .line 612
    .local v4, "alarm":Lcn/nubia/deskclock/model/Alarm;
    iget v0, v4, Lcn/nubia/deskclock/model/Alarm;->hour:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v12, :cond_b

    iget v0, v4, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v15, :cond_b

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v4    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v12    # "hour24":I
    :cond_c
    move v12, v11

    .line 608
    goto :goto_6

    .line 616
    .restart local v12    # "hour24":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d0079

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 618
    .restart local v18    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 624
    .end local v9    # "badInput":Z
    .end local v11    # "hour":I
    .end local v12    # "hour24":I
    .end local v13    # "isPm":Ljava/lang/Boolean;
    .end local v15    # "minutes":I
    .end local v18    # "reason":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_e
    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/model/Alarm;

    .line 625
    .restart local v4    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    iget v0, v4, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v21, v0

    .line 626
    move/from16 v0, v21

    invoke-static {v10, v0}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v5

    .line 627
    .local v5, "alarmInstance":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v5, :cond_e

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 632
    .end local v4    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v5    # "alarmInstance":Lcn/nubia/deskclock/model/Alarm;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/nubia/deskclock/model/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v16

    .line 638
    .local v16, "nextAlarm":Lcn/nubia/deskclock/model/Alarm;
    if-nez v16, :cond_10

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d007e

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 640
    .restart local v18    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 646
    .end local v18    # "reason":Ljava/lang/String;
    :cond_10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 647
    .local v17, "nextTime":Ljava/util/Calendar;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 648
    const/16 v20, 0xb

    .line 649
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v20

    const/16 v21, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 648
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v10}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->getAlarmsByHourMinutes(IILandroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v6

    .line 651
    .local v6, "alarmsFiringAtSameTime":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 654
    .end local v6    # "alarmsFiringAtSameTime":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    .end local v16    # "nextAlarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v17    # "nextTime":Ljava/util/Calendar;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 658
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 659
    .local v14, "label":Ljava/lang/String;
    if-nez v14, :cond_11

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d007d

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 661
    .restart local v18    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 666
    .end local v18    # "reason":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_12
    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/model/Alarm;

    .line 667
    .restart local v4    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    iget-object v0, v4, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 672
    .end local v4    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0d007b

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 674
    .restart local v18    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 589
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c662d4b -> :sswitch_3
        -0x3dd0c4ee -> :sswitch_1
        -0x3dcdfd14 -> :sswitch_0
        0x37cfc9a2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
