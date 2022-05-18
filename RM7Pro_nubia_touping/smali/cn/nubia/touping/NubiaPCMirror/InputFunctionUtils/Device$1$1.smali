.class Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;->onRotationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

    .prologue
    .line 129
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->this$1:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

    iput p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->this$1:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->val$rotation:I

    invoke-static {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->access$002(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;I)I

    .line 133
    const-string v0, "Device678876"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->val$rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getSmallMirrorStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->this$1:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->this$1:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

    iget-object v1, v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->access$100(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->val$rotation:I

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->withDeviceRotation(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->access$102(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    .line 137
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->this$1:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->access$200(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->this$1:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->access$200(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;->val$rotation:I

    invoke-interface {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$RotationListener;->onRotationChanged(I)V

    .line 141
    :cond_0
    return-void
.end method
