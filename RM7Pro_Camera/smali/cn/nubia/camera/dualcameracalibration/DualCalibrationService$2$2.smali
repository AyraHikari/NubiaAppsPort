.class Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$2;
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

    .line 376
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 380
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p2, p2, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z

    .line 381
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 382
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    iget-object p1, p1, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    return-void
.end method
