.class Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
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

    .line 322
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 395
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z

    .line 396
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 9

    .line 325
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    .line 372
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 374
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->h(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->g(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 330
    sget-object v4, Lcn/nubia/camera/k/a/a$b;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 331
    sget-object v3, Lcn/nubia/camera/k/a/a$b;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 332
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 333
    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->e(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 335
    new-instance v2, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;-><init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;)V

    .line 363
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1, v5}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z

    .line 367
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    goto :goto_0

    .line 371
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->g(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 372
    sget-object v4, Lcn/nubia/camera/k/a/a$b;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 373
    sget-object v3, Lcn/nubia/camera/k/a/a$b;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 374
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 375
    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->e(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 376
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$2;-><init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;)V

    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 386
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1, v5}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z

    .line 388
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    :goto_0
    return-void
.end method
