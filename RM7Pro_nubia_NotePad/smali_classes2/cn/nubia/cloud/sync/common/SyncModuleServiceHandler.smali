.class public Lcn/nubia/cloud/sync/common/SyncModuleServiceHandler;
.super Ljava/lang/Object;
.source "SyncModuleServiceHandler.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler",
        "<",
        "Lcn/nubia/cloud/sync/common/ISyncStorage;",
        ">;"
    }
.end annotation


# instance fields
.field final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/SyncModuleServiceHandler;->mServiceIntent:Landroid/content/Intent;

    .line 21
    return-void
.end method


# virtual methods
.method public onServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleServiceHandler;->mServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ISyncStorage;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 11
    invoke-static {p1}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ISyncStorage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onTransact(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/IBinder;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/SyncModuleServiceHandler;->onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ISyncStorage;

    move-result-object v0

    return-object v0
.end method
