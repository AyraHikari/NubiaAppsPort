.class public Lcn/nubia/weather/app/WeatherApplication;
.super Landroid/app/Application;
.source "WeatherApplication.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcn/nubia/weather/app/WeatherApplication;


# instance fields
.field private isCtaDisable:I

.field private isInited:Z

.field private isOneHand:Z

.field private isSupportCta:Z

.field private isSupportReyun:Z

.field private isSupportUmeng:Z

.field private isSupportUpgrade:Z

.field private mContext:Landroid/content/Context;

.field private mIsUpdateEnabled:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mTypefaceOrigin:Landroid/graphics/Typeface;

.field private mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

.field private mWeatherAnimationAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "WeatherApplication"

    sput-object v0, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mIsUpdateEnabled:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isCtaDisable:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isOneHand:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimationAlpha:F

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/app/WeatherApplication;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/nubia/weather/app/WeatherApplication;->initFeatureSwitch()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/weather/app/WeatherApplication;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcn/nubia/weather/app/WeatherApplication;->isCtaDisable:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/weather/app/WeatherApplication;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;
    .param p1, "x1"    # Landroid/graphics/Typeface;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypeface:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/weather/app/WeatherApplication;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypefaceOrigin:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/weather/app/WeatherApplication;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;
    .param p1, "x1"    # Landroid/graphics/Typeface;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypefaceOrigin:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/weather/app/WeatherApplication;
    .locals 2

    .prologue
    .line 196
    const-class v0, Lcn/nubia/weather/app/WeatherApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/weather/app/WeatherApplication;->instance:Lcn/nubia/weather/app/WeatherApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initAd()V
    .locals 7

    .prologue
    .line 154
    sget-object v3, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    const-string v4, " initAd "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 156
    .local v0, "adInfFactory":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/weather/utils/AdSetting;->getAppID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->attach(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 157
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    move-result-object v1

    .line 158
    .local v1, "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdUtils()Lcom/huanju/ssp/sdk/inf/AdUtils;

    move-result-object v2

    .line 159
    .local v2, "adUtils":Lcom/huanju/ssp/sdk/inf/AdUtils;
    return-void
.end method

.method private initFeatureSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 251
    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta:Z

    .line 252
    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade:Z

    .line 253
    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng:Z

    .line 254
    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportReyun:Z

    .line 256
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "true"

    invoke-static {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 258
    .local v0, "isFeatureOn":Z
    if-eqz v0, :cond_0

    .line 259
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "weather_ctaSwitch"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta:Z

    .line 261
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "weather_apkupdate"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade:Z

    .line 263
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "weather_umengSwitch"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng:Z

    .line 265
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "weather_reyunSwitch"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportReyun:Z

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFeatureSwitch isSupportCta:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSupportUpgrade"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSupportUmeng"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSupportReyun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportReyun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method private isMainProcess()Z
    .locals 9

    .prologue
    .line 162
    const-string v5, ""

    .line 163
    .local v5, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 164
    .local v3, "pid":I
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcn/nubia/weather/app/WeatherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 165
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "packageName":Ljava/lang/String;
    const-string v6, "lidd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "appProcessInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 170
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v3, :cond_0

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 172
    const-string v6, "lidd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processName=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v6, 0x1

    .line 177
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearWeatherAnimation()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 219
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIsCtaDisable()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isCtaDisable:I

    return v0
.end method

.method public getIsUpdateEnabled()I
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mIsUpdateEnabled:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->initIsUpdateEnabled()V

    .line 301
    :cond_0
    iget v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mIsUpdateEnabled:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getWeatherAnimation()Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    return-object v0
.end method

.method public getWeatherAnimationAlpha()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimationAlpha:F

    return v0
.end method

.method public getWidthPixels()I
    .locals 4

    .prologue
    .line 185
    iget-object v2, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 186
    .local v1, "manager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 187
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    .line 189
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 191
    :goto_0
    return v2

    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public getmTypefaceOrigin()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypefaceOrigin:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public initIsUpdateEnabled()V
    .locals 4

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cn.nubia.weather.update.style"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/app/WeatherApplication;->mIsUpdateEnabled:I

    .line 325
    sget-object v1, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsUpdateEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/weather/app/WeatherApplication;->mIsUpdateEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isInited:Z

    return v0
.end method

.method public isOneHand()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isOneHand:Z

    return v0
.end method

.method public isSupportCta()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta:Z

    return v0
.end method

.method public isSupportReyun()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUmeng()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng:Z

    return v0
.end method

.method public isSupportUpdate()Z
    .locals 5

    .prologue
    .line 341
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getIsUpdateEnabled()I

    move-result v1

    .line 342
    .local v1, "isUpdateValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lijiangfeng] isSupportUpdate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "flag":Z
    packed-switch v1, :pswitch_data_0

    .line 354
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lijiangfeng] isSupportUpdate ----- flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;)V

    .line 355
    return v0

    .line 347
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    const-string v3, "KEY_IS_ALLOW_UPDATE"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 349
    goto :goto_0

    .line 351
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSupportUpgrade()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade:Z

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 89
    sget-object v0, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    const-string v1, "App onCreate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 91
    const-string v0, "lidd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput-object p0, Lcn/nubia/weather/app/WeatherApplication;->instance:Lcn/nubia/weather/app/WeatherApplication;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isInited:Z

    .line 94
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 96
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/data/CityOrderCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;

    .line 97
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    .line 98
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/data/NotifyCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/NotifyCenter;

    .line 99
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/weather/app/WeatherApplication$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/app/WeatherApplication$1;-><init>(Lcn/nubia/weather/app/WeatherApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    invoke-direct {p0}, Lcn/nubia/weather/app/WeatherApplication;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getIsUpdateEnabled()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcn/nubia/weather/app/WeatherApplication;->initAd()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0}, Lcn/nubia/weather/app/WeatherApplication;->initAd()V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 366
    return-void
