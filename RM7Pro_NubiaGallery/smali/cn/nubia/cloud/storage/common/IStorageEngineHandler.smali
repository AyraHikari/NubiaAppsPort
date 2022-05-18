.class Lcn/nubia/cloud/storage/common/IStorageEngineHandler;
.super Ljava/lang/Object;
.source "IStorageEngineHandler.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler<",
        "Lcn/nubia/cloud/storage/common/IStorageEngine;",
        ">;"
    }
.end annotation


# instance fields
.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/storage/common/StorageEngineType;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.cloud.action.StorageManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cn.nubia.cloud"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/IStorageEngineHandler;->mServiceIntent:Landroid/content/Intent;

    .line 20
    invoke-static {p1}, Lcn/nubia/cloud/utils/ResolveInfoUtil;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object p1

    .line 21
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p2}, Lcn/nubia/cloud/storage/common/StorageEngineType;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/IStorageEngineHandler;->mServiceIntent:Landroid/content/Intent;

    :goto_0
    return-void
.end method


# virtual methods
.method public onServiceIntent()Landroid/content/Intent;
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/IStorageEngineHandler;->mServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngine;
    .locals 0

    .line 30
    invoke-static {p1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngine;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onTransact(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/IStorageEngineHandler;->onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngine;

    move-result-object p1

    return-object p1
.end method
