.class Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;
.super Landroid/view/IRotationWatcher$Stub;
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
    .line 125
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    monitor-enter v1

    .line 129
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device$1;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
