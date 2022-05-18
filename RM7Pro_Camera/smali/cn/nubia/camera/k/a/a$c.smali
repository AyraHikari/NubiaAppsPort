.class public Lcn/nubia/camera/k/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final b:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final c:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final d:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final f:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final g:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final l:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcn/nubia/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const-class v0, [I

    const-class v1, [B

    new-instance v2, Lcn/nubia/b/f;

    const-class v3, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/b/f;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcn/nubia/camera/k/a/a$c;->m:Lcn/nubia/b/f;

    const-string v2, "org.codeaurora.qcamera3.stats.smile_degree"

    .line 29
    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    sput-object v2, Lcn/nubia/camera/k/a/a$c;->a:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "org.codeaurora.qcamera3.stats.smile_confidence"

    .line 30
    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    sput-object v2, Lcn/nubia/camera/k/a/a$c;->b:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "com.qti.chi.multicameraoutputmetadata.nubiabokehinfo"

    .line 31
    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$c;->c:Landroid/hardware/camera2/CaptureResult$Key;

    .line 32
    const-class v1, Ljava/lang/Byte;

    const-string v2, "com.nubia.chi.pdaf_trigger"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$c;->d:Landroid/hardware/camera2/CaptureResult$Key;

    .line 33
    const-class v1, [F

    const-string v2, "com.nubia.node.realtimeaicamera.AiCameraResult"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$c;->e:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "com.nubia.chi.mw_info"

    .line 34
    invoke-static {v1, v0}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$c;->f:Landroid/hardware/camera2/CaptureResult$Key;

    .line 35
    const-class v1, Ljava/lang/Float;

    const-string v2, "com.qti.chi.statsaec.AecLux"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$c;->g:Landroid/hardware/camera2/CaptureResult$Key;

    .line 36
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "com.nubia.chi.is_auto_hdr"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$c;->h:Landroid/hardware/camera2/CaptureResult$Key;

    .line 37
    const-class v1, Ljava/lang/Byte;

    const-string v2, "com.nubia.chi.auto_supernight"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$c;->i:Landroid/hardware/camera2/CaptureResult$Key;

    .line 38
    const-class v1, Ljava/lang/Byte;

    const-string v2, "com.nubia.chi.super_night_frame_done"

    invoke-static {v2, v1}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    sput-object v1, Lcn/nubia/camera/k/a/a$c;->j:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "com.zte.chi.hdr.autodetect-result"

    .line 41
    invoke-static {v1, v0}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/a/a$c;->k:Landroid/hardware/camera2/CaptureResult$Key;

    .line 42
    const-class v0, Ljava/lang/Float;

    const-string v1, "org.quic.camera2.statsconfigs.AECLuxIndex"

    invoke-static {v1, v0}, Lcn/nubia/camera/k/a/a$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->m:Lcn/nubia/b/f;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureResult$Key;

    return-object p0
.end method
