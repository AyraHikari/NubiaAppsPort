.class public Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "AgendaListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcn/nubia/calendar/CalendarController$EventHandler;
.implements Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;
.implements Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$SearchListCallbacks;


# static fields
.field private static final BUNDLE_KEY_DEFAULT_TIME:Ljava/lang/String; = "key_default_time"

.field private static final BUNDLE_KEY_IS_IN_SEARCH_MODE:Ljava/lang/String; = "key_search_mode"

.field protected static final BUNDLE_KEY_RESTORE_INSTANCE_ID:Ljava/lang/String; = "key_restore_instance_id"

.field private static final BUNDLE_KEY_SEARCH_STRING:Ljava/lang/String; = "key_search_string"

.field private static final CODE_WRITECALENDAR_PERMISSION:I

.field public static isMultiSelectionMode:Z

.field public static reverseSearchEvent:Z


# instance fields
.field private activity:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

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

.field private hasSearchResult:Z

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

.field private mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

.field private mButtomLayout:Landroid/widget/LinearLayout;

.field private mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDeleteClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteItem:Landroid/view/MenuItem;

.field private mDeleteReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mForceReplace:Z

.field private mInitialTimeMillis:J

.field private mIsInSearchMode:Z

.field private mLastHandledEventId:J

.field private mLastHandledEventTime:Landroid/text/format/Time;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mQuery:Ljava/lang/String;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchString:Ljava/lang/String;

.field private mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

.field private mSearchlayout:Landroid/widget/LinearLayout;

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

.field private mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private mTodayMenuText:Landroid/widget/TextView;

.field private mUsedForSearch:Z

.field private mWhichDelete:I

.field private searchMenu:Landroid/widget/TextView;

