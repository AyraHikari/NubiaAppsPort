.class public Lcn/nubia/deskclock/ForceTouchWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "ForceTouchWidget.java"


# static fields
.field private static final CLOCK_TIME_TAB:I = 0x1

.field private static final HOURS:Ljava/lang/String; = "hh"

.field private static final HOURS_24:Ljava/lang/String; = "kk"

.field private static final MINUTES:Ljava/lang/String; = "mm"

.field private static final TIME_MANAGER:Ljava/lang/String; = "cn.nubia.intent.action.NUBIA.TIMEMANAGER"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ForceTouchWidget;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ForceTouchWidget;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ForceTouchWidget;->getAlarmData(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ForceTouchWidget;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ForceTouchWidget;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcn/nubia/deskclock/model/Alarm;
    .param p3, "x3"    # Landroid/widget/RemoteViews;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/ForceTouchWidget;->setAmPmView(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private getAlarmData(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v1, "fullTimeStr":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "calendar":Ljava/util/Calendar;
    iget-wide v4, p2, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 115
    invoke-static {p1}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "kk"

    .line 116
    .local v2, "hoursFormat":Ljava/lang/String;
    :goto_0
    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 117
    .local v3, "newTime":Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 118
    const-string v4, "mm"

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    return-object v1

    .line 115
    .end local v2    # "hoursFormat":Ljava/lang/String;
    .end local v3    # "newTime":Ljava/lang/CharSequence;
    :cond_0
    const-string v2, "hh"

    goto :goto_0
.end method

.method private getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/deskclock/ForceTouchWidget;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ForceTouchWidget;->mComponentName:Landroid/content/ComponentName;

    .line 127
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ForceTouchWidget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method private setAmPmView(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/RemoteViews;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const v10, 0x7f1200e7

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 99
    .local v3, "calendar":Ljava/util/Calendar;
    iget-wide v8, p2, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 100
    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "ampm":[Ljava/lang/String;
    aget-object v1, v2, v6

    .line 102
    .local v1, "amString":Ljava/lang/String;
    aget-object v5, v2, v4

    .line 103
    .local v5, "pmString":Ljava/lang/String;
    const/16 v7, 0x9

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_1

    .line 104
    .local v4, "isMorning":Z
    :goto_0
    invoke-static {p1}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 105
    if-eqz v4, :cond_2

    move-object v0, v1

    .line 106
    .local v0, "amPmString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p3, v10, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 107
    invoke-virtual {p3, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 109
    .end local v0    # "amPmString":Ljava/lang/String;
    :cond_0
    return-void

    .end local v4    # "isMorning":Z
    :cond_1
    move v4, v6

    .line 103
    goto :goto_0

    .restart local v4    # "isMorning":Z
    :cond_2
    move-object v0, v5

    .line 105
    goto :goto_1
.end method

.method private updateWidget(Landroid/content/Context;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 66
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040037

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 68
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcn/nubia/deskclock/ForceTouchWidget$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcn/nubia/deskclock/ForceTouchWidget$1;-><init>(Lcn/nubia/deskclock/ForceTouchWidget;Landroid/content/Context;Landroid/widget/RemoteViews;[I)V

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 58
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ForceTouchWidget;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 50
    .local v0, "appWidgetIds":[I
    array-length v1, v0

    if-lez v1, :cond_0

    .line 51
    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ForceTouchWidget;->updateWidget(Landroid/content/Context;[I)V

    .line 53
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 40
    array-length v0, p3

    if-lez v0, :cond_0

    .line 41
    invoke-direct {p0, p1, p3}, Lcn/nubia/deskclock/ForceTouchWidget;->updateWidget(Landroid/content/Context;[I)V

    .line 43
    :cond_0
    return-void
.end method
