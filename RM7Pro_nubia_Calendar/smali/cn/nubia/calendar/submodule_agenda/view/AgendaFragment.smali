.class public Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;
.super Landroid/app/Fragment;
.source "AgendaFragment.java"

# interfaces
.implements Lcn/nubia/calendar/CalendarController$EventHandler;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Fragment;",
        "Lcn/nubia/calendar/CalendarController$EventHandler;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_RESTORE_INSTANCE_ID:Ljava/lang/String; = "key_restore_instance_id"

.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field public static isMultiSelectionMode:Z


# instance fields
.field private autoChangeChecked:Z

.field private eventsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

.field private mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

.field private mBack:Landroid/widget/ImageView;

.field private mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mController:Lcn/nubia/calendar/CalendarController;

.field private mDeleteClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteItem:Landroid/view/MenuItem;

.field private mDeleteReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEventFragment:Lcn/nubia/calendar/EventInfoFragment;

.field private mForceReplace:Z

.field private final mInitialTimeMillis:J

.field private mIsChoosenMode:Z

.field private mIsTabletConfig:Z

.field mJulianDayOnTop:I

.field private mLastHandledEventId:J

.field private mLastHandledEventTime:Landroid/text/format/Time;

.field private mOnAttachAllDay:Z

.field private mOnAttachedInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

.field private mQuery:Ljava/lang/String;

.field private mSelectedAll:Lcn/nubia/commonui/widget/NubiaSelectAll;

.field private mSelectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedNum:Landroid/widget/TextView;

.field private mSelectedNumSmallThanMaxCount:Z

.field private mService:Lcn/nubia/calendar/AsyncQueryService;

.field private mShowEventDetailsWithAgenda:Z

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private final mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private mUsedForSearch:Z

.field private mWhichDelete:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->DEBUG:Z

    .line 101
    sput-boolean v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->isMultiSelectionMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v2, 0x0

    .line 162
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;-><init>(JZZ)V

    .line 163
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 5
    .param p1, "timeMillis"    # J
    .param p3, "usedForSearch"    # Z
    .param p4, "isChoosenMode"    # Z

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 89
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mUsedForSearch:Z

    .line 91
    iput-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mOnAttachedInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    .line 92
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mOnAttachAllDay:Z

    .line 93
    iput-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mForceReplace:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mJulianDayOnTop:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsToDelete:Ljava/util/ArrayList;

    .line 112
    iput v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mWhichDelete:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    .line 116
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->autoChangeChecked:Z

    .line 117
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedNumSmallThanMaxCount:Z

    .line 120
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDeleteClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$3;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$4;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 542
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventId:J

    .line 543
    iput-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 796
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mIsChoosenMode:Z

    .line 195
    iput-wide p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mInitialTimeMillis:J

    .line 196
    iput-boolean p4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mIsChoosenMode:Z

    .line 198
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    .line 199
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mInitialTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 204
    :goto_0
    iput-boolean p3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mUsedForSearch:Z

    .line 205
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mInitialTimeMillis:J

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->exitFromMultiMode()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .prologue
    .line 69
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mWhichDelete:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Lcn/nubia/calendar/CalendarController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mController:Lcn/nubia/calendar/CalendarController;

    return-object v0
.end method

