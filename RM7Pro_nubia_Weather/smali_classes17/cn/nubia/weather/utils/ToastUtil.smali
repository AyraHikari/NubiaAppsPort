.class public Lcn/nubia/weather/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastUtil"

.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppInBackground()Z
    .locals 7

    .prologue
    .line 33
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    .local v1, "ctx":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    .line 35
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 36
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 37
    .local v3, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 39
    .local v2, "runningApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_0

    .line 41
    const/4 v4, 0x1

    .line 45
    .end local v2    # "runningApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 20
    const-class v1, Lcn/nubia/weather/utils/ToastUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/nubia/weather/utils/ToastUtil;->isAppInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "ToastUtil"

    const-string v2, "not in Foreground, do not sent toast"

    invoke-static {v0, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_0
    monitor-exit v1

    return-void

    .line 24
    :cond_0
    :try_start_1
    sget-object v0, Lcn/nubia/weather/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 25
    sget-object v0, Lcn/nubia/weather/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/utils/ToastUtil;->toast:Landroid/widget/Toast;

    .line 28
    sget-object v0, Lcn/nubia/weather/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
