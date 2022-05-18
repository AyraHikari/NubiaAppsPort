.class Lcn/nubia/share/NubiaNotepadShareController$2;
.super Ljava/lang/Object;
.source "NubiaNotepadShareController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/share/NubiaNotepadShareController;->initConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/share/NubiaNotepadShareController;


# direct methods
.method constructor <init>(Lcn/nubia/share/NubiaNotepadShareController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/share/NubiaNotepadShareController;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/share/NubiaNotepadShareController$2;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 46
    iget-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController$2;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-static {p2}, Lcn/nubia/share/INubiaShareService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/share/INubiaShareService;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/share/NubiaNotepadShareController;->access$002(Lcn/nubia/share/NubiaNotepadShareController;Lcn/nubia/share/INubiaShareService;)Lcn/nubia/share/INubiaShareService;

    .line 48
    :try_start_0
    iget-object v1, p0, Lcn/nubia/share/NubiaNotepadShareController$2;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-static {v1}, Lcn/nubia/share/NubiaNotepadShareController;->access$000(Lcn/nubia/share/NubiaNotepadShareController;)Lcn/nubia/share/INubiaShareService;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/share/NubiaNotepadShareController$2;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-static {v2}, Lcn/nubia/share/NubiaNotepadShareController;->access$200(Lcn/nubia/share/NubiaNotepadShareController;)Lcn/nubia/share/INubiaShareServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/share/INubiaShareService;->registerCallback(Lcn/nubia/share/INubiaShareServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController$2;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/share/NubiaNotepadShareController;->access$002(Lcn/nubia/share/NubiaNotepadShareController;Lcn/nubia/share/INubiaShareService;)Lcn/nubia/share/INubiaShareService;

    .line 41
    return-void
.end method