.method private deleteNormalEvent(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v2, 0x0

    .line 185
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 187
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 189
    return-void
.end method

.method private doDelete()V
    .locals 4

    .prologue
    .line 699
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 700
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getSelectedEvents()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsToDelete:Ljava/util/ArrayList;

    .line 702
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsToDelete:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 707
    .local v0, "builder1":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00d0

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDeleteClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 708
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00cf

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 709
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 710
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 711
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 712
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private enterInMultiMode()V
    .locals 2

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v1, 0x1

    .line 674
    sput-boolean v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->isMultiSelectionMode:Z

    .line 675
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setMultiMode(Z)V

    .line 677
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    sget-boolean v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->isMultiSelectionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->readdAdapter(Z)V

    .line 678
    return-void
.end method

.method private existRepeateEvents()Z
    .locals 2

    .prologue
    .line 716
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 717
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;

    iget-boolean v1, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->hasRule:Z

    if-eqz v1, :cond_0

    .line 718
    const/4 v1, 0x1

    .line 721
    :goto_1
    return v1

    .line 716
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private exitFromMultiMode()V
    .locals 2

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v1, 0x0

    .line 681
    sput-boolean v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->isMultiSelectionMode:Z

    .line 682
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setMultiMode(Z)V

    .line 684
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    sget-boolean v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->isMultiSelectionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->readdAdapter(Z)V

    .line 685
    return-void
.end method

.method private declared-synchronized getAllSelectedItems(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    .local p1, "items":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 747
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 748
    .local v1, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 750
    .local v3, "value":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 746
    .end local v1    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "value":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 753
    .restart local v1    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 754
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 755
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    .line 756
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 755
    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 757
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    .line 758
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    .line 757
    invoke-virtual {v5, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 761
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private goTo(Lcn/nubia/calendar/CalendarController$EventInfo;Z)V
    .locals 12
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;
    .param p2, "animate"    # Z

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v5, 0x0

    .line 494
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 515
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 503
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mQuery:Ljava/lang/String;

    iget-wide v8, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 504
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 510
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getSelectedViewHolder()Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    move-result-object v7

    .line 513
    .local v7, "vh":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    if-eqz v7, :cond_3

    iget-boolean v0, v7, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->allDay:Z

    :goto_2
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mForceReplace:Z

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->showEventInfo(Lcn/nubia/calendar/CalendarController$EventInfo;ZZ)V

    .line 514
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mForceReplace:Z

    goto :goto_0

    .end local v7    # "vh":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    :cond_2
    move v6, v5

    .line 503
    goto :goto_1

    .restart local v7    # "vh":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    :cond_3
    move v0, v5

    .line 513
    goto :goto_2
.end method

.method private declared-synchronized removeAllSelectedItems(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    .local p1, "items":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 765
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 766
    .local v1, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 767
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 768
    .local v2, "value":I
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 764
    .end local v1    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "value":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 771
    .restart local v1    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 772
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    .line 773
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 772
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 774
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedItems:Ljava/util/ArrayList;

    .line 775
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    .line 774
    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 778
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    .line 518
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mQuery:Ljava/lang/String;

    .line 519
    if-eqz p2, :cond_0

    .line 520
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-nez v0, :cond_1

    .line 527
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mQuery:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private selectItemByPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 316
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setIsFromItemClick(Z)V

    .line 317
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->selectItemByPosition(I)V

    .line 318
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setSelectAll(Z)V

    .line 319
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 320
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->notifyFragmentSelectedNum(I)V

    .line 321
    return-void
.end method

.method private showEventInfo(Lcn/nubia/calendar/CalendarController$EventInfo;ZZ)V
    .locals 20
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;
    .param p2, "allDay"    # Z
    .param p3, "replaceFragment"    # Z

    .prologue
    .line 565
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 566
    const-string v2, "Calendar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEventInfo, event ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v2, :cond_0

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v16

    .line 573
    .local v16, "fragmentManager":Landroid/app/FragmentManager;
    if-nez v16, :cond_2

    .line 576
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mOnAttachedInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    .line 577
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mOnAttachAllDay:Z

    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v17

    .line 582
    .local v17, "ft":Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_3

    .line 583
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 584
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 587
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 588
    .local v18, "startMillis":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v14

    .line 589
    .local v14, "endMillis":J
    const v2, 0x7f110083

    .line 590
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v13

    check-cast v13, Lcn/nubia/calendar/EventInfoFragment;

    .line 591
    .local v13, "fOld":Lcn/nubia/calendar/EventInfoFragment;
    if-eqz v13, :cond_4

    if-nez p3, :cond_4

    .line 592
    invoke-virtual {v13}, Lcn/nubia/calendar/EventInfoFragment;->getStartMillis()J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-nez v2, :cond_4

    .line 593
    invoke-virtual {v13}, Lcn/nubia/calendar/EventInfoFragment;->getEndMillis()J

    move-result-wide v2

    cmp-long v2, v2, v14

    if-nez v2, :cond_4

    .line 594
    invoke-virtual {v13}, Lcn/nubia/calendar/EventInfoFragment;->getEventId()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 595
    :cond_4
    new-instance v2, Lcn/nubia/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v7, 0x1

    .line 596
    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-object v8, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    .line 597
    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v2 .. v12}, Lcn/nubia/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mEventFragment:Lcn/nubia/calendar/EventInfoFragment;

    .line 600
    const v2, 0x7f110083

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mEventFragment:Lcn/nubia/calendar/EventInfoFragment;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mController:Lcn/nubia/calendar/CalendarController;

    const v3, 0x7f110083

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mEventFragment:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/CalendarController;->registerEventHandler(ILcn/nubia/calendar/CalendarController$EventHandler;)V

    .line 603
    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 605
    :cond_5
    invoke-virtual {v13}, Lcn/nubia/calendar/EventInfoFragment;->reloadEvents()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected deleteEvents()V
    .locals 9

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v5, 0x0

    .line 166
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 168
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;

    .line 172
    .local v2, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mWhichDelete:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->hasRule:Z

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->id:J

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 175
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 176
    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    sget-object v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    iget-wide v0, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->id:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->deleteNormalEvent(J)V

    goto :goto_0
.end method

.method protected deleteRepeatingEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;I)V
    .locals 12
    .param p1, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p2, "event"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;
    .param p3, "whitch"    # I

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v2, 0x0

    .line 248
    iget-boolean v8, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 249
    .local v8, "isAllDay":Z
    iget-wide v10, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 250
    .local v10, "l1":J
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 252
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 254
    return-void
.end method

.method public eventsChanged()V
    .locals 2

    .prologue
    .line 531
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->refresh(Z)V

    .line 534
    :cond_0
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 4

    .prologue
    .line 538
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const-wide/16 v2, 0xa0

    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mUsedForSearch:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    :goto_0
    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleEvent(Lcn/nubia/calendar/CalendarController$EventInfo;)V
    .locals 4
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    .line 547
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 551
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventId:J

    .line 552
    iget-object v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 553
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->goTo(Lcn/nubia/calendar/CalendarController$EventInfo;Z)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 555
    iget-object v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    goto :goto_0

    .line 556
    :cond_2
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->eventsChanged()V

    goto :goto_0
.end method

.method public notifyFragmentSelectedNum(I)V
    .locals 6
    .param p1, "number"    # I

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 726
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedNum:Landroid/widget/TextView;

    const v1, 0x7f0c012b

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 727
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 726
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    if-nez p1, :cond_0

    .line 730
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedNumSmallThanMaxCount:Z

    .line 731
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 732
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->exitFromMultiMode()V

    .line 733
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 742
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getRealEventCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 735
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedNumSmallThanMaxCount:Z

    .line 736
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedAll:Lcn/nubia/commonui/widget/NubiaSelectAll;

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/widget/NubiaSelectAll;->setChecked(Z)V

    goto :goto_0

    .line 738
    :cond_1
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedNumSmallThanMaxCount:Z

    .line 739
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedAll:Lcn/nubia/commonui/widget/NubiaSelectAll;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/widget/NubiaSelectAll;->setChecked(Z)V

    .line 740
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 209
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 211
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTimeZone:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActivity:Landroid/app/Activity;

    .line 214
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mOnAttachedInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mOnAttachedInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mOnAttachAllDay:Z

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->showEventInfo(Lcn/nubia/calendar/CalendarController$EventInfo;ZZ)V

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mOnAttachedInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    .line 219
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cn.nubia.calendar.delete.events"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    new-instance v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 244
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "cb"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v1, 0x1

    .line 782
    if-eqz p2, :cond_1

    .line 783
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->autoChangeChecked:Z

    .line 784
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->callSelectAllItems()V

    .line 785
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->getAllSelectedItems(Ljava/util/HashSet;)V

    .line 793
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->autoChangeChecked:Z

    .line 794
    return-void

    .line 787
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mSelectedNumSmallThanMaxCount:Z

    if-nez v0, :cond_0

    .line 788
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->autoChangeChecked:Z

    .line 789
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->cancelSelectAllItems()V

    .line 790
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->removeAllSelectedItems(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 689
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 696
    :goto_0
    return-void

    .line 691
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->exitFromMultiMode()V

    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const-wide/16 v4, -0x1

    .line 258
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 259
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mController:Lcn/nubia/calendar/CalendarController;

    .line 260
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0f000b

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    .line 262
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0f000d

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mIsTabletConfig:Z

    .line 263
    if-eqz p1, :cond_0

    .line 264
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 265
    .local v0, "prevTime":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 267
    sget-boolean v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 268
    const-string v2, "Calendar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring time to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v0    # "prevTime":J
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 327
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v10, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 328
    .local v10, "screenWidth":I
    const v13, 0x7f03001f

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 330
    .local v12, "v":Landroid/view/View;
    const v13, 0x7f110081

    .line 331
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mIsChoosenMode:Z

    invoke-virtual {v13, v14}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setChoosenMode(Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setClickable(Z)V

    .line 339
    if-eqz p3, :cond_0

    .line 340
    const-string v13, "key_restore_instance_id"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 342
    .local v6, "instanceId":J
    const-wide/16 v14, -0x1

    cmp-long v13, v6, v14

    if-eqz v13, :cond_0

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v13, v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setSelectedInstanceId(J)V

    .line 347
    .end local v6    # "instanceId":J
    :cond_0
    const v13, 0x7f110083

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 348
    .local v4, "eventView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-nez v13, :cond_1

    .line 349
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_1
    const v13, 0x7f11007f

    .line 355
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;

    .line 356
    .local v8, "lv":Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;
    if-eqz v8, :cond_4

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v13}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 358
    .local v2, "a":Landroid/widget/Adapter;
    invoke-virtual {v8, v2}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 359
    instance-of v13, v2, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_2

    .line 360
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    .line 361
    .end local v2    # "a":Landroid/widget/Adapter;
    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    check-cast v13, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v8, v13}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setIndexer(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v8, v13}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setHeaderHeightListener(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;)V

    .line 376
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 377
    move-object v11, v8

    .line 388
    .local v11, "topListView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-nez v13, :cond_5

    .line 389
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 390
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 391
    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    return-object v12

    .line 364
    .end local v11    # "topListView":Landroid/view/View;
    .restart local v2    # "a":Landroid/widget/Adapter;
    :cond_2
    instance-of v13, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    if-eqz v13, :cond_3

    .line 365
    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .end local v2    # "a":Landroid/widget/Adapter;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v8, v13}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setIndexer(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v8, v13}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setHeaderHeightListener(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;)V

    goto :goto_0

    .line 369
    .restart local v2    # "a":Landroid/widget/Adapter;
    :cond_3
    const-string v13, "Calendar"

    const-string v14, "Cannot find HeaderIndexer for StickyHeaderListView"

    invoke-static {v13, v14}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    .end local v2    # "a":Landroid/widget/Adapter;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .restart local v11    # "topListView":Landroid/view/View;
    goto :goto_1

    .line 393
    :cond_5
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 394
    .local v5, "listParams":Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v13, v10, 0x4

    div-int/lit8 v13, v13, 0xa

    iput v13, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 395
    invoke-virtual {v11, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 397
    .local v3, "detailsParams":Landroid/view/ViewGroup$LayoutParams;
    iget v13, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v13, v10, v13

    iput v13, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 398
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 485
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 490
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 491
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 479
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 480
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->onPause()V

    .line 481
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const/4 v5, 0x1

    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    .line 406
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 407
    sget-boolean v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 412
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "preferences_hide_declined"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 415
    .local v7, "hideDeclined":Z
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 416
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    iget-wide v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventId:J

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mQuery:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 420
    iput-wide v10, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mLastHandledEventId:J

    .line 424
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->onResume()V

    .line 425
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mQuery:Ljava/lang/String;

    move-wide v2, v10

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const-wide/16 v8, 0x0

    .line 437
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 438
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-nez v4, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 442
    .local v0, "firstVisibleTime":J
    cmp-long v4, v0, v8

    if-lez v4, :cond_2

    .line 443
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 444
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mController:Lcn/nubia/calendar/CalendarController;

    invoke-virtual {v4, v0, v1}, Lcn/nubia/calendar/CalendarController;->setTime(J)V

    .line 445
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 446
    sget-boolean v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 447
    const-string v4, "Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSaveInstanceState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_2
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getSelectedInstanceId()J

    move-result-wide v2

    .line 452
    .local v2, "selectedInstance":J
    cmp-long v4, v2, v8

    if-ltz v4, :cond_0

    .line 453
    const-string v4, "key_restore_instance_id"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 643
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .line 645
    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p2, v3

    .line 644
    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getJulianDayFromPosition(I)I

    move-result v0

    .line 647
    .local v0, "julianDay":I
    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mJulianDayOnTop:I

    if-eq v2, v0, :cond_0

    .line 652
    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mJulianDayOnTop:I

    .line 653
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 654
    .local v1, "t":Landroid/text/format/Time;
    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mJulianDayOnTop:I

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 655
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mController:Lcn/nubia/calendar/CalendarController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/nubia/calendar/CalendarController;->setTime(J)V

    .line 659
    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mIsTabletConfig:Z

    if-nez v2, :cond_0

    .line 660
    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$6;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 632
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, p2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setScrollState(I)V

    .line 635
    :cond_0
    return-void
.end method

.method public removeFragments(Landroid/app/FragmentManager;)V
    .locals 5
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment<TE;>;"
    const v4, 0x7f110083

    .line 465
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->mController:Lcn/nubia/calendar/CalendarController;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 466
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 470
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p1, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 471
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 474
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
