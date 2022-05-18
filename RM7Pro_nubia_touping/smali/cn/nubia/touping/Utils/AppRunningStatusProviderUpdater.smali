.class public Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;
.super Ljava/lang/Object;
.source "AppRunningStatusProviderUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;
    }
.end annotation


# instance fields
.field private mCannotBeKilled:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "cannotBeKilled"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->mCannotBeKilled:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->mContext:Landroid/content/Context;

    .line 24
    iput-boolean p2, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->mCannotBeKilled:Z

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->mCannotBeKilled:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->setProcessCannotBeKilled()V

    return-void
.end method

.method private setProcessCannotBeKilled()V
    .locals 6

    .prologue
    .line 33
    const-string v3, "AppRunningStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProcessCannotBeKilled mCannotBeKilled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->mCannotBeKilled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v2, "values":Landroid/content/ContentValues;
    iget-boolean v3, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->mCannotBeKilled:Z

    if-eqz v3, :cond_0

    .line 38
    const-string v3, "isRunning"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    const-string v3, "runningReason"

    const-string v4, "doing transfer work"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    const-string v3, "content://cn.nubia.flycow.RunningStatusProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 42
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v3, "isRunning"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    const-string v3, "runningReason"

    const-string v4, "stopped"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public update()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;-><init>(Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    return-void
.end method
