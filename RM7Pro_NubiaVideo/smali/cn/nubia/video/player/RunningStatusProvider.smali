.class public Lcn/nubia/video/player/RunningStatusProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/RunningStatusProvider;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/RunningStatusProvider;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_2

    if-eqz p1, :cond_1

    const-string p2, "check_running_status"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-boolean p2, p0, Lcn/nubia/video/player/RunningStatusProvider;->a:Z

    const-string p3, "isRunning"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object p2, p0, Lcn/nubia/video/player/RunningStatusProvider;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p3, "runningReason"

    .line 6
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "No permission to access this provider"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, p3, :cond_0

    const-string p1, "isRunning"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/video/player/RunningStatusProvider;->a:Z

    const-string p1, "runningReason"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/RunningStatusProvider;->b:Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "No permission to access this provider"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
