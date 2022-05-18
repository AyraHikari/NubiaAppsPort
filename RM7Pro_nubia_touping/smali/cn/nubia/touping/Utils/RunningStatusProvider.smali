.class public Lcn/nubia/touping/Utils/RunningStatusProvider;
.super Landroid/content/ContentProvider;
.source "RunningStatusProvider.java"


# instance fields
.field private mRunning:Z

.field private mRunningReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/RunningStatusProvider;->mRunning:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/Utils/RunningStatusProvider;->mRunningReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 50
    if-eqz p1, :cond_1

    const-string v1, "check_running_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isRunning"

    iget-boolean v2, p0, Lcn/nubia/touping/Utils/RunningStatusProvider;->mRunning:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    iget-object v1, p0, Lcn/nubia/touping/Utils/RunningStatusProvider;->mRunningReason:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "runningReason"

    iget-object v2, p0, Lcn/nubia/touping/Utils/RunningStatusProvider;->mRunningReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

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
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "isRunning"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/RunningStatusProvider;->mRunning:Z

    .line 44
    const-string v0, "runningReason"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/RunningStatusProvider;->mRunningReason:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    return v0
.end method