.end method

.method public refreshUpdateAlarm()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x6ddd00

    const-wide/16 v10, 0x0

    .line 222
    iget-object v8, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    const-string v9, "LAST_UPDATE_ALARM_TIME"

    invoke-static {v8, v9, v10, v11}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 223
    .local v4, "nextTime":J
    cmp-long v8, v4, v10

    if-nez v8, :cond_1

    .line 224
    sget-object v8, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    const-string v9, "first time"

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v8, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcn/nubia/weather/service/UpdateService;->startJobService(Landroid/content/Context;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v8, v8, v12

    if-gtz v8, :cond_2

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 232
    :cond_2
    :try_start_0
    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Lcn/nubia/weather/app/WeatherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 234
    .local v1, "manager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v6, v8, v12

    .line 235
    .local v6, "triggerTime":J
    sget-object v8, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Next UpdateService will be startted at time ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcn/nubia/weather/utils/AlarmReceiver;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v8, "cn.nubia.weather.TYPE_UPDATE_ALL_CITY_WEATHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    sget-object v8, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newIntent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v8, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 241
    .local v3, "pi":Landroid/app/PendingIntent;
    const/4 v8, 0x1

    invoke-virtual {v1, v8, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 242
    iget-object v8, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    const-string v9, "LAST_UPDATE_ALARM_TIME"

    invoke-static {v8, v9, v6, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v1    # "manager":Landroid/app/AlarmManager;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v6    # "triggerTime":J
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    const-string v9, "refreshUpdateAlarm"

    invoke-static {v8, v9, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setInited(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcn/nubia/weather/app/WeatherApplication;->isInited:Z

    .line 81
    return-void
.end method

.method public setIsAllowUpdate()V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "KEY_IS_ALLOW_UPDATE"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 336
    sget-object v0, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    const-string v1, "[lijiangfeng] setIsAllowUpdate and refreshUpdateAlarm "

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->refreshUpdateAlarm()V

    .line 338
    return-void
.end method

.method public setOneHand(Z)V
    .locals 0
    .param p1, "isOneHand"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcn/nubia/weather/app/WeatherApplication;->isOneHand:Z

    .line 295
    return-void
.end method

.method public setWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V
    .locals 0
    .param p1, "anim"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 212
    iput-object p1, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 213
    return-void
.end method

.method public setWeatherAnimationAlpha(F)V
    .locals 0
    .param p1, "mWeatherAnimationAlpha"    # F

    .prologue
    .line 72
    iput p1, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimationAlpha:F

    .line 73
    return-void
.end method