.field private todayMenu:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    sput-boolean v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->isMultiSelectionMode:Z

    .line 134
    sput-boolean v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->reverseSearchEvent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 100
    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mWhichDelete:I

    .line 101
    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->eventsToDelete:Ljava/util/ArrayList;

    .line 106
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->autoChangeChecked:Z

    .line 107
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedNumSmallThanMaxCount:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    .line 109
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mUsedForSearch:Z

    .line 113
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mForceReplace:Z

    .line 119
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mIsInSearchMode:Z

    .line 120
    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchString:Ljava/lang/String;

    .line 125
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->hasSearchResult:Z

    .line 429
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDeleteClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 444
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$4;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 452
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$5;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mObserver:Landroid/database/ContentObserver;

    .line 711
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventId:J

    .line 712
    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 751
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTZUpdater:Ljava/lang/Runnable;

    .line 842
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$9;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$9;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/text/format/Time;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->searchMenu:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->todayMenu:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTodayMenuText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mWhichDelete:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->exitFromMultiMode()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method private beforeOnCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "timeMillis"    # Landroid/os/Bundle;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    const-string v0, "key_default_time"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mInitialTimeMillis:J

    .line 315
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    .line 316
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mInitialTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iget-wide v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mInitialTimeMillis:J

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method private deleteNormalEvent(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 598
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 600
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 602
    return-void
.end method

.method private doDelete()V
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->eventsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 407
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getSelectedEvents()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->eventsToDelete:Ljava/util/ArrayList;

    .line 409
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->eventsToDelete:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->eventsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "builder1":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00d0

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDeleteClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 415
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00cf

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 416
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 418
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 419
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private enterInMultiMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 605
    sput-boolean v1, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->isMultiSelectionMode:Z

    .line 606
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setMultiMode(Z)V

    .line 608
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    sget-boolean v1, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->isMultiSelectionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->readdAdapter(Z)V

    .line 609
    return-void
.end method

.method private enterSearchMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 783
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mIsInSearchMode:Z

    .line 785
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "input_method"

    .line 786
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 787
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 788
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    .line 789
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    .line 790
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v2, 0x7f0c0203

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 792
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelBtnVisibility(Z)V

    .line 793
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    new-instance v2, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$7;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$7;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->requestFocus()Z

    .line 802
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 803
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mButtomLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 804
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    new-instance v2, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$8;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$8;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    .line 805
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V

    .line 824
    return-void
.end method

.method private exitFromMultiMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    sput-boolean v1, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->isMultiSelectionMode:Z

    .line 424
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setMultiMode(Z)V

    .line 426
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    sget-boolean v1, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->isMultiSelectionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->readdAdapter(Z)V

    .line 427
    return-void
.end method

.method private exitSearchMode()V
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mIsInSearchMode:Z

    .line 828
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 831
    :cond_0
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
    .line 670
    .local p1, "items":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 671
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 672
    .local v1, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 673
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 674
    .local v3, "value":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 670
    .end local v1    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "value":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 677
    .restart local v1    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 678
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 679
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    .line 680
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 679
    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 681
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    .line 682
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    .line 681
    invoke-virtual {v5, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 685
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private goTo(Lcn/nubia/calendar/CalendarController$EventInfo;Z)V
    .locals 12
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 762
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 780
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 771
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mQuery:Ljava/lang/String;

    iget-wide v8, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mShowEventDetailsWithAgenda:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 772
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 778
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getSelectedViewHolder()Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    move-result-object v7

    .line 779
    .local v7, "vh":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mForceReplace:Z

    goto :goto_0

    .end local v7    # "vh":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    :cond_2
    move v6, v5

    .line 771
    goto :goto_1
.end method

.method private gotoToday()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 638
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    .line 641
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 642
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 643
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iput v5, v0, Landroid/text/format/Time;->minute:I

    .line 644
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 645
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 646
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 650
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 326
    const v1, 0x7f110090

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->todayMenu:Landroid/widget/TextView;

    .line 327
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "now":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 330
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->todayMenu:Landroid/widget/TextView;

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    const v1, 0x7f110092

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->searchMenu:Landroid/widget/TextView;

    .line 332
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->searchMenu:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    return-void
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
    .line 688
    .local p1, "items":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 689
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 690
    .local v1, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 692
    .local v2, "value":I
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 688
    .end local v1    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "value":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 695
    .restart local v1    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 696
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    .line 697
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 696
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedItems:Ljava/util/ArrayList;

    .line 699
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    .line 698
    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 702
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v5, 0x1

    .line 565
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->hasSearchResult:Z

    .line 566
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mQuery:Ljava/lang/String;

    .line 567
    if-eqz p2, :cond_0

    .line 568
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-nez v0, :cond_1

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_1
    sput-boolean v5, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->reverseSearchEvent:Z

    .line 575
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mQuery:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private selectItemByPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setIsFromItemClick(Z)V

    .line 399
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->selectItemByPosition(I)V

    .line 400
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setSelectAll(Z)V

    .line 401
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 402
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->notifyFragmentSelectedNum(I)V

    .line 403
    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 511
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 513
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 514
    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->cancelSearchMode()V

    .line 631
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->reverseSearchEvent:Z

    .line 632
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->refresh(Z)V

    .line 635
    :cond_0
    return-void
.end method

.method public cancelSearchMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 851
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mQuery:Ljava/lang/String;

    .line 852
    iput-boolean v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mIsInSearchMode:Z

    .line 853
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchlayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 854
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mButtomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 855
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 857
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 858
    .local v0, "mImm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 860
    .end local v0    # "mImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method protected deleteEvents()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 579
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->eventsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 581
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    return-void

    .line 584
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;

    .line 585
    .local v2, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mWhichDelete:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->hasRule:Z

    if-eqz v0, :cond_1

    .line 586
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->id:J

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 588
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 589
    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    sget-object v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    iget-wide v0, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->id:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->deleteNormalEvent(J)V

    goto :goto_0
.end method

.method protected deleteRepeatingEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;I)V
    .locals 12
    .param p1, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p2, "event"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;
    .param p3, "whitch"    # I

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-boolean v8, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 338
    .local v8, "isAllDay":Z
    iget-wide v10, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 339
    .local v10, "l1":J
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 341
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 343
    return-void
.end method

.method public eventsChanged()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->refresh(Z)V

    .line 749
    :cond_0
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 4

    .prologue
    .line 706
    const-wide/16 v2, 0xa0

    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mUsedForSearch:Z

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
    .locals 0
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    .line 717
    return-void
.end method

.method public notifyFragmentSelectedNum(I)V
    .locals 6
    .param p1, "number"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedNum:Landroid/widget/TextView;

    const v1, 0x7f0c012b

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 347
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    if-nez p1, :cond_0

    .line 351
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedNumSmallThanMaxCount:Z

    .line 352
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 353
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->exitFromMultiMode()V

    .line 354
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 363
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getRealEventCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 356
    iput-boolean v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedNumSmallThanMaxCount:Z

    .line 357
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedAll:Lcn/nubia/commonui/widget/NubiaSelectAll;

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/widget/NubiaSelectAll;->setChecked(Z)V

    goto :goto_0

    .line 359
    :cond_1
    iput-boolean v5, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedNumSmallThanMaxCount:Z

    .line 360
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedAll:Lcn/nubia/commonui/widget/NubiaSelectAll;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/widget/NubiaSelectAll;->setChecked(Z)V

    .line 361
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDeleteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 864
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mIsInSearchMode:Z

    if-eqz v0, :cond_1

    .line 865
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->cancelSearchMode()V

    .line 866
    new-instance v1, Landroid/text/format/Time;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 867
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 868
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 869
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 876
    .end local v1    # "now":Landroid/text/format/Time;
    :cond_0
    :goto_0
    sput-boolean v6, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->reverseSearchEvent:Z

    .line 877
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 878
    return-void

    .line 873
    :cond_1
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onBackPressed()V

    .line 874
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->releaseAgendListView()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "cb"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 655
    if-eqz p2, :cond_1

    .line 656
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->autoChangeChecked:Z

    .line 657
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->callSelectAllItems()V

    .line 658
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getAllSelectedItems(Ljava/util/HashSet;)V

    .line 666
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->autoChangeChecked:Z

    .line 667
    return-void

    .line 660
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSelectedNumSmallThanMaxCount:Z

    if-nez v0, :cond_0

    .line 661
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->autoChangeChecked:Z

    .line 662
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->cancelSelectAllItems()V

    .line 663
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->removeAllSelectedItems(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 627
    :goto_0
    return-void

    .line 615
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->exitFromMultiMode()V

    goto :goto_0

    .line 618
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->enterSearchMode()V

    goto :goto_0

    .line 621
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->gotoToday()V

    goto :goto_0

    .line 613
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f11008f -> :sswitch_2
        0x7f110092 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->beforeOnCreate(Landroid/os/Bundle;)V

    .line 149
    iput-object p0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->activity:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    .line 150
    iput-object p0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 152
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v9, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 153
    .local v9, "screenWidth":I
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 154
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v11, :cond_0

    .line 155
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 158
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 159
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0014

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v11}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    .line 164
    :cond_0
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v11}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTimeZone:Ljava/lang/String;

    .line 165
    const v11, 0x7f0f000b

    invoke-static {p0, v11}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v11

    iput-boolean v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mShowEventDetailsWithAgenda:Z

    .line 167
    const v11, 0x7f030022

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->setContentView(I)V

    .line 168
    const v11, 0x7f110081

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .line 169
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setClickable(Z)V

    .line 170
    const v11, 0x7f110082

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    .line 171
    const v11, 0x7f110093

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchlayout:Landroid/widget/LinearLayout;

    .line 172
    const v11, 0x7f110057

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mButtomLayout:Landroid/widget/LinearLayout;

    .line 173
    const v11, 0x7f110094

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcn/nubia/commonui/widget/NubiaSearchView;

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 176
    const v11, 0x7f110091

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTodayMenuText:Landroid/widget/TextView;

    .line 179
    const/4 v11, 0x1

    invoke-static {p0, v11}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 180
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->initView()V

    .line 181
    if-eqz p1, :cond_1

    .line 182
    const-string v11, "key_restore_instance_id"

    const-wide/16 v12, -0x1

    invoke-virtual {p1, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 184
    .local v4, "instanceId":J
    const-wide/16 v12, -0x1

    cmp-long v11, v4, v12

    if-eqz v11, :cond_1

    .line 185
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v11, v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setSelectedInstanceId(J)V

    .line 189
    .end local v4    # "instanceId":J
    :cond_1
    const v11, 0x7f110083

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 190
    .local v2, "eventView":Landroid/view/View;
    iget-boolean v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mShowEventDetailsWithAgenda:Z

    if-nez v11, :cond_2

    .line 191
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_2
    const v11, 0x7f11007f

    invoke-virtual {p0, v11}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;

    .line 197
    .local v7, "lv":Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;
    if-eqz v7, :cond_6

    .line 198
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v11}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 199
    .local v0, "a":Landroid/widget/Adapter;
    invoke-virtual {v7, v0}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 200
    instance-of v11, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v11, :cond_5

    .line 201
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 202
    .end local v0    # "a":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 203
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v7, v11}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setIndexer(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;)V

    .line 204
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v7, v11}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setHeaderHeightListener(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;)V

    .line 210
    :cond_3
    :goto_0
    invoke-virtual {v7, p0}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 211
    move-object v10, v7

    .line 212
    .local v10, "topListView":Landroid/view/View;
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    iget-object v12, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v13, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12, v13}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setNubiaSearchView(Lcn/nubia/commonui/widget/NubiaSearchView;Landroid/view/View;)V

    .line 213
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    new-instance v12, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;

    invoke-direct {v12, p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$1;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    invoke-virtual {v11, v12}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setOnEventLoadFinishListener(Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;)V

    .line 235
    :goto_1
    iget-boolean v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mShowEventDetailsWithAgenda:Z

    if-nez v11, :cond_7

    .line 236
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 237
    .local v8, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 238
    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .end local v8    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    new-instance v3, Landroid/content/IntentFilter;

    const-string v11, "cn.nubia.calendar.delete.events"

    invoke-direct {v3, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 249
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v3}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    if-eqz p1, :cond_4

    const-string v11, "key_search_string"

    .line 251
    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 252
    const-string v11, "key_search_string"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchString:Ljava/lang/String;

    .line 256
    :cond_4
    new-instance v11, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$2;

    invoke-direct {v11, p0, p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$2;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;Landroid/content/Context;)V

    iput-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 277
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 278
    return-void

    .line 205
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "topListView":Landroid/view/View;
    .restart local v0    # "a":Landroid/widget/Adapter;
    :cond_5
    instance-of v11, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    if-eqz v11, :cond_3

    .line 206
    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .end local v0    # "a":Landroid/widget/Adapter;
    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 207
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v7, v11}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setIndexer(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderIndexer;)V

    .line 208
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v7, v11}, Lcn/nubia/calendar/ui_component/view/StickyHeaderListView;->setHeaderHeightListener(Lcn/nubia/calendar/ui_component/view/StickyHeaderListView$HeaderHeightListener;)V

    goto :goto_0

    .line 226
    :cond_6
    iget-object v11, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v11}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .restart local v10    # "topListView":Landroid/view/View;
    goto :goto_1

    .line 240
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 241
    .local v6, "listParams":Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v11, v9, 0x4

    div-int/lit8 v11, v11, 0xa

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    invoke-virtual {v10, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 244
    .local v1, "detailsParams":Landroid/view/ViewGroup$LayoutParams;
    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v11, v9, v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 285
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 290
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 293
    :cond_1
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->removeInstanceForAgendaListActivity(Landroid/content/Context;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    if-eqz v0, :cond_2

    .line 296
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 299
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/AsyncQueryService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 301
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 304
    :cond_3
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 306
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_4

    .line 307
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .line 309
    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 835
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 836
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->onBackPressed()V

    .line 837
    const/4 v0, 0x1

    .line 839
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 554
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 555
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 556
    sget-boolean v0, Lcn/nubia/calendar/EventInfoActivity;->isDoBackPressed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 557
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/calendar/EventInfoActivity;->isDoBackPressed:Z

    .line 559
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->onPause()V

    .line 562
    :cond_1
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 732
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v6, 0x0

    const-wide/16 v10, -0x1

    const/4 v5, 0x1

    .line 518
    if-nez p1, :cond_1

    .line 519
    const/4 v7, 0x0

    .line 520
    .local v7, "flagDotGrant":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p3

    if-ge v8, v0, :cond_0

    .line 521
    aget v0, p3, v8

    if-eqz v0, :cond_2

    .line 522
    const/4 v7, 0x1

    .line 526
    :cond_0
    if-eqz v7, :cond_3

    .line 527
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->showPermissionDialog()V

    .line 548
    .end local v7    # "flagDotGrant":Z
    .end local v8    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 520
    .restart local v7    # "flagDotGrant":Z
    .restart local v8    # "i":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 531
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_6

    .line 532
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_4

    .line 533
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventTime:Landroid/text/format/Time;

    iget-wide v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventId:J

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mQuery:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 536
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 537
    iput-wide v10, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventId:J

    .line 543
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->onResume()V

    goto :goto_1

    .line 539
    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_5

    .line 540
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mQuery:Ljava/lang/String;

    move-wide v2, v10

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 470
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 471
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 472
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "preferences_hide_declined"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 474
    .local v7, "hideDeclined":Z
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 476
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setRefreshStackFromBottom(Z)V

    .line 483
    :cond_0
    :goto_0
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 484
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 486
    iget-wide v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_5

    .line 487
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventTime:Landroid/text/format/Time;

    iget-wide v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventId:J

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mQuery:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 491
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 492
    iput-wide v10, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mLastHandledEventId:J

    .line 498
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->onResume()V

    .line 504
    :cond_3
    :goto_2
    return-void

    .line 479
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    invoke-virtual {v0, v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setRefreshStackFromBottom(Z)V

    goto :goto_0

    .line 494
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mQuery:Ljava/lang/String;

    move-wide v2, v10

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_1

    .line 502
    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v6

    const-string v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v5

    invoke-static {p0, v0, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 385
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mIsInSearchMode:Z

    .line 393
    :goto_0
    const-string v0, "key_search_mode"

    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mIsInSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mIsInSearchMode:Z

    .line 389
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchString:Ljava/lang/String;

    .line 391
    const-string v0, "key_search_string"

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 369
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 375
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 739
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->enterSearchMode()V

    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public refreshSearchBar(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 886
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setTotalTextHint(I)V

    .line 889
    :cond_0
    return-void
.end method

.method public releaseAgendListView()V
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->mAgendaListView:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .line 882
    return-void
.end method
