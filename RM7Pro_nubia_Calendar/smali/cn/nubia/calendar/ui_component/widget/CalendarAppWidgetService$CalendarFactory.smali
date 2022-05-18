.class public Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;
.super Landroid/content/BroadcastReceiver;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGD:Z

.field private static final currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile mLock:Ljava/lang/Integer;

.field private static mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

.field private static sLastUpdateTime:J


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private mAllDayColor:I

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mDeclinedColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastLock:I

.field private mLoader:Landroid/content/CursorLoader;

.field private mResources:Landroid/content/res/Resources;

.field private mStandardColor:I

.field private final mTimezoneChanged:Ljava/lang/Runnable;

.field private mWhenClolr:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 125
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->executor:Ljava/util/concurrent/ExecutorService;

    .line 138
    new-instance v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 200
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->executor:Ljava/util/concurrent/ExecutorService;

    .line 138
    new-instance v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 177
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 178
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 181
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->initColor()V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    .prologue
    .line 108
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 108
    sput-object p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    .prologue
    .line 108
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->queryForSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/BroadcastReceiver$PendingResult;
    .param p3, "x3"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->createUpdateLoaderRunnable(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method protected static buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 467
    new-instance v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    invoke-direct {v0, p0, p2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 469
    .local v0, "model":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;
    invoke-virtual {v0, p1, p2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->buildFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 470
    return-object v0
.end method

.method private calculateUpdateTime(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;JLjava/lang/String;)J
    .locals 10
    .param p1, "model"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;
    .param p2, "now"    # J
    .param p4, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-static {p4}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->getNextMidnightTimeMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 480
    .local v4, "minUpdateTime":J
    iget-object v3, p1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;

    .line 483
    .local v2, "event":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;
    iget-wide v6, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 484
    .local v6, "start":J
    iget-wide v0, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 488
    .local v0, "end":J
    cmp-long v8, p2, v6

    if-gez v8, :cond_1

    .line 489
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 490
    :cond_1
    cmp-long v8, p2, v0

    if-gez v8, :cond_0

    .line 491
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 494
    .end local v0    # "end":J
    .end local v2    # "event":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;
    .end local v6    # "start":J
    :cond_2
    return-wide v4
.end method

.method private createLoaderUri()Landroid/net/Uri;
    .locals 12

    .prologue
    const-wide/32 v10, 0x5265c00

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 456
    .local v4, "now":J
    sub-long v0, v4, v10

    .line 457
    .local v0, "begin":J
    const-wide/32 v8, 0x240c8400

    add-long/2addr v8, v4

    add-long v2, v8, v10

    .line 459
    .local v2, "end":J
    sget-object v7, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 459
    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 461
    .local v6, "uri":Landroid/net/Uri;
    return-object v6
.end method

.method private createUpdateLoaderRunnable(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/content/BroadcastReceiver$PendingResult;
    .param p3, "version"    # I

    .prologue
    .line 153
    new-instance v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;-><init>(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;ILjava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-object v0
.end method

.method private static getNextMidnightTimeMillis(Ljava/lang/String;)J
    .locals 8
    .param p0, "timezone"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 498
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 499
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 500
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 501
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 502
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 503
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 504
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 506
    .local v0, "midnightDeviceTz":J
    iput-object p0, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 507
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 508
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 509
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 510
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 511
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 512
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 514
    .local v2, "midnightHomeTz":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method private initColor()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    .line 187
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0015

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    .line 189
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d00b3

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    .line 191
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0014

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mAllDayColor:I

    .line 193
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0016

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mWhenClolr:I

    .line 195
    return-void
.end method

.method private queryForSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "visible=1"

    goto :goto_0
.end method

.method static updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V
    .locals 0
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "id"    # I
    .param p2, "visibility"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 520
    if-nez p2, :cond_0

    .line 521
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 523
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 377
    sget-object v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    if-nez v1, :cond_0

    .line 380
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/16 v12, 0x20

    .line 385
    sget-object v6, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    if-eqz v6, :cond_0

    sget-object v6, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 386
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 387
    :cond_0
    const-wide/16 v4, 0x0

    .line 400
    :goto_0
    return-wide v4

    .line 389
    :cond_1
    sget-object v6, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;

    .line 390
    .local v1, "rowInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;
    iget v6, v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v6, :cond_2

    .line 391
    iget v6, v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    int-to-long v4, v6

    goto :goto_0

    .line 393
    :cond_2
    sget-object v6, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    iget v7, v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;

    .line 394
    .local v0, "eventInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;
    const-wide/16 v2, 0x1f

    .line 395
    .local v2, "prime":J
    const-wide/16 v4, 0x1

    .line 396
    .local v4, "result":J
    mul-long v6, v2, v4

    iget-wide v8, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v10, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 398
    mul-long v6, v2, v4

    iget-wide v8, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v10, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 400
    goto :goto_0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030030

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 227
    .local v0, "views":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 22
    .param p1, "position"    # I

    .prologue
    .line 233
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->getCount()I

    move-result v3

    move/from16 v0, p1

    if-lt v0, v3, :cond_1

    .line 234
    :cond_0
    const/16 v21, 0x0

    .line 364
    :goto_0
    return-object v21

    .line 237
    :cond_1
    sget-object v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    if-nez v3, :cond_2

    .line 238
    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030030

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 240
    .local v21, "views":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 241
    invoke-static/range {v3 .. v10}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    move-result-object v14

    .line 242
    .local v14, "intent":Landroid/content/Intent;
    const v3, 0x7f1100b6

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v14}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v21    # "views":Landroid/widget/RemoteViews;
    :cond_2
    sget-object v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v3, v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v3, v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    :cond_3
    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030031

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 249
    .restart local v21    # "views":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 250
    invoke-static/range {v3 .. v10}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    move-result-object v14

    .line 251
    .restart local v14    # "intent":Landroid/content/Intent;
    const v3, 0x7f1100b8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v14}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0

    .line 255
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v21    # "views":Landroid/widget/RemoteViews;
    :cond_4
    sget-object v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v3, v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;

    .line 256
    .local v18, "rowInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;
    move-object/from16 v0, v18

    iget v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v3, :cond_5

    .line 257
    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03002f

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 259
    .restart local v21    # "views":Landroid/widget/RemoteViews;
    sget-object v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v3, v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object/from16 v0, v18

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;

    .line 261
    .local v2, "dayInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;
    const v3, 0x7f11007c

    const/4 v4, 0x0

    iget-object v5, v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4, v5}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v2    # "dayInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;
    .end local v21    # "views":Landroid/widget/RemoteViews;
    :cond_5
    sget-object v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    iget-object v3, v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object/from16 v0, v18

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    .line 267
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;

    .line 268
    .local v12, "eventInfo":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;
    iget-object v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 269
    iget-object v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    .line 270
    invoke-static {v3}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    .line 272
    :cond_6
    iget-boolean v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v3, :cond_a

    .line 273
    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300c2

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 279
    .restart local v21    # "views":Landroid/widget/RemoteViews;
    :goto_1
    iget v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->color:I

    .line 280
    invoke-static {v3}, Lcn/nubia/calendar/util/Utils;->getDisplayColorFromColor(I)I

    move-result v11

    .line 282
    .local v11, "displayColor":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 283
    .local v16, "now":J
    iget-boolean v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-nez v3, :cond_7

    iget-wide v4, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    cmp-long v3, v4, v16

    if-gtz v3, :cond_7

    iget-wide v4, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->end:J

    cmp-long v3, v16, v4

    if-gtz v3, :cond_7

    .line 292
    :cond_7
    iget-boolean v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-nez v3, :cond_8

    .line 293
    const v3, 0x7f11008b

    iget v4, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    iget-object v5, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4, v5}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 295
    const v3, 0x7f11008c

    iget v4, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    iget-object v5, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4, v5}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 298
    :cond_8
    const v3, 0x7f11004b

    iget v4, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    iget-object v5, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4, v5}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 301
    const v3, 0x7f110088

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 303
    iget v0, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    move/from16 v19, v0

    .line 304
    .local v19, "selfAttendeeStatus":I
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->initColor()V

    .line 305
    iget-boolean v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v3, :cond_d

    .line 306
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 307
    const v3, 0x7f110088

    const-string v4, "setImageResource"

    const v5, 0x7f0202d8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 310
    const v3, 0x7f11004b

    const-string v4, "setTextColor"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 317
    :goto_2
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 319
    const v3, 0x7f110088

    const-string v4, "setColorFilter"

    .line 320
    invoke-static {v11}, Lcn/nubia/calendar/util/Utils;->getDeclinedColorFromColor(I)I

    move-result v5

    .line 319
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 351
    :goto_3
    iget-wide v6, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 352
    .local v6, "start":J
    iget-wide v8, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 354
    .local v8, "end":J
    iget-boolean v3, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v3, :cond_9

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v20

    .line 356
    .local v20, "tz":Ljava/lang/String;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 357
    .local v15, "recycle":Landroid/text/format/Time;
    move-object/from16 v0, v20

    invoke-static {v15, v6, v7, v0}, Lcn/nubia/calendar/util/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 358
    move-object/from16 v0, v20

    invoke-static {v15, v8, v9, v0}, Lcn/nubia/calendar/util/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v8

    .line 360
    .end local v15    # "recycle":Landroid/text/format/Time;
    .end local v20    # "tz":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget-wide v4, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-boolean v10, v12, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    .line 361
    invoke-static/range {v3 .. v10}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    move-result-object v13

    .line 363
    .local v13, "fillInIntent":Landroid/content/Intent;
    const v3, 0x7f1100b0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v13}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 276
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v11    # "displayColor":I
    .end local v13    # "fillInIntent":Landroid/content/Intent;
    .end local v16    # "now":J
    .end local v19    # "selfAttendeeStatus":I
    .end local v21    # "views":Landroid/widget/RemoteViews;
    :cond_a
    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300c3

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v21    # "views":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 312
    .restart local v11    # "displayColor":I
    .restart local v16    # "now":J
    .restart local v19    # "selfAttendeeStatus":I
    :cond_b
    const v3, 0x7f110088

    const-string v4, "setImageResource"

    const v5, 0x7f0202d9

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 315
    const v3, 0x7f11004b

    const-string v4, "setTextColor"

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mAllDayColor:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 322
    :cond_c
    const v3, 0x7f110088

    const-string v4, "setColorFilter"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_3

    .line 325
    :cond_d
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_e

    .line 326
    const v3, 0x7f11004b

    const-string v4, "setTextColor"

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 327
    const v3, 0x7f11008b

    const-string v4, "setTextColor"

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mWhenClolr:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 328
    const v3, 0x7f11008c

    const-string v4, "setTextColor"

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mWhenClolr:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 329
    const v3, 0x7f110088

    const-string v4, "setImageResource"

    const v5, 0x7f020087

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 335
    :cond_e
    const v3, 0x7f11004b

    const-string v4, "setTextColor"

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 336
    const v3, 0x7f11008b

    const-string v4, "setTextColor"

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mWhenClolr:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 337
    const v3, 0x7f11008c

    const-string v4, "setTextColor"

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mWhenClolr:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 338
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_f

    .line 339
    const v3, 0x7f110088

    const-string v4, "setImageResource"

    const v5, 0x7f020087

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 343
    :cond_f
    const v3, 0x7f110088

    const-string v4, "setImageResource"

    const v5, 0x7f020087

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public initLoader(Ljava/lang/String;)V
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 426
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v2

    .line 427
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    sget-object v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 100"

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    .line 429
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 430
    sget-object v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :try_start_1
    sget-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    .line 432
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    :try_start_2
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    iget v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 434
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 432
    .restart local v2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 435
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 436
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->queryForSelection()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "selection":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->initLoader(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 22
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 627
    :goto_0
    return-void

    .line 540
    :cond_0
    :try_start_0
    sget-object v17, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :try_start_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 542
    const-string v16, "Calendar"

    const-string v18, "Got a closed cursor from onLoadComplete"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    monitor-exit v17

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 624
    :catch_0
    move-exception v3

    .line 625
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    move/from16 v16, v0

    sget-object v18, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 547
    monitor-exit v17

    goto :goto_0

    .line 550
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 551
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    .line 555
    .local v11, "tz":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcn/nubia/calendar/util/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 557
    .local v5, "matrixCursor":Landroid/database/MatrixCursor;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v5, v11}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    move-result-object v16

    sput-object v16, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 562
    if-eqz v5, :cond_3

    .line 563
    :try_start_5
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    .line 566
    :cond_3
    if-eqz p2, :cond_4

    .line 567
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_4
    sget-object v16, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7, v11}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->calculateUpdateTime(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;JLjava/lang/String;)J

    move-result-wide v12

    .line 580
    .local v12, "triggerTime":J
    cmp-long v16, v12, v6

    if-gez v16, :cond_5

    .line 581
    const-string v16, "Calendar"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Encountered bad trigger time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 582
    invoke-static {v12, v13, v6, v7}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 581
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-wide/32 v18, 0x1499700

    add-long v12, v6, v18

    .line 586
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v18, "alarm"

    .line 587
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 588
    .local v2, "alertManager":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 589
    invoke-static/range {v16 .. v16}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 591
    .local v8, "pendingUpdate":Landroid/app/PendingIntent;
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 592
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 593
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 594
    .local v9, "time":Landroid/text/format/Time;
    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 596
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    sget-wide v20, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    cmp-long v16, v18, v20

    if-eqz v16, :cond_8

    .line 597
    new-instance v10, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 598
    .local v10, "time2":Landroid/text/format/Time;
    sget-wide v18, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 599
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 600
    iget v0, v9, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v16, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 602
    :cond_6
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 603
    invoke-static/range {v16 .. v16}, Lcn/nubia/calendar/util/Utils;->getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v14, "updateIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 607
    .end local v14    # "updateIntent":Landroid/content/Intent;
    :cond_7
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    sput-wide v18, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 610
    .end local v10    # "time2":Landroid/text/format/Time;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 611
    invoke-static/range {v16 .. v16}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    .line 612
    .local v15, "widgetManager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    move/from16 v16, v0

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 615
    invoke-static/range {v16 .. v16}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v16

    .line 614
    invoke-virtual/range {v15 .. v16}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 617
    .local v4, "ids":[I
    const v16, 0x7f1100b4

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 623
    .end local v4    # "ids":[I
    :goto_1
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 558
    .end local v2    # "alertManager":Landroid/app/AlarmManager;
    .end local v8    # "pendingUpdate":Landroid/app/PendingIntent;
    .end local v9    # "time":Landroid/text/format/Time;
    .end local v12    # "triggerTime":J
    .end local v15    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :catch_1
    move-exception v3

    .line 559
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 562
    if-eqz v5, :cond_9

    .line 563
    :try_start_7
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    .line 566
    :cond_9
    if-eqz p2, :cond_a

    .line 567
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    :cond_a
    monitor-exit v17

    goto/16 :goto_0

    .line 562
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v16

    if-eqz v5, :cond_b

    .line 563
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    .line 566
    :cond_b
    if-eqz p2, :cond_c

    .line 567
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_c
    throw v16

    .line 620
    .restart local v2    # "alertManager":Landroid/app/AlarmManager;
    .restart local v8    # "pendingUpdate":Landroid/app/PendingIntent;
    .restart local v9    # "time":Landroid/text/format/Time;
    .restart local v12    # "triggerTime":J
    .restart local v15    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    move/from16 v16, v0

    const v18, 0x7f1100b4

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 655
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {p1, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    :goto_0
    return-void

    .line 659
    :cond_0
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 678
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 679
    .local v0, "result":Landroid/content/BroadcastReceiver$PendingResult;
    const-string v1, "CalendarAppWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread main id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;

    invoke-direct {v2, p0, v0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;-><init>(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public stopWidgetService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 642
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 644
    return-void
.end method

.method public stopWidgetServicePowerOn(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 631
    .line 632
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 633
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 636
    .local v2, "num":[I
    array-length v3, v2

    if-nez v3, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->stopWidgetService(Landroid/content/Context;)V

    .line 639
    :cond_0
    return-void
.end method
