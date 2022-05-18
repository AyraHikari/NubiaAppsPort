.class Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinServiceHandler;
.super Ljava/lang/Object;
.source "RecyclebinServiceHandler.java"

# interfaces
.implements Lcn/nubia/cloud/common/ipcclient/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/ipcclient/IServiceHandler<",
        "Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Landroid/content/Intent;

    const-string v0, "nubia.cloud.sync.RecyclebinManager"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinServiceHandler;->mServiceIntent:Landroid/content/Intent;

    const-string v0, "cn.nubia.cloud"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onServiceIntent()Landroid/content/Intent;
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinServiceHandler;->mServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;
    .locals 0

    .line 19
    invoke-static {p1}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onTransact(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinServiceHandler;->onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;

    move-result-object p1

    return-object p1
.end method
