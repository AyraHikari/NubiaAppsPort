.class public Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;
.implements Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;,
        Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;,
        Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;,
        Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;,
        Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$SearchListCallbacks;
    }
.end annotation


# static fields
.field private static final AGENDA_SORT_ORDER:Ljava/lang/String; = "startDay ASC, begin ASC, title ASC"

.field static final BASICLOG:Z = false

.field static final DEBUGLOG:Z = false

.field private static final IDEAL_NUM_OF_EVENTS:I = 0x32

.field public static final INDEX_ACCOUNT_TYPE:I = 0x11

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_CALENDAR_DISPLAYNAME:I = 0x12

.field public static final INDEX_CALENDAR_ID:I = 0x13

.field public static final INDEX_CAN_ORGANIZER_RESPOND:I = 0xf

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_INSTANCE_ID:I = 0x0

.field public static final INDEX_ORGANIZER:I = 0xd

.field public static final INDEX_OWNER_ACCOUNT:I = 0xe

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_SELF_ATTENDEE_STATUS:I = 0xc

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_TIME_ZONE:I = 0x10

.field public static final INDEX_TITLE:I = 0x1

.field private static final MAX_NUM_OF_ADAPTERS:I = 0x5

.field private static final MAX_QUERY_DURATION:I = 0x2d0

.field private static final MIN_QUERY_DURATION:I = 0x7

.field private static final OFF_BY_ONE_BUG:I = 0x1

.field private static final PREFETCH_BOUNDARY:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final QUERY_TYPE_CLEAN:I = 0x2

.field private static final QUERY_TYPE_NEWER:I = 0x1

.field private static final QUERY_TYPE_OLDER:I = 0x0

.field private static final RETRIES_ON_NO_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private isMultiMode:Z

.field private isSelectAll:Z

.field private final mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

.field mCleanQueryInitiated:Z

.field private final mContext:Landroid/content/Context;

.field private mDateString:Ljava/lang/String;

.field private mEmptyCursorCount:I

.field private final mFormatter:Ljava/util/Formatter;

.field private mHideDeclined:Z

.field private final mIsTabletConfig:Z

.field private final mItemRightMargin:F

.field private mLastUsedInfo:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

.field mListViewScrollState:I

.field private mNewerRequests:I

.field private mNewerRequestsProcessed:I

.field private mOlderRequests:I

.field private mOlderRequestsProcessed:I

.field private mOnEventLoadFinish:Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;

.field private final mQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;

.field private final mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

.field private mSearchlayout:Landroid/view/View;

.field private mSelectedInstanceId:J

.field private final mSelectedItemBackgroundColor:I

.field private final mSelectedItemTextColor:I

.field private mSelectedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

.field private final mShowEventOnStart:Z

.field private mShuttingDown:Z

.field private mStickyHeaderSize:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private onPullRefreshLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;ZZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "agendaListView"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;
    .param p3, "showEventOnStart"    # Z
    .param p4, "isMultiMode"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 359
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->onPullRefreshLock:Z

    .line 172
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 173
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 179
    const-string v0, " "

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mDateString:Ljava/lang/String;

    .line 181
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 182
    const/16 v0, 0x2c

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 218
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 230
    iput v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mListViewScrollState:I

    .line 235
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 247
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isMultiMode:Z

    .line 249
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isSelectAll:Z

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    .line 616
    iput-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 361
    iput-boolean p4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isMultiMode:Z

    .line 363
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    .line 365
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d00b0

    .line 366
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItemBackgroundColor:I

    .line 367
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d000e

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItemTextColor:I

    .line 369
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090126

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mItemRightMargin:F

    .line 371
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0f000d

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mIsTabletConfig:Z

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    .line 374
    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .line 375
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 378
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    .line 380
    iput-boolean p3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mShowEventOnStart:Z

    .line 383
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-nez v0, :cond_0

    .line 384
    iput v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 386
    :cond_0
    iput-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    new-instance v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$2;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V

    .line 398
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 425
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Landroid/text/format/Time;J)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Landroid/text/format/Time;
    .param p2, "x2"    # J

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mShowEventOnStart:Z

    return v0
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    return-object v0
.end method

.method static synthetic access$1602(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;)Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    return-object p1
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getCursorPositionByPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Landroid/database/Cursor;IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->onPullRefreshLock:Z

    return p1
.end method

