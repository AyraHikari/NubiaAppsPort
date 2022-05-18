.class public Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "WeatherUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static INSTANCE:Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler; = null

.field public static final TAG:Ljava/lang/String; = "UncaughtExceptionHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    const-class v1, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->INSTANCE:Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;

    invoke-direct {v0, p0}, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->INSTANCE:Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;

    .line 26
    :cond_0
    sget-object v0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->INSTANCE:Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 33
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getIsCtaDisable()I

    move-result v0

    .line 38
    .local v0, "disable":I
    if-nez v0, :cond_1

    .line 39
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "isCTA"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    const-string v1, "UncaughtExceptionHandler"

    const-string v2, "CTA on, not ok"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    const-string v1, "UncaughtExceptionHandler"

    const-string v2, "uncaughtException in thread"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 50
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcn/nubia/weather/umeng/UmengUtils;->reportError(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
