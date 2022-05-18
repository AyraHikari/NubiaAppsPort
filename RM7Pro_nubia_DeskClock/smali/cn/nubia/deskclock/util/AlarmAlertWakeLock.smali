.class public Lcn/nubia/deskclock/util/AlarmAlertWakeLock;
.super Ljava/lang/Object;
.source "AlarmAlertWakeLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmAlertWakeLock"

.field private static final TWO_MINUTES:Ljava/lang/Long;

.field private static mCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/32 v0, 0x1d4c0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->TWO_MINUTES:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v0, "AlarmAlertWakeLock"

    const-string v1, "acquireCpuWakeLock: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    :cond_0
    sget-object v0, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->TWO_MINUTES:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 45
    const-string v0, "AlarmAlertWakeLock"

    const-string v1, "acquireCpuWakeLock:  acquire "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v1, "power"

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 36
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "AlarmClock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    return-object v1
.end method

.method public static releaseCpuLock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    const-string v1, "AlarmAlertWakeLock"

    const-string v2, "releaseCpuLock: "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "AlarmAlertWakeLock"

    const-string v2, "releaseCpuLock: 111 "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    sput-object v4, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 57
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 58
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "AlarmAlertWakeLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseCpuLock error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    sput-object v4, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v4, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    throw v1
.end method
