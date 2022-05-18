.class public Lcn/nubia/touping/Utils/CameraPermissionCompat;
.super Ljava/lang/Object;
.source "CameraPermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;
    }
.end annotation


# static fields
.field public static final REQUEST_CAMERA_PERMISSION:I = 0x2

.field public static final REQUEST_CODE_CAMERA:I = 0x3e7

.field private static final TAG:Ljava/lang/String; = "CameraPermissionCompat"

.field private static mOnCameraPermissionListener:Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static checkCameraPermission(Landroid/content/Context;Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;

    .prologue
    const/4 v6, 0x1

    .line 29
    sput-object p1, Lcn/nubia/touping/Utils/CameraPermissionCompat;->mOnCameraPermissionListener:Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;

    .line 30
    const/4 v1, 0x1

    .line 32
    .local v1, "granted":Z
    invoke-static {}, Lcn/nubia/touping/Utils/CameraPermissionCompat;->isFlyme()Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_3

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 35
    .local v2, "mCamera":Landroid/hardware/Camera;
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 39
    .local v3, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v3    # "mParameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 50
    .end local v2    # "mCamera":Landroid/hardware/Camera;
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 51
    sget-object v4, Lcn/nubia/touping/Utils/CameraPermissionCompat;->mOnCameraPermissionListener:Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;

    if-eqz v4, :cond_2

    .line 52
    sget-object v4, Lcn/nubia/touping/Utils/CameraPermissionCompat;->mOnCameraPermissionListener:Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;

    invoke-interface {v4, v6}, Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;->onGrantResult(Z)V

    .line 59
    .end local p0    # "context":Landroid/content/Context;
    :cond_2
    :goto_2
    return v1

    .line 40
    .restart local v2    # "mCamera":Landroid/hardware/Camera;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CameraPermissionCompat"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    const/4 v1, 0x0

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mCamera":Landroid/hardware/Camera;
    :cond_3
    const-string v4, "android.permission.CAMERA"

    invoke-static {p0, v4}, Lcn/nubia/touping/Utils/PhoneInfo;->CheckPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 55
    :cond_4
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 56
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    const/16 v5, 0x3e7

    invoke-static {p0, v4, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private static isFlyme()Z
    .locals 2

    .prologue
    .line 72
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onRequestPermissionsResult(Landroid/content/Context;I[Ljava/lang/String;[I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 63
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    .line 64
    sget-object v0, Lcn/nubia/touping/Utils/CameraPermissionCompat;->mOnCameraPermissionListener:Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcn/nubia/touping/Utils/CameraPermissionCompat;->mOnCameraPermissionListener:Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcn/nubia/touping/Utils/CameraPermissionCompat;->checkCameraPermission(Landroid/content/Context;Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;->onGrantResult(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public static startCaptureActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    new-instance v0, Lcn/nubia/touping/Utils/CameraPermissionCompat$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/CameraPermissionCompat$1;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcn/nubia/touping/Utils/CameraPermissionCompat;->checkCameraPermission(Landroid/content/Context;Lcn/nubia/touping/Utils/CameraPermissionCompat$OnCameraPermissionListener;)Z

    .line 100
    return-void
.end method
