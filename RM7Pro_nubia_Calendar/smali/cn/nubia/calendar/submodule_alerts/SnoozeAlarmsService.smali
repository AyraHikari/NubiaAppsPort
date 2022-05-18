.class public Lcn/nubia/calendar/submodule_alerts/SnoozeAlarmsService;
.super Landroid/app/IntentService;
.source "SnoozeAlarmsService.java"


# static fields
.field private static final COLUMN_INDEX_STATE:I

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/SnoozeAlarmsService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "SnoozeAlarmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v12, "eventid"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 50
    .local v4, "eventId":J
    const-string v12, "eventstart"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 51
    .local v6, "eventStart":J
    const-string v12, "eventend"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 56
    .local v8, "eventEnd":J
    const-string v12, "notificationid"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 59
    .local v15, "notificationId":I
    const-wide/16 v20, -0x1

    cmp-long v12, v4, v20

    if-eqz v12, :cond_1

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/SnoozeAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 63
    .local v16, "resolver":Landroid/content/ContentResolver;
    if-eqz v15, :cond_0

    .line 64
    const-string v12, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcn/nubia/calendar/submodule_alerts/SnoozeAlarmsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 65
    .local v14, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v14, v15}, Landroid/app/NotificationManager;->cancel(I)V

    .line 69
    .end local v14    # "nm":Landroid/app/NotificationManager;
    :cond_0
    sget-object v18, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 70
    .local v18, "uri":Landroid/net/Uri;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "state=1 AND event_id="

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 73
    .local v17, "selection":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v13, "dismissValues":Landroid/content/ContentValues;
    sget-object v12, Lcn/nubia/calendar/submodule_alerts/SnoozeAlarmsService;->PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v12, v12, v20

    const/16 v20, 0x2

    .line 75
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 74
    move-object/from16 v0, v20

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v13, v2, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x493e0

    add-long v10, v20, v22

    .line 81
    .local v10, "alarmTime":J
    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v19

    .line 83
    .local v19, "values":Landroid/content/ContentValues;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 84
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v10, v11}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 86
    .end local v10    # "alarmTime":J
    .end local v13    # "dismissValues":Landroid/content/ContentValues;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .end local v17    # "selection":Ljava/lang/String;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/SnoozeAlarmsService;->stopSelf()V

    .line 88
    return-void
.end method