.method static synthetic access$2102(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mEmptyCursorCount:I

    return p1
.end method

.method static synthetic access$2104(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mEmptyCursorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mEmptyCursorCount:I

    return v0
.end method

.method static synthetic access$2208(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    return v0
.end method

.method static synthetic access$2308(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    return v0
.end method

.method static synthetic access$2400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;II)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isInRange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->doQuery(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Landroid/text/format/Time;J)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Landroid/text/format/Time;
    .param p2, "x2"    # J

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->findEventPositionNearestTimeDeleteOffset(Landroid/text/format/Time;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStickyHeaderSize:I

    return v0
.end method

.method static synthetic access$2800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2902(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mLastUsedInfo:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSearchlayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/commonui/widget/NubiaSearchView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->queueQuery(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->onRefreshFinish()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$802(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOnEventLoadFinish:Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;

    return-object v0
.end method

.method private buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorPosition"    # I
    .param p3, "isDayHeader"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 726
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 727
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 731
    :goto_0
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 732
    .local v0, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    .line 733
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    .line 734
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->startDay:I

    .line 735
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 736
    iput-boolean v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->hasRule:Z

    .line 741
    :goto_1
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    iput-boolean v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->allDay:Z

    .line 742
    iget-boolean v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_5

    .line 743
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 744
    .local v1, "time":Landroid/text/format/Time;
    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v4, v5, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 745
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    .line 755
    .end local v1    # "time":Landroid/text/format/Time;
    :cond_0
    :goto_3
    if-nez p3, :cond_1

    .line 756
    iget-boolean v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_6

    .line 757
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 758
    .restart local v1    # "time":Landroid/text/format/Time;
    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v4, v5, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 759
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    .line 764
    .end local v1    # "time":Landroid/text/format/Time;
    :goto_4
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->id:J

    .line 766
    :cond_1
    return-object v0

    .line 729
    .end local v0    # "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 738
    .restart local v0    # "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    :cond_3
    iput-boolean v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->hasRule:Z

    goto :goto_1

    :cond_4
    move v2, v3

    .line 741
    goto :goto_2

    .line 746
    :cond_5
    if-eqz p3, :cond_0

    .line 747
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 748
    .restart local v1    # "time":Landroid/text/format/Time;
    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 749
    iput v3, v1, Landroid/text/format/Time;->hour:I

    .line 750
    iput v3, v1, Landroid/text/format/Time;->minute:I

    .line 751
    iput v3, v1, Landroid/text/format/Time;->second:I

    .line 752
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_3

    .line 761
    .end local v1    # "time":Landroid/text/format/Time;
    :cond_6
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    goto :goto_4
.end method

.method private buildQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v0, :cond_0

    .line 923
    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    .line 927
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "visible=1"

    goto :goto_0
.end method

.method private buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 932
    if-nez p3, :cond_1

    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 934
    .local v1, "rootUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 935
    .local v0, "builder":Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 936
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 937
    if-eqz p3, :cond_0

    .line 938
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 940
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 932
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "rootUri":Landroid/net/Uri;
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private calculateQueryDuration(II)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 954
    const/16 v0, 0x2d0

    .line 955
    .local v0, "queryDuration":I
    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_0

    .line 956
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 959
    :cond_0
    const/16 v1, 0x2d0

    if-le v0, v1, :cond_2

    .line 960
    const/16 v0, 0x2d0

    .line 965
    :cond_1
    :goto_0
    return v0

    .line 961
    :cond_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 962
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private doQuery(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)V
    .locals 11
    .param p1, "queryData"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 997
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 998
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->reverseSearchEvent:Z

    if-eqz v0, :cond_3

    .line 1000
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1001
    .local v10, "start":I
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1002
    .local v8, "end":I
    invoke-direct {p0, v10, v8}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 1003
    .local v9, "queryDuration":I
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_0

    .line 1030
    :goto_0
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_2

    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-eq v0, v4, :cond_2

    .line 1038
    iput v4, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 1040
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    if-le v0, v10, :cond_1

    .line 1041
    iput v10, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1043
    :cond_1
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    if-ge v0, v8, :cond_2

    .line 1044
    iput v8, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1060
    .end local v8    # "end":I
    .end local v9    # "queryDuration":I
    .end local v10    # "start":I
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 1064
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    iget v2, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1066
    .local v3, "queryUri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;

    sget-object v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    .line 1067
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v2, p1

    .line 1066
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void

    .line 1005
    .end local v3    # "queryUri":Landroid/net/Uri;
    .restart local v8    # "end":I
    .restart local v9    # "queryDuration":I
    .restart local v10    # "start":I
    :pswitch_0
    add-int/lit8 v0, v8, 0x1

    iput v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1006
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/2addr v0, v9

    iput v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_0

    .line 1009
    :pswitch_1
    add-int/lit8 v0, v10, -0x1

    iput v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1010
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    sub-int/2addr v0, v9

    iput v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_0

    .line 1014
    .end local v8    # "end":I
    .end local v9    # "queryDuration":I
    .end local v10    # "start":I
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1015
    .restart local v10    # "start":I
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1016
    .restart local v8    # "end":I
    invoke-direct {p0, v10, v8}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 1017
    .restart local v9    # "queryDuration":I
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1019
    :pswitch_2
    add-int/lit8 v0, v10, -0x1

    iput v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1020
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    sub-int/2addr v0, v9

    iput v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_0

    .line 1023
    :pswitch_3
    add-int/lit8 v0, v8, 0x1

    iput v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1024
    iget v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/2addr v0, v9

    iput v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1017
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private findEventPositionNearestTime(Landroid/text/format/Time;J)I
    .locals 4
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "id"    # J

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 621
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v1, -0x1

    .line 622
    .local v1, "pos":I
    if-eqz v0, :cond_0

    .line 623
    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v3, p1, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v3

    add-int v1, v2, v3

    .line 625
    :cond_0
    return v1
.end method

.method private findEventPositionNearestTimeDeleteOffset(Landroid/text/format/Time;J)I
    .locals 4
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "id"    # J

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 630
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v1, -0x1

    .line 631
    .local v1, "pos":I
    if-eqz v0, :cond_0

    .line 632
    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v2, p1, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v1

    .line 634
    :cond_0
    return v1
.end method

.method private findInstanceIdFromPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1544
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1545
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1546
    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getInstanceId(I)J

    move-result-wide v2

    .line 1548
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private formatDateString(I)Ljava/lang/String;
    .locals 9
    .param p1, "julianDay"    # I

    .prologue
    const/4 v1, 0x0

    .line 1071
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v8, "time":Landroid/text/format/Time;
    invoke-virtual {v8, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1073
    invoke-virtual {v8, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1074
    .local v2, "millis":J
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1075
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    iget-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 1081
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    return-object v0
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 658
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 659
    .local v4, "tmpTime":Landroid/text/format/Time;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 660
    .local v2, "timeInMillis":J
    iget-wide v6, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 661
    .local v0, "day":I
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 662
    :try_start_0
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 663
    .local v1, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    iget v7, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v7, v0, :cond_0

    iget v7, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v0, v7, :cond_0

    .line 664
    monitor-exit v6

    .line 668
    .end local v1    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    return-object v1

    .line 667
    :cond_1
    monitor-exit v6

    .line 668
    const/4 v1, 0x0

    goto :goto_0

    .line 667
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getCursorByPosition(I)Landroid/database/Cursor;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1552
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1553
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1554
    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1556
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCursorPositionByPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1560
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1561
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1562
    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v1

    .line 1564
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static getViewTitle(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p0, "x"    # Landroid/view/View;

    .prologue
    .line 1491
    const-string v1, ""

    .line 1492
    .local v1, "title":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1493
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1494
    .local v3, "yy":Ljava/lang/Object;
    instance-of v4, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    if-eqz v4, :cond_1

    .line 1495
    check-cast v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .end local v3    # "yy":Ljava/lang/Object;
    iget-object v2, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 1496
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1497
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1506
    .end local v2    # "tv":Landroid/widget/TextView;
    .restart local v1    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1499
    .restart local v3    # "yy":Ljava/lang/Object;
    :cond_1
    if-eqz v3, :cond_0

    .line 1500
    check-cast v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;

    .end local v3    # "yy":Ljava/lang/Object;
    iget-object v0, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 1501
    .local v0, "dateView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1502
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method private isInRange(II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 944
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 945
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    monitor-exit v2

    move v0, v1

    .line 948
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 949
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 949
    goto :goto_1
.end method

.method private onRefreshFinish()V
    .locals 1

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1093
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->onRefreshComplete()V

    .line 1095
    return-void
.end method

.method private pruneAdapterInfo(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .param p1, "queryType"    # I

    .prologue
    .line 875
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 876
    const/4 v3, 0x0

    .line 877
    .local v3, "recycleMe":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_0
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 878
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_3

    .line 879
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 880
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 886
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 887
    iget-object v5, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 888
    iget-object v5, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_1
    monitor-exit v6

    move-object v4, v3

    .line 915
    .end local v3    # "recycleMe":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, "recycleMe":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1
    return-object v4

    .line 881
    .end local v4    # "recycleMe":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3    # "recycleMe":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    if-nez p1, :cond_0

    .line 882
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 884
    const/4 v5, 0x0

    iput v5, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 894
    :cond_3
    :try_start_1
    iget v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 895
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    .line 896
    const/4 v1, 0x0

    .line 899
    .local v1, "deletedRows":I
    :cond_5
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 900
    .local v2, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_6

    .line 903
    iget-object v5, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 904
    iget v5, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 905
    move-object v3, v2

    .line 907
    :cond_6
    if-nez v2, :cond_5

    .line 909
    if-eqz v3, :cond_7

    .line 910
    const/4 v5, 0x0

    iput-object v5, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 911
    iput v1, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 915
    .end local v1    # "deletedRows":I
    .end local v2    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .end local v3    # "recycleMe":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4    # "recycleMe":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_1
.end method

.method private queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "goToTime"    # Landroid/text/format/Time;
    .param p4, "searchQuery"    # Ljava/lang/String;
    .param p5, "queryType"    # I
    .param p6, "id"    # J

    .prologue
    .line 970
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 971
    .local v0, "queryData":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 972
    iput p1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    .line 973
    iput p2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    .line 974
    iput-object p4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 975
    iput-wide p6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->id:J

    .line 976
    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->queueQuery(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)Z
    .locals 4
    .param p1, "queryData"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .prologue
    .line 982
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    .line 983
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 984
    .local v1, "queuedQuery":Ljava/lang/Boolean;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 985
    .local v0, "doQueryNow":Ljava/lang/Boolean;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 986
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 987
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 988
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->doQuery(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)V

    .line 990
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 990
    .end local v0    # "doQueryNow":Ljava/lang/Boolean;
    .end local v1    # "queuedQuery":Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public OnHeaderHeightChanged(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1604
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 1605
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public cancelSelectAll()V
    .locals 3

    .prologue
    .line 1696
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isSelectAll:Z

    .line 1697
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1698
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 1699
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1700
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1701
    monitor-exit v2

    .line 1705
    :goto_0
    return-void

    .line 1703
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->cancelSelect()V

    .line 1704
    monitor-exit v2

    goto :goto_0

    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearSelectItems()V
    .locals 3

    .prologue
    .line 1684
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1685
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 1686
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1687
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1688
    monitor-exit v2

    .line 1693
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->cancelSelect()V

    .line 1691
    monitor-exit v2

    goto :goto_0

    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mShuttingDown:Z

    .line 868
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 869
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 872
    :cond_0
    return-void
.end method

.method protected getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 638
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 639
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mLastUsedInfo:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mLastUsedInfo:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v1, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v1, p1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mLastUsedInfo:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v1, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mLastUsedInfo:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v3

    if-ge p1, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mLastUsedInfo:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v2

    .line 651
    :goto_0
    return-object v0

    .line 643
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 644
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    iget v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v3, p1, :cond_1

    iget v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_1

    .line 646
    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mLastUsedInfo:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 647
    monitor-exit v2

    goto :goto_0

    .line 650
    .end local v0    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    .locals 1
    .param p1, "positionInListView"    # I

    .prologue
    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getEventByPosition(IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEventByPosition(IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    .locals 7
    .param p1, "positionInListView"    # I
    .param p2, "returnEventStartDay"    # Z

    .prologue
    const/4 v1, 0x0

    .line 689
    if-gez p1, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-object v1

    .line 693
    :cond_1
    add-int/lit8 v4, p1, -0x1

    .line 694
    .local v4, "positionInAdapter":I
    invoke-virtual {p0, v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 695
    .local v2, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_0

    .line 699
    iget-object v5, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v6, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, v4, v6

    .line 700
    invoke-virtual {v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 701
    .local v0, "cursorPosition":I
    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_0

    .line 705
    const/4 v3, 0x0

    .line 706
    .local v3, "isDayHeader":Z
    if-gez v0, :cond_2

    .line 707
    neg-int v0, v0

    .line 708
    const/4 v3, 0x1

    .line 711
    :cond_2
    iget-object v5, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 712
    iget-object v5, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v5, v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v1

    .line 714
    .local v1, "ei":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    if-nez p2, :cond_0

    if-nez v3, :cond_0

    .line 715
    iget-object v5, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v6, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, v4, v6

    .line 716
    invoke-virtual {v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v5

    iput v5, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->startDay:I

    goto :goto_0
.end method

.method public getHeaderItemsNumber(I)I
    .locals 3
    .param p1, "headerPosition"    # I

    .prologue
    const/4 v1, -0x1

    .line 1591
    if-ltz p1, :cond_0

    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v2, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return v1

    .line 1594
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1595
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1596
    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getHeaderItemsCount(I)I

    move-result v1

    goto :goto_0
.end method

.method public getHeaderPositionFromItemPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 1576
    iget-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v3, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return v2

    .line 1580
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1581
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1582
    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getHeaderPosition(I)I

    move-result v1

    .line 1583
    .local v1, "pos":I
    if-eq v1, v2, :cond_0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 469
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 470
    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 472
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 8
    .param p1, "position"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 485
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 486
    .local v1, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v1, :cond_0

    .line 487
    iget-object v4, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v5, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 489
    .local v0, "curPos":I
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    .line 502
    .end local v0    # "curPos":I
    :cond_0
    :goto_0
    return-wide v2

    .line 493
    .restart local v0    # "curPos":I
    :cond_1
    if-ltz v0, :cond_2

    .line 494
    iget-object v2, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 495
    iget-object v2, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x14

    iget-object v6, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x7

    .line 496
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    .line 495
    goto :goto_0

    .line 499
    :cond_2
    iget-object v2, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 443
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 444
    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 446
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRealCount()I
    .locals 5

    .prologue
    .line 1723
    const/4 v0, 0x0

    .line 1724
    .local v0, "count":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1725
    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1726
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1727
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 1728
    .local v1, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v3, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getRealCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 1730
    .end local v1    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :cond_0
    monitor-exit v4

    .line 1731
    return v0

    .line 1730
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRealEventCount()I
    .locals 5

    .prologue
    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    if-ge v1, v3, :cond_1

    .line 1737
    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 1738
    .local v2, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v4, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, v1, v4

    .line 1739
    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1740
    add-int/lit8 v0, v0, 0x1

    .line 1736
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1744
    .end local v2    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :cond_1
    return v0
.end method

.method public getSelectItems()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1673
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1675
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1676
    const-string v2, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AgendaWindowAdapter getSelectItems "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1677
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1676
    invoke-static {v2, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1680
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    return-object v1
.end method

.method public getSelectedEvents()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;>;"
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1715
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1716
    return-object v0

    .line 1718
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getEventByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSelectedInstanceId()J
    .locals 2

    .prologue
    .line 1535
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method public getSelectedViewHolder()Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    return-object v0
.end method

.method public getStickyHeaderHeight()I
    .locals 1

    .prologue
    .line 1608
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStickyHeaderSize:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    if-lt v0, v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mNewerRequests:I

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    if-gt v12, v13, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mNewerRequests:I

    .line 513
    new-instance v12, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->queueQuery(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)Z

    .line 516
    :cond_0
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ge v0, v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOlderRequests:I

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    if-gt v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->onPullRefreshLock:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOlderRequests:I

    .line 522
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->onPullRefreshLock:Z

    .line 523
    new-instance v12, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->queueQuery(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)Z

    .line 527
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v3

    .line 528
    .local v3, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v3, :cond_7

    .line 529
    iget v12, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, p1, v12

    .line 530
    .local v5, "offset":I
    iget-object v12, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isMultiMode:Z

    invoke-virtual {v12, v13}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->setMultiMode(Z)V

    .line 531
    iget-object v12, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v5, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 535
    .local v9, "v":Landroid/view/View;
    iget-object v12, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v12, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->isDayHeaderView(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 536
    const v12, 0x7f110079

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 537
    .local v7, "simpleDivider":Landroid/view/View;
    const v12, 0x7f11007d

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 538
    .local v2, "bottomDivider":Landroid/view/View;
    iget-object v12, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v12, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->isFirstDayAfterYesterday(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 539
    if-eqz v7, :cond_2

    .line 540
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :cond_2
    if-eqz v2, :cond_3

    .line 543
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 580
    .end local v2    # "bottomDivider":Landroid/view/View;
    .end local v5    # "offset":I
    .end local v7    # "simpleDivider":Landroid/view/View;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v12, :cond_8

    .line 613
    :cond_4
    :goto_1
    return-object v9

    .line 546
    .restart local v2    # "bottomDivider":Landroid/view/View;
    .restart local v5    # "offset":I
    .restart local v7    # "simpleDivider":Landroid/view/View;
    :cond_5
    if-eqz v7, :cond_6

    .line 547
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 549
    :cond_6
    if-eqz v2, :cond_3

    .line 550
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 574
    .end local v2    # "bottomDivider":Landroid/view/View;
    .end local v5    # "offset":I
    .end local v7    # "simpleDivider":Landroid/view/View;
    .end local v9    # "v":Landroid/view/View;
    :cond_7
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 575
    .local v8, "tv":Landroid/widget/TextView;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bug! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    move-object v9, v8

    .restart local v9    # "v":Landroid/view/View;
    goto :goto_0

    .line 584
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_8
    const/4 v6, 0x0

    .line 585
    .local v6, "selected":Z
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 586
    .local v11, "yy":Ljava/lang/Object;
    instance-of v12, v11, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    if-eqz v12, :cond_4

    move-object v10, v11

    .line 587
    check-cast v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 588
    .local v10, "vh":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    iget-wide v14, v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->instanceId:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_9

    const/4 v6, 0x1

    .line 589
    :goto_2
    iget-object v13, v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->selectedMarker:Landroid/view/View;

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    .line 590
    :goto_3
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 592
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-eqz v12, :cond_4

    .line 593
    iget-object v12, v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    .line 594
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$LayoutParams;

    .line 595
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz v6, :cond_b

    .line 596
    move-object/from16 v0, p0

    iput-object v10, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 597
    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItemBackgroundColor:I

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 598
    iget-object v12, v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    iget-object v12, v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    iget-object v12, v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v13, v14, v15}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 602
    iget-object v12, v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 588
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    .line 589
    :cond_a
    const/16 v12, 0x8

    goto :goto_3

    .line 604
    .restart local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_b
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mItemRightMargin:F

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v13, v14, v15}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 605
    iget-object v12, v10, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 454
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 455
    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 457
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1511
    return-void
.end method

.method public refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
    .locals 28
    .param p1, "goToTime"    # Landroid/text/format/Time;
    .param p2, "id"    # J
    .param p4, "searchQuery"    # Ljava/lang/String;
    .param p5, "forced"    # Z
    .param p6, "refreshEventInfo"    # Z

    .prologue
    .line 771
    if-eqz p4, :cond_0

    .line 772
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 782
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 785
    .local v11, "startDay":I
    if-nez p5, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v11}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isInRange(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v4, v0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isEventVisible(Landroid/text/format/Time;J)Z

    move-result v4

    if-nez v4, :cond_4

    .line 788
    invoke-direct/range {p0 .. p3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v23

    .line 789
    .local v23, "gotoPosition":I
    if-ltz v23, :cond_3

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    add-int/lit8 v5, v23, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mStickyHeaderSize:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 792
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mListViewScrollState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 795
    :cond_1
    if-eqz p6, :cond_3

    .line 796
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J

    move-result-wide v24

    .line 797
    .local v24, "newInstanceId":J
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v4

    cmp-long v4, v24, v4

    if-eqz v4, :cond_3

    .line 798
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 799
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$3;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v26

    .line 806
    .local v26, "tempCursor":Landroid/database/Cursor;
    if-eqz v26, :cond_2

    .line 807
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getCursorPositionByPosition(I)I

    move-result v27

    .line 808
    .local v27, "tempCursorPosition":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v22

    .line 810
    .local v22, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 811
    invoke-static {v4}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v4

    const-wide/16 v6, 0x2

    move-object/from16 v0, v22

    iget-wide v8, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v22

    iget-wide v10, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->allDay:Z

    move/from16 v16, v0

    .line 821
    move/from16 v0, v16

    invoke-static {v5, v0}, Lcn/nubia/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v16

    const-wide/16 v18, -0x1

    move-object/from16 v5, p0

    .line 812
    invoke-virtual/range {v4 .. v19}, Lcn/nubia/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 827
    .end local v22    # "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    .end local v27    # "tempCursorPosition":I
    :cond_2
    if-eqz v26, :cond_3

    .line 828
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 834
    .end local v24    # "newInstanceId":J
    .end local v26    # "tempCursor":Landroid/database/Cursor;
    :cond_3
    new-instance v8, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 835
    .local v8, "actualTime":Landroid/text/format/Time;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v4

    const-wide/16 v6, 0x400

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v9, v8

    invoke-virtual/range {v4 .. v12}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 864
    .end local v8    # "actualTime":Landroid/text/format/Time;
    .end local v23    # "gotoPosition":I
    :cond_4
    :goto_0
    return-void

    .line 845
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    if-eqz v4, :cond_6

    if-eqz p4, :cond_4

    .line 847
    :cond_6
    add-int/lit8 v12, v11, 0x7

    .line 849
    .local v12, "endDay":I
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 850
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 851
    const/4 v15, 0x2

    move-object/from16 v10, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    move-wide/from16 v16, p2

    invoke-direct/range {v10 .. v17}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    .line 859
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOlderRequests:I

    .line 860
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p4

    move-wide/from16 v20, p2

    invoke-direct/range {v14 .. v21}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    .line 861
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mNewerRequests:I

    .line 862
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x1

    move-object/from16 v14, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p4

    move-wide/from16 v20, p2

    invoke-direct/range {v14 .. v21}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    goto :goto_0
.end method

.method public selectAllItems()V
    .locals 5

    .prologue
    .line 1654
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1655
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1656
    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1657
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1658
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v3, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->selectAll()V

    goto :goto_0

    .line 1660
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1662
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mRowCount:I

    if-ge v0, v3, :cond_2

    .line 1663
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 1664
    .local v1, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v4, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, v0, v4

    .line 1665
    invoke-virtual {v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1666
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1662
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1669
    .end local v1    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    return-void
.end method

.method public selectItemByPosition(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1634
    add-int/lit8 v0, p1, -0x1

    .line 1635
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 1636
    .local v1, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v1, :cond_1

    .line 1651
    :cond_0
    return-void

    .line 1639
    :cond_1
    iget-object v4, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v5, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->selectItemByPosition(I)V

    .line 1640
    iget-object v4, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v5, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getMultiAgendaPositions(I)Ljava/util/HashSet;

    move-result-object v4

    .line 1641
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1642
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1643
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1644
    .local v3, "j":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    iget v5, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1645
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    iget v5, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1647
    :cond_2
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedItems:Ljava/util/HashSet;

    iget v5, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 0
    .param p1, "hideDeclined"    # Z

    .prologue
    .line 1514
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mHideDeclined:Z

    .line 1515
    return-void
.end method

.method public setMultiMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1630
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isMultiMode:Z

    .line 1631
    return-void
.end method

.method public setNubiaSearchView(Lcn/nubia/commonui/widget/NubiaSearchView;Landroid/view/View;)V
    .locals 0
    .param p1, "mSearchView"    # Lcn/nubia/commonui/widget/NubiaSearchView;
    .param p2, "mSearchlayout"    # Landroid/view/View;

    .prologue
    .line 1100
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 1101
    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSearchlayout:Landroid/view/View;

    .line 1102
    return-void
.end method

.method public setOnEventLoadFinishListener(Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;

    .prologue
    .line 1104
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mOnEventLoadFinish:Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;

    .line 1105
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1612
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mListViewScrollState:I

    .line 1613
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1708
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->isSelectAll:Z

    .line 1709
    return-void
.end method

.method public setSelectedInstanceId(J)V
    .locals 1
    .param p1, "selectedInstanceId"    # J

    .prologue
    .line 1539
    iput-wide p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1540
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 1541
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1518
    if-eqz p1, :cond_0

    .line 1519
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1520
    .local v0, "vh":Ljava/lang/Object;
    instance-of v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 1521
    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .end local v0    # "vh":Ljava/lang/Object;
    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 1522
    iget-wide v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    iget-wide v4, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->instanceId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedVH:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    iget-wide v2, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->instanceId:J

    iput-wide v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1524
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1528
    :cond_0
    return-void
.end method
