.class public Lcn/nubia/camera/k/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/l$b;,
        Lcn/nubia/camera/k/l$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcn/nubia/b/d;

.field private c:Lcn/nubia/b/a;

.field private d:Lcn/nubia/camera/k/y;

.field private e:Lcn/nubia/b/k;

.field private f:Lcn/nubia/camera/k/o;

.field private g:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/nubia/camera/k/l$a;

.field private i:Lcn/nubia/camera/k/l$b;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 44
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/k/l;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x8
        0x0
        0x8
    .end array-data
.end method

.method public constructor <init>(Lcn/nubia/b/d;Lcn/nubia/b/a;Lcn/nubia/camera/k/y;Lcn/nubia/b/k;Lcom/a/a/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/b/d;",
            "Lcn/nubia/b/a;",
            "Lcn/nubia/camera/k/y;",
            "Lcn/nubia/b/k;",
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcn/nubia/camera/k/l;->h:Lcn/nubia/camera/k/l$a;

    .line 59
    iput-object p1, p0, Lcn/nubia/camera/k/l;->b:Lcn/nubia/b/d;

    .line 60
    iput-object p2, p0, Lcn/nubia/camera/k/l;->c:Lcn/nubia/b/a;

    .line 61
    iput-object p3, p0, Lcn/nubia/camera/k/l;->d:Lcn/nubia/camera/k/y;

    .line 62
    iput-object p4, p0, Lcn/nubia/camera/k/l;->e:Lcn/nubia/b/k;

    .line 63
    iput-object p5, p0, Lcn/nubia/camera/k/l;->g:Lcom/a/a/a/d;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/o;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/k/l;->f:Lcn/nubia/camera/k/o;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/k/l;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/k/l;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()[I
    .locals 1

    .line 40
    sget-object v0, Lcn/nubia/camera/k/l;->a:[I

    return-object v0
.end method

.method static synthetic c(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/y;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/k/l;->d:Lcn/nubia/camera/k/y;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/k/l;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/camera/k/l;->k:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/l$b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/k/l;->i:Lcn/nubia/camera/k/l$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 256
    invoke-static {}, Lcn/nubia/algorithm/camera/ArcsoftHDR;->unInit()I

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/k/l;->h:Lcn/nubia/camera/k/l$a;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcn/nubia/camera/k/l$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/l$b;Ljava/lang/String;I)V
    .locals 4

    .line 67
    iput-object p3, p0, Lcn/nubia/camera/k/l;->i:Lcn/nubia/camera/k/l$b;

    .line 68
    iput-object p4, p0, Lcn/nubia/camera/k/l;->j:Ljava/lang/String;

    .line 69
    iput p5, p0, Lcn/nubia/camera/k/l;->k:I

    const/4 p3, 0x3

    .line 70
    invoke-static {p3}, Lcn/nubia/algorithm/camera/ArcsoftHDR;->init(I)I

    .line 74
    iget-object p3, p0, Lcn/nubia/camera/k/l;->h:Lcn/nubia/camera/k/l$a;

    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {p3}, Lcn/nubia/camera/k/l$a;->a()V

    .line 77
    :cond_0
    new-instance p3, Lcn/nubia/camera/k/l$a;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcn/nubia/camera/k/l$a;-><init>(Lcn/nubia/camera/k/l;Lcn/nubia/camera/k/l$1;)V

    iput-object p3, p0, Lcn/nubia/camera/k/l;->h:Lcn/nubia/camera/k/l$a;

    .line 78
    invoke-virtual {p3, p1}, Lcn/nubia/camera/k/l$a;->a(Lcn/nubia/camera/k/q;)V

    .line 80
    iget-object p1, p0, Lcn/nubia/camera/k/l;->b:Lcn/nubia/b/d;

    invoke-virtual {p1}, Lcn/nubia/b/d;->a()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 81
    iget-object p1, p0, Lcn/nubia/camera/k/l;->b:Lcn/nubia/b/d;

    invoke-virtual {p1}, Lcn/nubia/b/d;->a()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Rational;

    .line 83
    iput-object p2, p0, Lcn/nubia/camera/k/l;->f:Lcn/nubia/camera/k/o;

    .line 84
    iget-object p1, p0, Lcn/nubia/camera/k/l;->e:Lcn/nubia/b/k;

    invoke-virtual {p1}, Lcn/nubia/b/k;->d()Lcn/nubia/b/a/h$a;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/k/t;

    iget-object p2, p0, Lcn/nubia/camera/k/l;->h:Lcn/nubia/camera/k/l$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 86
    new-instance p1, Lcn/nubia/camera/k/ad;

    iget-object p2, p0, Lcn/nubia/camera/k/l;->d:Lcn/nubia/camera/k/y;

    invoke-virtual {p2}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/nubia/camera/k/ad;-><init>(Lcn/nubia/camera/k/ad;)V

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p4, Lcn/nubia/camera/k/l;->a:[I

    const/4 p5, 0x0

    aget v0, p4, p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 91
    iget-object p3, p0, Lcn/nubia/camera/k/l;->b:Lcn/nubia/b/d;

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    iget-object v2, p0, Lcn/nubia/camera/k/l;->e:Lcn/nubia/b/k;

    aput-object v2, v1, p5

    const/4 v2, 0x2

    invoke-virtual {p1, p3, v2, v1}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v1, p4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 94
    iget-object p3, p0, Lcn/nubia/camera/k/l;->b:Lcn/nubia/b/d;

    new-array v1, v0, [Lcn/nubia/b/m;

    iget-object v3, p0, Lcn/nubia/camera/k/l;->e:Lcn/nubia/b/k;

    aput-object v3, v1, p5

    invoke-virtual {p1, p3, v2, v1}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aget p4, p4, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 97
    iget-object p3, p0, Lcn/nubia/camera/k/l;->b:Lcn/nubia/b/d;

    new-array p4, v0, [Lcn/nubia/b/m;

    iget-object v0, p0, Lcn/nubia/camera/k/l;->e:Lcn/nubia/b/k;

    aput-object v0, p4, p5

    invoke-virtual {p1, p3, v2, p4}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lcn/nubia/camera/k/l;->c:Lcn/nubia/b/a;

    iget-object p3, p0, Lcn/nubia/camera/k/l;->h:Lcn/nubia/camera/k/l$a;

    iget-object p4, p0, Lcn/nubia/camera/k/l;->g:Lcom/a/a/a/d;

    invoke-interface {p4}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Handler;

    invoke-virtual {p1, p2, p3, p4}, Lcn/nubia/b/a;->a(Ljava/util/List;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    return-void
.end method
