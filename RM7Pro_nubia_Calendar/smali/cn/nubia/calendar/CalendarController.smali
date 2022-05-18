.class public Lcn/nubia/calendar/CalendarController;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/CalendarController$EventHandler;,
        Lcn/nubia/calendar/CalendarController$EventInfo;,
        Lcn/nubia/calendar/CalendarController$ViewType;,
        Lcn/nubia/calendar/CalendarController$EventType;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_DEFAULT_TIME:Ljava/lang/String; = "key_default_time"

.field private static final DEBUG:Z = false

.field public static final EVENT_EDIT_ON_LAUNCH:Ljava/lang/String; = "editMode"

.field public static final EXTRA_CREATE_ALL_DAY:J = 0x10L

.field public static final EXTRA_GOTO_BACK_TO_PREVIOUS:J = 0x4L

.field public static final EXTRA_GOTO_DATE:J = 0x1L

.field public static final EXTRA_GOTO_TIME:J = 0x2L

.field public static final EXTRA_GOTO_TODAY:J = 0x8L

.field public static final MAX_CALENDAR_WEEK:I = 0xda9

.field public static final MAX_CALENDAR_YEAR:I = 0x7f4

.field public static final MIN_CALENDAR_WEEK:I = 0x0

.field public static final MIN_CALENDAR_YEAR:I = 0x7b2

