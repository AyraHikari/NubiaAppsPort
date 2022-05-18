.class Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;
.super Landroid/content/IOnPrimaryClipChangedListener$Stub;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    .prologue
    .line 150
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-direct {p0}, Landroid/content/IOnPrimaryClipChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPrimaryClipChanged()V
    .locals 5

    .prologue
    .line 153
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->access$300(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->access$400(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getClipboardText()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "text":Ljava/lang/String;
    const-string v1, "Device"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changlei334455 8888888Text  text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-eqz v0, :cond_1

    .line 162
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->access$400(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$ClipboardListener;->onClipboardTextChanged(Ljava/lang/String;)V

    .line 165
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
