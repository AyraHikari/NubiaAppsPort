.class Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;
.super Ljava/lang/Object;
.source "ReverseControlSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->startReceiveMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

.field final synthetic val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

.field final synthetic val$wiredLessTouPing:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;ZLcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    .prologue
    .line 183
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iput-boolean p2, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->val$wiredLessTouPing:Z

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    :try_start_0
    iget-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->val$wiredLessTouPing:Z

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    .local v1, "isWiredLessTouPing":Z
    :goto_0
    const-string v2, "ReverseControlSocket666"

    const-string v3, "start Receive Message.Type"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->control()V

    .line 201
    .end local v1    # "isWiredLessTouPing":Z
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 189
    goto :goto_0

    .line 191
    :cond_1
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_2

    .restart local v1    # "isWiredLessTouPing":Z
    :goto_2
    goto :goto_0

    .end local v1    # "isWiredLessTouPing":Z
    :cond_2
    move v1, v2

    goto :goto_2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    .line 198
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$5;->val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->stop()V

    .line 199
    const-string v2, "ReverseControlSocket123"

    const-string v3, "mController 1 exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
