.class public Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;
.super Landroid/app/ListFragment;
.source "SelectCalendarsSyncFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLLATE_NOCASE:Ljava/lang/String; = " COLLATE NOCASE"

.field private static final IS_PRIMARY:Ljava/lang/String; = "\"primary\""

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String; = "account_name=? AND account_type=?"

.field private static final SORT_ORDER:Ljava/lang/String; = "\"primary\" DESC,calendar_displayName COLLATE NOCASE"

.field private static final TAG:Ljava/lang/String; = "SelectCalendarSync"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountsButton:Landroid/widget/Button;

.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private final mArgs:[Ljava/lang/String;

.field private mOrientation:I

.field private mService:Lcn/nubia/calendar/AsyncQueryService;

.field private mSyncStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    .line 80
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment$1;-><init>(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    .line 80
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment$1;-><init>(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "account_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    .line 100
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    .line 102
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 144
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 167
    new-instance v1, Lcn/nubia/calendar/AsyncQueryService;

    invoke-direct {v1, p1}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 169
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "account_type"

    .line 171
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    .line 173
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    .line 175
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mActivity:Landroid/app/Activity;

    .line 108
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mOrientation:I

    .line 109
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 210
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 212
    :try_start_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->PROJECTION:[Ljava/lang/String;

    const-string v4, "account_name=? AND account_type=?"

    iget-object v5, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const-string v6, "\"primary\" DESC,calendar_displayName COLLATE NOCASE"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v7

    .line 215
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 114
    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f110054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    .line 116
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    const v2, 0x7f110055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    .line 119
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v2, 0x7f110057

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 125
    .local v0, "rLayout":Landroid/widget/RelativeLayout;
    iget v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    :cond_0
    const v2, 0x7f110058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .line 223
    .local v0, "adapter":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .end local v0    # "adapter":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 225
    .restart local v0    # "adapter":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    return-void

    .line 227
    :cond_0
    invoke-virtual {v0, p2}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    return-void
.end method

.method public onPause()V
    .locals 18

    .prologue
    .line 179
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    .line 180
    .local v14, "listAdapter":Landroid/widget/ListAdapter;
    if-eqz v14, :cond_3

    .line 181
    check-cast v14, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .line 182
    .end local v14    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter;->getChanges()Ljava/util/HashMap;

    move-result-object v2

    .line 183
    .local v2, "changes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 184
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 185
    .local v15, "row":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    iget-boolean v3, v15, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    iget-boolean v4, v15, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    if-eq v3, v4, :cond_0

    .line 188
    iget-wide v12, v15, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    .line 189
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    long-to-int v4, v12

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/AsyncQueryService;->cancelOperation(I)I

    .line 191
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v15, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 193
    .local v6, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v7, "values":Landroid/content/ContentValues;
    iget-boolean v3, v15, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-eqz v3, :cond_1

    const/16 v16, 0x1

    .line 196
    .local v16, "synced":I
    :goto_1
    const-string v3, "sync_events"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v3, "visible"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcn/nubia/calendar/AsyncQueryService;

    long-to-int v4, v12

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v3 .. v11}, Lcn/nubia/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    goto :goto_0

    .line 195
    .end local v16    # "synced":I
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 201
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v12    # "id":J
    .end local v15    # "row":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 204
    .end local v2    # "changes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;>;"
    :cond_3
    invoke-super/range {p0 .. p0}, Landroid/app/ListFragment;->onPause()V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 148
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 149
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    const-string v2, "com.android.calendar"

    .line 150
    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    const v2, 0x7f0c0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    const v2, 0x7f0c0010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
