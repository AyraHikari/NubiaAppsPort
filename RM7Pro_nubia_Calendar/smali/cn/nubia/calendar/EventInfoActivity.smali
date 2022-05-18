.class public Lcn/nubia/calendar/EventInfoActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "EventInfoActivity.java"


# static fields
.field private static final CODE_READCALENDAR_EventInfoActivity:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EventInfoActivity"

.field public static isDoBackPressed:Z


# instance fields
.field private attendeeResponse:I

.field private isDialog:Z

.field private mContext:Landroid/content/Context;

.field private mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEndMillis:J

.field private mEventId:J

.field private mEventRinder:Landroid/os/Handler;

.field private mInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mStartMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/calendar/EventInfoActivity;->isDoBackPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 71
    iput-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mEventRinder:Landroid/os/Handler;

    .line 73
    iput-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    .line 77
    iput v1, p0, Lcn/nubia/calendar/EventInfoActivity;->attendeeResponse:I

    .line 78
    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoActivity;->isDialog:Z

    .line 199
    iput-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 232
    new-instance v0, Lcn/nubia/calendar/EventInfoActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/EventInfoActivity$1;-><init>(Lcn/nubia/calendar/EventInfoActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/EventInfoActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EventInfoActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mEventRinder:Landroid/os/Handler;

    .line 83
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 84
    .local v10, "intent":Landroid/content/Intent;
    iput v4, p0, Lcn/nubia/calendar/EventInfoActivity;->attendeeResponse:I

    .line 85
    iput-wide v6, p0, Lcn/nubia/calendar/EventInfoActivity;->mEventId:J

    .line 86
    iput-object p0, p0, Lcn/nubia/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    .line 87
    iput-boolean v4, p0, Lcn/nubia/calendar/EventInfoActivity;->isDialog:Z

    .line 88
    sput-boolean v4, Lcn/nubia/calendar/EventInfoActivity;->isDoBackPressed:Z

    .line 89
    new-instance v1, Lcn/nubia/calendar/util/CtaUtils;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/util/CtaUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    .line 90
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    invoke-virtual {v1, p0}, Lcn/nubia/calendar/util/CtaUtils;->ctaDialogdisPlay(Landroid/content/Context;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 94
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 95
    if-eqz p1, :cond_3

    .line 96
    const-string v1, "key_event_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mEventId:J

    .line 97
    const-string v1, "key_start_millis"

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mStartMillis:J

    .line 99
    const-string v1, "key_end_millis"

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mEndMillis:J

    .line 101
    const-string v1, "key_attendee_response"

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/EventInfoActivity;->attendeeResponse:I

    .line 103
    const-string v1, "key_fragment_is_dialog"

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/calendar/EventInfoActivity;->isDialog:Z

    .line 124
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 125
    .local v11, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f0006

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f0f000c

    .line 126
    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 127
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v6, p0, Lcn/nubia/calendar/EventInfoActivity;->mEndMillis:J

    iget v8, p0, Lcn/nubia/calendar/EventInfoActivity;->attendeeResponse:I

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/calendar/CalendarController;->launchViewEvent(JJJI)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->finish()V

    .line 152
    :cond_2
    :goto_1
    return-void

    .line 105
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_3
    if-eqz v10, :cond_1

    const-string v1, "android.intent.action.VIEW"

    .line 106
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "beginTime"

    invoke-virtual {v10, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mStartMillis:J

    .line 108
    const-string v1, "endTime"

    invoke-virtual {v10, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mEndMillis:J

    .line 109
    const-string v1, "attendeeStatus"

    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/EventInfoActivity;->attendeeResponse:I

    .line 111
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 112
    .local v9, "data":Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 114
    :try_start_0
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mEventId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0

    .line 133
    .end local v9    # "data":Landroid/net/Uri;
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_4
    const v1, 0x7f0300ba

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/EventInfoActivity;->setContentView(I)V

    .line 137
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f110167

    .line 138
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/EventInfoFragment;

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    .line 141
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 142
    .local v0, "bar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_2

    .line 143
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 146
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_1
.end method

.method private resisterReminderTimeObserver()V
    .locals 5

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/nubia/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 178
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 179
    return-void
.end method

.method private unRegisterEventContentObserver()V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 253
    return-void
.end method


# virtual methods
.method public checkAndRequestPermissions()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 155
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    .line 158
    .local v12, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v12}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 159
    .local v13, "ft":Landroid/app/FragmentTransaction;
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment;

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v6, p0, Lcn/nubia/calendar/EventInfoActivity;->mEndMillis:J

    iget v8, p0, Lcn/nubia/calendar/EventInfoActivity;->attendeeResponse:I

    iget-boolean v9, p0, Lcn/nubia/calendar/EventInfoActivity;->isDialog:Z

    iget-boolean v1, p0, Lcn/nubia/calendar/EventInfoActivity;->isDialog:Z

    if-eqz v1, :cond_1

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcn/nubia/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZIZ)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    .line 163
    const v0, 0x7f110167

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v13, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 164
    invoke-virtual {v13}, Landroid/app/FragmentTransaction;->commit()I

    .line 169
    .end local v12    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v13    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoActivity;->resisterReminderTimeObserver()V

    .line 170
    return-void

    .restart local v12    # "fragmentManager":Landroid/app/FragmentManager;
    .restart local v13    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    move v10, v11

    .line 159
    goto :goto_0

    .line 167
    .end local v12    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v13    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v11

    invoke-static {p0, v0, v10}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 323
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/calendar/EventInfoFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 325
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 390
    :try_start_0
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onAttachedToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 374
    :try_start_0
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcn/nubia/calendar/EventInfoActivity;->isDoBackPressed:Z

    .line 380
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/calendar/EventInfoActivity;->init(Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->checkAndRequestPermissions()V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoActivity;->resisterReminderTimeObserver()V

    .line 197
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 349
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0f000c

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 354
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoActivity;->unRegisterEventContentObserver()V

    .line 355
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 357
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 359
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 361
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/EventInfoActivity;->setIntent(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 400
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 405
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 407
    :goto_0
    return v0

    .line 402
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->onBackPressed()V

    .line 407
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 342
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 204
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 205
    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_1

    .line 206
    invoke-direct {p0}, Lcn/nubia/calendar/EventInfoActivity;->showPermissionDialog()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/EventInfoActivity;->init(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcn/nubia/calendar/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    .line 211
    .local v12, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v12}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 212
    .local v13, "ft":Landroid/app/FragmentTransaction;
    new-instance v0, Lcn/nubia/calendar/EventInfoFragment;

    iget-wide v2, p0, Lcn/nubia/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcn/nubia/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v6, p0, Lcn/nubia/calendar/EventInfoActivity;->mEndMillis:J

    iget v8, p0, Lcn/nubia/calendar/EventInfoActivity;->attendeeResponse:I

    iget-boolean v9, p0, Lcn/nubia/calendar/EventInfoActivity;->isDialog:Z

    iget-boolean v1, p0, Lcn/nubia/calendar/EventInfoActivity;->isDialog:Z

    if-eqz v1, :cond_2

    const/4 v10, 0x1

    :goto_1
    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcn/nubia/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZIZ)V

    iput-object v0, p0, Lcn/nubia/calendar/EventInfoActivity;->mInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    .line 216
    const v0, 0x7f110167

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoActivity;->mInfoFragment:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v13, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 217
    invoke-virtual {v13}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 212
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 336
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 337
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 385
    return-void
.end method
