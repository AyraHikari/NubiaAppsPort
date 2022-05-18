.class public Lcn/nubia/calendar/util/CtaUtils;
.super Ljava/lang/Object;
.source "CtaUtils.java"


# static fields
.field public static final IS_ALLOW_ACCESS_NETWORK:Ljava/lang/String; = "isAllowAccessNetwork"

.field public static final IS_FIRST_LAUNCH:Ljava/lang/String; = "isFirstLaunch"

.field public static final TAG:Ljava/lang/String; = "CtaUtils"

.field private static final duration:J = 0x36ee80L

.field private static lastGetWeatherTime:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateControll:Lcn/nubia/calendar/deftcontroller/UpdateApkController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 251
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/calendar/util/CtaUtils;->lastGetWeatherTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/util/CtaUtils;->mUpdateControll:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/util/CtaUtils;->mDialogList:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcn/nubia/calendar/util/CtaUtils;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private RequestPermission(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    new-instance v0, Lcn/nubia/calendar/util/CtaUtils$4;

    invoke-direct {v0, p0, p1}, Lcn/nubia/calendar/util/CtaUtils$4;-><init>(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V

    .line 189
    .local v0, "callback":Lcn/nubia/calendar/util/PermissionRequestUtil$PermissionRequestCallback;
    invoke-static {}, Lcn/nubia/calendar/util/PermissionList;->getPermissionList()[Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "per":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Lcn/nubia/calendar/util/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/calendar/util/PermissionRequestUtil$PermissionRequestCallback;)I

    move-result v2

    return v2
.end method

.method static synthetic access$000(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/util/CtaUtils;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/calendar/util/CtaUtils;->RequestPermission(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/util/CtaUtils;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/calendar/util/CtaUtils;->getPermissionAfterDoSomething(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 47
    sget-wide v0, Lcn/nubia/calendar/util/CtaUtils;->lastGetWeatherTime:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 47
    sput-wide p0, Lcn/nubia/calendar/util/CtaUtils;->lastGetWeatherTime:J

    return-wide p0
.end method

.method private getPermissionAfterDoSomething(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    instance-of v3, p1, Lcn/nubia/calendar/HomeActivity;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 137
    check-cast v3, Lcn/nubia/calendar/HomeActivity;

    invoke-virtual {v3}, Lcn/nubia/calendar/HomeActivity;->checkAndRequestPermissions()V

    move-object v3, p1

    .line 138
    check-cast v3, Lcn/nubia/calendar/HomeActivity;

    invoke-virtual {v3}, Lcn/nubia/calendar/HomeActivity;->refreshMonthView()V

    .line 141
    :cond_0
    instance-of v3, p1, Lcn/nubia/calendar/EventInfoActivity;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 142
    check-cast v3, Lcn/nubia/calendar/EventInfoActivity;

    invoke-virtual {v3}, Lcn/nubia/calendar/EventInfoActivity;->checkAndRequestPermissions()V

    .line 145
    :cond_1
    instance-of v3, p1, Lcn/nubia/calendar/CalendarSettingsActivity;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 146
    check-cast v3, Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-virtual {v3}, Lcn/nubia/calendar/CalendarSettingsActivity;->checkAndRequestPermissions()V

    .line 149
    :cond_2
    instance-of v3, p1, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    if-eqz v3, :cond_3

    move-object v3, p1

    .line 150
    check-cast v3, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->checkAndRequestPermissions()V

    .line 153
    :cond_3
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/util/CtaUtils;->saveIsFirstLaunchToSharedPref(Landroid/content/Context;)V

    .line 154
    invoke-direct {p0, p1}, Lcn/nubia/calendar/util/CtaUtils;->saveIsAllowAccessNetworkToSharedPref(Landroid/content/Context;)V

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/calendar/util/CtaUtils;->oBtainHoliday(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/util/CtaUtils;->initUpdateController(Landroid/content/Context;)V

    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/calendar/util/CtaUtils;->initSportsMatchData(Landroid/content/Context;)V

    .line 158
    invoke-static {p1}, Lcn/nubia/calendar/util/TrackUtils;->init(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 161
    .local v0, "adInfFactory":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    invoke-static {}, Lcn/nubia/calendar/util/AdSetting;->getAppID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, p1, v3, v4, v5}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->attach(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 162
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    move-result-object v1

    .line 163
    .local v1, "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdUtils()Lcom/huanju/ssp/sdk/inf/AdUtils;

    move-result-object v2

    .line 164
    .local v2, "adUtils":Lcom/huanju/ssp/sdk/inf/AdUtils;
    return-void
.end method

.method private initSportsMatchData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    :try_start_0
    invoke-static {p1}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSwitchInfo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-static {p1}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->initNucmsSDK(Landroid/content/Context;)V

    .line 198
    invoke-static {p1}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->requerstSportsMatchesData(Landroid/content/Context;)V

    .line 199
    invoke-static {p1}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getServerSwitch(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isFirstLaunch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    .line 228
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "isFirstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private oBtainHoliday(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    .line 64
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/CalendarApplication;

    .line 65
    .local v0, "app":Lcn/nubia/calendar/CalendarApplication;
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getHolidayModel()Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    move-result-object v1

    .line 66
    .local v1, "holidayModel":Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    invoke-virtual {v1, p1}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->init(Landroid/content/Context;)V

    .line 68
    instance-of v2, p1, Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    if-eqz v2, :cond_0

    .line 69
    check-cast p1, Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {v1, p1}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->asyncLoad(Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V

    .line 71
    :cond_0
    return-void
.end method

.method private saveIsAllowAccessNetworkToSharedPref(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    .line 215
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isAllowAccessNetwork"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    return-void
.end method

.method public static startPrivacy(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://account.nubia.com/res/html/calendar_privacy.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method


# virtual methods
.method public ctaDialogdisPlay(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p1}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/util/CtaUtils;->ctaWarning(Landroid/content/Context;)V

    .line 89
    :cond_0
    return-void
.end method

.method public ctaWarning(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 93
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 94
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f1100ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "mAgreen":Landroid/widget/TextView;
    new-instance v4, Lcn/nubia/calendar/util/CtaUtils$1;

    invoke-direct {v4, p0, p1}, Lcn/nubia/calendar/util/CtaUtils$1;-><init>(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0103

    .line 104
    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    .line 105
    invoke-virtual {v4, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/calendar/util/CtaUtils$3;

    invoke-direct {v6, p0, p1}, Lcn/nubia/calendar/util/CtaUtils$3;-><init>(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V

    .line 106
    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0105

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/calendar/util/CtaUtils$2;

    invoke-direct {v6, p0, p1}, Lcn/nubia/calendar/util/CtaUtils$2;-><init>(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V

    .line 116
    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    .line 127
    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 128
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    iget-object v4, p0, Lcn/nubia/calendar/util/CtaUtils;->mDialogList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 130
    invoke-virtual {v0, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    invoke-virtual {v0, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 132
    return-void
.end method

.method public getNubiaId(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    const/4 v5, 0x0

    .line 234
    .local v5, "nubiaId":Ljava/lang/String;
    const-string v4, "com.ztemt"

    .line 235
    .local v4, "nubiaAccountType":Ljava/lang/String;
    const-string v6, "userId"

    .line 237
    .local v6, "nubiaUserID":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "account"

    .line 238
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 239
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 240
    .local v2, "accounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-lez v7, :cond_0

    .line 241
    const/4 v7, 0x0

    aget-object v0, v2, v7

    .line 242
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v0, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    const-string v7, "huangdi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nubiaId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    :goto_0
    return-object v5

    .line 245
    :catch_0
    move-exception v3

    .line 246
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initUpdateController(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/calendar/util/CtaUtils;->mUpdateControll:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/util/CtaUtils;->mUpdateControll:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .line 76
    :cond_0
    return-void
.end method

.method public isAllowAccessNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    .line 222
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "isAllowAccessNetwork"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isCtaDisableOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    const-string v1, "persist.sys.cta.disable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method

.method public obtainWeatherDate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    monitor-enter p1

    .line 256
    :try_start_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/calendar/util/CtaUtils$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/util/CtaUtils$5;-><init>(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 276
    monitor-exit p1

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcn/nubia/calendar/util/CtaUtils;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcn/nubia/calendar/util/CtaUtils;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    .line 281
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 285
    .end local v0    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/util/CtaUtils;->mDialogList:Ljava/util/List;

    .line 286
    return-void
.end method

.method public saveIsFirstLaunchToSharedPref(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    .line 208
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isFirstLaunch"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    return-void
.end method
