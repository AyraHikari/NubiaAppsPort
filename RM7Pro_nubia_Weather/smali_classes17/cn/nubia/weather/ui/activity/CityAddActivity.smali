.class public Lcn/nubia/weather/ui/activity/CityAddActivity;
.super Lcn/nubia/weather/ui/activity/BaseActivity;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;,
        Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;,
        Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;
    }
.end annotation


# static fields
.field private static final MSG_ALLCITY_DATA_INIT_COMPLETE:I = 0x2

.field private static final MSG_HOTCITY_DATA_INIT_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CityAddActivity"


# instance fields
.field private mAllCityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation
.end field

.field private mBackLayout:Landroid/widget/LinearLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

.field private mHotCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

.field private mHotCityGrid:Landroid/widget/GridView;

.field private mHotCityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHotCityText:Landroid/widget/TextView;

.field private mIsOneHand:Z

.field private mKeepPageFlag:Z

.field private mNaviBar:Landroid/view/View;

.field private mNetErrorView:Landroid/widget/LinearLayout;

.field private mNetSettingIv:Landroid/widget/ImageView;

.field private mNetSettingTv:Landroid/widget/TextView;

.field private mParentLayout:Landroid/widget/LinearLayout;

.field private mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

.field private mPersisterner:Lcn/nubia/weather/persistent/IPersistenter;

.field private mProgressView:Landroid/widget/LinearLayout;

.field private mQueryCityList:Landroid/widget/ListView;

.field private mReloadIv:Landroid/widget/ImageView;

.field private mReloadTv:Landroid/widget/TextView;

.field private mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchEmptyText:Landroid/widget/TextView;

.field private mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;-><init>()V

    .line 94
    new-instance v0, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Lcn/nubia/weather/ui/activity/CityAddActivity$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

    .line 658
    return-void
.end method

