.class public Lcn/nubia/calendar/submodule_alerts/AlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlertReceiver.java"


# static fields
.field public static final ACTION_DISMISS_OLD_REMINDERS:Ljava/lang/String; = "removeOldReminders"

.field private static final ATTENDEES_INDEX_EMAIL:I = 0x0

.field private static final ATTENDEES_INDEX_STATUS:I = 0x1

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String; = "attendeeName ASC, attendeeEmail ASC"

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=?"

.field private static final DELETE_ALL_ACTION:Ljava/lang/String; = "om.android.calendar2.DELETEALL"

.field private static final EVENT_INDEX_ACCOUNT_NAME:I = 0x1

.field private static final EVENT_INDEX_OWNER_ACCOUNT:I = 0x0

.field private static final EVENT_INDEX_TITLE:I = 0x2

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final EXTRA_EVENT_ID:Ljava/lang/String; = "eventid"

.field private static final LOCAL_CALENDAR:Ljava/lang/String; = "My Calendar"

.field private static final MAIL_ACTION:Ljava/lang/String; = "com.android.calendar2.MAIL"

.field private static final MINUTE_IN_MILLIS:J = 0xea60L

.field private static final NOTIFICATION_DIGEST_MAX_LENGTH:I = 0x3

.field public static final NUBIAFANCYICON_CALENDAR:Ljava/lang/String; = "cn.nubia.launcher.fancyicon.remind.time"

.field private static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AlertReceiver"

.field private static final UPDATE_OLD_SELECTION:Ljava/lang/String; = "event_id=? AND state=?"

.field public static final WEATHER_ACTION:Ljava/lang/String; = "cn.nubia.intent.action.NUBIA.WEATHER.UPDATE"

.field private static final delayTime:I = 0x64

.field public static isOpenMasterSwitchGameMode:Z

.field private static final mBlankLinePattern:Ljava/util/regex/Pattern;

