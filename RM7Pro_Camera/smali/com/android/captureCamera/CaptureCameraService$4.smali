.class Lcom/android/captureCamera/CaptureCameraService$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/CaptureCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/captureCamera/CaptureCameraService;


# direct methods
.method constructor <init>(Lcom/android/captureCamera/CaptureCameraService;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const-string v0, "CaptureCameraService"

    const-string v1, "onConfigureFailed!"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0, p1}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const-string v0, "CaptureCameraService"

    const-string v1, "onConfigured"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0, p1}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 237
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    sget-object v1, Lcom/android/captureCamera/d;->a:Lcom/android/captureCamera/d;

    invoke-static {v0, v1}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Lcom/android/captureCamera/d;)Lcom/android/captureCamera/d;

    .line 239
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->o(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/CaptureCameraService$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->o(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/CaptureCameraService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/captureCamera/CaptureCameraService$a;->enable()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->p(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/captureCamera/l;->a(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 243
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->q(Lcom/android/captureCamera/CaptureCameraService;)V

    .line 244
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$4;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->g(Lcom/android/captureCamera/CaptureCameraService;)V

    return-void
.end method
