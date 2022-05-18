.class public Lcn/nubia/cloud/sync/common/SyncCommonAlarmManager;
.super Ljava/lang/Object;
.source "SyncCommonAlarmManager.java"


# static fields
.field private static final ALARM_REQUEST_CODE_FOR_SYNC:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelSyncRepeatAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 24
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {p0, p1}, Lcn/nubia/cloud/sync/common/SyncCommonAlarmManager;->getPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 25
    return-void
.end method

.method private static getPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x2

    const/high16 v1, 0x8000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static setSyncRepeatAlarmForService(Landroid/content/Context;JLandroid/content/Intent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delay"    # J
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 16
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {p0, p3}, Lcn/nubia/cloud/sync/common/SyncCommonAlarmManager;->getPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v6

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 19
    return-void
.end method
