.class public Lcn/nubia/music/utils/ProcessHelper;
.super Ljava/lang/Object;
.source "ProcessHelper.java"


# static fields
.field public static final MAIN_PROCESS:Ljava/lang/String; = "cn.nubia.music.preset"

.field public static final SERVICE_PROCESS:Ljava/lang/String; = "cn.nubia.music.MusicService"

.field public static final UPGRADE_PROCESS:Ljava/lang/String; = "cn.nubia.upgradeService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 25
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 26
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 27
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 28
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 31
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static isMainProcess()Z
    .locals 2

    .prologue
    .line 36
    const-string v0, "cn.nubia.music.preset"

    invoke-static {}, Lcn/nubia/music/utils/ProcessHelper;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
