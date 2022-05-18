.class Lcn/nubia/share/NubiaNotepadShareController$1;
.super Lcn/nubia/share/INubiaShareServiceCallback$Stub;
.source "NubiaNotepadShareController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/NubiaNotepadShareController;
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
    .line 22
    iput-object p1, p0, Lcn/nubia/share/NubiaNotepadShareController$1;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-direct {p0}, Lcn/nubia/share/INubiaShareServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerShareData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController$1;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-static {v0}, Lcn/nubia/share/NubiaNotepadShareController;->access$000(Lcn/nubia/share/NubiaNotepadShareController;)Lcn/nubia/share/INubiaShareService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController$1;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-static {v0}, Lcn/nubia/share/NubiaNotepadShareController;->access$100(Lcn/nubia/share/NubiaNotepadShareController;)Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcn/nubia/share/NubiaNotepadShareController$1;->this$0:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-static {v0}, Lcn/nubia/share/NubiaNotepadShareController;->access$100(Lcn/nubia/share/NubiaNotepadShareController;)Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;->onGenerateShareImage()V

    goto :goto_0
.end method
