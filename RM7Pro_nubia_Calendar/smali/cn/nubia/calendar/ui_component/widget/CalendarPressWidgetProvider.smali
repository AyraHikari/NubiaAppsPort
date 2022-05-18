.class public Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CalendarPressWidgetProvider.java"


# static fields
.field static final EXTRA_EVENT_IDS:Ljava/lang/String; = "cn.nubia.calendar.EXTRA_EVENT_IDS"

.field private static final RESHEN_PRESS_UI:I = 0xa

.field public static UPDATE_WIDGET:Ljava/lang/String;


# instance fields
.field private mAllDay:Ljava/lang/Boolean;

.field private mEndTime:Ljava/lang/Long;

.field private mEventId:Ljava/lang/Long;

.field private mInfo:Landroid/content/pm/LauncherActivityInfo;

.field private mQueryEventMessage:Ljava/lang/Runnable;

.field private mStartTime:Ljava/lang/Long;

.field private mbiticon:Landroid/graphics/Bitmap;

.field private mcontext:Landroid/content/Context;

.field private mhandler:Landroid/os/Handler;

.field private mtitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "cn.nubia.calendar.dataupdate"

    sput-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mtitle:Ljava/lang/String;

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mStartTime:Ljava/lang/Long;

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEndTime:Ljava/lang/Long;

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mAllDay:Ljava/lang/Boolean;

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEventId:Ljava/lang/Long;

    .line 52
    iput-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 53
    iput-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mbiticon:Landroid/graphics/Bitmap;

    .line 116
    new-instance v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$1;-><init>(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mhandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;-><init>(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mQueryEventMessage:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->freshenUi(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->getActivityList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->getEventMessage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 80
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 79
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-object v0
.end method

.method private freshenUi(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    const/4 v11, 0x0

    .line 197
    .local v11, "lunarFlag":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mtitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEventId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 198
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03002d

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 200
    .local v17, "views":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mtitle:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const/4 v11, 0x1

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mtitle:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mtitle:Ljava/lang/String;

    .line 204
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEndTime:Ljava/lang/Long;

    .line 205
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 206
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mAllDay:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v10, p1

    .line 204
    invoke-static/range {v2 .. v11}, Lcn/nubia/calendar/util/Utils;->getDateFormatTime(JJJLjava/lang/String;ZLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v13

    .line 209
    .local v13, "dateStartString":Ljava/lang/String;
    const v2, 0x7f1100af

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mbiticon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 211
    const v2, 0x7f1100b1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mtitle:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 212
    const v2, 0x7f1100b2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 213
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v15, "launchCalendarIntent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEventId:Ljava/lang/Long;

    .line 216
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 215
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 217
    .local v14, "eventUri":Landroid/net/Uri;
    invoke-virtual {v15, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 218
    const-string v2, "beginTime"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    const-string v2, "endTime"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEndTime:Ljava/lang/Long;

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 220
    new-instance v2, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/String;

    const-string v4, "cn.nubia.calendar.preset"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "cn.nubia.calendar.EventInfoActivity"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 224
    move-object/from16 v0, p1

    invoke-static {v0, v2, v15, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 225
    .local v16, "launchCalendarPendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f1100ae

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 228
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    .line 229
    .local v12, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    .line 230
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    move-object/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 234
    .end local v12    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v13    # "dateStartString":Ljava/lang/String;
    .end local v14    # "eventUri":Landroid/net/Uri;
    .end local v15    # "launchCalendarIntent":Landroid/content/Intent;
    .end local v16    # "launchCalendarPendingIntent":Landroid/app/PendingIntent;
    .end local v17    # "views":Landroid/widget/RemoteViews;
    :cond_1
    return-void
.end method

.method private getActivityList(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 93
    const-string v4, "launcherapps"

    .line 94
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 95
    .local v0, "Launcher":Landroid/content/pm/LauncherApps;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 96
    .local v3, "user":Landroid/os/UserHandle;
    const-string v2, "cn.nubia.calendar.preset"

    .line 97
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 100
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 102
    :cond_0
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mbiticon:Landroid/graphics/Bitmap;

    .line 103
    return-void
.end method

.method private getEventMessage(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 163
    .local v14, "startTime":J
    const-wide/32 v18, 0x5265c00

    add-long v12, v14, v18

    .line 164
    .local v12, "endTime":J
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    .line 165
    .local v16, "uriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v16

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 166
    move-object/from16 v0, v16

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 167
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 168
    .local v5, "uri":Landroid/net/Uri;
    const-string v7, "begin > ? "

    .line 169
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v4

    .line 170
    .local v8, "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v17, "event_id"

    aput-object v17, v6, v4

    const/4 v4, 0x1

    const-string v17, "begin"

    aput-object v17, v6, v4

    const/4 v4, 0x2

    const-string v17, "end"

    aput-object v17, v6, v4

    .line 172
    .local v6, "projection":[Ljava/lang/String;
    const-string v9, "begin ASC "

    .line 173
    .local v9, "sortOrdr":Ljava/lang/String;
    const/4 v10, 0x0

    .line 175
    .local v10, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 177
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEventId:Ljava/lang/Long;

    .line 179
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mStartTime:Ljava/lang/Long;

    .line 180
    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEndTime:Ljava/lang/Long;

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEventId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->getEventTitle(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    if-eqz v10, :cond_0

    .line 189
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_0
    :goto_1
    return-void

    .line 183
    :cond_1
    const-wide/16 v18, 0x0

    :try_start_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mEventId:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v11

    .line 186
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    if-eqz v10, :cond_0

    .line 189
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 188
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_2

    .line 189
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_2
    throw v4
.end method

.method private getEventTitle(Landroid/content/Context;J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 128
    const-string v8, ""

    .line 129
    .local v8, "titls":Ljava/lang/String;
    const/4 v6, 0x0

    .line 131
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 132
    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "allDay"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 143
    :cond_0
    if-eqz v6, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mtitle:Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    move v0, v9

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mAllDay:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    if-eqz v6, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    move v0, v10

    .line 139
    goto :goto_1

    .line 140
    :catch_0
    move-exception v7

    .line 141
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    if-eqz v6, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 143
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_4
    throw v0
.end method

.method private static getPendingIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 263
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 265
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private performUpdate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mcontext:Landroid/content/Context;

    .line 238
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mQueryEventMessage:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method private static setAlarm(Landroid/app/AlarmManager;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 6
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlarmManager;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x44c

    add-long/2addr v2, v4

    invoke-static {p1, p2}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->getPendingIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 257
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 247
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    :try_start_0
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;

    invoke-static {v0, p0, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->setAlarm(Landroid/app/AlarmManager;Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-static {v0, p0, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->setAlarm(Landroid/app/AlarmManager;Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const-class v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v0, p0, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->setAlarm(Landroid/app/AlarmManager;Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {p1, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    invoke-static {p1}, Lcn/nubia/calendar/util/Utils;->getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->performUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.TIME_SET"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    invoke-static {p1}, Lcn/nubia/calendar/util/Utils;->getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->performUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->performUpdate(Landroid/content/Context;)V

    .line 114
    return-void
.end method
