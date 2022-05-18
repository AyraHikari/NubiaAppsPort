.class Lcom/android/captureCamera/CaptureCameraService$7;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
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

    .line 659
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    .line 662
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCameraAvailable] cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureCameraService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->t(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->u(Lcom/android/captureCamera/CaptureCameraService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 665
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/captureCamera/CaptureCameraService;->b(Lcom/android/captureCamera/CaptureCameraService;Z)Z

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 2

    .line 671
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCameraUnavailable] cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureCameraService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->t(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->u(Lcom/android/captureCamera/CaptureCameraService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 674
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/captureCamera/CaptureCameraService;->b(Lcom/android/captureCamera/CaptureCameraService;Z)Z

    .line 675
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1, v0}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Z)Z

    .line 676
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$7;->a:Lcom/android/captureCamera/CaptureCameraService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    :cond_0
    return-void
.end method
