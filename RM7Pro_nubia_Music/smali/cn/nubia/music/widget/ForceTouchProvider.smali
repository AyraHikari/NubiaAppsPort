.class public Lcn/nubia/music/widget/ForceTouchProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ForceTouchProvider.java"


# static fields
.field private static sIsPlaying:Z

.field private static sTitle:Ljava/lang/String;


# instance fields
.field private views:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private bindButtonAction(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x8000000

    const/4 v5, 0x0

    .line 62
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    sget-object v1, Lcn/nubia/music/widget/ForceTouchProvider;->sTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    iget-object v2, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    const v3, 0x7f1000aa

    const/4 v4, 0x0

    .line 67
    invoke-static {p1, v5, v1, v6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 66
    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    const-string v2, "action_widget"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-static {p1, v5, v1, v6}, Lcn/nubia/music/utils/AdaptationUtil;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    iget-object v2, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    const v3, 0x7f1000ac

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 78
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.music.preset.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    const-string v2, "action_widget"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    invoke-static {p1, v5, v1, v6}, Lcn/nubia/music/utils/AdaptationUtil;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    iget-object v2, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    const v3, 0x7f1000ae

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 86
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    const-string v0, "action_widget"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-static {p1, v5, v1, v6}, Lcn/nubia/music/utils/AdaptationUtil;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    iget-object v1, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f1000ad

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 93
    :cond_3
    return-void
.end method

.method private getPlayInfo(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 112
    if-eqz p1, :cond_0

    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/widget/ForceTouchProvider;->sTitle:Ljava/lang/String;

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "playing"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "playing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/music/widget/ForceTouchProvider;->sIsPlaying:Z

    .line 118
    :cond_1
    return-void
.end method

.method private pushUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appWidgetIds == null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 54
    if-eqz p3, :cond_1

    .line 55
    iget-object v0, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 58
    :goto_1
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_1
.end method

.method private requireUpdateInfo(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string v1, "cn.nubia.music.preset.musicservicecommand.appwidgetupdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public static setDisplayInfo(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 132
    sput-object p0, Lcn/nubia/music/widget/ForceTouchProvider;->sTitle:Ljava/lang/String;

    .line 133
    sput-boolean p1, Lcn/nubia/music/widget/ForceTouchProvider;->sIsPlaying:Z

    .line 134
    return-void
.end method

.method private updateDisplay(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcn/nubia/music/widget/ForceTouchProvider;->sTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcn/nubia/music/widget/ForceTouchProvider;->getLocalCache(Landroid/content/Context;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f1000ab

    sget-object v2, Lcn/nubia/music/widget/ForceTouchProvider;->sTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f1000ad

    sget-boolean v0, Lcn/nubia/music/widget/ForceTouchProvider;->sIsPlaying:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200cf

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 128
    return-void

    .line 125
    :cond_1
    const v0, 0x7f0200d2

    goto :goto_0
.end method

.method private updateWidget(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sTitle =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/widget/ForceTouchProvider;->sTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03002e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/music/widget/ForceTouchProvider;->views:Landroid/widget/RemoteViews;

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/music/widget/ForceTouchProvider;->bindButtonAction(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/music/widget/ForceTouchProvider;->updateDisplay(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getLocalCache(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 137
    const/4 v0, 0x1

    const-string v1, "cursongname"

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/widget/ForceTouchProvider;->sTitle:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/widget/ForceTouchProvider;->sIsPlaying:Z

    .line 140
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 103
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cn.nubia.music.preset.playstatechanged"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :cond_2
    invoke-direct {p0, p2}, Lcn/nubia/music/widget/ForceTouchProvider;->getPlayInfo(Landroid/content/Intent;)V

    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/music/widget/ForceTouchProvider;->updateWidget(Landroid/content/Context;)V

    .line 107
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/music/widget/ForceTouchProvider;->pushUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .prologue
    .line 32
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/music/widget/ForceTouchProvider;->requireUpdateInfo(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/music/widget/ForceTouchProvider;->updateWidget(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/widget/ForceTouchProvider;->pushUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 37
    return-void
.end method
