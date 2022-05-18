.class public Lcn/nubia/calendar/CalendarBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "CalendarBackupAgent.java"


# static fields
.field static final SHARED_KEY:Ljava/lang/String; = "shared_pref"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 26
    const-string v0, "shared_pref"

    new-instance v1, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "cn.nubia.calendar.preset_preferences"

    aput-object v4, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/CalendarBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 28
    return-void
.end method
