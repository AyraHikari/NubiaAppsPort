.class public Lcn/nubia/b/c;
.super Lcn/nubia/b/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcn/nubia/b/d;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/b/a;-><init>(Lcn/nubia/b/d;Landroid/hardware/camera2/CameraCaptureSession;Z)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;
    .locals 0

    .line 81
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcn/nubia/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcn/nubia/b/c;->a(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a;->a(Ljava/util/List;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    move-result p1

    return p1

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcn/nubia/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/c;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0, v0}, Lcn/nubia/b/c;->a(Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 44
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcn/nubia/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcn/nubia/b/c;->a(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a;->b(Ljava/util/List;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    move-result p1

    return p1

    .line 63
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a;->b(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method
