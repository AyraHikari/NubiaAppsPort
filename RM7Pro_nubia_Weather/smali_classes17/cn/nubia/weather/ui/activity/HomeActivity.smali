.class public Lcn/nubia/weather/ui/activity/HomeActivity;
.super Lcn/nubia/weather/ui/activity/BaseFragmentActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/weather/inner/ISettingsCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/HomeActivity$NaviBarObserver;,
        Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;
    }
.end annotation


# static fields
.field public static final MESSAGE_UPDATE_INDICATOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WeatherMainActivity"

.field private static final WEATHER_ANIM_NEED_CHANGE_TIME:I = 0xc8


# instance fields
.field private listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

.field private mActionBar:Landroid/widget/TextView;

.field private mAreaID:Ljava/lang/String;

.field private mCityIndexIndicator:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

.field private mCityListButton:Landroid/widget/ImageView;

.field private mCityName:Ljava/lang/String;

.field private mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mGLMaskImageView:Landroid/widget/ImageView;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHandler:Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;

.field private mHasInitWeatherAnimView:Z

.field private mHasOnCreated:Z

.field private mIsFirstFlag:Z

.field private mIsForeground:Z

.field private mIsFromAdd:Z

.field private mIsNaviBarEnable:I

.field private mIsNight:Z

.field private mIsRefreshNeeded:Z

.field private mIsUpdateNeeded:Z

.field private mIsUpgradeNeeded:Z

.field private mIsWeatherAnimActive:Z

.field private mNaviBarObserver:Landroid/database/ContentObserver;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field public mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

.field private mResumeTime:J

.field private mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

.field private mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

.field private mWeatherTemper:Ljava/lang/Integer;

.field private mWeatherType:I

.field private mWeatherViewPager:Landroid/support/v4/view/ViewPager;

.field private oldPosition:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;-><init>()V

    .line 83
    iput v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    .line 86
    new-instance v0, Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHandler:Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;

    .line 87
    iput v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherType:I

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherTemper:Ljava/lang/Integer;

    .line 89
    iput-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCityName:Ljava/lang/String;

    .line 90
    iput-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mAreaID:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsNight:Z

    .line 94
    iput-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 95
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsWeatherAnimActive:Z

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mResumeTime:J

    .line 98
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasInitWeatherAnimView:Z

    .line 102
    iput-boolean v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsUpdateNeeded:Z

    .line 103
    iput-boolean v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsUpgradeNeeded:Z

    .line 104
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsRefreshNeeded:Z

    .line 105
    iput v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsNaviBarEnable:I

    .line 106
    iput-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 107
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsForeground:Z

    .line 108
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsFromAdd:Z

    .line 109
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasOnCreated:Z

    .line 113
    iput-boolean v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsFirstFlag:Z

    .line 255
    new-instance v0, Lcn/nubia/weather/ui/activity/HomeActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$3;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    .line 719
    new-instance v0, Lcn/nubia/weather/ui/activity/HomeActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$5;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 883
    return-void
.end method

.method private AnimationEffect()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mActionBar:Landroid/widget/TextView;

    .line 297
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mActionBar:Landroid/widget/TextView;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 300
    return-void
.end method

.method private ImmersionStatusBar()V
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    const/high16 v3, -0x80000000

    .line 303
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 304
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 305
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 307
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 311
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/activity/HomeActivity;)Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/activity/HomeActivity;)Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCityIndexIndicator:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->checkAndRequestPermission()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->startCityListActivity()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/activity/HomeActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mGLMaskImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/activity/HomeActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/weather/ui/activity/HomeActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/weather/ui/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->refreshBackground()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/weather/ui/activity/HomeActivity;)Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHandler:Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/weather/ui/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->showAlarmContent()V

    return-void
.end method

