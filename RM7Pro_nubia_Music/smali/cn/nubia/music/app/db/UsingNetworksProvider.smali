.class public Lcn/nubia/music/app/db/UsingNetworksProvider;
.super Landroid/content/ContentProvider;
.source "UsingNetworksProvider.java"


# instance fields
.field private mUsingNetworks:Z

.field private mUsingNetworksReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/app/db/UsingNetworksProvider;->mUsingNetworks:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/db/UsingNetworksProvider;->mUsingNetworksReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 34
    if-eqz p1, :cond_1

    const-string v0, "check_networks_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    iget-object v1, p0, Lcn/nubia/music/app/db/UsingNetworksProvider;->mUsingNetworksReason:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "isUsingNetworks"

    iget-boolean v2, p0, Lcn/nubia/music/app/db/UsingNetworksProvider;->mUsingNetworks:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/music/app/db/UsingNetworksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No permission to access this provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    const-string v0, "isUsingNetworks"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/music/app/db/UsingNetworksProvider;->mUsingNetworks:Z

    .line 28
    const-string v0, "UsingNetworksReason"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/db/UsingNetworksProvider;->mUsingNetworksReason:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    return v0
.end method
