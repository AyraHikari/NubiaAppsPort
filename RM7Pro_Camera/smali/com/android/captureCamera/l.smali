.class abstract Lcom/android/captureCamera/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/media/ImageReader;

.field protected b:Landroid/media/ImageReader;

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/hardware/camera2/CameraCaptureSession;

.field protected e:Landroid/hardware/camera2/CameraDevice;

.field protected f:I

.field protected g:Landroid/util/Size;

.field protected h:Landroid/hardware/camera2/CameraCharacteristics;

.field protected final i:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/captureCamera/l;->a:Landroid/media/ImageReader;

    .line 26
    iput-object v0, p0, Lcom/android/captureCamera/l;->b:Landroid/media/ImageReader;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/captureCamera/l;->c:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, Lcom/android/captureCamera/l;->d:Landroid/hardware/camera2/CameraCaptureSession;

    .line 29
    iput-object v0, p0, Lcom/android/captureCamera/l;->e:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/android/captureCamera/l;->f:I

    .line 31
    iput-object v0, p0, Lcom/android/captureCamera/l;->g:Landroid/util/Size;

    .line 32
    iput-object v0, p0, Lcom/android/captureCamera/l;->h:Landroid/hardware/camera2/CameraCharacteristics;

    .line 33
    iput v1, p0, Lcom/android/captureCamera/l;->i:I

    return-void
.end method


# virtual methods
.method protected abstract a(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/captureCamera/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/captureCamera/l;->e:Landroid/hardware/camera2/CameraDevice;

    .line 77
    iput-object v0, p0, Lcom/android/captureCamera/l;->d:Landroid/hardware/camera2/CameraCaptureSession;

    .line 78
    iput-object v0, p0, Lcom/android/captureCamera/l;->h:Landroid/hardware/camera2/CameraCharacteristics;

    .line 79
    iget-object v1, p0, Lcom/android/captureCamera/l;->b:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 81
    iput-object v0, p0, Lcom/android/captureCamera/l;->b:Landroid/media/ImageReader;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/captureCamera/l;->a:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 85
    iput-object v0, p0, Lcom/android/captureCamera/l;->a:Landroid/media/ImageReader;

    :cond_1
    return-void
.end method

.method protected a(II)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/captureCamera/l;->f:I

    return-void
.end method

.method protected a(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/captureCamera/l;->d:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method protected a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/util/Size;)V
    .locals 2

    .line 50
    iput-object p1, p0, Lcom/android/captureCamera/l;->h:Landroid/hardware/camera2/CameraCharacteristics;

    .line 51
    iput-object p3, p0, Lcom/android/captureCamera/l;->g:Landroid/util/Size;

    .line 52
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    const/16 v0, 0x100

    const/4 v1, 0x3

    invoke-static {p1, p3, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/captureCamera/l;->a:Landroid/media/ImageReader;

    const/4 p3, 0x0

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/16 p1, 0x280

    const/16 p2, 0x1e0

    const/16 v0, 0x23

    const/4 v1, 0x1

    .line 55
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/captureCamera/l;->b:Landroid/media/ImageReader;

    .line 56
    new-instance p2, Lcom/android/captureCamera/l$1;

    invoke-direct {p2, p0}, Lcom/android/captureCamera/l$1;-><init>(Lcom/android/captureCamera/l;)V

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 63
    iget-object p1, p0, Lcom/android/captureCamera/l;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/captureCamera/l;->b:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/android/captureCamera/l;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/captureCamera/l;->a:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/captureCamera/l;->e:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method protected b()Landroid/view/Surface;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/captureCamera/l;->b:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
