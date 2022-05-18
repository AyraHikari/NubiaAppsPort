.class Lcn/nubia/camera/a/b$2;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/b;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    .line 354
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    invoke-static {v0}, Lcn/nubia/camera/a/b;->b(Lcn/nubia/camera/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Wait camera more than 10s. Just prompt the alertdialog"

    .line 357
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    invoke-static {v0}, Lcn/nubia/camera/a/b;->c(Lcn/nubia/camera/a/b;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    invoke-static {v0}, Lcn/nubia/camera/a/b;->c(Lcn/nubia/camera/a/b;)I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 361
    iget-object p1, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Lcn/nubia/camera/a/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    invoke-static {v0}, Lcn/nubia/camera/a/b;->d(Lcn/nubia/camera/a/b;)Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    const-string p1, "Camera Ready!"

    .line 363
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p1, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/a/b;->a(Lcn/nubia/camera/a/b;Z)Z

    .line 365
    iget-object p1, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1}, Lcn/nubia/camera/a/b;->e(Lcn/nubia/camera/a/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 366
    iget-object p1, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1}, Lcn/nubia/camera/a/b;->f(Lcn/nubia/camera/a/b;)Lcn/nubia/camera/d;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/d;->a()V

    .line 367
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/CameraApplication;->a(Landroid/content/Context;)V

    .line 368
    iget-object p1, p0, Lcn/nubia/camera/a/b$2;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1}, Lcn/nubia/camera/a/b;->g(Lcn/nubia/camera/a/b;)V

    :cond_1
    return-void
.end method
