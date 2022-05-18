.class Lcn/nubia/cloud/sync/common/SyncServiceHandler;
.super Ljava/lang/Object;
.source "SyncServiceHandler.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler",
        "<",
        "Lcn/nubia/cloud/sync/common/ISyncManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.cloud.sync.SyncManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/SyncServiceHandler;->mServiceIntent:Landroid/content/Intent;

    .line 13
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncServiceHandler;->mServiceIntent:Landroid/content/Intent;

    const-string v1, "cn.nubia.cloud"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    return-void
.end method


# virtual methods
.method public onServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncServiceHandler;->mServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ISyncManager;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 18
    invoke-static {p1}, Lcn/nubia/cloud/sync/common/ISyncManager$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ISyncManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onTransact(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/IBinder;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/SyncServiceHandler;->onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ISyncManager;

    move-result-object v0

    return-object v0
.end method
