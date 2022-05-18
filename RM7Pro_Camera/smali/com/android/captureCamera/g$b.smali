.class public Lcom/android/captureCamera/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lcn/nubia/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcn/nubia/b/f;

    const-class v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/b/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/captureCamera/g$b;->o:Lcn/nubia/b/f;

    .line 39
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v1, "org.codeaurora.qcamera3.iso_exp_priority.use_iso_exp_priority"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 40
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "org.codeaurora.qcamera3.iso_exp_priority.select_priority"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 41
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "org.codeaurora.qcamera3.exposure_metering.exposure_metering_mode"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 42
    const-class v0, Ljava/lang/Integer;

    const-string v1, "org.codeaurora.qcamera3.ae_bracket.mode"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 44
    const-class v0, Ljava/lang/String;

    const-string v1, "com.nubia.chi.nubia_effect"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 45
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.nubia.chi.nubia_logo"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 46
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.nubia.chi.app_mode"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 47
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.nubia.chi.eeprom_calibration"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 48
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.nubia.chi.face_pretty_mode"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 49
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.nubia.chi.face_pretty_smooth_level"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 50
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.nubia.chi.face_pretty_toning_level"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->k:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 51
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.nubia.chi.face_pretty_slimming_level"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 52
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "com.nubia.chi.snapshotFlip"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->m:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 53
    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.nubia.chi.hdr_mode"

    invoke-static {v1, v0}, Lcom/android/captureCamera/g$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/captureCamera/g$b;->n:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/android/captureCamera/g$b;->o:Lcn/nubia/b/f;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Key;

    return-object p0
.end method
