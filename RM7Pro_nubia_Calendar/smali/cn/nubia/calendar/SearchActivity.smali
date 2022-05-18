.class public Lcn/nubia/calendar/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Lcn/nubia/calendar/CalendarController$EventHandler;
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# static fields
.field protected static final BUNDLE_KEY_RESTORE_SEARCH_QUERY:Ljava/lang/String; = "key_restore_search_query"

.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static final CODE_WRITECALENDAR_PERMISSION:I

.field private static final DEBUG:Z

.field private static final HANDLER_KEY:I

.field private static final TAG:Ljava/lang/String;

.field private static mIsMultipane:Z


# instance fields
.field private mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcn/nubia/calendar/CalendarController;

.field private mCurrentEventId:J

.field private mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

.field private mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

.field private mEventInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

.field private mHandler:Landroid/os/Handler;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mQuery:Ljava/lang/String;

.field private mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

.field private mShowEventDetailsWithAgenda:Z

.field private mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeChangesUpdater:Ljava/lang/Runnable;

.field private millis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcn/nubia/calendar/SearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/SearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/calendar/SearchActivity;->mCurrentEventId:J

    .line 98
    iput-object v2, p0, Lcn/nubia/calendar/SearchActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    .line 101
    new-instance v0, Lcn/nubia/calendar/SearchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/SearchActivity$1;-><init>(Lcn/nubia/calendar/SearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    .line 114
    new-instance v0, Lcn/nubia/calendar/SearchActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/SearchActivity$2;-><init>(Lcn/nubia/calendar/SearchActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    .line 477
    iput-object v2, p0, Lcn/nubia/calendar/SearchActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/SearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/SearchActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/SearchActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private deleteEvent(JJJ)V
    .locals 11
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J

    .prologue
    .line 317
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

    const/4 v8, -0x1

    move-wide v2, p3

    move-wide/from16 v4, p5

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 318
    sget-boolean v1, Lcn/nubia/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mEventInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcn/nubia/calendar/SearchActivity;->mCurrentEventId:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 321
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 322
    .local v9, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mEventInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v9, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 323
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mEventInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    .line 325
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    const v2, 0x7f110083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 326
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcn/nubia/calendar/SearchActivity;->mCurrentEventId:J

    .line 328
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v9    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 393
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "query":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 397
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initFragments(JLjava/lang/String;)V
    .locals 7
    .param p1, "timeMillis"    # J
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f110259

    .line 249
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 250
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 252
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v5, p0, Lcn/nubia/calendar/SearchActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v5}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->isChooserIntent()Z

    move-result v2

    .line 253
    .local v2, "isChoosenMode":Z
    new-instance v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    const/4 v5, 0x1

    invoke-direct {v3, p1, p2, v5, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;-><init>(JZZ)V

    .line 255
    .local v3, "searchResultsFragment":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;
    invoke-virtual {v1, v6, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 256
    iget-object v5, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    invoke-virtual {v5, v6, v3}, Lcn/nubia/calendar/CalendarController;->registerEventHandler(ILcn/nubia/calendar/CalendarController$EventHandler;)V

    .line 259
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 260
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 261
    .local v4, "t":Landroid/text/format/Time;
    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 262
    invoke-direct {p0, p3, v4}, Lcn/nubia/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 263
    return-void
.end method

.method private initModels()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/CalendarApplication;

    .line 238
    .local v0, "app":Lcn/nubia/calendar/CalendarApplication;
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getConfigModel()Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 239
    return-void
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 5
    .param p1, "searchQuery"    # Ljava/lang/String;
    .param p2, "goToTime"    # Landroid/text/format/Time;

    .prologue
    const/4 v4, 0x1

    .line 296
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    .line 297
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 299
    .local v1, "suggestions":Landroid/provider/SearchRecentSuggestions;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v0, Lcn/nubia/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/CalendarController$EventInfo;-><init>()V

    .line 302
    .local v0, "searchEventInfo":Lcn/nubia/calendar/CalendarController$EventInfo;
    const-wide/16 v2, 0x100

    iput-wide v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    .line 303
    iput-object p1, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 304
    iput v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->viewType:I

    .line 305
    if-eqz p2, :cond_0

    .line 306
    iput-object p2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 308
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    invoke-virtual {v2, p0, v0}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcn/nubia/calendar/CalendarController$EventInfo;)V

    .line 309
    iput-object p1, p0, Lcn/nubia/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 310
    iget-object v2, p0, Lcn/nubia/calendar/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lcn/nubia/calendar/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v3, p0, Lcn/nubia/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 312
    iget-object v2, p0, Lcn/nubia/calendar/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 314
    :cond_1
    return-void
.end method

.method private showEventInfo(Lcn/nubia/calendar/CalendarController$EventInfo;)V
    .locals 17
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    .line 266
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/calendar/SearchActivity;->mShowEventDetailsWithAgenda:Z

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v14

    .line 268
    .local v14, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v14}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v15

    .line 270
    .local v15, "ft":Landroid/app/FragmentTransaction;
    new-instance v2, Lcn/nubia/calendar/EventInfoFragment;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p1

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    .line 271
    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    .line 272
    invoke-virtual {v3, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcn/nubia/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/SearchActivity;->mEventInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    .line 274
    const v2, 0x7f110083

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/SearchActivity;->mEventInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v15, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 275
    invoke-virtual {v15}, Landroid/app/FragmentTransaction;->commit()I

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    const v3, 0x7f110083

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/SearchActivity;->mEventInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/CalendarController;->registerEventHandler(ILcn/nubia/calendar/CalendarController$EventHandler;)V

    .line 291
    .end local v14    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v15    # "ft":Landroid/app/FragmentTransaction;
    :goto_0
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcn/nubia/calendar/SearchActivity;->mCurrentEventId:J

    .line 292
    return-void

    .line 279
    :cond_0
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v16, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 282
    .local v13, "eventUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 283
    const-class v2, Lcn/nubia/calendar/EventInfoActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 284
    const-string v4, "beginTime"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    .line 285
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 284
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 287
    const-string v4, "endTime"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    .line 288
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 287
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 288
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_2
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 206
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 207
    return-void
.end method


# virtual methods
.method public eventsChanged()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 432
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 434
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 438
    const-wide/16 v0, 0x12

    return-wide v0
.end method

.method public handleEvent(Lcn/nubia/calendar/CalendarController$EventInfo;)V
    .locals 8
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    const/4 v4, 0x0

    .line 443
    iget-object v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v0, :cond_1

    const-wide/16 v6, -0x1

    .line 445
    .local v6, "endTime":J
    :goto_0
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 446
    invoke-direct {p0, p1}, Lcn/nubia/calendar/SearchActivity;->showEventInfo(Lcn/nubia/calendar/CalendarController$EventInfo;)V

    .line 450
    :cond_0
    :goto_1
    return-void

    .line 443
    .end local v6    # "endTime":J
    :cond_1
    iget-object v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 444
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    goto :goto_0

    .line 447
    .restart local v6    # "endTime":J
    :cond_2
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 448
    iget-wide v2, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    iget-object v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/calendar/SearchActivity;->deleteEvent(JJJ)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-direct {p0}, Lcn/nubia/calendar/SearchActivity;->initModels()V

    .line 129
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 130
    invoke-static {p0, v7}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 132
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    .line 133
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcn/nubia/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 135
    const v3, 0x7f0f0007

    invoke-static {p0, v3}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v3

    sput-boolean v3, Lcn/nubia/calendar/SearchActivity;->mIsMultipane:Z

    .line 136
    const v3, 0x7f0f000b

    invoke-static {p0, v3}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/calendar/SearchActivity;->mShowEventDetailsWithAgenda:Z

    .line 138
    const v3, 0x7f0300b6

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/SearchActivity;->setContentView(I)V

    .line 139
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/SearchActivity;->setDefaultKeyMode(I)V

    .line 140
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 142
    sget-boolean v3, Lcn/nubia/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v3, :cond_4

    .line 143
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 144
    .local v1, "mActionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 159
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    invoke-virtual {v3, v6, p0}, Lcn/nubia/calendar/CalendarController;->registerEventHandler(ILcn/nubia/calendar/CalendarController$EventHandler;)V

    .line 161
    new-instance v3, Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {v3, p0, p0, v6}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v3, p0, Lcn/nubia/calendar/SearchActivity;->mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

    .line 168
    iput-wide v8, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    .line 169
    if-eqz p1, :cond_1

    .line 171
    const-string v3, "key_restore_time"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    .line 177
    :cond_1
    const-string v3, "android.permission.READ_CALENDAR"

    invoke-static {p0, v3}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v3}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 178
    iget-wide v4, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    .line 180
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/calendar/util/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    if-eqz p1, :cond_5

    const-string v3, "key_restore_search_query"

    .line 187
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    const-string v3, "key_restore_search_query"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "query":Ljava/lang/String;
    :goto_1
    iget-wide v4, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    invoke-direct {p0, v4, v5, v2}, Lcn/nubia/calendar/SearchActivity;->initFragments(JLjava/lang/String;)V

    .line 197
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "query":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 149
    .end local v1    # "mActionBar":Landroid/app/ActionBar;
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 150
    .restart local v1    # "mActionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    .line 151
    const/4 v3, 0x6

    invoke-virtual {v1, v6, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0

    .line 190
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "query":Ljava/lang/String;
    goto :goto_1

    .line 195
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "query":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.permission.READ_CALENDAR"

    aput-object v4, v3, v6

    const-string v4, "android.permission.WRITE_CALENDAR"

    aput-object v4, v3, v7

    invoke-static {p0, v3, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 333
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120004

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 343
    const v1, 0x7f110284

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 344
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 345
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 346
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSearchView;

    iput-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 347
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v1, p0}, Lcn/nubia/calendar/util/Utils;->setUpSearchView(Lcn/nubia/commonui/widget/NubiaSearchView;Landroid/app/Activity;)V

    .line 348
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V

    .line 349
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v2, p0, Lcn/nubia/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 350
    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 352
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarController;->deregisterAllEventHandlers()V

    .line 245
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 246
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 472
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 389
    invoke-direct {p0, p1}, Lcn/nubia/calendar/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 390
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 357
    const/4 v9, 0x0

    .line 358
    .local v9, "t":Landroid/text/format/Time;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 376
    :goto_0
    :sswitch_0
    return v8

    .line 369
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    const-wide/16 v2, 0x40

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    move v8, v10

    .line 371
    goto :goto_0

    .line 373
    :sswitch_2
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    move v8, v10

    .line 374
    goto :goto_0

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f110284 -> :sswitch_0
        0x7f11028a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 424
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 425
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 426
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Utils;->clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 427
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 428
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 13
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 459
    iput-object p1, p0, Lcn/nubia/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    const-wide/16 v2, 0x100

    const-wide/16 v6, -0x1

    const-wide/16 v9, 0x0

    .line 461
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-object v11, p1

    .line 460
    invoke-virtual/range {v0 .. v12}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 462
    return v8
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 211
    if-nez p1, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "flagPermission":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_0

    .line 214
    aget v4, p3, v1

    if-eqz v4, :cond_2

    .line 215
    const/4 v0, 0x1

    .line 219
    :cond_0
    if-eqz v0, :cond_3

    .line 220
    invoke-direct {p0}, Lcn/nubia/calendar/SearchActivity;->showPermissionDialog()V

    .line 233
    .end local v0    # "flagPermission":Z
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 213
    .restart local v0    # "flagPermission":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_3
    iget-wide v4, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 224
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/calendar/util/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    .line 226
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 227
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    const-string v4, "query"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "query":Ljava/lang/String;
    iget-wide v4, p0, Lcn/nubia/calendar/SearchActivity;->millis:J

    invoke-direct {p0, v4, v5, v3}, Lcn/nubia/calendar/SearchActivity;->initFragments(JLjava/lang/String;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 410
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    iget-object v2, p0, Lcn/nubia/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    .line 411
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->invalidateOptionsMenu()V

    .line 414
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Utils;->setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    iget-object v0, p0, Lcn/nubia/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 419
    invoke-virtual {p0}, Lcn/nubia/calendar/SearchActivity;->eventsChanged()V

    .line 420
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 402
    const-string v0, "key_restore_time"

    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mController:Lcn/nubia/calendar/CalendarController;

    invoke-virtual {v1}, Lcn/nubia/calendar/CalendarController;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 403
    const-string v0, "key_restore_search_query"

    iget-object v1, p0, Lcn/nubia/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method
