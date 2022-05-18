.class public Lcn/nubia/cloud/service/common/CloudManager;
.super Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/ipcclient/IPCClient",
        "<",
        "Lcn/nubia/cloud/service/common/ICloudManager;",
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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcn/nubia/cloud/service/common/CloudServiceHandler;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/service/common/CloudServiceHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    .line 22
    return-void
.end method

.method public static isInNubiaRom(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const-string v1, "cn.nubia.accounts"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x1

    .line 78
    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v1

    .line 78
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findModule(Ljava/lang/String;)Lcn/nubia/cloud/service/common/Module;
    .locals 3
    .param p1, "moduleToken"    # Ljava/lang/String;

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/service/common/ICloudManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcn/nubia/cloud/service/common/ICloudManager;->findModule(Ljava/lang/String;)Lcn/nubia/cloud/service/common/Module;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/service/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSyncModule(Lcn/nubia/cloud/service/common/SyncType;)Lcn/nubia/cloud/service/common/SyncModule;
    .locals 3
    .param p1, "type"    # Lcn/nubia/cloud/service/common/SyncType;

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/service/common/ICloudManager;

    invoke-virtual {p1}, Lcn/nubia/cloud/service/common/SyncType;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/cloud/service/common/ICloudManager;->findSyncModule(I)Lcn/nubia/cloud/service/common/SyncModule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/service/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/service/common/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/service/common/ICloudManager;

    invoke-interface {v1}, Lcn/nubia/cloud/service/common/ICloudManager;->getAllModules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/service/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getSurfaceModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/service/common/SurfaceModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/service/common/ICloudManager;

    invoke-interface {v1}, Lcn/nubia/cloud/service/common/ICloudManager;->getSurfaceModules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/service/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getSyncModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/service/common/SyncModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/CloudManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/service/common/ICloudManager;

    invoke-interface {v1}, Lcn/nubia/cloud/service/common/ICloudManager;->getSyncModules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/service/common/CloudManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
