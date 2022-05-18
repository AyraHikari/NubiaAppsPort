.class public Lcn/nubia/cloud/common/CloudManager;
.super Lcn/nubia/cloud/common/ipcclient/IPCClient;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/common/ipcclient/IPCClient<",
        "Lcn/nubia/cloud/common/ICloudManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "nubia.cloud.CloudManager"

.field public static final AppPackageName:Ljava/lang/String; = "cn.nubia.cloud"

.field public static final KEY_CLOUD_SESSION:Ljava/lang/String; = "cloud_session"

.field public static final KEY_UNIQUE_CODE:Ljava/lang/String; = "unique_code"

.field private static final NUBIA_ACCOUNT_PKG_NAME:Ljava/lang/String; = "cn.nubia.accounts"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    new-instance v0, Lcn/nubia/cloud/common/CloudServiceHandler;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/common/CloudServiceHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/common/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V

    return-void
.end method

.method public static isInNubiaRom(Landroid/content/Context;)Z
    .locals 2

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.nubia.accounts"

    const/16 v1, 0x80

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public findModule(Ljava/lang/String;)Lcn/nubia/cloud/common/module/Module;
    .locals 1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/ICloudManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/common/ICloudManager;->findModule(Ljava/lang/String;)Lcn/nubia/cloud/common/module/Module;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSyncModule(Lcn/nubia/cloud/common/module/SyncType;)Lcn/nubia/cloud/common/module/SyncModule;
    .locals 1

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/ICloudManager;

    invoke-virtual {p1}, Lcn/nubia/cloud/common/module/SyncType;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcn/nubia/cloud/common/ICloudManager;->findSyncModule(I)Lcn/nubia/cloud/common/module/SyncModule;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/common/module/Module;",
            ">;"
        }
    .end annotation

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/ICloudManager;

    invoke-interface {v0}, Lcn/nubia/cloud/common/ICloudManager;->getAllModules()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/common/module/SurfaceModule;",
            ">;"
        }
    .end annotation

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/ICloudManager;

    invoke-interface {v0}, Lcn/nubia/cloud/common/ICloudManager;->getSurfaceModules()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSyncModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/common/module/SyncModule;",
            ">;"
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/ICloudManager;

    invoke-interface {v0}, Lcn/nubia/cloud/common/ICloudManager;->getSyncModules()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
