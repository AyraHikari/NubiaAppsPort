.class public Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;
.super Ljava/lang/Object;
.source "MonthViewAgendaHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;
    }
.end annotation


# static fields
.field public static final INDEX_INSTANCE_ROW_ID:I = 0x0

.field public static final INDEX_TINSTANCE_END_DAY:I = 0x3

.field public static final INDEX_TINSTANCE_EVENT_ID:I = 0x1

.field public static final INDEX_TINSTANCE_START_DAY:I = 0x2

.field private static final INSTANCE_SORT_ORDER:Ljava/lang/String; = "startDay ASC"

.field private static final PROJECTION_INSTANCE:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventStartDayLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

.field private mQueryComplete:Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;

.field private mQueryHandler:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "endDay"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->PROJECTION_INSTANCE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v0}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 48
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;-><init>(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mQueryHandler:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mEventStartDayLists:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 19
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mEventStartDayLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;)Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mQueryComplete:Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;

    return-object v0
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 83
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 84
    .local v1, "rootUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 85
    .local v0, "builder":Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 86
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getmEventStartDayLists()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mEventStartDayLists:Ljava/util/HashMap;

    return-object v0
.end method

.method public hasEventsByDay(J)Z
    .locals 3
    .param p1, "julianDay"    # J

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mEventStartDayLists:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryEventsMonth(IIILcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;)V
    .locals 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "monthday"    # I
    .param p4, "queryComplete"    # Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;

    .prologue
    .line 59
    move-object/from16 v0, p4

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mQueryComplete:Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;

    .line 60
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 61
    .local v13, "time":Landroid/text/format/Time;
    const/4 v2, 0x1

    move/from16 v0, p2

    invoke-virtual {v13, v2, v0, p1}, Landroid/text/format/Time;->set(III)V

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v8, v13, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 64
    .local v12, "startDay":I
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v2, v13}, Lcn/nubia/calendar/util/MonthUtil;->getDaysOfCurrentMonth(Landroid/text/format/Time;)I

    move-result v2

    move/from16 v0, p2

    invoke-virtual {v13, v2, v0, p1}, Landroid/text/format/Time;->set(III)V

    .line 65
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v8, v13, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 69
    .local v11, "endDay":I
    const/4 v7, 0x0

    .line 70
    .local v7, "condition":Ljava/lang/String;
    :try_start_0
    const-string v7, "visible=1"

    .line 71
    invoke-direct {p0, v12, v11}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v5

    .line 73
    .local v5, "queryUri":Landroid/net/Uri;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mQueryHandler:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->PROJECTION_INSTANCE:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "startDay ASC"

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v5    # "queryUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v10

    .line 78
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setmEventStartDayLists(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "mEventStartDayLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->mEventStartDayLists:Ljava/util/HashMap;

    .line 33
    return-void
.end method
