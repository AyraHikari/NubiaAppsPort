.class public Lcom/android/captureCamera/h;
.super Lcom/android/captureCamera/l;
.source "SourceFile"


# instance fields
.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/android/captureCamera/l;-><init>()V

    const-string v0, "HALWatermarkProcessor"

    .line 20
    iput-object v0, p0, Lcom/android/captureCamera/h;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/android/captureCamera/h;->h:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/android/captureCamera/h;->h:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 43
    iget v3, p0, Lcom/android/captureCamera/h;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    .line 44
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPictureRequestList: CONTROL_AE_COMPENSATION_RANGE min = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", max = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "HALWatermarkProcessor"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/android/captureCamera/h;->e:Landroid/hardware/camera2/CameraDevice;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 47
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 48
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v2, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 49
    sget-object v2, Lcom/android/captureCamera/g$b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    .line 51
    sget-object v2, Lcom/android/captureCamera/g$b;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v9, p0, Lcom/android/captureCamera/h;->f:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v2, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/android/captureCamera/h;->a:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 55
    iget-object v2, p0, Lcom/android/captureCamera/h;->e:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 56
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 57
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 58
    sget-object v4, Lcom/android/captureCamera/g$b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v5, :cond_2

    .line 60
    sget-object v4, Lcom/android/captureCamera/g$b;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v9, p0, Lcom/android/captureCamera/h;->f:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 62
    :cond_2
    iget-object v4, p0, Lcom/android/captureCamera/h;->a:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 64
    iget-object v4, p0, Lcom/android/captureCamera/h;->e:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 65
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 66
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 67
    sget-object p1, Lcom/android/captureCamera/g$b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, p1, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v5, :cond_3

    .line 69
    sget-object p1, Lcom/android/captureCamera/g$b;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/android/captureCamera/h;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/android/captureCamera/h;->a:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 73
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "getPictureRequestList failed"

    .line 77
    invoke-static {v7, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method public a(II)V
    .locals 1

    .line 34
    invoke-super {p0, p1, p2}, Lcom/android/captureCamera/l;->a(II)V

    .line 35
    iget-object p1, p0, Lcom/android/captureCamera/h;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p2}, Lcom/android/captureCamera/h;->a(I)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void
.end method

.method protected a(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 2

    .line 24
    invoke-super {p0, p1, p2}, Lcom/android/captureCamera/l;->a(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/android/captureCamera/h;->e:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/android/captureCamera/h;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
