.class public Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;
.super Landroid/app/Fragment;
.source "SelectVisibleCalendarsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcn/nubia/calendar/CalendarController$EventHandler;


# static fields
.field private static final DELAY_TIME:I = 0x190

.field private static final IS_PRIMARY:Ljava/lang/String; = "\"primary\""

.field public static final KEY_BIRTHDAY_DISPLAY:Ljava/lang/String; = "is_birthday_visible"

.field public static final KEY_HOLIDAY_DISPLAY:Ljava/lang/String; = "is_holiday_visible"

.field public static final KEY_LUNAR_DAY_DISPLAY:Ljava/lang/String; = "is_lunar_visible"

.field public static final KEY_WESTERN_HOLIDAY_DISPLAY:Ljava/lang/String; = "is_western_holiday_visible"

.field private static final NOT_ZH_ADD_SELECTION:Ljava/lang/String; = " AND calendar_displayname NOT IN(\'Lunar\',\'Chinese Holiday\') "

.field public static final PREF_CUSTOM:Ljava/lang/String; = "custom_calendar"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String; = "sync_events=?"

.field private static final SELECTION_ARGS:[Ljava/lang/String;

.field private static final SETTING_ACCOUNT_RESULT:I = -0x7b

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static mCalendarItemLayout:I

.field private static mQueryToken:I

.field private static mUpdateToken:I


# instance fields
.field private c:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

.field private mCountry:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mLanguage:Ljava/lang/String;

.field private mList:Landroid/widget/ListView;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOrientation:I

.field private mService:Lcn/nubia/calendar/AsyncQueryService;

.field private mUseCustomActionBar:Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    .line 92
    const v0, 0x7f03003e

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;-><init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 333
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$3;-><init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mObserver:Landroid/database/ContentObserver;

    .line 122
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "itemLayout"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;-><init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 333
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$3;-><init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mObserver:Landroid/database/ContentObserver;

    .line 125
    sput p1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->onActionBarItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    return-object v0
.end method

.method private onActionBarItemSelected(I)Z
    .locals 5
    .param p1, "itemId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 265
    sparse-switch p1, :sswitch_data_0

    .line 280
    :goto_0
    return v4

    .line 267
    :sswitch_0
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-static {v2}, Lcn/nubia/calendar/util/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    goto :goto_0

    .line 271
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, "nextIntent":Landroid/content/Intent;
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v3

    .line 275
    .local v0, "array":[Ljava/lang/String;
    const-string v2, "authorities"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v1, v3}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1100d5 -> :sswitch_0
        0x7f11025d -> :sswitch_1
    .end sparse-switch
.end method

.method private showCustomActionBar()V
    .locals 8

    .prologue
    .line 246
    iget-boolean v4, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUseCustomActionBar:Z

    if-eqz v4, :cond_0

    .line 247
    iget-object v4, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300bb

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "actionBarButtons":Landroid/view/View;
    const v4, 0x7f11025d

    .line 251
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "btn_sync_set":Landroid/view/View;
    iget-object v4, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v4, 0x7f1100d5

    .line 254
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 255
    .local v1, "btn_edit_title":Landroid/widget/LinearLayout;
    const v4, 0x7f11004b

    .line 256
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 257
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f0c008a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v4, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v4, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v4, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 262
    .end local v0    # "actionBarButtons":Landroid/view/View;
    .end local v1    # "btn_edit_title":Landroid/widget/LinearLayout;
    .end local v2    # "btn_sync_set":Landroid/view/View;
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public eventsChanged()V
    .locals 8

    .prologue
    .line 376
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/AsyncQueryService;->cancelOperation(I)I

    .line 378
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    .line 380
    const-string v5, "sync_events=? AND calendar_displayname NOT IN(\'Lunar\',\'Chinese Holiday\') "

    .line 381
    .local v5, "selection":Ljava/lang/String;
    const-string v0, "CN"

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v5, "sync_events=?"

    .line 384
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    sget-object v6, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v5    # "selection":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 393
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleEvent(Lcn/nubia/calendar/CalendarController$EventInfo;)V
    .locals 4
    .param p1, "event"    # Lcn/nubia/calendar/CalendarController$EventInfo;

    .prologue
    .line 398
    iget-wide v0, p1, Lcn/nubia/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->eventsChanged()V

    .line 401
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 315
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    sget v2, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    .line 317
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 405
    const/16 v0, -0x7b

    if-ne p2, v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00e1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 409
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 410
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 131
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->c:Landroid/content/Context;

    move-object v0, p1

    .line 132
    check-cast v0, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 135
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mLanguage:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 138
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCountry:Ljava/lang/String;

    .line 139
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;-><init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 161
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f110057

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 286
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 294
    iput-boolean v3, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUseCustomActionBar:Z

    .line 295
    invoke-direct {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->showCustomActionBar()V

    .line 296
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 306
    iput-boolean v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUseCustomActionBar:Z

    .line 307
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .prologue
    const v8, 0x7f11025d

    const v7, 0x7f110057

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 183
    const v2, 0x7f0300b8

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 184
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    const v3, 0x7f11025c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    .line 187
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0007

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->inflater:Landroid/view/LayoutInflater;

    .line 195
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 196
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mOrientation:I

    .line 197
    iget v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mOrientation:I

    if-ne v2, v5, :cond_2

    .line 198
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/calendar/HomeActivity;

    if-nez v2, :cond_1

    .line 201
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 204
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 205
    iput-boolean v4, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUseCustomActionBar:Z

    .line 206
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const v3, 0x7f0c008a

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(I)V

    .line 211
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    .line 231
    :cond_1
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "btn_sync_set":Landroid/view/View;
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 236
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    return-object v2

    .line 214
    .end local v0    # "btn_sync_set":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/calendar/HomeActivity;

    if-nez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 218
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 220
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 221
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 226
    iput-boolean v5, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUseCustomActionBar:Z

    .line 227
    invoke-direct {p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->showCustomActionBar()V

    .line 228
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 166
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    .line 171
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getCount()I

    move-result v1

    if-gt v1, p3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 327
    .local v0, "row":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    iget v1, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->type:I

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0, p3}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->toggleVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 242
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 348
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    .line 349
    const-string v5, "sync_events=? AND calendar_displayname NOT IN(\'Lunar\',\'Chinese Holiday\') "

    .line 350
    .local v5, "selection":Ljava/lang/String;
    const-string v0, "CN"

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v5, "sync_events=?"

    .line 353
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    sget-object v6, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public toggleVisibility(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    sput v1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUpdateToken:I

    .line 364
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    .line 365
    invoke-virtual {v2, p1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getItemId(I)J

    move-result-wide v6

    .line 364
    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 366
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v5, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getVisible(I)I

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 369
    .local v0, "visibility":I
    const-string v1, "visible"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    sget v2, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUpdateToken:I

    const-wide/16 v8, 0x0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 371
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->setVisible(II)V

    .line 372
    return-void
.end method