.field static mCalendarProjection:[Ljava/lang/String;

.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;

.field private static sAsyncHandler:Landroid/os/Handler;

.field private static scheduler:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    .line 95
    const-string v1, "^\\s*$[\n\r]"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mBlankLinePattern:Ljava/util/regex/Pattern;

    .line 108
    sput-boolean v4, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->isOpenMasterSwitchGameMode:Z

    .line 109
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "account_name"

    aput-object v2, v1, v5

    const-string v2, "account_type"

    aput-object v2, v1, v6

    const-string v2, "name"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "calendar_displayName"

    aput-object v3, v1, v2

    sput-object v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mCalendarProjection:[Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertReceiver async"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->sAsyncHandler:Landroid/os/Handler;

    .line 194
    const/4 v1, 0x0

    sput-object v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->scheduler:Landroid/app/job/JobScheduler;

    .line 787
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "attendeeEmail"

    aput-object v2, v1, v4

    const-string v2, "attendeeStatus"

    aput-object v2, v1, v5

    sput-object v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 797
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "ownerAccount"

    aput-object v2, v1, v4

    const-string v2, "account_name"

    aput-object v2, v1, v5

    const-string v2, "title"

    aput-object v2, v1, v6

    sput-object v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createLocalCalendarAccount(Landroid/content/Context;)V

    return-void
.end method

.method private static addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "syncAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcn/nubia/calendar/util/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_0
    return-void
.end method

.method private static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    .line 332
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    .line 333
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 327
    return-object v0
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 196
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcn/nubia/calendar/submodule_alerts/AlertService;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v7, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 198
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 199
    .local v2, "mPersistableBundle":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 200
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 201
    const-string v5, "uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    const-string v5, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 206
    invoke-static {}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->hasNubiaJobExtra()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    const-string v5, "calendar_preset"

    const-string v6, "hasNubiaJobExtra()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v5, "IS_NUBIA"

    invoke-static {v0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->setNubiaOrder(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    .line 210
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 212
    :try_start_0
    sget-object v6, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    const-string v5, "jobscheduler"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    sput-object v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->scheduler:Landroid/app/job/JobScheduler;

    .line 214
    const-string v5, "calendar_preset"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStartingService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_2

    .line 216
    const-string v5, "power"

    .line 217
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 220
    .local v3, "pm":Landroid/os/PowerManager;
    const v5, 0x3000000a

    const-string v7, "StartingAlertService"

    invoke-virtual {v3, v5, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 223
    sget-object v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 225
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_2
    sget-object v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 226
    sget-object v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->scheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 227
    monitor-exit v6

    .line 231
    :goto_0
    return-void

    .line 227
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static createAlertActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v0, "clickIntent":Landroid/content/Intent;
    const-class v1, Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    const/4 v1, 0x0

    const/high16 v2, 0x48000000    # 131072.0f

    .line 409
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 408
    return-object v1
.end method

.method private static createBroadcastMailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "eventTitle"    # Ljava/lang/String;

    .prologue
    .line 834
    const/4 v4, 0x0

    .line 835
    .local v4, "syncAccount":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v3

    .line 837
    .local v3, "eventCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 838
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 841
    :cond_0
    if-eqz v3, :cond_1

    .line 842
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 847
    :cond_1
    invoke-static {p0, p1, p2}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v0

    .line 849
    .local v0, "attendeesCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 851
    :cond_2
    const/4 v5, 0x0

    .line 852
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, "email":Ljava/lang/String;
    invoke-static {v2, v4}, Lcn/nubia/calendar/util/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 860
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.calendar2.MAIL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-class v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 862
    const-string v5, "eventid"

    invoke-virtual {v1, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 864
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->hashCode()I

    move-result v5

    const/high16 v6, 0x10000000

    .line 863
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 872
    if-eqz v0, :cond_3

    .line 873
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 869
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    .end local v2    # "email":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v5

    .line 841
    .end local v0    # "attendeesCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_4

    .line 842
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 844
    :cond_4
    throw v5

    .line 867
    .restart local v0    # "attendeesCursor":Landroid/database/Cursor;
    .restart local v2    # "email":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    .line 869
    .end local v2    # "email":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .line 872
    if-eqz v0, :cond_3

    .line 873
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 872
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_7

    .line 873
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 875
    :cond_7
    throw v5
.end method

.method private static createClickEventIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "notificationId"    # I

    .prologue
    .line 339
    const-string v9, "com.android.calendar2.CLICK"

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v10}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createDeleteEventIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "notificationId"    # I

    .prologue
    .line 345
    const-string v9, "com.android.calendar2.DELETE"

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v10}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "notificationId"    # I
    .param p8, "action"    # Ljava/lang/String;
    .param p9, "showEvent"    # Z

    .prologue
    .line 353
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 354
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 355
    const-string v2, "eventid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 356
    const-string v2, "eventstart"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 357
    const-string v2, "eventend"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 358
    const-string v2, "showevent"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    const-string v2, "notificationid"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 370
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 371
    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 372
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 373
    invoke-virtual {v1, p8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method static createEmailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 888
    const/4 v5, 0x0

    .line 889
    .local v5, "ownerAccount":Ljava/lang/String;
    const/4 v11, 0x0

    .line 890
    .local v11, "syncAccount":Ljava/lang/String;
    const/4 v1, 0x0

    .line 891
    .local v1, "eventTitle":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v8

    .line 893
    .local v8, "eventCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 895
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 896
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 899
    :cond_0
    if-eqz v8, :cond_1

    .line 900
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 903
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 909
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v3, "toEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v4, "ccEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v6

    .line 913
    .local v6, "attendeesCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 915
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 916
    .local v10, "status":I
    const/4 v0, 0x0

    .line 917
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 918
    .local v7, "email":Ljava/lang/String;
    packed-switch v10, :pswitch_data_0

    .line 923
    invoke-static {v3, v7, v11}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 928
    .end local v7    # "email":Ljava/lang/String;
    .end local v10    # "status":I
    :cond_4
    if-eqz v6, :cond_5

    .line 929
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 933
    :cond_5
    const/4 v9, 0x0

    .line 934
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    .line 935
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 936
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lcn/nubia/calendar/util/Utils;->createEmailAttendeesIntent(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 940
    :cond_7
    if-nez v9, :cond_a

    .line 941
    const/4 v9, 0x0

    .line 945
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_1
    return-object v9

    .line 899
    .end local v3    # "toEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ccEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "attendeesCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_8

    .line 900
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 902
    :cond_8
    throw v0

    .line 920
    .restart local v3    # "toEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "ccEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "attendeesCursor":Landroid/database/Cursor;
    .restart local v7    # "email":Ljava/lang/String;
    .restart local v10    # "status":I
    :pswitch_0
    :try_start_2
    invoke-static {v4, v7, v11}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 928
    .end local v7    # "email":Ljava/lang/String;
    .end local v10    # "status":I
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_9

    .line 929
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 931
    :cond_9
    throw v0

    .line 943
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_a
    const v0, 0x10008000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static createLocalCalendar(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 323
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 324
    return-void
.end method

.method private static declared-synchronized createLocalCalendarAccount(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    const-class v10, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;

    monitor-enter v10

    const/4 v6, 0x0

    .line 252
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mCalendarProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 257
    :goto_0
    const/4 v8, 0x0

    .line 258
    .local v8, "hasLocalAccountName":Z
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "calendar_displayName"

    .line 262
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 261
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "My Calendar"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v8, 0x1

    .line 270
    :cond_1
    if-eqz v8, :cond_3

    .line 310
    :cond_2
    :goto_1
    monitor-exit v10

    return-void

    .line 254
    .end local v8    # "hasLocalAccountName":Z
    :catch_0
    move-exception v7

    .line 255
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 250
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 274
    .restart local v8    # "hasLocalAccountName":Z
    :cond_3
    :try_start_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v9, "vals":Landroid/content/ContentValues;
    const-string v0, "account_name"

    const-string v1, "nobody@gmail.com"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "calendar_displayName"

    const-string v1, "My Calendar"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "account_type"

    const-string v1, "LOCAL"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "sync_events"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v0, "visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v0, "canOrganizerRespond"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v0, "canModifyTimeZone"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v0, "maxReminders"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v0, "allowedReminders"

    const-string v1, "0,1"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "allowedAttendeeTypes"

    const-string v1, "0,1,2"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "allowedAvailability"

    const-string v1, "0,1,2"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "calendar_color"

    const v1, 0xbdff

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 291
    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v0, "calendar_access_level"

    const/16 v1, 0x2bc

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 293
    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v0, "ownerAccount"

    const-string v1, "nobody@gmail.com"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "nobody@gmail.com"

    const-string v3, "LOCAL"

    .line 300
    invoke-static {v1, v2, v3}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 306
    if-eqz v6, :cond_2

    .line 307
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 303
    :catch_1
    move-exception v7

    .line 304
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 306
    if-eqz v6, :cond_2

    .line 307
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 306
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_4

    .line 307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private static createSnoozeIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "notificationId"    # I

    .prologue
    .line 380
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcn/nubia/calendar/submodule_alerts/SnoozeAlarmsService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 382
    const-string v2, "eventid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 383
    const-string v2, "eventstart"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 384
    const-string v2, "eventend"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 385
    const-string v2, "notificationid"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 388
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 389
    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 390
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 391
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 4
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "startId"    # I

    .prologue
    .line 238
    sget-object v1, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_0
    sget-object v0, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStartingService release = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 243
    :cond_0
    sget-object v0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->scheduler:Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->scheduler:Landroid/app/job/JobScheduler;

    .line 246
    :cond_1
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 823
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "attendeeName ASC, attendeeEmail ASC"

    .line 820
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    .line 807
    const/4 v6, 0x0

    .line 809
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 810
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 809
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v7, v6

    .line 815
    .end local v6    # "cursor":Landroid/database/Cursor;
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 812
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 813
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    .line 815
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v7, v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method

.method private static getLargeIcon(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 584
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 585
    .local v0, "c":Ljava/util/Calendar;
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 586
    .local v4, "week":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 588
    .local v1, "day":I
    const v2, 0x7f020171

    .line 589
    .local v2, "dayResouse":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v5, Lcn/nubia/calendar/util/Utils;->mDayRes:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v3, v5, :cond_1

    .line 590
    if-ne v3, v1, :cond_0

    .line 591
    sget-object v5, Lcn/nubia/calendar/util/Utils;->mDayRes:[I

    add-int/lit8 v6, v3, -0x1

    aget v2, v5, v6

    .line 589
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 595
    :cond_1
    return v2
.end method

.method public static hasNubiaJobExtra()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 971
    :try_start_0
    const-class v3, Landroid/app/job/JobInfo$Builder;

    const-string v4, "setNubiaOrder"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return v1

    .line 972
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 973
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v1, v2

    .line 974
    goto :goto_0
.end method

.method public static makeBasicNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZ)Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summaryText"    # Ljava/lang/String;
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "eventId"    # J
    .param p9, "notificationId"    # I
    .param p10, "doPopup"    # Z

    .prologue
    .line 418
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v1 .. v13}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->makeBasicNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZZZ)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 422
    .local v2, "n":Landroid/app/Notification;
    new-instance v1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    move/from16 v3, p9

    move-wide/from16 v4, p7

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    return-object v1
.end method

.method private static makeBasicNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZZZ)Landroid/app/Notification$Builder;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summaryText"    # Ljava/lang/String;
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "eventId"    # J
    .param p9, "notificationId"    # I
    .param p10, "doPopup"    # Z
    .param p11, "highPriority"    # Z
    .param p12, "addActionButtons"    # Z

    .prologue
    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 462
    .local v22, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 463
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 465
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 466
    :cond_1
    const v5, 0x7f0c005c

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object/from16 v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p9

    .line 471
    invoke-static/range {v5 .. v12}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createClickEventIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;

    move-result-object v14

    .local v14, "clickIntent":Landroid/app/PendingIntent;
    move-object/from16 v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p9

    .line 475
    invoke-static/range {v5 .. v12}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createDeleteEventIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;

    move-result-object v15

    .line 478
    .local v15, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 479
    .local v21, "resource":Landroid/content/res/Resources;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x7f0c00df

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 480
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->queryEventtime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 481
    .local v13, "calendarTicker":Ljava/lang/String;
    const/16 v20, 0x0

    .line 482
    .local v20, "notificationBuilder":Landroid/app/Notification$Builder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_6

    .line 483
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 484
    .local v4, "b":Landroid/os/Bundle;
    const-string v5, "nubiaSort"

    const-string v6, "Notify"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->getLargeIcon(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 487
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 488
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 489
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 490
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 491
    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "z0"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "canlendar_event"

    .line 493
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    .line 494
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 508
    .end local v4    # "b":Landroid/os/Bundle;
    :goto_0
    const-string v5, "event"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 510
    if-eqz p12, :cond_3

    move-object/from16 v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p9

    .line 512
    invoke-static/range {v5 .. v12}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createSnoozeIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;

    move-result-object v23

    .line 519
    .local v23, "snoozeIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createBroadcastMailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v17

    .line 521
    .local v17, "emailIntent":Landroid/app/PendingIntent;
    if-eqz v17, :cond_3

    .line 522
    const/4 v5, 0x0

    const v6, 0x7f0c0038

    .line 525
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 522
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 539
    .end local v17    # "emailIntent":Landroid/app/PendingIntent;
    .end local v23    # "snoozeIntent":Landroid/app/PendingIntent;
    :cond_3
    sget-boolean v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->isOpenMasterSwitchGameMode:Z

    if-eqz v5, :cond_4

    .line 540
    const/16 p10, 0x0

    .line 542
    :cond_4
    if-eqz p10, :cond_7

    .line 543
    const/16 p11, 0x0

    .line 548
    :try_start_0
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v18, "intent":Landroid/content/Intent;
    const-class v5, Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 550
    const/high16 v5, 0x10000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v18    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 564
    if-eqz p11, :cond_9

    .line 565
    if-eqz p10, :cond_8

    .line 566
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 573
    :goto_2
    sget-boolean v5, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->isOpenMasterSwitchGameMode:Z

    if-eqz v5, :cond_5

    .line 574
    const-string v5, "notification"

    .line 576
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 577
    .local v19, "nm":Landroid/app/NotificationManager;
    const-string v5, "ticker_notification"

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object/from16 v0, v19

    move/from16 v1, p9

    invoke-virtual {v0, v5, v1, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 579
    .end local v19    # "nm":Landroid/app/NotificationManager;
    :cond_5
    return-object v20

    .line 496
    :cond_6
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->getLargeIcon(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 498
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 499
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 500
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 501
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 502
    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "Notify"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "40"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "canlendar_event"

    .line 504
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    .line 505
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v20

    goto/16 :goto_0

    .line 552
    :catch_0
    move-exception v16

    .line 553
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 556
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->updateStateFiredToDismissed(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 568
    :cond_8
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 571
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_2
.end method

.method public static makeDigestNotification(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    .locals 33
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "digestTitle"    # Ljava/lang/String;
    .param p3, "expandable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, "notificationInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 654
    :cond_0
    const/16 v18, 0x0

    .line 784
    :goto_0
    return-object v18

    .line 657
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 658
    .local v23, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 659
    .local v17, "numEvents":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v8, v0, [J

    .line 660
    .local v8, "eventIds":[J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_2

    .line 661
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    move-wide/from16 v28, v0

    aput-wide v28, v8, v10

    .line 660
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 666
    :cond_2
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createAlertActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v19

    .line 671
    .local v19, "pendingClickIntent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 672
    .local v7, "deleteIntent":Landroid/content/Intent;
    const-class v28, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 673
    const-string v28, "om.android.calendar2.DELETEALL"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v28, "eventids"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 675
    const/16 v28, 0x0

    const/high16 v29, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 678
    .local v20, "pendingDeleteIntent":Landroid/app/PendingIntent;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_4

    .line 679
    :cond_3
    const v28, 0x7f0c005c

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 682
    :cond_4
    const/16 v16, 0x0

    .line 683
    .local v16, "notificationBuilder":Landroid/app/Notification$Builder;
    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v29, 0x1a

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    .line 684
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 685
    .local v6, "b":Landroid/os/Bundle;
    const-string v28, "nubiaSort"

    const-string v29, "Notify"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    new-instance v16, Landroid/app/Notification$Builder;

    .end local v16    # "notificationBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 688
    .restart local v16    # "notificationBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 689
    const v28, 0x7f0202ca

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 690
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 691
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 692
    const v28, 0x7f0b0002

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    .line 693
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    .line 692
    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v17

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 694
    .local v13, "nEventsStr":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 695
    const-string v28, "z0"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 696
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 713
    .end local v6    # "b":Landroid/os/Bundle;
    :goto_2
    const/16 v28, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 717
    if-eqz p3, :cond_9

    .line 719
    new-instance v9, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 721
    .local v9, "expandedBuilder":Landroid/app/Notification$InboxStyle;
    const/4 v10, 0x0

    .line 722
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .line 723
    .local v11, "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ge v10, v0, :cond_7

    .line 724
    iget-object v15, v11, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    .line 725
    .local v15, "name":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 726
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c005c

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 729
    :cond_5
    iget-wide v0, v11, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v30, v0

    iget-boolean v0, v11, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->allDay:Z

    move/from16 v29, v0

    iget-object v0, v11, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move/from16 v3, v29

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 733
    .local v27, "timeLocation":Ljava/lang/String;
    new-instance v21, Landroid/text/style/TextAppearanceSpan;

    const v29, 0x7f0e00a8

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 735
    .local v21, "primaryTextSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v25, Landroid/text/style/TextAppearanceSpan;

    const v29, 0x7f0e00a9

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 739
    .local v25, "secondaryTextSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v26, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v26 .. v26}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 740
    .local v26, "stringBuilder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 741
    const/16 v29, 0x0

    .line 742
    invoke-virtual/range {v26 .. v26}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v30

    const/16 v31, 0x0

    .line 741
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 743
    const-string v29, "  "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 746
    invoke-virtual/range {v26 .. v26}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v24

    .line 747
    .local v24, "secondaryIndex":I
    invoke-virtual/range {v26 .. v27}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 749
    invoke-virtual/range {v26 .. v26}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v29

    const/16 v30, 0x0

    .line 748
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 750
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 751
    add-int/lit8 v10, v10, 0x1

    .line 755
    goto/16 :goto_3

    .line 699
    .end local v9    # "expandedBuilder":Landroid/app/Notification$InboxStyle;
    .end local v11    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .end local v13    # "nEventsStr":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v21    # "primaryTextSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v24    # "secondaryIndex":I
    .end local v25    # "secondaryTextSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v26    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v27    # "timeLocation":Ljava/lang/String;
    :cond_6
    new-instance v16, Landroid/app/Notification$Builder;

    .end local v16    # "notificationBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 701
    .restart local v16    # "notificationBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 702
    const v28, 0x7f0202ca

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 703
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 704
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 705
    const v28, 0x7f0b0002

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    .line 706
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    .line 705
    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v17

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 707
    .restart local v13    # "nEventsStr":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 708
    const-string v28, "Notify"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v28

    const-string v29, "40"

    invoke-virtual/range {v28 .. v29}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 759
    .restart local v9    # "expandedBuilder":Landroid/app/Notification$InboxStyle;
    :cond_7
    sub-int v22, v17, v10

    .line 760
    .local v22, "remaining":I
    if-lez v22, :cond_8

    .line 761
    const/high16 v28, 0x7f0b0000

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    .line 762
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    .line 761
    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v22

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 765
    .local v14, "nMoreEventsStr":Ljava/lang/String;
    invoke-virtual {v9, v14}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 770
    .end local v14    # "nMoreEventsStr":Ljava/lang/String;
    :cond_8
    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 772
    invoke-virtual {v9}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v12

    .line 777
    .end local v9    # "expandedBuilder":Landroid/app/Notification$InboxStyle;
    .end local v22    # "remaining":I
    .local v12, "n":Landroid/app/Notification;
    :goto_4
    new-instance v18, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;)V

    .line 784
    .local v18, "nw":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    goto/16 :goto_0

    .line 774
    .end local v12    # "n":Landroid/app/Notification;
    .end local v18    # "nw":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .restart local v12    # "n":Landroid/app/Notification;
    goto :goto_4
.end method

.method public static makeExpandingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIZZ)Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summaryText"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "eventId"    # J
    .param p10, "notificationId"    # I
    .param p11, "doPopup"    # Z
    .param p12, "highPriority"    # Z

    .prologue
    .line 606
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 609
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-static/range {v3 .. v15}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->makeBasicNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZZZ)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 612
    .local v2, "basicBuilder":Landroid/app/Notification$Builder;
    if-nez p11, :cond_1

    .line 618
    :cond_1
    if-eqz p3, :cond_2

    .line 619
    sget-object v3, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->mBlankLinePattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 620
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 623
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 624
    move-object/from16 v16, p2

    .line 638
    .local v16, "text":Ljava/lang/CharSequence;
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-le v3, v4, :cond_4

    .line 639
    new-instance v3, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    move/from16 v5, p10

    move-wide/from16 v6, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p11

    invoke-direct/range {v3 .. v12}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    .line 642
    :goto_1
    return-object v3

    .line 635
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v16, p2

    .restart local v16    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 642
    :cond_4
    new-instance v3, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    move/from16 v5, p10

    move-wide/from16 v6, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p11

    invoke-direct/range {v3 .. v12}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    goto :goto_1
.end method

.method public static queryEventtime(JLandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 429
    .local v0, "date":Ljava/util/Date;
    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    const-string v2, "HH:mm"

    .line 434
    .local v2, "timeFormat":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "formet":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 432
    .end local v1    # "formet":Ljava/text/SimpleDateFormat;
    .end local v2    # "timeFormat":Ljava/lang/String;
    :cond_0
    const-string v2, "aa hh:mm"

    .restart local v2    # "timeFormat":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setNubiaOrder(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    .locals 9
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "orderName"    # Ljava/lang/String;

    .prologue
    .line 958
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setNubiaOrder"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 959
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Landroid/app/job/JobInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 960
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 961
    .local v3, "order":I
    const-string v4, "calendar_preset"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNubiaOrder order = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "order":I
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 965
    const-string v4, "calendar_preset"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNubiaOrder order = Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateStateFiredToDismissed(Landroid/content/Context;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 445
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v1, "vals":Landroid/content/ContentValues;
    const-string v2, "state"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    sget-object v2, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id=? AND state=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 452
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 453
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 447
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    .line 138
    invoke-static {p1}, Lcn/nubia/calendar/util/PermissionUtils;->judgeAllPermission(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v5, "om.android.calendar2.DELETEALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcn/nubia/calendar/submodule_alerts/DismissAlarmsService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v4, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    sget-boolean v5, Lcn/nubia/calendar/CalendarApplication;->mHasRegisterContentObserver:Z

    if-nez v5, :cond_0

    .line 182
    sput-boolean v9, Lcn/nubia/calendar/CalendarApplication;->mHasRegisterContentObserver:Z

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Lcn/nubia/calendar/ContactBirthDayObserver;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, v8, p1}, Lcn/nubia/calendar/ContactBirthDayObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 152
    :cond_3
    const-string v5, "com.android.calendar2.MAIL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "closeNotificationShadeIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    const-string v5, "eventid"

    invoke-virtual {p2, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 160
    .local v2, "eventId":J
    cmp-long v5, v2, v10

    if-eqz v5, :cond_2

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "eventId"

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 163
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 176
    .end local v0    # "closeNotificationShadeIntent":Landroid/content/Intent;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "eventId":J
    :cond_4
    sget-object v5, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {p1, p2}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method
