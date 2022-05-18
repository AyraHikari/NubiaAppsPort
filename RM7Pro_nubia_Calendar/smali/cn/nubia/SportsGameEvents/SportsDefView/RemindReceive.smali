.class public Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;
.super Landroid/content/BroadcastReceiver;
.source "RemindReceive.java"


# static fields
.field public static final GUEST_ONRemindReceive:Ljava/lang/String; = "guest"

.field public static final HOME_ONRemindReceive:Ljava/lang/String; = "home"

.field public static final ID_ONRemindReceive:Ljava/lang/String; = "id"

.field public static final MATCHTIME_ONRemindReceive:Ljava/lang/String; = "matchTime"

.field public static final RECEIVEACTION:Ljava/lang/String; = "cn.nubia.SportsGameEvents.SportsDefView.RemindReceiveAction"

.field public static final TAG_ONRemindReceive:Ljava/lang/String; = "tag"

.field private static final delayTime:I = 0x64

.field private static mStartingService:Landroid/os/PowerManager$WakeLock;

.field private static notificationId:I

.field private static scheduler:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/16 v0, 0x3e7

    sput v0, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->notificationId:I

    .line 49
    sput-object v1, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 130
    sput-object v1, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->scheduler:Landroid/app/job/JobScheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static StartingService(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 133
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v6, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 134
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 135
    .local v2, "mPersistableBundle":Landroid/os/PersistableBundle;
    const-string v4, "hasSaveMatchId"

    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->getSaveremindMatchid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 137
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 139
    :try_start_0
    const-string v4, "jobscheduler"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobScheduler;

    sput-object v4, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->scheduler:Landroid/app/job/JobScheduler;

    .line 140
    sget-object v4, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_0

    .line 141
    const-string v4, "power"

    .line 142
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 143
    .local v3, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "ShowNotificationService"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 145
    sget-object v4, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 147
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v4, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 148
    sget-object v4, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->scheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 1
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "startId"    # I

    .prologue
    .line 155
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 159
    :cond_0
    return-void
.end method

.method private getLargeIcon()I
    .locals 7

    .prologue
    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "c":Ljava/util/Calendar;
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 165
    .local v4, "week":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 167
    .local v1, "day":I
    const v2, 0x7f020171

    .line 168
    .local v2, "dayResouse":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v5, Lcn/nubia/calendar/util/Utils;->mDayRes:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v3, v5, :cond_1

    .line 169
    if-ne v3, v1, :cond_0

    .line 170
    sget-object v5, Lcn/nubia/calendar/util/Utils;->mDayRes:[I

    add-int/lit8 v6, v3, -0x1

    aget v2, v5, v6

    .line 168
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    return v2
.end method

.method public static getPendingIntent(Landroid/content/Context;Lcom/nubia/nucms/bean/NuCmsSportsItem;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mNuCmsSportsItem"    # Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.nubia.SportsGameEvents.SportsDefView.RemindReceiveAction"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v2, "home"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHome()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v2, "guest"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "matchTime"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v2, "tag"

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 187
    .local v1, "pindingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-string v15, "cn.nubia.SportsGameEvents.SportsDefView.RemindReceiveAction"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 56
    const-string v15, "id"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 57
    .local v5, "id":I
    const-string v15, "home"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "home":Ljava/lang/String;
    const-string v15, "guest"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "guest":Ljava/lang/String;
    const-string v15, "matchTime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "matchTime":Ljava/lang/String;
    const-string v15, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 62
    .local v13, "tag":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->hasMatchId(Landroid/content/Context;I)Z

    move-result v15

    if-nez v15, :cond_1

    .line 127
    .end local v3    # "guest":Ljava/lang/String;
    .end local v4    # "home":Ljava/lang/String;
    .end local v5    # "id":I
    .end local v8    # "matchTime":Ljava/lang/String;
    .end local v13    # "tag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v3    # "guest":Ljava/lang/String;
    .restart local v4    # "home":Ljava/lang/String;
    .restart local v5    # "id":I
    .restart local v8    # "matchTime":Ljava/lang/String;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "preferences_pop_window_sportsevents"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 68
    .local v12, "settingSwitch":Z
    if-nez v12, :cond_2

    .line 70
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->deleteMatchId(Landroid/content/Context;I)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v8}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getPhoneTimeDataHHMM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "matchStartTime":Ljava/lang/String;
    const-string v15, "notification"

    .line 77
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 78
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    new-instance v6, Landroid/content/Intent;

    const-class v15, Lcn/nubia/calendar/HomeActivity;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v6, "intent_pinding":Landroid/content/Intent;
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v15, "android.intent.action.MAIN"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 83
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const v16, 0x7f0c021d

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcn/nubia/SportsGameEvents/SportsUtils/GetResouceInfo;->getStringInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 84
    .local v14, "title":Ljava/lang/String;
    const/4 v9, 0x0

    .line 85
    .local v9, "notification":Landroid/app/Notification;
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x1a

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 86
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v2, "b":Landroid/os/Bundle;
    const-string v15, "nubiaSort"

    const-string v16, "Notify"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v15, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct/range {p0 .. p0}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->getLargeIcon()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c0221

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 91
    invoke-virtual {v15, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0220

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 93
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v15

    const-string v16, "z0"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 95
    invoke-virtual {v15, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 96
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 97
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 98
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 99
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x0

    .line 100
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 101
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 119
    .end local v2    # "b":Landroid/os/Bundle;
    :goto_1
    iget v15, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v9, Landroid/app/Notification;->flags:I

    .line 120
    const-string v15, "ticker_notification"

    sget v16, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->notificationId:I

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 123
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->deleteMatchId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 103
    :cond_3
    new-instance v15, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-direct/range {p0 .. p0}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->getLargeIcon()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c0221

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 106
    invoke-virtual {v15, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0220

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const-string v16, "Notify"

    .line 108
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v15

    const-string v16, "40"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 110
    invoke-virtual {v15, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 111
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 112
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 113
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 114
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x0

    .line 115
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 116
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    goto/16 :goto_1

    .line 124
    .end local v3    # "guest":Ljava/lang/String;
    .end local v4    # "home":Ljava/lang/String;
    .end local v5    # "id":I
    .end local v6    # "intent_pinding":Landroid/content/Intent;
    .end local v7    # "matchStartTime":Ljava/lang/String;
    .end local v8    # "matchTime":Ljava/lang/String;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "settingSwitch":Z
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "title":Ljava/lang/String;
    :cond_4
    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 125
    invoke-static/range {p1 .. p1}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->StartingService(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
