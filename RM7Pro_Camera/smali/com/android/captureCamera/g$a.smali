.class public Lcom/android/captureCamera/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final b:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final c:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcn/nubia/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcn/nubia/b/f;

    const-class v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/b/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/captureCamera/g$a;->d:Lcn/nubia/b/f;

    .line 65
    const-class v0, [I

    const-string v1, "org.codeaurora.qcamera3.iso_exp_priority.iso_available_modes"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$a;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 66
    const-class v0, [J

    const-string v1, "org.codeaurora.qcamera3.iso_exp_priority.exposure_time_range"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$a;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 67
    const-class v0, Ljava/lang/String;

    const-string v1, "cn.nubia.camera.feature.config"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$a;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/android/captureCamera/g$a;->d:Lcn/nubia/b/f;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object p0
.end method
