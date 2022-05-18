.class Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$6;
.super Ljava/lang/Object;
.source "ReverseControlSocket.java"

# interfaces
.implements Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->addListener(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;)V
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
    .line 213
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$6;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$6;->val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardTextChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$6;->val$mController:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getSender()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;->pushClipboardText(Ljava/lang/String;)V

    .line 217
    return-void
.end method
