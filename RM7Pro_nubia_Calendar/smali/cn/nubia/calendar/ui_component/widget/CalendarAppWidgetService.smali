.class public Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "CalendarAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;
    }
.end annotation


# static fields
.field static final EVENT_MAX_COUNT:I = 0x64

.field static final EVENT_MIN_COUNT:I = 0x14

.field static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_SELECTION:Ljava/lang/String; = "visible=1"

.field private static final EVENT_SELECTION_HIDE_DECLINED:Ljava/lang/String; = "visible=1 AND selfAttendeeStatus!=2"

.field private static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 100"

.field static final INDEX_ALL_DAY:I = 0x0

.field static final INDEX_BEGIN:I = 0x1

.field static final INDEX_COLOR:I = 0x8

.field static final INDEX_END:I = 0x2

.field static final INDEX_END_DAY:I = 0x7

.field static final INDEX_EVENT_ID:I = 0x5

.field static final INDEX_EVENT_LOCATION:I = 0x4

.field static final INDEX_SELF_ATTENDEE_STATUS:I = 0x9

.field static final INDEX_START_DAY:I = 0x6

.field static final INDEX_TITLE:I = 0x3

.field static final MAX_DAYS:I = 0x7

.field private static final SEARCH_DURATION:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static final UPDATE_TIME_NO_EVENTS:J = 0x1499700L

.field static final WIDGET_UPDATE_THROTTLE:I = 0x1f4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method

.method static formatDebugTime(JJ)Ljava/lang/String;
    .locals 10
    .param p0, "unixTime"    # J
    .param p2, "now"    # J

    .prologue
    const-wide/32 v4, 0xea60

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 725
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 726
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 728
    sub-long v0, p0, p2

    .line 729
    .local v0, "delta":J
    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 730
    div-long/2addr v0, v4

    .line 731
    const-string v3, "[%d] %s (%+d mins)"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    .line 732
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    .line 731
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 735
    :goto_0
    return-object v3

    .line 734
    :cond_0
    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 735
    const-string v3, "[%d] %s (%+d secs)"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    .line 736
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    .line 735
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    new-instance v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
