.class public Lcn/nubia/notepad/service/NotePadUpdateWidgetService;
.super Landroid/app/IntentService;
.source "NotePadUpdateWidgetService.java"


# instance fields
.field private channelId:Ljava/lang/String;

.field private channelName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "NotePadUpdateWidgetService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "UpdateWidgetServiceChannelId"

    iput-object v0, p0, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->channelId:Ljava/lang/String;

    .line 26
    const-string v0, "UpdateWidgetServiceChannelName"

    iput-object v0, p0, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->channelName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "UpdateWidgetServiceChannelId"

    iput-object v0, p0, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->channelId:Ljava/lang/String;

    .line 26
    const-string v0, "UpdateWidgetServiceChannelName"

    iput-object v0, p0, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->channelName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private createNotificationChannel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 50
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 51
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const v3, 0x7f0a0036

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "description":Ljava/lang/String;
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->channelId:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->channelName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 53
    .local v1, "mChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 55
    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 56
    invoke-virtual {v1, v7, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 57
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 58
    return-void
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 61
    const v3, 0x7f0a0036

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "description":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "hide_foreground_service"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->channelId:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 69
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020084

    .line 70
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 72
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 73
    iget-object v3, p0, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I

    .prologue
    const v10, 0x10008000

    const/high16 v9, 0x8000000

    const v8, 0x7f0f0107

    .line 79
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03003f

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, "newNoteIntent":Landroid/content/Intent;
    const-class v6, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    const-string v6, "android.intent.action.INSERT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    sget-object v6, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-static {p1, p3, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 87
    .local v2, "newNotePendingIntent":Landroid/app/PendingIntent;
    const v6, 0x7f0f0106

    invoke-virtual {v3, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v4, "viewNoteIntent":Landroid/content/Intent;
    const-class v6, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v4, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-static {p1, p3, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 96
    .local v5, "viewNotependingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcn/nubia/notepad/widget/NotePadWidgetService;

    invoke-direct {v0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "appWidgetId"

    invoke-virtual {v0, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-virtual {v3, p3, v8, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p2, p3, v8}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 100
    invoke-virtual {v3, v8, v5}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 102
    invoke-virtual {p2, p3, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 40
    invoke-direct {p0}, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->createNotificationChannel()V

    .line 42
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 108
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v3, "ids"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 114
    .local v1, "appWidgetIds":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 115
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 116
    .local v0, "appWidgetId":I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 117
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-direct {p0, p0, v2, v0}, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "appWidgetId":I
    .end local v1    # "appWidgetIds":[I
    .end local v2    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method
