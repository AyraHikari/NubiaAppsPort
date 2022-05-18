.class Lcn/nubia/camera/CameraApplication$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/CameraApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/camera2/CameraManager;

.field final synthetic b:Lcn/nubia/camera/CameraApplication;


# direct methods
.method constructor <init>(Lcn/nubia/camera/CameraApplication;Landroid/hardware/camera2/CameraManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/CameraApplication$1;->b:Lcn/nubia/camera/CameraApplication;

    iput-object p2, p0, Lcn/nubia/camera/CameraApplication$1;->a:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraApplication"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcn/nubia/camera/CameraApplication$1;->b:Lcn/nubia/camera/CameraApplication;

    invoke-static {p1}, Lcn/nubia/camera/CameraApplication;->a(Landroid/content/Context;)V

    .line 53
    iget-object p1, p0, Lcn/nubia/camera/CameraApplication$1;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    return-void
.end method
