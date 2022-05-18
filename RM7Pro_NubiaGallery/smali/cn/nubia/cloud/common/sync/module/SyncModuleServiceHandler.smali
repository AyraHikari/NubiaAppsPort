.class public Lcn/nubia/cloud/common/sync/module/SyncModuleServiceHandler;
.super Ljava/lang/Object;
.source "SyncModuleServiceHandler.java"

# interfaces
.implements Lcn/nubia/cloud/common/ipcclient/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/ipcclient/IServiceHandler<",
        "Lcn/nubia/cloud/common/sync/ISyncStorage;",
        ">;"
    }
.end annotation


# instance fields
.field final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleServiceHandler;->mServiceIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onServiceIntent()Landroid/content/Intent;
    .locals 1

    .line 17
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleServiceHandler;->mServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/ISyncStorage;
    .locals 0

    .line 12
    invoke-static {p1}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/ISyncStorage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onTransact(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/module/SyncModuleServiceHandler;->onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/ISyncStorage;

    move-result-object p1

    return-object p1
.end method
