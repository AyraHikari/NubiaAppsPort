.class Lcn/nubia/deskclock/ForceTouchWidget$1;
.super Ljava/lang/Object;
.source "ForceTouchWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ForceTouchWidget;->updateWidget(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ForceTouchWidget;

.field final synthetic val$appWidgetIds:[I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ForceTouchWidget;Landroid/content/Context;Landroid/widget/RemoteViews;[I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ForceTouchWidget;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->this$0:Lcn/nubia/deskclock/ForceTouchWidget;

    iput-object p2, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$remoteViews:Landroid/widget/RemoteViews;

    iput-object p4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$appWidgetIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x7f1200e8

    const/4 v7, 0x0

    .line 72
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/deskclock/model/Alarms;->calculateRecentAlarmInOneDay(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    .line 73
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v0, :cond_0

    .line 74
    iget-boolean v4, v0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    if-nez v4, :cond_1

    .line 75
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$remoteViews:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0001

    .line 76
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    .line 75
    invoke-virtual {v4, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 83
    :goto_0
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->this$0:Lcn/nubia/deskclock/ForceTouchWidget;

    iget-object v5, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5, v0}, Lcn/nubia/deskclock/ForceTouchWidget;->access$000(Lcn/nubia/deskclock/ForceTouchWidget;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "alarmTime":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$remoteViews:Landroid/widget/RemoteViews;

    const v5, 0x7f1200e6

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 85
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->this$0:Lcn/nubia/deskclock/ForceTouchWidget;

    iget-object v5, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$remoteViews:Landroid/widget/RemoteViews;

    invoke-static {v4, v5, v0, v6}, Lcn/nubia/deskclock/ForceTouchWidget;->access$100(Lcn/nubia/deskclock/ForceTouchWidget;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/RemoteViews;)V

    .line 87
    .end local v1    # "alarmTime":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, "mLocalIntent":Landroid/content/Intent;
    const-string v4, "deskclock.select.tab"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$remoteViews:Landroid/widget/RemoteViews;

    const v5, 0x7f1200e4

    iget-object v6, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$context:Landroid/content/Context;

    .line 90
    invoke-static {v6, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 89
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 92
    .local v2, "appManager":Landroid/appwidget/AppWidgetManager;
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$appWidgetIds:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 93
    return-void

    .line 78
    .end local v2    # "appManager":Landroid/appwidget/AppWidgetManager;
    .end local v3    # "mLocalIntent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$remoteViews:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcn/nubia/deskclock/ForceTouchWidget$1;->val$context:Landroid/content/Context;

    iget-object v6, v0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 81
    invoke-virtual {v6}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v6

    .line 80
    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/Utils;->updateWeekSelectAllDayView(Landroid/content/Context;[Z)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v4, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
