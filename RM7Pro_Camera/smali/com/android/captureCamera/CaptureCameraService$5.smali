.class Lcom/android/captureCamera/CaptureCameraService$5;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 254
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$5;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    const-string p1, "CaptureCameraService"

    const-string v0, "onDisconnected"

    .line 264
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CaptureCameraService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const-string v0, "CaptureCameraService"

    const-string v1, "onOpened"

    .line 257
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$5;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0, p1}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 259
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$5;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->p(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/l;

    move-result-object v0

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService$5;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v1}, Lcom/android/captureCamera/CaptureCameraService;->r(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/captureCamera/l;->a(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    return-void
.end method
