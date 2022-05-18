.class Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 311
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 317
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z

    .line 318
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v0, p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    const/4 p1, 0x0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->g(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Surface;

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->e(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->f(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v0, p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z

    .line 305
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    :goto_0
    return-void
.end method
