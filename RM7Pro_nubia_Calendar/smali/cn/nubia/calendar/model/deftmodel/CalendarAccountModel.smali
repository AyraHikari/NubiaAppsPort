.class public Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;
.super Lcn/nubia/deftmachanism/DeftModel;
.source "CalendarAccountModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;
    }
.end annotation


# static fields
.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"

.field private static final TAG:Ljava/lang/String; = "CalendarAccountModel"


# instance fields
.field mCalendarDbMgr:Lcn/nubia/calendar/db/DefaultCalendarAccountManager;

.field private mCheckForAccounts:Z

.field private mContext:Landroid/content/Context;

.field private mHostActivity:Landroid/app/Activity;

.field private mQueryHandler:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;

.field private mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftModel;-><init>()V

    .line 130
    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mContext:Landroid/content/Context;

    .line 131
    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mHostActivity:Landroid/app/Activity;

    .line 132
    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 133
    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mQueryHandler:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mCheckForAccounts:Z

    .line 136
    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mCalendarDbMgr:Lcn/nubia/calendar/db/DefaultCalendarAccountManager;

    .line 33
    new-instance v0, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;

    invoke-direct {v0}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mCalendarDbMgr:Lcn/nubia/calendar/db/DefaultCalendarAccountManager;

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mCheckForAccounts:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mHostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;)Lcn/nubia/calendar/util/SharedPrefUtil;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    return-object v0
.end method


# virtual methods
.method public asyncCheckIfNeeded(Z)V
    .locals 9
    .param p1, "requestCheck"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v3, "preferences_skip_setup"

    invoke-virtual {v0, v3, v4}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Z)Z

    move-result v8

    .line 67
    .local v8, "skipSetup":Z
    if-nez v8, :cond_0

    .line 68
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;

    iget-object v3, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;-><init>(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mQueryHandler:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;

    .line 69
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mQueryHandler:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public getCheckAcountsFlag()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mCheckForAccounts:Z

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mHostActivity:Landroid/app/Activity;

    .line 39
    new-instance v0, Lcn/nubia/calendar/util/SharedPrefUtil;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 40
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mCalendarDbMgr:Lcn/nubia/calendar/db/DefaultCalendarAccountManager;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string v0, "key_check_for_accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "key_check_for_accounts"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mCheckForAccounts:Z

    .line 54
    :cond_0
    return-void
.end method

.method public saveAccountData()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->mCalendarDbMgr:Lcn/nubia/calendar/db/DefaultCalendarAccountManager;

    invoke-virtual {v0}, Lcn/nubia/calendar/db/DefaultCalendarAccountManager;->createCalendarAccount()V

    .line 58
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->getCheckAcountsFlag()Z

    move-result v0

    .line 45
    .local v0, "needCheckForAccounts":Z
    const-string v1, "key_check_for_accounts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method
