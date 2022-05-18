.class Lcn/nubia/b/a$b;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/a;

.field private b:Lcn/nubia/b/a$a;


# direct methods
.method public constructor <init>(Lcn/nubia/b/a;Lcn/nubia/b/a$a;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcn/nubia/b/a$b;->a:Lcn/nubia/b/a;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 358
    iput-object p2, p0, Lcn/nubia/b/a$b;->b:Lcn/nubia/b/a$a;

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 363
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 364
    iget-object p1, p0, Lcn/nubia/b/a$b;->b:Lcn/nubia/b/a$a;

    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcn/nubia/b/a$b;->a:Lcn/nubia/b/a;

    invoke-virtual {p1, v0, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    .line 371
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 372
    iget-object p1, p0, Lcn/nubia/b/a$b;->b:Lcn/nubia/b/a$a;

    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p0, Lcn/nubia/b/a$b;->a:Lcn/nubia/b/a;

    invoke-virtual {p1, v0, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 380
    iget-object p1, p0, Lcn/nubia/b/a$b;->b:Lcn/nubia/b/a$a;

    if-eqz p1, :cond_0

    .line 381
    iget-object v0, p0, Lcn/nubia/b/a$b;->a:Lcn/nubia/b/a;

    invoke-virtual {p1, v0, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 387
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 388
    iget-object p1, p0, Lcn/nubia/b/a$b;->b:Lcn/nubia/b/a$a;

    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lcn/nubia/b/a$b;->a:Lcn/nubia/b/a;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;I)V

    :cond_0
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    .line 395
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 396
    iget-object p1, p0, Lcn/nubia/b/a$b;->b:Lcn/nubia/b/a$a;

    if-eqz p1, :cond_0

    .line 397
    iget-object v0, p0, Lcn/nubia/b/a$b;->a:Lcn/nubia/b/a;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;IJ)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    .line 403
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 404
    iget-object v0, p0, Lcn/nubia/b/a$b;->b:Lcn/nubia/b/a$a;

    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcn/nubia/b/a$b;->a:Lcn/nubia/b/a;

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V

    :cond_0
    return-void
.end method
