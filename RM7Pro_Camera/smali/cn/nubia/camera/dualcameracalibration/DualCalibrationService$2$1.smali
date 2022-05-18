.class Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 338
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 339
    iget-object p3, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p3, p3, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z

    .line 341
    iget-object p3, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p3, p3, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p3}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->c(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object p3

    .line 342
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object v1, v1, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EEPROM\u4fe1\u606f\u5199\u5165\u7ed3\u679c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OK"

    .line 343
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p2, p2, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->i(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->removeMessages(I)V

    .line 345
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p2, p2, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    const-string v0, "WriteSuccess"

    invoke-static {p2, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/String;)V

    .line 346
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p2, p2, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EEPROM\u4fe1\u606f\u5199\u5165\u7ed3\u679c\uff1a      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/CharSequence;)V

    .line 348
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p2, p2, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->j(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    .line 350
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 351
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p1, p1, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->stopSelf()V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p3, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$1;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p3, p3, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p3}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Capture next frame for waiting rewrite finished"

    invoke-static {p3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 355
    :try_start_0
    invoke-virtual {p1, p2, p0, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