.method private ImmersionStatusBar()V
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    const/high16 v3, -0x80000000

    .line 318
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 320
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 322
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 324
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 326
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/activity/CityAddActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/weather/ui/activity/CityAddActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/activity/CityAddActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method private checkCTA()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 853
    const/4 v1, 0x0

    .line 854
    .local v1, "disable":I
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta()Z

    move-result v5

    if-nez v5, :cond_0

    .line 855
    const/4 v1, 0x1

    .line 858
    :cond_0
    if-nez v1, :cond_1

    const-string v5, "isCTA"

    invoke-static {p0, v5, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 860
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 863
    .local v4, "title":Ljava/lang/String;
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 864
    .local v0, "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    invoke-virtual {v0, v7}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 865
    const v5, 0x7f030021

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 866
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 867
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/weather/ui/activity/CityAddActivity$4;

    invoke-direct {v6, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$4;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-virtual {v0, v5, v6}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 875
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/weather/ui/activity/CityAddActivity$5;

    invoke-direct {v6, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$5;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-virtual {v0, v5, v6}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 884
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v2

    .line 885
    .local v2, "mDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    invoke-virtual {v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 889
    .end local v0    # "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .end local v2    # "mDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initBackgroundColor()V
    .locals 5

    .prologue
    .line 289
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "weathertype"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "weatherType":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isNight"

    invoke-static {}, Lcn/nubia/weather/utils/CalendarUtil;->isPhoneTimeNight()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 292
    .local v0, "isNight":Z
    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 297
    invoke-static {v1}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/WeatherStateUtils;->getBgColor(IZ)I

    move-result v4

    .line 296
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 316
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 301
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v1, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 302
    const-string v2, "CityAddActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [initBackgroundColor] weatherType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 306
    invoke-static {v1}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/WeatherStateUtils;->getBgColor(IZ)I

    move-result v4

    .line 305
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    .line 310
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    .line 311
    invoke-static {v4, v0}, Lcn/nubia/weather/utils/WeatherStateUtils;->getBgColor(IZ)I

    move-result v4

    .line 310
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private initDatas()V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 172
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPersisterner:Lcn/nubia/weather/persistent/IPersistenter;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPersisterner:Lcn/nubia/weather/persistent/IPersistenter;

    new-instance v2, Lcn/nubia/weather/ui/activity/CityAddActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$1;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-interface {v1, v2}, Lcn/nubia/weather/persistent/IPersistenter;->getHotCitys(Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 195
    const-string v1, "isLocationOpen"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->getLocationWeather()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 199
    .local v0, "mLocationCityWeatherData":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :cond_2
    const-string v1, "isLocationOpen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 203
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/weather/data/DataCenter;->removeWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0
.end method

.method private initEvents()V
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mBackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/weather/ui/activity/CityAddActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$2;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 274
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/nubia/weather/ui/activity/CityAddActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$3;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 209
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->ImmersionStatusBar()V

    .line 210
    const v0, 0x7f100057

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    .line 211
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    .line 212
    const v0, 0x7f10004f

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    .line 214
    const v0, 0x7f10004c

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSearchView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 215
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v1, 0x7f09004b

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    .line 217
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    .line 218
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 219
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelBtnVisibility(Z)V

    .line 221
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f10012b

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    .line 223
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 224
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 226
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f10004e

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    .line 228
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewStub;

    invoke-direct {v1, p0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewStub;

    invoke-direct {v1, p0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 232
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 234
    :cond_0
    new-instance v0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-direct {v0, p0, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    .line 235
    const v0, 0x7f100051

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    .line 236
    new-instance v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

    invoke-direct {v0, p0, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

    .line 237
    const v0, 0x7f100052

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mBackLayout:Landroid/widget/LinearLayout;

    .line 238
    const v0, 0x7f100045

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNaviBar:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    const v0, 0x7f10013d

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mReloadIv:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mReloadIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v0, 0x7f10013e

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mReloadTv:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f10013f

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetSettingIv:Landroid/widget/ImageView;

    .line 244
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetSettingIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const v0, 0x7f100140

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetSettingTv:Landroid/widget/TextView;

    .line 246
    return-void
.end method

.method private startMainActivity(ILcn/nubia/weather/model/WeatherModel;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.opencity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 392
    const-string v1, "CITY_INDEX"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 398
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    .line 399
    return-void

    .line 394
    :cond_0
    const-string v1, "CITY_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected doHandlerMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 502
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 503
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 506
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 508
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 509
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    :cond_1
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 512
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 570
    .end local v1    # "query":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 517
    :cond_3
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 518
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    :cond_4
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 521
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 523
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 525
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 526
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    :cond_6
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 529
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 534
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 535
    .local v0, "obj":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 537
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 540
    :cond_8
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 541
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-virtual {v2, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->setSearchResultData(Ljava/util/List;)V

    .line 542
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 546
    .end local v0    # "obj":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 547
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    :cond_9
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 550
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    :cond_a
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 553
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 557
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 558
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    :cond_b
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    .line 561
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    :cond_c
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 564
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x100007
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isFirstLaunch(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 926
    .line 927
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 928
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "isFirstLaunch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 930
    .local v0, "isFirstLaunch":Z
    if-eqz v0, :cond_0

    .line 931
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isFirstLaunch"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 933
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 802
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    goto :goto_0

    .line 805
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 811
    .end local v0    # "query":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->setNet()V

    goto :goto_0

    .line 814
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 815
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 817
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 818
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 820
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 821
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 823
    :cond_3
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 824
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 826
    :cond_4
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 827
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    :cond_5
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 830
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 835
    :cond_6
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_7

    .line 836
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 838
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    goto :goto_0

    .line 800
    :sswitch_data_0
    .sparse-switch
        0x7f100052 -> :sswitch_0
        0x7f100132 -> :sswitch_3
        0x7f10013d -> :sswitch_1
        0x7f10013f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcn/nubia/weather/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "CityAddActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 112
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->isOneHand()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mKeepPageFlag:Z

    .line 114
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    if-eqz v0, :cond_0

    .line 115
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->setContentView(I)V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/persistent/WeatherStore;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/persistent/WeatherStore;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPersisterner:Lcn/nubia/weather/persistent/IPersistenter;

    .line 120
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->initView()V

    .line 121
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->initEvents()V

    .line 122
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->initBackgroundColor()V

    .line 123
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->initDatas()V

    .line 124
    new-instance v0, Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-direct {v0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    .line 127
    return-void

    .line 117
    :cond_0
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "CityAddActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-virtual {v0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->hideDialog()V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->isFirstLaunch(Landroid/content/Context;)V

    .line 157
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 330
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 386
    .end local p3    # "arg2":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 332
    .restart local p3    # "arg2":I
    :pswitch_1
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    iget-boolean v7, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    if-eqz v7, :cond_1

    add-int/lit8 p3, p3, -0x1

    .end local p3    # "arg2":I
    :cond_1
    invoke-virtual {v6, p3}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/CityModel;

    .line 334
    .local v1, "cityInfo":Lcn/nubia/weather/model/CityModel;
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/weather/data/DataCenter;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 335
    .local v4, "index":I
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v5

    .line 336
    .local v5, "model":Lcn/nubia/weather/model/WeatherModel;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 337
    new-instance v5, Lcn/nubia/weather/model/WeatherModel;

    .end local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-direct {v5}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 338
    .restart local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmParentCityKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 341
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 342
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 343
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    .line 344
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 345
    const-string v6, "CityAddActivity"

    const-string v7, "add city whose AreaID is NULL"

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 348
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmParentCityKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 347
    invoke-virtual {v6, v7, v8, v9, v10}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 357
    :cond_3
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "cityName":Ljava/lang/String;
    new-instance v0, Lcn/nubia/weather/model/CityHelper;

    invoke-direct {v0}, Lcn/nubia/weather/model/CityHelper;-><init>()V

    .line 359
    .local v0, "cityHelper":Lcn/nubia/weather/model/CityHelper;
    invoke-direct {p0, v4, v5}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startMainActivity(ILcn/nubia/weather/model/WeatherModel;)V

    goto/16 :goto_0

    .line 350
    .end local v0    # "cityHelper":Lcn/nubia/weather/model/CityHelper;
    .end local v2    # "cityName":Ljava/lang/String;
    :cond_4
    if-gtz v4, :cond_5

    if-nez v4, :cond_3

    .line 352
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "isLocationOpen"

    const/4 v8, 0x1

    .line 351
    invoke-static {v6, v7, v8}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 353
    :cond_5
    const v6, 0x7f09004f

    .line 354
    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 353
    invoke-static {p0, v6}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 362
    .end local v1    # "cityInfo":Lcn/nubia/weather/model/CityModel;
    .end local v4    # "index":I
    .end local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    .restart local p3    # "arg2":I
    :pswitch_2
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityInfos:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/model/CityModel;

    .line 363
    .local v3, "hotCityInfo":Lcn/nubia/weather/model/CityModel;
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v3}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/weather/data/DataCenter;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 364
    .restart local v4    # "index":I
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v5

    .line 365
    .restart local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 366
    new-instance v5, Lcn/nubia/weather/model/WeatherModel;

    .end local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-direct {v5}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 367
    .restart local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v3}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 369
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 370
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    .line 371
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 372
    invoke-virtual {v3}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 371
    invoke-virtual {v6, v7, v8}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 373
    invoke-direct {p0, v4, v5}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startMainActivity(ILcn/nubia/weather/model/WeatherModel;)V

    goto/16 :goto_0

    .line 374
    :cond_6
    if-gtz v4, :cond_7

    if-nez v4, :cond_0

    .line 376
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "isLocationOpen"

    const/4 v8, 0x1

    .line 375
    invoke-static {v6, v7, v8}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 377
    :cond_7
    const v6, 0x7f09004f

    .line 378
    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-static {p0, v6}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x7f10004e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "CityAddActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onPause()V

    .line 148
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startQuery(Ljava/lang/String;)V

    .line 465
    :cond_0
    :goto_0
    return v2

    .line 445
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 446
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 448
    :cond_2
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 449
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :cond_3
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 452
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    :cond_4
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 456
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    :cond_5
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 459
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :cond_6
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 900
    packed-switch p1, :pswitch_data_0

    .line 921
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/weather/ui/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 902
    :pswitch_0
    const/4 v0, 0x1

    .line 903
    .local v0, "requestResult":Z
    if-eqz p3, :cond_1

    array-length v2, p3

    if-nez v2, :cond_2

    .line 904
    :cond_1
    const/4 v0, 0x0

    .line 906
    :cond_2
    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget v1, p3, v2

    .line 907
    .local v1, "result":I
    if-eqz v1, :cond_4

    .line 908
    const/4 v0, 0x0

    .line 909
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    .line 913
    .end local v1    # "result":I
    :cond_3
    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter;->getSize()I

    move-result v2

    if-nez v2, :cond_0

    .line 915
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/presenter/OverAllControl;->addEmptyLocModel()V

    goto :goto_0

    .line 906
    .restart local v1    # "result":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onResume()V

    .line 131
    const-string v0, "CityAddActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onUserLeaveHint()V

    .line 163
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mKeepPageFlag:Z

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mKeepPageFlag:Z

    .line 168
    :cond_0
    return-void
.end method

.method public setNet()V
    .locals 2

    .prologue
    .line 846
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mKeepPageFlag:Z

    .line 847
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 848
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 850
    return-void
.end method

.method public startQuery(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 473
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 476
    :cond_2
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 477
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_3
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 480
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 482
    :cond_4
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 483
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 486
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 491
    :cond_6
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 492
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    :cond_7
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 496
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->searchCities(Ljava/lang/String;)V

    goto :goto_0
.end method
