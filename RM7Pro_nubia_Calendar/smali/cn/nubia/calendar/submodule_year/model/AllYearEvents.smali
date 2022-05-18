.class public Lcn/nubia/calendar/submodule_year/model/AllYearEvents;
.super Ljava/lang/Object;
.source "AllYearEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;
    }
.end annotation


# static fields
.field public static final INDEX_INSTANCE_ROW_ID:I = 0x0

.field public static final INDEX_TINSTANCE_END_DAY:I = 0x3

.field public static final INDEX_TINSTANCE_EVENT_ID:I = 0x1

.field public static final INDEX_TINSTANCE_START_DAY:I = 0x2

.field private static final INSTANCE_SORT_ORDER:Ljava/lang/String; = "startDay ASC"

.field private static final PROJECTION_INSTANCE:[Ljava/lang/String;

.field public static final QUERY_BEGIN:I = 0x0

.field public static final QUERY_COMPLETE:I = 0x1

.field private static mInstance:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;


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

.field private mQueryCompleteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/submodule_year/model/IQueryEventComplete;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

.field private mQueryYears:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
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

    sput-object v0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->PROJECTION_INSTANCE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;-><init>(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryHandler:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mEventStartDayLists:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryYears:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryCompleteList:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/model/AllYearEvents;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 21
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mEventStartDayLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryCompleteList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryYears:Ljava/util/HashMap;

    return-object v0
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 128
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 129
    .local v1, "rootUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    .local v0, "builder":Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 131
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private clearYearEvents(II)V
    .locals 8
    .param p1, "startDay"    # I
    .param p2, "endDay"    # I

    .prologue
    .line 104
    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mEventStartDayLists:Ljava/util/HashMap;

    .line 105
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 106
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 109
    .local v4, "key":J
    int-to-long v6, p1

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    int-to-long v6, p2

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    .end local v4    # "key":J
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_year/model/AllYearEvents;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mInstance:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mInstance:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    .line 50
    :cond_0
    sget-object v0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mInstance:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    return-object v0
.end method


# virtual methods
.method public destoryData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    sput-object v1, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mInstance:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    .line 204
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryHandler:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryHandler:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    :cond_0
    return-void
.end method

.method public hasEventsByDay(J)Z
    .locals 3
    .param p1, "julianDay"    # J

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mEventStartDayLists:Ljava/util/HashMap;

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

.method public isQuerying(I)Z
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryYears:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public queryEventsAllYear(ILcn/nubia/calendar/submodule_year/model/IQueryEventComplete;Landroid/view/View;)V
    .locals 12
    .param p1, "year"    # I
    .param p2, "queryComplete"    # Lcn/nubia/calendar/submodule_year/model/IQueryEventComplete;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryCompleteList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryYears:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 73
    .local v11, "time":Landroid/text/format/Time;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1, p1}, Landroid/text/format/Time;->set(III)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 75
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v6, v11, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 77
    .local v10, "startDay":I
    const/4 v0, 0x0

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v11, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 79
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v6, v11, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 81
    .local v9, "endDay":I
    invoke-direct {p0, v10, v9}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->clearYearEvents(II)V

    .line 84
    const/4 v5, 0x0

    .line 90
    .local v5, "condition":Ljava/lang/String;
    :try_start_0
    const-string v5, "visible=1"

    .line 93
    invoke-direct {p0, v10, v9}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 95
    .local v3, "queryUri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->mQueryHandler:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->PROJECTION_INSTANCE:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "startDay ASC"

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v3    # "queryUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v8

    .line 98
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
