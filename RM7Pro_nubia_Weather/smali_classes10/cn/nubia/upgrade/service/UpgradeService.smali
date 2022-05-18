.class public Lcn/nubia/upgrade/service/UpgradeService;
.super Landroid/app/Service;
.source "UpgradeService.java"

# interfaces
.implements Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;


# static fields
.field private static final FOREGROUND_NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UpgradeService"


# instance fields
.field private mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-direct {v0}, Lcn/nubia/upgrade/service/UpgradeWork;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    return-void
.end method

.method private showForegroundNotificaitonIfNeed(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 51
    if-eqz p1, :cond_0

    invoke-static {}, Lcn/nubia/upgrade/service/UpgradeScheduler;->isSupportForegroundService()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    const-string v8, "notification_icon"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 54
    .local v3, "iconRes":I
    const-string v8, "notification_title"

    .line 55
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "title":Ljava/lang/String;
    const-string v1, "UpgradeService"

    .line 57
    .local v1, "channelId":Ljava/lang/String;
    const-string v2, "UpgradeService"

    .line 58
    .local v2, "channelName":Ljava/lang/String;
    new-instance v5, Landroid/app/NotificationChannel;

    invoke-direct {v5, v1, v2, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 60
    .local v5, "nc":Landroid/app/NotificationChannel;
    const v8, -0xffff01

    invoke-virtual {v5, v8}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 61
    invoke-virtual {v5, v9}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 62
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcn/nubia/upgrade/service/UpgradeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 63
    .local v6, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 64
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 67
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 68
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, "service"

    .line 69
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x0

    .line 70
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 71
    .local v4, "n":Landroid/app/Notification;
    invoke-virtual {p0, v10, v4}, Lcn/nubia/upgrade/service/UpgradeService;->startForeground(ILandroid/app/Notification;)V

    .line 73
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "channelId":Ljava/lang/String;
    .end local v2    # "channelName":Ljava/lang/String;
    .end local v3    # "iconRes":I
    .end local v4    # "n":Landroid/app/Notification;
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    .end local v6    # "nm":Landroid/app/NotificationManager;
    .end local v7    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0, p0}, Lcn/nubia/upgrade/service/UpgradeWork;->setWorkListener(Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;)V

    .line 23
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    const-string v1, "UpgradeService"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->onCreate(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 36
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->onDestroy()V

    .line 37
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeService;->showForegroundNotificaitonIfNeed(Landroid/content/Intent;)V

    .line 29
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpgradeWork:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0, p1}, Lcn/nubia/upgrade/service/UpgradeWork;->onStartCommand(Landroid/content/Intent;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onWorkTerminated()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcn/nubia/upgrade/service/UpgradeService;->stopSelf()V

    .line 42
    return-void
.end method
