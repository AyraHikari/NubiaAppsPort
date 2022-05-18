.class public Lcn/nubia/deskclock/RunningStatusProvider;
.super Landroid/content/ContentProvider;
.source "RunningStatusProvider.java"


# static fields
.field public static final IS_RUNNING:Ljava/lang/String; = "isRunning"

.field public static final RUNNING_REASON:Ljava/lang/String; = "runningReason"


# instance fields
.field private mRunning:Z

.field private mRunningReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/RunningStatusProvider;->mRunning:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/RunningStatusProvider;->mRunningReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 26
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No permisson to access this provider"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_0
    if-eqz p1, :cond_2

    const-string v1, "check_running_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isRunning"

    iget-boolean v2, p0, Lcn/nubia/deskclock/RunningStatusProvider;->mRunning:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    iget-object v1, p0, Lcn/nubia/deskclock/RunningStatusProvider;->mRunningReason:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "runningReason"

    iget-object v2, p0, Lcn/nubia/deskclock/RunningStatusProvider;->mRunningReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # [Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/deskclock/RunningStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No permisson to access this provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const-string v0, "isRunning"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/RunningStatusProvider;->mRunning:Z

    .line 46
    const-string v0, "runningReason"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/RunningStatusProvider;->mRunningReason:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    return v0
.end method