.field private static final REFRESH_ARGS:[Ljava/lang/String;

.field private static final REFRESH_ORDER:Ljava/lang/String; = "account_name,account_type"

.field private static final REFRESH_SELECTION:Ljava/lang/String; = "sync_events=?"

.field private static final TAG:Ljava/lang/String; = "CalendarController"

.field private static instances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcn/nubia/calendar/CalendarController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mDateFlags:J

.field private mDetailViewType:I

.field private volatile mDispatchInProgressCounter:I

.field private mEventId:J

.field private mFirstEventHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousViewType:I

.field public final mTime:Landroid/text/format/Time;

.field private final mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mToBeAddedFirstEventHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mToBeRemovedEventHandlers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateTimezone:Ljava/lang/Runnable;

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/CalendarController;->REFRESH_ARGS:[Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcn/nubia/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 90
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    .line 93
    iput v2, p0, Lcn/nubia/calendar/CalendarController;->mViewType:I

    .line 94
    iput v2, p0, Lcn/nubia/calendar/CalendarController;->mDetailViewType:I

    .line 95
    iput v2, p0, Lcn/nubia/calendar/CalendarController;->mPreviousViewType:I

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/calendar/CalendarController;->mEventId:J

    .line 97
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/calendar/CalendarController;->mDateFlags:J

    .line 99
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarController;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/calendar/CalendarController;->mCurrentTime:J

    .line 109
    new-instance v0, Lcn/nubia/calendar/CalendarController$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/CalendarController$1;-><init>(Lcn/nubia/calendar/CalendarController;)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    .line 350
    iput-object p1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    .line 351
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 352
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 353
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v1, "preferred_detailedView"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/CalendarController;->mDetailViewType:I

    .line 358
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/CalendarController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/CalendarController;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private eventInfoToString(Lcn/nubia/calendar/CalendarController$EventInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "eventInfo"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 903
    const-string v1, "Unknown"

    .line 905
    .local v1, "tmp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 907
    const-string v1, "Go to time/event"

    .line 931
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v2, ": id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 934
    const-string v2, ", selected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    iget-object v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 936
    const-string v2, ", start="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    iget-object v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 938
    const-string v2, ", end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    iget-object v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 940
    const-string v2, ", viewType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    iget v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 942
    const-string v2, ", x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    iget v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 944
    const-string v2, ", y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    iget v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 908
    :cond_1
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 909
    const-string v1, "New event"

    goto :goto_0

    .line 910
    :cond_2
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 911
    const-string v1, "View event"

    goto :goto_0

    .line 912
    :cond_3
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 913
    const-string v1, "View details"

    goto :goto_0

    .line 914
    :cond_4
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    .line 915
    const-string v1, "Edit event"

    goto :goto_0

    .line 916
    :cond_5
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    .line 917
    const-string v1, "Delete event"

    goto/16 :goto_0

    .line 918
    :cond_6
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x800

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7

    .line 919
    const-string v1, "Launch select visible calendars"

    goto/16 :goto_0

    .line 920
    :cond_7
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 921
    const-string v1, "Launch settings"

    goto/16 :goto_0

    .line 922
    :cond_8
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    .line 923
    const-string v1, "Refresh events"

    goto/16 :goto_0

    .line 924
    :cond_9
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_a

    .line 925
    const-string v1, "Search"

    goto/16 :goto_0

    .line 926
    :cond_a
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_b

    .line 927
    const-string v1, "Gone home"

    goto/16 :goto_0

    .line 928
    :cond_b
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 929
    const-string v1, "Update title"

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    sget-object v2, Lcn/nubia/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 315
    :try_start_0
    sget-object v1, Lcn/nubia/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/CalendarController;

    .line 316
    .local v0, "controller":Lcn/nubia/calendar/CalendarController;
    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcn/nubia/calendar/CalendarController;

    .end local v0    # "controller":Lcn/nubia/calendar/CalendarController;
    invoke-direct {v0, p0}, Lcn/nubia/calendar/CalendarController;-><init>(Landroid/content/Context;)V

    .line 318
    .restart local v0    # "controller":Lcn/nubia/calendar/CalendarController;
    sget-object v1, Lcn/nubia/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    monitor-exit v2

    return-object v0

    .line 321
    .end local v0    # "controller":Lcn/nubia/calendar/CalendarController;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private launchAgends()V
    .locals 4

    .prologue
    .line 789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 791
    const-string v1, "key_default_time"

    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarController;->getmCurrentTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 792
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 794
    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 795
    return-void
.end method

.method private launchCreateEvent(JJZ)V
    .locals 5
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "allDayEvent"    # Z

    .prologue
    .line 799
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 801
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 802
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 803
    const-string v1, "allDay"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 804
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcn/nubia/calendar/CalendarController;->mEventId:J

    .line 805
    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 806
    return-void
.end method

.method private launchDeleteEvent(JJJ)V
    .locals 9
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J

    .prologue
    .line 854
    const/4 v1, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcn/nubia/calendar/CalendarController;->launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V

    .line 855
    return-void
.end method

.method private launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V
    .locals 10
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "deleteWhich"    # I

    .prologue
    .line 859
    new-instance v1, Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, p1, v0}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .local v1, "deleteEventHelper":Lcn/nubia/calendar/DeleteEventHelper;
    move-wide v2, p4

    move-wide/from16 v4, p6

    move-wide v6, p2

    move/from16 v8, p8

    .line 861
    invoke-virtual/range {v1 .. v8}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 862
    return-void

    .line 859
    .end local v1    # "deleteEventHelper":Lcn/nubia/calendar/DeleteEventHelper;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchEditEvent(JJJZ)V
    .locals 5
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "edit"    # Z

    .prologue
    .line 835
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 836
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 837
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "beginTime"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 838
    const-string v2, "endTime"

    invoke-virtual {v0, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 839
    iget-object v2, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 840
    const-string v2, "editMode"

    invoke-virtual {v0, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    iput-wide p1, p0, Lcn/nubia/calendar/CalendarController;->mEventId:J

    .line 842
    iget-object v2, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 843
    return-void
.end method

.method private launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "eventId"    # J
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 866
    iget-object v3, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v4, "search"

    .line 867
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 869
    .local v1, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v1, p4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 870
    .local v2, "searchableInfo":Landroid/app/SearchableInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "query"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 873
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 874
    iget-object v3, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 875
    return-void
.end method

.method private launchSelectVisibleCalendars()V
    .locals 3

    .prologue
    .line 773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 775
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 777
    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 778
    return-void
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 783
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 785
    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 786
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    sget-object v0, Lcn/nubia/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method public static removeInstanceForAgendaListActivity(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    sget-object v3, Lcn/nubia/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    if-nez v3, :cond_1

    .line 347
    :cond_0
    return-void

    .line 339
    :cond_1
    sget-object v3, Lcn/nubia/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 340
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/Context;Lcn/nubia/calendar/CalendarController;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 342
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Lcn/nubia/calendar/CalendarController;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 343
    .local v0, "context1":Landroid/content/Context;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public deregisterAllEventHandlers()V
    .locals 2

    .prologue
    .line 711
    monitor-enter p0

    .line 712
    :try_start_0
    iget v0, p0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 720
    :goto_0
    monitor-exit p0

    .line 721
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deregisterEventHandler(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 695
    monitor-enter p0

    .line 696
    :try_start_0
    iget v0, p0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_1

    .line 699
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_0
    :goto_0
    monitor-exit p0

    .line 708
    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filterBroadcasts(Ljava/lang/Object;J)V
    .locals 2
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventTypes"    # J

    .prologue
    .line 725
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    return-void
.end method

.method public getCurrentTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public getDateFlags()J
    .locals 2

    .prologue
    .line 740
    iget-wide v0, p0, Lcn/nubia/calendar/CalendarController;->mDateFlags:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 761
    iget-wide v0, p0, Lcn/nubia/calendar/CalendarController;->mEventId:J

    return-wide v0
.end method

.method public getPreviousViewType()I
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lcn/nubia/calendar/CalendarController;->mPreviousViewType:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcn/nubia/calendar/CalendarController;->mViewType:I

    return v0
.end method

.method public getmCurrentTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcn/nubia/calendar/CalendarController;->mCurrentTime:J

    return-wide v0
.end method

.method public launchViewEvent(JJJI)V
    .locals 5
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "response"    # I

    .prologue
    .line 810
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 812
    .local v0, "eventUri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 813
    iget-object v2, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/calendar/HomeActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 814
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 815
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 816
    const-string v2, "attendeeStatus"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 818
    iget-object v2, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 819
    return-void
.end method

.method public launchViewEventFromAgendaList(JJJI)V
    .locals 5
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "response"    # I

    .prologue
    .line 823
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 825
    .local v0, "eventUri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 826
    iget-object v2, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/calendar/EventInfoActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 827
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 828
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 829
    const-string v2, "attendeeStatus"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    iget-object v2, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 831
    return-void
.end method

.method public refreshCalendars()V
    .locals 6

    .prologue
    .line 881
    iget-object v4, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 884
    .local v0, "accounts":[Landroid/accounts/Account;
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "authority":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 886
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 887
    .local v2, "extras":Landroid/os/Bundle;
    const-string v4, "force"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 888
    aget-object v4, v0, v3

    invoke-static {v4, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 885
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 890
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public registerEventHandler(ILcn/nubia/calendar/CalendarController$EventHandler;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "eventHandler"    # Lcn/nubia/calendar/CalendarController$EventHandler;

    .prologue
    .line 672
    monitor-enter p0

    .line 673
    :try_start_0
    iget v0, p0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :goto_0
    monitor-exit p0

    .line 679
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerFirstEventHandler(ILcn/nubia/calendar/CalendarController$EventHandler;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "eventHandler"    # Lcn/nubia/calendar/CalendarController$EventHandler;

    .prologue
    .line 682
    monitor-enter p0

    .line 683
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/CalendarController;->registerEventHandler(ILcn/nubia/calendar/CalendarController$EventHandler;)V

    .line 684
    iget v0, p0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 685
    new-instance v0, Landroid/util/Pair;

    .line 686
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    .line 691
    :goto_0
    monitor-exit p0

    .line 692
    return-void

    .line 688
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V
    .locals 14
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "start"    # Landroid/text/format/Time;
    .param p5, "end"    # Landroid/text/format/Time;
    .param p6, "eventId"    # J
    .param p8, "viewType"    # I

    .prologue
    .line 449
    const-wide/16 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v13}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 451
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 14
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "start"    # Landroid/text/format/Time;
    .param p5, "end"    # Landroid/text/format/Time;
    .param p6, "eventId"    # J
    .param p8, "viewType"    # I
    .param p9, "extraLong"    # J
    .param p11, "query"    # Ljava/lang/String;
    .param p12, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 460
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 462
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "start"    # Landroid/text/format/Time;
    .param p5, "end"    # Landroid/text/format/Time;
    .param p6, "selected"    # Landroid/text/format/Time;
    .param p7, "eventId"    # J
    .param p9, "viewType"    # I
    .param p10, "extraLong"    # J
    .param p12, "query"    # Ljava/lang/String;
    .param p13, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 467
    new-instance v0, Lcn/nubia/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/CalendarController$EventInfo;-><init>()V

    .line 468
    .local v0, "info":Lcn/nubia/calendar/CalendarController$EventInfo;
    iput-wide p2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    .line 469
    iput-object p4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 470
    iput-object p6, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 471
    iput-object p5, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 472
    iput-wide p7, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    .line 473
    iput p9, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    .line 474
    iput-object p12, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 475
    iput-object p13, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    .line 476
    iput-wide p10, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    .line 477
    invoke-virtual {p0, p1, v0}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcn/nubia/calendar/CalendarController$EventInfo;)V

    .line 478
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;Lcn/nubia/calendar/CalendarController$EventInfo;)V
    .locals 29
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 482
    .local v18, "filteredTypes":Ljava/lang/Long;
    if-eqz v18, :cond_1

    .line 483
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/CalendarController;->mPreviousViewType:I

    .line 487
    move-object/from16 v0, p2

    iget v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    .line 488
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/CalendarController;->mDetailViewType:I

    move-object/from16 v0, p2

    iput v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    .line 489
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/CalendarController;->mDetailViewType:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/CalendarController;->mViewType:I

    .line 501
    :cond_2
    :goto_1
    const-wide/16 v26, 0x0

    .line 502
    .local v26, "startMillis":J
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v3, :cond_3

    .line 503
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    .line 506
    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v3, :cond_d

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    .line 507
    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_d

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 531
    :goto_2
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x400

    cmp-long v3, v4, v8

    if-nez v3, :cond_4

    .line 532
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/nubia/calendar/CalendarController;->mDateFlags:J

    .line 535
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v3, v26, v4

    if-nez v3, :cond_5

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iput-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 539
    :cond_5
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0xd

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    .line 540
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_10

    .line 541
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/nubia/calendar/CalendarController;->mEventId:J

    .line 547
    :cond_6
    :goto_3
    const/16 v20, 0x0

    .line 548
    .local v20, "handled":Z
    monitor-enter p0

    .line 549
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v3, :cond_7

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcn/nubia/calendar/CalendarController$EventHandler;

    .line 554
    .local v21, "handler":Lcn/nubia/calendar/CalendarController$EventHandler;
    if-eqz v21, :cond_7

    .line 555
    invoke-interface/range {v21 .. v21}, Lcn/nubia/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 557
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 558
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcn/nubia/calendar/CalendarController$EventHandler;->handleEvent(Lcn/nubia/calendar/CalendarController$EventInfo;)V

    .line 559
    const/16 v20, 0x1

    .line 562
    .end local v21    # "handler":Lcn/nubia/calendar/CalendarController$EventHandler;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    .line 563
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;>;"
    :cond_8
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 564
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 565
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 566
    .local v23, "key":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 567
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, v23

    if-eq v0, v3, :cond_8

    .line 571
    :cond_9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/calendar/CalendarController$EventHandler;

    .line 572
    .local v17, "eventHandler":Lcn/nubia/calendar/CalendarController$EventHandler;
    if-eqz v17, :cond_8

    .line 573
    invoke-interface/range {v17 .. v17}, Lcn/nubia/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_8

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 577
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcn/nubia/calendar/CalendarController$EventHandler;->handleEvent(Lcn/nubia/calendar/CalendarController$EventInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    const/16 v20, 0x1

    goto :goto_4

    .line 490
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;"
    .end local v17    # "eventHandler":Lcn/nubia/calendar/CalendarController$EventHandler;
    .end local v20    # "handled":Z
    .end local v22    # "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;>;"
    .end local v23    # "key":I
    .end local v26    # "startMillis":J
    :cond_a
    move-object/from16 v0, p2

    iget v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    if-nez v3, :cond_b

    .line 491
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p2

    iput v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    goto/16 :goto_1

    .line 492
    :cond_b
    move-object/from16 v0, p2

    iget v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    .line 493
    move-object/from16 v0, p2

    iget v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/CalendarController;->mViewType:I

    .line 495
    move-object/from16 v0, p2

    iget v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p2

    iget v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    .line 497
    invoke-static {}, Lcn/nubia/calendar/util/Utils;->getAllowWeekForDetailView()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 498
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/CalendarController;->mDetailViewType:I

    goto/16 :goto_1

    .line 514
    .restart local v26    # "startMillis":J
    :cond_d
    const-wide/16 v4, 0x0

    cmp-long v3, v26, v4

    if-eqz v3, :cond_f

    .line 518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v24

    .line 519
    .local v24, "mtimeMillis":J
    cmp-long v3, v24, v26

    if-ltz v3, :cond_e

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v3, :cond_f

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    .line 521
    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    cmp-long v3, v24, v4

    if-lez v3, :cond_f

    .line 525
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 528
    .end local v24    # "mtimeMillis":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iput-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto/16 :goto_2

    .line 543
    :cond_10
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/nubia/calendar/CalendarController;->mEventId:J

    goto/16 :goto_3

    .line 582
    .restart local v20    # "handled":Z
    .restart local v22    # "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;>;"
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 583
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-nez v3, :cond_16

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 586
    .local v28, "zombie":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 588
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 589
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_5

    .line 606
    .end local v22    # "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;>;"
    .end local v28    # "zombie":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 592
    .restart local v22    # "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;>;"
    :cond_13
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 595
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    if-eqz v3, :cond_15

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/nubia/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    .line 597
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    .line 599
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    .line 601
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 600
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 602
    .local v19, "food":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 606
    .end local v19    # "food":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/calendar/CalendarController$EventHandler;>;"
    :cond_16
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    if-nez v20, :cond_0

    .line 609
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x1000

    cmp-long v3, v4, v8

    if-nez v3, :cond_17

    .line 610
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/CalendarController;->launchAgends()V

    goto/16 :goto_0

    .line 615
    :cond_17
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x40

    cmp-long v3, v4, v8

    if-nez v3, :cond_18

    .line 616
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/CalendarController;->launchSettings()V

    goto/16 :goto_0

    .line 621
    :cond_18
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x800

    cmp-long v3, v4, v8

    if-nez v3, :cond_19

    .line 622
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/CalendarController;->launchSelectVisibleCalendars()V

    goto/16 :goto_0

    .line 627
    :cond_19
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v3, :cond_1a

    const-wide/16 v6, -0x1

    .line 629
    .local v6, "endTime":J
    :goto_7
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x1

    cmp-long v3, v4, v8

    if-nez v3, :cond_1c

    .line 630
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x10

    cmp-long v3, v8, v10

    if-nez v3, :cond_1b

    const/4 v8, 0x1

    :goto_8
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcn/nubia/calendar/CalendarController;->launchCreateEvent(JJZ)V

    goto/16 :goto_0

    .line 627
    .end local v6    # "endTime":J
    :cond_1a
    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    .line 628
    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    goto :goto_7

    .line 630
    .restart local v6    # "endTime":J
    :cond_1b
    const/4 v8, 0x0

    goto :goto_8

    .line 633
    :cond_1c
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x2

    cmp-long v3, v4, v8

    if-nez v3, :cond_1e

    .line 634
    move-object/from16 v0, p1

    instance-of v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v3, :cond_1d

    .line 635
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    .line 636
    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 637
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v16

    move-object/from16 v9, p0

    move-wide v14, v6

    .line 635
    invoke-virtual/range {v9 .. v16}, Lcn/nubia/calendar/CalendarController;->launchViewEventFromAgendaList(JJJI)V

    goto/16 :goto_0

    .line 639
    :cond_1d
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 640
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v16

    move-object/from16 v9, p0

    move-wide v14, v6

    .line 639
    invoke-virtual/range {v9 .. v16}, Lcn/nubia/calendar/CalendarController;->launchViewEvent(JJJI)V

    goto/16 :goto_0

    .line 643
    :cond_1e
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x8

    cmp-long v3, v4, v8

    if-nez v3, :cond_1f

    .line 644
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    const/16 v16, 0x1

    move-object/from16 v9, p0

    move-wide v14, v6

    invoke-direct/range {v9 .. v16}, Lcn/nubia/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_0

    .line 647
    :cond_1f
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x4

    cmp-long v3, v4, v8

    if-nez v3, :cond_20

    .line 648
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v14, v6

    invoke-direct/range {v9 .. v16}, Lcn/nubia/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_0

    .line 651
    :cond_20
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x10

    cmp-long v3, v4, v8

    if-nez v3, :cond_21

    .line 652
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    move-object/from16 v9, p0

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Lcn/nubia/calendar/CalendarController;->launchDeleteEvent(JJJ)V

    goto/16 :goto_0

    .line 655
    :cond_21
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v8, 0x100

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    .line 656
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3, v8}, Lcn/nubia/calendar/CalendarController;->launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0
.end method

.method public sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V
    .locals 16
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "eventId"    # J
    .param p6, "startMillis"    # J
    .param p8, "endMillis"    # J
    .param p10, "x"    # I
    .param p11, "y"    # I
    .param p12, "selectedMillis"    # J

    .prologue
    .line 369
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 370
    invoke-static {v0, v1}, Lcn/nubia/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v14, p12

    .line 369
    invoke-virtual/range {v0 .. v15}, Lcn/nubia/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 372
    return-void
.end method

.method public sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V
    .locals 6
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "eventId"    # J
    .param p6, "startMillis"    # J
    .param p8, "endMillis"    # J
    .param p10, "x"    # I
    .param p11, "y"    # I
    .param p12, "extraLong"    # J
    .param p14, "selectedMillis"    # J

    .prologue
    .line 401
    new-instance v2, Lcn/nubia/calendar/CalendarController$EventInfo;

    invoke-direct {v2}, Lcn/nubia/calendar/CalendarController$EventInfo;-><init>()V

    .line 402
    .local v2, "info":Lcn/nubia/calendar/CalendarController$EventInfo;
    iput-wide p2, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    .line 403
    const-wide/16 v4, 0x8

    cmp-long v3, p2, v4

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x4

    cmp-long v3, p2, v4

    if-nez v3, :cond_1

    .line 405
    :cond_0
    const/4 v3, 0x0

    iput v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    .line 407
    :cond_1
    iput-wide p4, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    .line 408
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 409
    iget-object v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v3, p6, p7}, Landroid/text/format/Time;->set(J)V

    .line 410
    const-wide/16 v4, -0x1

    cmp-long v3, p14, v4

    if-eqz v3, :cond_2

    .line 411
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 413
    iget-object v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-wide/from16 v0, p14

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 417
    :goto_0
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 418
    iget-object v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v3, p8, p9}, Landroid/text/format/Time;->set(J)V

    .line 419
    move/from16 v0, p10

    iput v0, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->x:I

    .line 420
    move/from16 v0, p11

    iput v0, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->y:I

    .line 421
    move-wide/from16 v0, p12

    iput-wide v0, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    .line 425
    invoke-virtual {p0, p1, v2}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcn/nubia/calendar/CalendarController$EventInfo;)V

    .line 426
    return-void

    .line 415
    :cond_2
    iget-object v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v3, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto :goto_0
.end method

.method public setEventId(J)V
    .locals 1
    .param p1, "eventId"    # J

    .prologue
    .line 899
    iput-wide p1, p0, Lcn/nubia/calendar/CalendarController;->mEventId:J

    .line 900
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "millisTime"    # J

    .prologue
    .line 750
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 751
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 894
    iput p1, p0, Lcn/nubia/calendar/CalendarController;->mViewType:I

    .line 895
    return-void
.end method

.method public setmCurrentTime(J)V
    .locals 1
    .param p1, "mCurrentTime"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcn/nubia/calendar/CalendarController;->mCurrentTime:J

    .line 107
    return-void
.end method

.method public timezoneUpdate()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 954
    :cond_0
    return-void
.end method
