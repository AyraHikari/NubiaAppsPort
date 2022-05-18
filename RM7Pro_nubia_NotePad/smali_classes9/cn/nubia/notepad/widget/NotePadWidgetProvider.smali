.class public Lcn/nubia/notepad/widget/NotePadWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "NotePadWidgetProvider.java"


# static fields
.field public static final NOTEPAD_ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "cn.nubia.notepad.action.APPWIDGET_UPDATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private buildWidgetRemoteView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I

    .prologue
    const v10, 0x10008000

    const/high16 v9, 0x8000000

    const v8, 0x7f0f0107

    .line 77
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03003f

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v1, "newNoteIntent":Landroid/content/Intent;
    const-class v6, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    const-string v6, "android.intent.action.INSERT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    sget-object v6, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    invoke-static {p1, p3, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 85
    .local v2, "newNotePendingIntent":Landroid/app/PendingIntent;
    const v6, 0x7f0f0106

    invoke-virtual {v3, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 87
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v4, "viewNoteIntent":Landroid/content/Intent;
    const-class v6, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v4, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    invoke-static {p1, p3, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 94
    .local v5, "viewNotependingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcn/nubia/notepad/widget/NotePadWidgetService;

    invoke-direct {v0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "appWidgetId"

    invoke-virtual {v0, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    invoke-virtual {v3, p3, v8, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p2, p3, v8}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 98
    invoke-virtual {v3, v8, v5}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 100
    return-object v3
.end method

.method private getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/nubia/notepad/widget/NotePadWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "widgetId"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/notepad/widget/NotePadWidgetProvider;->buildWidgetRemoteView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 71
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/notepad/widget/NotePadWidgetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 67
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 45
    const-string v4, "NotePadWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    const-string v4, "cn.nubia.notepad.action.APPWIDGET_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 50
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-direct {p0, p1}, Lcn/nubia/notepad/widget/NotePadWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 51
    .local v3, "widgetIds":[I
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v4, "ids"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 53
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    .line 54
    invoke-virtual {p1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "mIntent":Landroid/content/Intent;
    .end local v3    # "widgetIds":[I
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    return-void

    .line 56
    .restart local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v2    # "mIntent":Landroid/content/Intent;
    .restart local v3    # "widgetIds":[I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 25
    array-length v0, p3

    .line 26
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 27
    aget v1, p3, v2

    .line 28
    .local v1, "appWidgetId":I
    invoke-direct {p0, p1, p2, v1}, Lcn/nubia/notepad/widget/NotePadWidgetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "appWidgetId":I
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcn/nubia/notepad/service/NotePadUpdateWidgetService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "ids"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 33
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    .line 34
    invoke-virtual {p1, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    :goto_1
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method
