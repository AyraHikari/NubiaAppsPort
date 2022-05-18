.class public Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
.super Landroid/app/ExpandableListActivity;
.source "SelectSyncedCalendarsMultiAccountActivity.java"


# static fields
.field private static final ACCOUNT_UNIQUE_KEY:Ljava/lang/String; = "ACCOUNT_KEY"

.field private static final CHANGE_KEY:Ljava/lang/String; = "change_key"

.field private static final CODE_WRITECALENDAR_PERMISSION:I = 0x0

.field private static final EXPANDED_KEY:Ljava/lang/String; = "is_expanded"

.field private static final HAVING_SYNC_ACCOUNT:Ljava/lang/String; = "account_type!=?"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static final WHERE_ACCOUNT_ARGS:[Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAccountsCursor:Landroid/database/MatrixCursor;

.field private mActionBar:Landroid/app/ActionBar;

.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

.field private mList:Landroid/widget/ExpandableListView;

.field private mOrientation:I

.field private mUseCustomActionBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LOCAL"

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->WHERE_ACCOUNT_ARGS:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_type"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type || account_name AS ACCOUNT_KEY"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 65
    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    .line 79
    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAccountsCursor:Landroid/database/MatrixCursor;

    .line 82
    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 84
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$1;-><init>(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)Landroid/database/MatrixCursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAccountsCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
    .param p1, "x1"    # Landroid/database/MatrixCursor;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAccountsCursor:Landroid/database/MatrixCursor;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
    .param p1, "x1"    # Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private showCustomActionBar()V
    .locals 9

    .prologue
    .line 191
    iget-boolean v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mUseCustomActionBar:Z

    if-eqz v5, :cond_0

    .line 192
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0300b7

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "actionBarButtons":Landroid/view/View;
    const v5, 0x7f11025a

    .line 196
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, "cancelActionView":Landroid/view/View;
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v5, 0x7f11025b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 199
    .local v3, "doneActionView":Landroid/view/View;
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v5, 0x7f1100d5

    .line 201
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 202
    .local v1, "btn_edit_title":Landroid/widget/LinearLayout;
    const v5, 0x7f11004b

    .line 203
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 204
    .local v4, "title":Landroid/widget/TextView;
    const v5, 0x7f0c0089

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 209
    .end local v0    # "actionBarButtons":Landroid/view/View;
    .end local v1    # "btn_edit_title":Landroid/widget/LinearLayout;
    .end local v2    # "cancelActionView":Landroid/view/View;
    .end local v3    # "doneActionView":Landroid/view/View;
    .end local v4    # "title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 307
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 308
    return-void
.end method

.method private startCalendarMetafeedSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 487
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 489
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 490
    return-void
.end method


# virtual methods
.method protected onActionBarItemSelected(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 92
    sparse-switch p1, :sswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 94
    :sswitch_0
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    goto :goto_0

    .line 98
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->doSaveAction()V

    .line 100
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->notifyDataSetChanged()V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->finish()V

    goto :goto_0

    .line 106
    :sswitch_2
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->finish()V

    goto :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x7f1100d5 -> :sswitch_0
        0x7f11025a -> :sswitch_2
        0x7f11025b -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f110057

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 214
    invoke-virtual {p0, v4}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 221
    iput-boolean v3, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mUseCustomActionBar:Z

    .line 222
    invoke-direct {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->showCustomActionBar()V

    .line 223
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p0, v4}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 233
    iput-boolean v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mUseCustomActionBar:Z

    .line 234
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f110057

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v2, 0x7f0300b9

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 116
    invoke-direct {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->startCalendarMetafeedSync()V

    .line 117
    invoke-static {p0, v5}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 150
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->inflater:Landroid/view/LayoutInflater;

    .line 151
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    .line 152
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mOrientation:I

    .line 153
    iget v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mOrientation:I

    if-ne v2, v5, :cond_1

    .line 154
    invoke-virtual {p0, v3}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 160
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 164
    iput-boolean v4, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mUseCustomActionBar:Z

    .line 165
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f0c0089

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 166
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    .line 181
    :cond_0
    :goto_0
    const v2, 0x7f11025a

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 182
    .local v0, "btn_cancel":Landroid/widget/Button;
    const v2, 0x7f11025b

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 183
    .local v1, "btn_save":Landroid/widget/Button;
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void

    .line 169
    .end local v0    # "btn_cancel":Landroid/widget/Button;
    .end local v1    # "btn_save":Landroid/widget/Button;
    :cond_1
    invoke-virtual {p0, v3}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 172
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 173
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 174
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 175
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 176
    iput-boolean v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mUseCustomActionBar:Z

    .line 177
    invoke-direct {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->showCustomActionBar()V

    .line 178
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 384
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 388
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 465
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 470
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 467
    :pswitch_0
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 468
    const/4 v0, 0x1

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 368
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->cancelRefreshStopDelay()V

    .line 371
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 312
    if-nez p1, :cond_1

    .line 313
    const/4 v8, 0x0

    .line 314
    .local v8, "flagPermission":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, p3

    if-ge v9, v0, :cond_0

    .line 315
    aget v0, p3, v9

    if-eqz v0, :cond_2

    .line 316
    const/4 v8, 0x1

    .line 320
    :cond_0
    if-eqz v8, :cond_3

    .line 321
    invoke-direct {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->showPermissionDialog()V

    .line 362
    .end local v8    # "flagPermission":Z
    .end local v9    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 314
    .restart local v8    # "flagPermission":Z
    .restart local v9    # "i":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 324
    :cond_3
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$3;

    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$3;-><init>(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "account_type!=?)GROUP BY (ACCOUNT_KEY"

    sget-object v6, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->WHERE_ACCOUNT_ARGS:[Ljava/lang/String;

    const-string v7, "account_name"

    .line 347
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$3;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 423
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 424
    const-string v5, "is_expanded"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v4

    .line 425
    .local v4, "isExpanded":[Z
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 426
    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v5

    array-length v6, v4

    if-lt v5, v6, :cond_2

    .line 427
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 428
    aget-boolean v5, v4, v2

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 429
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 427
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_1
    aget-boolean v5, v4, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 436
    .end local v2    # "i":I
    :cond_2
    const-string v5, "change_key"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 437
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 438
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 439
    .local v1, "change":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 444
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    if-eqz v5, :cond_4

    .line 445
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v5, v1}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setCalendarChanges(Ljava/util/Map;)V

    .line 446
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v5}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->notifyDataSetChanged()V

    .line 452
    .end local v1    # "change":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 252
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->startRefreshStopDelay()V

    .line 256
    :cond_0
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;

    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;-><init>(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;Landroid/content/ContentResolver;)V

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "account_type!=?)GROUP BY (ACCOUNT_KEY"

    sget-object v6, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->WHERE_ACCOUNT_ARGS:[Ljava/lang/String;

    const-string v7, "account_name"

    .line 281
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$2;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v0, v2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 394
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 395
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v5, :cond_0

    .line 396
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v1

    .line 397
    .local v1, "count":I
    new-array v4, v1, [Z

    .line 398
    .local v4, "isExpanded":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 399
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    aput-boolean v5, v4, v2

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "isExpanded":[Z
    :cond_0
    const/4 v4, 0x0

    .line 404
    .restart local v4    # "isExpanded":[Z
    :cond_1
    const-string v5, "is_expanded"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 407
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v5}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->getCalendarChanges()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .line 408
    invoke-virtual {v5}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->getCalendarChanges()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v0, "bunndle":Landroid/os/Bundle;
    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v5}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->getCalendarChanges()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 411
    .local v3, "id":Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .line 412
    invoke-virtual {v5}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->getCalendarChanges()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 411
    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 414
    .end local v3    # "id":Ljava/lang/Long;
    :cond_2
    const-string v5, "change_key"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 418
    .end local v0    # "bunndle":Landroid/os/Bundle;
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStop()V

    .line 376
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAccountsCursor:Landroid/database/MatrixCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAccountsCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAccountsCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->close()V

    .line 379
    :cond_0
    return-void
.end method
