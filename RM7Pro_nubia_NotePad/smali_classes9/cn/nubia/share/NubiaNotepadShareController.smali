.class public Lcn/nubia/share/NubiaNotepadShareController;
.super Ljava/lang/Object;
.source "NubiaNotepadShareController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;
    }
.end annotation


# static fields
.field private static final NUBIA_SHARE_SERVICE:Ljava/lang/String; = "cn.nubia.handler.shareservice"


# instance fields
.field private mCallback:Lcn/nubia/share/INubiaShareServiceCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandlerDataListener:Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;

.field private mShareService:Lcn/nubia/share/INubiaShareService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcn/nubia/share/NubiaNotepadShareController$1;

    invoke-direct {v0, p0}, Lcn/nubia/share/NubiaNotepadShareController$1;-><init>(Lcn/nubia/share/NubiaNotepadShareController;)V

    iput-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController;->mCallback:Lcn/nubia/share/INubiaShareServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/share/NubiaNotepadShareController;)Lcn/nubia/share/INubiaShareService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/share/NubiaNotepadShareController;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController;->mShareService:Lcn/nubia/share/INubiaShareService;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/share/NubiaNotepadShareController;Lcn/nubia/share/INubiaShareService;)Lcn/nubia/share/INubiaShareService;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/share/NubiaNotepadShareController;
    .param p1, "x1"    # Lcn/nubia/share/INubiaShareService;

    .prologue
    .line 16
    iput-object p1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mShareService:Lcn/nubia/share/INubiaShareService;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/share/NubiaNotepadShareController;)Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/share/NubiaNotepadShareController;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController;->mHandlerDataListener:Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/share/NubiaNotepadShareController;)Lcn/nubia/share/INubiaShareServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/share/NubiaNotepadShareController;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController;->mCallback:Lcn/nubia/share/INubiaShareServiceCallback;

    return-object v0
.end method

.method private createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 97
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 100
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 101
    :cond_0
    const/4 v2, 0x0

    .line 110
    :goto_0
    return-object v2

    .line 104
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 105
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 106
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 107
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 109
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public exitService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mShareService:Lcn/nubia/share/INubiaShareService;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mShareService:Lcn/nubia/share/INubiaShareService;

    iget-object v2, p0, Lcn/nubia/share/NubiaNotepadShareController;->mCallback:Lcn/nubia/share/INubiaShareServiceCallback;

    invoke-interface {v1, v2}, Lcn/nubia/share/INubiaShareService;->unregisterCallback(Lcn/nubia/share/INubiaShareServiceCallback;)V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mShareService:Lcn/nubia/share/INubiaShareService;

    .line 72
    :cond_0
    iget-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initConnection()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcn/nubia/share/NubiaNotepadShareController$2;

    invoke-direct {v0, p0}, Lcn/nubia/share/NubiaNotepadShareController$2;-><init>(Lcn/nubia/share/NubiaNotepadShareController;)V

    iput-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController;->mConnection:Landroid/content/ServiceConnection;

    .line 56
    return-void
.end method

.method public loadDataCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataPath"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mShareService:Lcn/nubia/share/INubiaShareService;

    invoke-interface {v1, p1}, Lcn/nubia/share/INubiaShareService;->loadDataCompleted(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setHandleShareDataListener(Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/share/NubiaNotepadShareController;->mHandlerDataListener:Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;

    .line 115
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.handler.shareservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0, p1, v1}, Lcn/nubia/share/NubiaNotepadShareController;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 62
    .local v0, "eintent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/share/NubiaNotepadShareController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 63
    return-void
.end method
