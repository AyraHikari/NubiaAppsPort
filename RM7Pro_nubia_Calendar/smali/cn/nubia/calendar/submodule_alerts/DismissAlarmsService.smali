.class public Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;
.super Landroid/app/IntentService;
.source "DismissAlarmsService.java"


# static fields
.field private static final CLOSE_ALERT_DIALOG_ACTION:Ljava/lang/String; = "CLOSE_ALERT_DIALOG_ACTION"

.field private static final COLUMN_INDEX_STATE:I

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "DismissAlarmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private buildMultipleEventsQuery([J)Ljava/lang/String;
    .locals 4
    .param p1, "eventIds"    # [J

    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, "selection":Ljava/lang/StringBuilder;
    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    array-length v2, p1

    if-lez v2, :cond_1

    .line 120
    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v2, "event_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 125
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, "event_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v5, "notificationid"

    const/16 v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 55
    .local v16, "notificationId":I
    const/4 v5, -0x1

    move/from16 v0, v16

    if-eq v0, v5, :cond_0

    .line 56
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v14, "mIntent":Landroid/content/Intent;
    const-string v5, "CLOSE_ALERT_DIALOG_ACTION"

    invoke-virtual {v14, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    const-string v5, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 60
    .local v15, "nm":Landroid/app/NotificationManager;
    invoke-virtual/range {v15 .. v16}, Landroid/app/NotificationManager;->cancel(I)V

    .line 63
    .end local v14    # "mIntent":Landroid/content/Intent;
    .end local v15    # "nm":Landroid/app/NotificationManager;
    :cond_0
    const-string v5, "eventid"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 64
    .local v6, "eventId":J
    const-string v5, "eventstart"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 65
    .local v8, "eventStart":J
    const-string v5, "eventend"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 66
    .local v10, "eventEnd":J
    const-string v5, "showevent"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 68
    .local v19, "showEvent":Z
    const-string v5, "eventids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    .line 70
    .local v12, "eventIds":[J
    sget-object v20, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 75
    .local v20, "uri":Landroid/net/Uri;
    const-wide/16 v22, -0x1

    cmp-long v5, v6, v22

    if-eqz v5, :cond_2

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "state=1 AND event_id="

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, "selection":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 85
    .local v17, "resolver":Landroid/content/ContentResolver;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v21, "values":Landroid/content/ContentValues;
    sget-object v5, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;->PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v5, v5, v22

    const/16 v22, 0x2

    .line 87
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 86
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    if-eqz v19, :cond_1

    move-object/from16 v5, p0

    .line 100
    :try_start_1
    invoke-static/range {v5 .. v11}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->buildEventViewIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v13

    .line 102
    .local v13, "i":Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    const-class v22, Lcn/nubia/calendar/EventInfoActivity;

    .line 103
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Landroid/app/TaskStackBuilder;->startActivities()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .end local v13    # "i":Landroid/content/Intent;
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;->stopSelf()V

    .line 112
    return-void

    .line 78
    .end local v17    # "resolver":Landroid/content/ContentResolver;
    .end local v18    # "selection":Ljava/lang/String;
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_2
    if-eqz v12, :cond_3

    array-length v5, v12

    if-lez v5, :cond_3

    .line 79
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;->buildMultipleEventsQuery([J)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v18    # "selection":Ljava/lang/String;
    :cond_3
    const-string v18, "state=1"

    .restart local v18    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 90
    .restart local v17    # "resolver":Landroid/content/ContentResolver;
    .restart local v21    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 91
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 106
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
