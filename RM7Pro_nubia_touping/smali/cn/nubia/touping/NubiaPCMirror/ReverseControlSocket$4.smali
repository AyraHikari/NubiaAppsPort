.class Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$4;
.super Ljava/lang/Object;
.source "ReverseControlSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->startSendmessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

.field final synthetic val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    .prologue
    .line 164
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$4;->val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$602(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Z)Z

    .line 170
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$4;->val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getSender()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
