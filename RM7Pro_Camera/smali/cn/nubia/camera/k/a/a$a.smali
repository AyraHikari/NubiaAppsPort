.class public Lcn/nubia/camera/k/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/a/a;
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

.field public static final d:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final i:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lcn/nubia/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    const-class v0, [I

    new-instance v1, Lcn/nubia/b/f;

    const-class v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/b/f;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcn/nubia/camera/k/a/a$a;->k:Lcn/nubia/b/f;

    const-string v1, "org.codeaurora.qcamera3.iso_exp_priority.iso_available_modes"

    .line 135
    invoke-static {v1, v0}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$a;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 136
    const-class v1, [J

    const-string v2, "org.codeaurora.qcamera3.iso_exp_priority.exposure_time_range"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$a;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 137
    const-class v1, Ljava/lang/String;

    const-string v2, "cn.nubia.camera.feature.config"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$a;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 138
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "com.nubia.chi.is_auto_hdr"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$a;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 139
    const-class v1, Ljava/lang/Float;

    const-string v2, "com.nubia.staticinfo.max_zoom_level"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$a;->e:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 140
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "com.nubia.staticinfo.HDR10Recorder"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$a;->f:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 141
    const-class v1, [Ljava/lang/Integer;

    const-string v2, "com.nubia.staticinfo.slow_shutter_streamconfig"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$a;->g:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.supportedHDRmodes.HDRModes"

    .line 142
    invoke-static {v1, v0}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/a/a$a;->h:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 145
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.zte.chi.hdr.isdetectsupported"

    invoke-static {v1, v0}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/a/a$a;->i:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 146
    const-class v0, Ljava/lang/Byte;

    const-string v1, "com.zte.camera.logicalCameraType.logical_camera_type"

    invoke-static {v1, v0}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/a/a$a;->j:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    .line 149
    sget-object v0, Lcn/nubia/camera/k/a/a$a;->k:Lcn/nubia/b/f;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object p0
.end method