.method private checkAndRequestPermission()V
    .locals 4

    .prologue
    .line 192
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-virtual {v1, p0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->requestPermissions(Landroid/app/Activity;)Z

    move-result v0

    .line 193
    .local v0, "grant":Z
    const-string v1, "WeatherMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkAndRequestPermission grant : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lcn/nubia/weather/ui/activity/HomeActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$2;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 215
    :cond_0
    return-void
.end method

.method private checkCTA()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 737
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    const/4 v1, 0x0

    .line 741
    .local v1, "disable":I
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta()Z

    move-result v4

    if-nez v4, :cond_2

    .line 742
    const/4 v1, 0x1

    .line 745
    :cond_2
    if-nez v1, :cond_0

    const-string v4, "isCTA"

    invoke-static {p0, v4, v6}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 747
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 750
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 751
    const v4, 0x7f030021

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 752
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 753
    const/high16 v4, 0x1040000

    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/weather/ui/activity/HomeActivity$6;

    invoke-direct {v5, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$6;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 761
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/weather/ui/activity/HomeActivity$7;

    invoke-direct {v5, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$7;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 770
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 771
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private initActivity()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 270
    const-string v3, "weathermain initActivity"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 272
    :try_start_0
    const-string v3, "WeatherMainActivity"

    const-string v4, "initActivity: mParentActivity 111"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v3, 0x0

    sput-object v3, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    .line 274
    const-string v3, "isLocationOpen"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 275
    .local v1, "isLocationOpen":Z
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 286
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 288
    :goto_0
    return-void

    .line 278
    :cond_0
    :try_start_1
    const-string v3, "WeatherMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initActivity: size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/data/DataCenter;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ;; !isLocationOpen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter;->getSize()I

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 280
    const-string v2, "WeatherMainActivity"

    const-string v3, "initActivity: mParentActivity 222"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sput-object p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 278
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 286
    .end local v1    # "isLocationOpen":Z
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method private initBackground()V
    .locals 4

    .prologue
    .line 630
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getCurrentWeatherType()Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v0

    .line 632
    .local v0, "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    const-string v2, "WeatherMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherType;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 633
    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->name()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsWeatherAnimActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-static {v2, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-boolean v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsWeatherAnimActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-eq v0, v1, :cond_0

    .line 636
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setWeatherType(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 637
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasInitWeatherAnimView:Z

    .line 638
    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 641
    .end local v0    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    :cond_0
    return-void

    .line 632
    .restart local v0    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 633
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-direct {v0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    .line 293
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 314
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->ImmersionStatusBar()V

    .line 315
    const v2, 0x7f10006b

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 316
    const v2, 0x7f100049

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCityListButton:Landroid/widget/ImageView;

    .line 317
    const v2, 0x7f100048

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 318
    .local v1, "mLogoButton":Landroid/widget/ImageView;
    const v2, 0x7f10006e

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 319
    const v2, 0x7f100047

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCityIndexIndicator:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    .line 320
    const v2, 0x7f10006c

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/opengl/GLSurfaceView;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "isPressBotton":Z
    const-string v2, "android.intent.action.opencity"

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const/4 v0, 0x1

    .line 327
    :cond_0
    :goto_0
    new-instance v2, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHandler:Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;

    invoke-direct {v2, p0, v3, v4, v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;Z)V

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .line 329
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 330
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 331
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 332
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 333
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCityIndexIndicator:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 334
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCityListButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v2, 0x7f10006f

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mGLMaskImageView:Landroid/widget/ImageView;

    .line 336
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->AnimationEffect()V

    .line 338
    return-void

    .line 324
    :cond_1
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->isInited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initWeatherAnimView()V
    .locals 2

    .prologue
    .line 242
    const-string v0, "weathermain initWeatherAnimView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 244
    :try_start_0
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-direct {v0, p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 245
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mGLMaskImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onCreate(Landroid/opengl/GLSurfaceView;)V

    .line 247
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setWeatherListener(Lcom/bluestareffects/app/weather/api/WeatherCreateListener;)V

    .line 248
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/app/WeatherApplication;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/app/WeatherApplication;->setWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasInitWeatherAnimView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private refreshBackground()V
    .locals 8

    .prologue
    .line 601
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v3, :cond_1

    .line 602
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getCurrentWeatherType()Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v2

    .line 603
    .local v2, "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    const-string v4, "WeatherMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refresh "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bluestareffects/app/weather/api/WeatherType;->name()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 604
    invoke-virtual {v3}, Lcom/bluestareffects/app/weather/api/WeatherType;->name()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsWeatherAnimActive:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-static {v4, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsWeatherAnimActive:Z

    if-eqz v3, :cond_1

    .line 607
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-eq v2, v3, :cond_1

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mResumeTime:J

    sub-long v0, v4, v6

    .line 615
    .local v0, "refreshIntervalTime":J
    const-wide/16 v4, 0xc8

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasInitWeatherAnimView:Z

    if-eqz v3, :cond_4

    .line 617
    :cond_0
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v3, v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeather(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 618
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasInitWeatherAnimView:Z

    .line 623
    :goto_2
    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 627
    .end local v0    # "refreshIntervalTime":J
    .end local v2    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    :cond_1
    return-void

    .line 603
    .restart local v2    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 604
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 620
    .restart local v0    # "refreshIntervalTime":J
    :cond_4
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v3, v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 621
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->resetWeatherAlpha(F)V

    goto :goto_2
.end method

.method private showAlarmContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 451
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    .line 452
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 453
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 454
    .local v0, "notiFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 455
    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v0    # "notiFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->showNotificationDetail()V

    .line 458
    :cond_0
    return-void
.end method

.method private startCityAddActivity()V
    .locals 2

    .prologue
    .line 1008
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1009
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1010
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1011
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->finish()V

    .line 1012
    return-void
.end method

.method private startCityListActivity()V
    .locals 3

    .prologue
    .line 461
    const-string v1, "WeatherMainActivity"

    const-string v2, "startCityListActivity: "

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 464
    const-string v1, "isNight"

    iget-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsNight:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    const-string v1, "weathertype"

    iget v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    :cond_0
    const-string v1, "WeatherMainActivity"

    const-string v2, "startCityListActivity: mParentActivity 333"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sput-object p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    .line 469
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    return-void
.end method


# virtual methods
.method public adjustLayout(I)V
    .locals 11
    .param p1, "isEnableNaviBar"    # I

    .prologue
    const/4 v10, 0x0

    .line 846
    const/4 v5, 0x0

    .line 847
    .local v5, "viewPagerPadding":I
    const v6, 0x7f100045

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 849
    .local v2, "naviBar":Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 850
    .local v3, "para":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01a1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 852
    .local v0, "barHeight":I
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "navigation_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 853
    .local v4, "resourceId":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    float-to-int v0, v6

    .line 857
    .end local v4    # "resourceId":I
    :goto_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 858
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 859
    move v5, v0

    .line 866
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v10, v10, v10, v5}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 868
    return-void

    .line 854
    :catch_0
    move-exception v1

    .line 855
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 861
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 863
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public adjustLayoutByNaviBarStatus()V
    .locals 4

    .prologue
    .line 899
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cc_navi_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 901
    .local v0, "isEnableNaviBar":I
    iget v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsNaviBarEnable:I

    if-eq v1, v0, :cond_0

    .line 902
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->adjustLayout(I)V

    .line 903
    iput v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsNaviBarEnable:I

    .line 905
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 1020
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1021
    const-string v1, "WeatherMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel: currentItem \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 1023
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1024
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->stopRefreshAnime(I)V

    .line 1027
    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_0
    return-void
.end method

.method public dealWithIntent(Z)V
    .locals 10
    .param p1, "hasOnCreated"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 908
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 909
    .local v1, "intent":Landroid/content/Intent;
    iput-boolean p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasOnCreated:Z

    .line 910
    const/4 v2, 0x0

    .line 911
    .local v2, "intentAction":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 916
    if-nez p1, :cond_2

    .line 917
    invoke-static {v2}, Lcn/nubia/weather/utils/ReYunUtils;->onWeatherOpen(Ljava/lang/String;)V

    .line 919
    :cond_2
    const-string v5, "WeatherMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dealWithIntent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;; hasOnCreated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v5, "WIDGET_ACTION"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 921
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v5}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 922
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 924
    :cond_3
    invoke-static {}, Lcn/nubia/weather/utils/ReYunUtils;->onWidgetClickEvent()V

    .line 964
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    const-string v5, "android.intent.action.opencity"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 965
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 967
    :cond_5
    if-eqz p1, :cond_0

    .line 968
    iput-boolean v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsRefreshNeeded:Z

    goto :goto_0

    .line 925
    :cond_6
    const-string v5, "ALARM_ACTION"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 926
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v5

    new-instance v6, Lcn/nubia/weather/ui/activity/HomeActivity$10;

    invoke-direct {v6, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$10;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_1

    .line 935
    :cond_7
    const-string v5, "android.intent.action.opencity"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz p1, :cond_4

    .line 936
    :cond_8
    const-string v5, "CITY_INDEX"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 939
    .local v3, "mCurrentItem":I
    const v5, 0x7fffffff

    if-ne v3, v5, :cond_9

    .line 940
    iput-boolean v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsFromAdd:Z

    .line 941
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 942
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 943
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 944
    .local v4, "preFragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_4

    .line 945
    check-cast v4, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v4    # "preFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->scrollToTop()V

    goto :goto_1

    .line 947
    :cond_9
    if-ltz v3, :cond_4

    .line 948
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v3, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 949
    const-string v5, "android.intent.action.opencity"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 952
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 953
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 954
    .restart local v4    # "preFragment":Landroid/support/v4/app/Fragment;
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 955
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 954
    invoke-virtual {v5, v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 956
    .local v0, "afterFragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_a

    .line 957
    check-cast v4, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v4    # "preFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->scrollToTop()V

    .line 959
    :cond_a
    if-eqz v0, :cond_4

    .line 960
    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v0    # "afterFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->scrollToTop()V

    goto/16 :goto_1
.end method

.method public doUpdate()V
    .locals 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsUpdateNeeded:Z

    .line 220
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/presenter/OverAllControl;->checkUpgrade()V

    .line 222
    :cond_0
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 223
    return-void
.end method

.method public doUpgrade()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    const-string v1, "WeatherMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpgrade: mIsUpgradeNeeded \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsUpgradeNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; mIsRefreshNeeded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsRefreshNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-boolean v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsUpgradeNeeded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasOnCreated:Z

    if-eqz v1, :cond_2

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/presenter/OverAllControl;->appStartUpdate()V

    .line 230
    iput-boolean v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsUpgradeNeeded:Z

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsRefreshNeeded:Z

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 235
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 234
    invoke-static {v1}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v1

    sget-object v2, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 236
    invoke-virtual {v1, v0, v2}, Lcn/nubia/weather/presenter/OverAllControl;->refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z

    .line 237
    iput-boolean v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsRefreshNeeded:Z

    goto :goto_0
.end method

.method public getCurrentWeatherType()Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 478
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v2

    .line 479
    .local v2, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-static {}, Lcn/nubia/weather/utils/CalendarUtil;->isPhoneTimeNight()Z

    move-result v1

    .line 480
    .local v1, "isNightNow":Z
    if-eqz v2, :cond_0

    .line 481
    invoke-static {v2}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 482
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 485
    .local v0, "currentDate":Ljava/util/Date;
    invoke-static {v0, v2}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v3

    .line 486
    .local v3, "weather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->isIsNight()Z

    move-result v1

    .line 487
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherTemper:Ljava/lang/Integer;

    .line 488
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCityName:Ljava/lang/String;

    .line 489
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mAreaID:Ljava/lang/String;

    .line 490
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 491
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherType:I

    .line 503
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v3    # "weather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_0
    :goto_0
    const-string v5, "WeatherMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [getCurrentWeatherType] mWeatherType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iput-boolean v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsNight:Z

    .line 505
    iget v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherType:I

    invoke-static {v5, v1}, Lcn/nubia/weather/utils/WeatherStateUtils;->getAnimationWeatherType(IZ)Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v4

    .line 507
    .local v4, "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    return-object v4

    .line 493
    .end local v4    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    .restart local v0    # "currentDate":Ljava/util/Date;
    .restart local v3    # "weather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_1
    iput v8, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherType:I

    .line 494
    invoke-static {}, Lcn/nubia/weather/utils/CalendarUtil;->isPhoneTimeNight()Z

    move-result v1

    goto :goto_0

    .line 497
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v3    # "weather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_2
    iput v8, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherType:I

    .line 498
    iput-object v7, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherTemper:Ljava/lang/Integer;

    .line 499
    iput-object v7, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCityName:Ljava/lang/String;

    .line 500
    iput-object v7, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mAreaID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWeatherPermissionInspector()Lcn/nubia/weather/permission/WeatherPermissionInspector;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    return-object v0
.end method

.method public isFirstLaunch(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    .line 368
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 369
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "isFirstLaunch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 371
    .local v0, "isFirstLaunch":Z
    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isFirstLaunch"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 374
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 474
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 475
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 647
    :pswitch_0
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    .line 648
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->startCityListActivity()V

    goto :goto_0

    .line 651
    :pswitch_1
    new-instance v0, Lcn/nubia/weather/utils/LinkUtils;

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mAreaID:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcn/nubia/weather/utils/LinkUtils;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, "linkHelper":Lcn/nubia/weather/utils/LinkUtils;
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 653
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    .line 652
    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 654
    .local v1, "weather":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v2, "LOGO"

    invoke-static {v2}, Lcn/nubia/weather/utils/ReYunUtils;->onLaunchBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x7f100048
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/utils/ReYunUtils;->initReYun(Landroid/content/Context;)V

    .line 141
    const-string v0, "Activity oncreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 142
    const-string v0, "WeatherMainActivity"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    invoke-super {p0, p1}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 146
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->setContentView(I)V

    .line 147
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->initView()V

    .line 148
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->initWeatherAnimView()V

    .line 149
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->initData()V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->dealWithIntent(Z)V

    .line 153
    const-string v0, "WeatherMainActivity"

    const-string v1, "WeatherMainActivity onCreate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHandler:Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;

    new-instance v1, Lcn/nubia/weather/ui/activity/HomeActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$1;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 185
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->registerContentObserver()V

    .line 186
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->adjustLayoutByNaviBarStatus()V

    .line 188
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    .line 189
    return-void

    .line 183
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    const-string v0, "WeatherMainActivity"

    const-string v1, "WeatherMainActivity onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onDestroy()V

    .line 344
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onDestroy()V

    .line 346
    iput-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 348
    :cond_0
    const-string v0, "WeatherMainActivity"

    const-string v1, "onDestroy: mParentActivity 444"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sput-object v2, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    .line 350
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->removeObserver()V

    .line 352
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->onDestory()V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->unregisterContentObserver()V

    .line 355
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 358
    :cond_2
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-virtual {v0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->hideDialog()V

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/app/WeatherApplication;

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->clearWeatherAnimation()V

    .line 362
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->isFirstLaunch(Landroid/content/Context;)V

    .line 363
    invoke-static {}, Lcn/nubia/weather/utils/ReYunUtils;->unbindReYun()V

    .line 364
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 665
    const-string v1, "WeatherMainActivity"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-super {p0, p1}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 667
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/activity/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 668
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "disable":I
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta()Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    const/4 v0, 0x1

    .line 673
    :cond_0
    if-eq v0, v3, :cond_1

    const-string v1, "isCTA"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 678
    .end local v0    # "disable":I
    :cond_2
    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/activity/HomeActivity;->dealWithIntent(Z)V

    .line 679
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    .line 685
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 581
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 582
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 598
    return-void
.end method

.method public onPageSelected(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 513
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getCurrentWeatherType()Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v6

    .line 514
    .local v6, "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-ne v6, v9, :cond_4

    move v1, v7

    .line 516
    .local v1, "isTheSameWeatherType":Z
    :goto_0
    const-string v9, "WeatherMainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " onPageSelected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isTheSameWeatherType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v9, "WeatherMainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " onPageSelected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isTheSameWeatherType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->refreshBackground()V

    .line 530
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    .line 533
    .local v4, "newPosition":I
    iget v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    iget-object v10, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v10}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    iget v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    if-eq v4, v9, :cond_0

    .line 535
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget v10, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    invoke-virtual {v9, v10}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->popFragmentById(I)V

    .line 536
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget v10, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    invoke-virtual {v9, v10}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->stopRefreshAnime(I)V

    .line 537
    const/4 v9, -0x1

    iput v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->oldPosition:I

    .line 540
    :cond_0
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v9, :cond_1

    if-eqz v1, :cond_1

    .line 541
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setUpTranslationAlpha(F)V

    .line 543
    :cond_1
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v10, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v10

    invoke-virtual {v9, v10}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v2

    .line 544
    .local v2, "model":Lcn/nubia/weather/model/WeatherModel;
    sget-object v5, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 545
    .local v5, "type":Lcn/nubia/weather/app/Constant$OperationType;
    iget-boolean v9, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsFromAdd:Z

    if-eqz v9, :cond_2

    .line 546
    sget-object v5, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 547
    iput-boolean v8, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsFromAdd:Z

    .line 553
    :cond_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v8

    if-ne v8, v7, :cond_6

    .line 554
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    sget-object v8, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    invoke-virtual {v7, p0, v8}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 556
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 555
    invoke-static {v7}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v7

    .line 557
    invoke-virtual {v7, v2, v5}, Lcn/nubia/weather/presenter/OverAllControl;->refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z

    move-result v3

    .line 566
    .local v3, "needNotify":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 567
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .line 568
    invoke-virtual {v7, v4}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 569
    .local v0, "currentFragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 571
    invoke-virtual {v0, v2}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V

    .line 575
    .end local v0    # "currentFragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    :cond_3
    const-string v7, "Forward_non_location"

    invoke-static {p0, v7}, Lcn/nubia/weather/umeng/UmengUtils;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    return-void

    .end local v1    # "isTheSameWeatherType":Z
    .end local v2    # "model":Lcn/nubia/weather/model/WeatherModel;
    .end local v3    # "needNotify":Z
    .end local v4    # "newPosition":I
    .end local v5    # "type":Lcn/nubia/weather/app/Constant$OperationType;
    :cond_4
    move v1, v8

    .line 514
    goto/16 :goto_0

    .line 559
    .restart local v1    # "isTheSameWeatherType":Z
    .restart local v2    # "model":Lcn/nubia/weather/model/WeatherModel;
    .restart local v4    # "newPosition":I
    .restart local v5    # "type":Lcn/nubia/weather/app/Constant$OperationType;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "needNotify":Z
    goto :goto_1

    .line 563
    .end local v3    # "needNotify":Z
    :cond_6
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 562
    invoke-static {v7}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v7

    .line 564
    invoke-virtual {v7, v2, v5}, Lcn/nubia/weather/presenter/OverAllControl;->refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z

    move-result v3

    .restart local v3    # "needNotify":Z
    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    const-string v0, "WeatherMainActivity"

    const-string v1, "WeatherMainActivity onPause"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onPause()V

    .line 380
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v0, :cond_0

    .line 381
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsWeatherAnimActive:Z

    .line 382
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onPause()V

    .line 384
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsForeground:Z

    .line 385
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 974
    packed-switch p1, :pswitch_data_0

    .line 1001
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1004
    :goto_0
    return-void

    .line 976
    :pswitch_0
    const/4 v0, 0x1

    .line 977
    .local v0, "requestResult":Z
    if-eqz p3, :cond_0

    array-length v2, p3

    if-nez v2, :cond_1

    .line 978
    :cond_0
    const/4 v0, 0x0

    .line 980
    :cond_1
    array-length v4, p3

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget v1, p3, v2

    .line 981
    .local v1, "result":I
    if-eqz v1, :cond_3

    .line 982
    const/4 v0, 0x0

    .line 986
    .end local v1    # "result":I
    :cond_2
    const-string v2, "WeatherMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    if-eqz v0, :cond_4

    .line 988
    const-string v2, "isLocationOpen"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 989
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->doUpgrade()V

    .line 990
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->doUpdate()V

    goto :goto_0

    .line 980
    .restart local v1    # "result":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 992
    .end local v1    # "result":I
    :cond_4
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 993
    const-string v2, "isLocationOpen"

    invoke-static {p0, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 994
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->startCityListActivity()V

    goto :goto_0

    .line 996
    :cond_5
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    sget-object v3, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v2, p0, v3, v4}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->isPerssionGranted(Landroid/content/Context;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 389
    const-string v2, "Activity onresume"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 391
    :try_start_0
    const-string v2, "WeatherMainActivity"

    const-string v3, "onResume: "

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->isInited()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->setData()V

    .line 397
    :goto_0
    const-string v2, "WeatherMainActivity"

    const-string v3, "WeatherMainActivity onResume"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 400
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 401
    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->resetAnimAlpha()V

    .line 404
    :cond_0
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onResume()V

    .line 405
    const-string v2, "Activity mWeatherAnimation onresume"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :try_start_1
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v2, :cond_1

    .line 408
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsWeatherAnimActive:Z

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mResumeTime:J

    .line 410
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 415
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->initActivity()V

    .line 420
    const-string v2, "Activity animaRefresh"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    :try_start_3
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->refreshBackground()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 424
    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 428
    const-string v2, "WeatherMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: mHasOnCreated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasOnCreated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;; CurrentItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-boolean v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mHasOnCreated:Z

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_2

    .line 431
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    .line 432
    .local v1, "grant":Z
    if-eqz v1, :cond_2

    .line 433
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcn/nubia/weather/ui/activity/HomeActivity$4;

    invoke-direct {v3, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$4;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 444
    .end local v1    # "grant":Z
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 446
    iput-boolean v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsForeground:Z

    .line 447
    return-void

    .line 395
    :cond_3
    :try_start_5
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/weather/app/WeatherApplication;->setInited(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 444
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    .line 413
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    .line 424
    :catchall_2
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 843
    return-void
.end method

.method public openNetOrGps(Z)V
    .locals 9
    .param p1, "isNetOpened"    # Z

    .prologue
    const/4 v8, 0x1

    .line 778
    iget-boolean v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mIsForeground:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const/4 v2, 0x0

    .line 783
    .local v2, "title":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 784
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 792
    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03005e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 794
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f100145

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 795
    .local v3, "titleText":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 797
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 798
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 799
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/weather/ui/activity/HomeActivity$8;

    invoke-direct {v6, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$8;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090114

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/weather/ui/activity/HomeActivity$9;

    invoke-direct {v6, p0, p1}, Lcn/nubia/weather/ui/activity/HomeActivity$9;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;Z)V

    invoke-virtual {v0, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 812
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 813
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 814
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0

    .line 786
    .end local v0    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .end local v3    # "titleText":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    const-string v5, "isLocationOpen"

    invoke-static {p0, v5, v8}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 787
    .local v1, "isLocationOpen":Z
    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public registerContentObserver()V
    .locals 4

    .prologue
    .line 871
    new-instance v0, Lcn/nubia/weather/ui/activity/HomeActivity$NaviBarObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/activity/HomeActivity$NaviBarObserver;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 872
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cc_navi_status"

    .line 873
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 872
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 875
    return-void
.end method

.method public setMobileNetOrGps(Z)V
    .locals 4
    .param p1, "isNetOpened"    # Z

    .prologue
    .line 820
    if-eqz p1, :cond_0

    .line 821
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    .local v2, "intent":Landroid/content/Intent;
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_1
    return-void

    .line 823
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Lcn/nubia/weather/model/DeviceInfo;

    invoke-direct {v0}, Lcn/nubia/weather/model/DeviceInfo;-><init>()V

    .line 824
    .local v0, "deviceInfo":Lcn/nubia/weather/model/DeviceInfo;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/weather/model/DeviceInfo;->hasSimCard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 825
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 829
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 830
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 835
    .end local v0    # "deviceInfo":Lcn/nubia/weather/model/DeviceInfo;
    :catch_0
    move-exception v1

    .line 836
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected switchPageByIntent()V
    .locals 5

    .prologue
    .line 688
    const-string v3, "weathermain switchPageByIntent"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 692
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 693
    .local v1, "intentAction":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 715
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 717
    :goto_0
    return-void

    .line 697
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 698
    const-string v3, "android.intent.action.opencity"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v3, :cond_1

    .line 715
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 701
    :cond_1
    :try_start_2
    const-string v3, "CITY_INDEX"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 704
    .local v2, "mCurrentItem":I
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    .line 705
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 709
    :cond_2
    :goto_1
    const-string v3, "WIDGET_ACTION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 710
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 711
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 706
    :cond_4
    if-ltz v2, :cond_2

    .line 707
    :try_start_3
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 715
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentAction":Ljava/lang/String;
    .end local v2    # "mCurrentItem":I
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v3
.end method

.method public unregisterContentObserver()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 881
    :cond_0
    return-void
.end method
