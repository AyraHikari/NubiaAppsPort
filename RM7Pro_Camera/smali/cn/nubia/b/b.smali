.class public Lcn/nubia/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final b:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final d:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final e:[I

.field public static final f:J

.field public static g:[Landroid/util/Rational;

.field private static final h:Lcn/nubia/b/f;

.field private static final i:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private p:Landroid/hardware/camera2/CameraCharacteristics;

.field private q:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/Integer;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:[I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    const-class v0, [J

    new-instance v1, Lcn/nubia/b/f;

    const-class v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/b/f;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcn/nubia/b/b;->h:Lcn/nubia/b/f;

    const-string v2, "com.nubia.staticinfo.exposuretime_support"

    .line 33
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v2, Lcn/nubia/b/b;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 34
    const-class v2, Ljava/lang/Boolean;

    const-string v3, "com.nubia.staticinfo.awb_roi_support"

    .line 35
    invoke-virtual {v1, v3, v2}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v2, Lcn/nubia/b/b;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.nubia.staticinfo.pro_exposuretime_support"

    .line 41
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v2, Lcn/nubia/b/b;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.nubia.staticinfo.startrack_exposuretime_support"

    .line 44
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcn/nubia/b/b;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 45
    const-class v0, Ljava/lang/Byte;

    const-string v2, "org.codeaurora.qcamera3.logicalCameraType,logical_camera_type"

    .line 46
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcn/nubia/b/b;->i:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 48
    const-class v0, Ljava/lang/Integer;

    const-string v2, "com.nubia.staticinfo.NubiaCameraType"

    .line 49
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcn/nubia/b/b;->j:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 50
    const-class v0, Ljava/lang/Integer;

    const-string v2, "com.nubia.staticinfo.camera_module"

    .line 51
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcn/nubia/b/b;->k:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 52
    const-class v0, [Ljava/lang/Integer;

    const-string v2, "org.codeaurora.qcamera3.quadra_cfa.qcfa_dimension"

    .line 53
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcn/nubia/b/b;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 54
    const-class v0, [Ljava/lang/Integer;

    const-string v2, "com.nubia.staticinfo.qcfa_dimension"

    .line 55
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcn/nubia/b/b;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 56
    const-class v0, Ljava/lang/Byte;

    const-string v2, "org.codeaurora.qcamera3.quadra_cfa.is_qcfa_sensor"

    .line 57
    invoke-virtual {v1, v2, v0}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcn/nubia/b/b;->n:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 58
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [I

    const-string v2, "com.nubia.staticinfo.camera_switch_flag"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcn/nubia/b/b;->o:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 77
    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/b/b;->e:[I

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    .line 82
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    sput-wide v1, Lcn/nubia/b/b;->f:J

    const/16 v1, 0xf

    new-array v2, v1, [Landroid/util/Rational;

    .line 86
    new-instance v3, Landroid/util/Rational;

    const/4 v4, 0x1

    const v5, 0xea60

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Landroid/util/Rational;

    const/16 v5, 0xfa0

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v5, 0x7d0

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Landroid/util/Rational;

    const/16 v6, 0x3e8

    invoke-direct {v3, v4, v6}, Landroid/util/Rational;-><init>(II)V

    const/4 v6, 0x3

    aput-object v3, v2, v6

    new-instance v3, Landroid/util/Rational;

    const/16 v6, 0x1f4

    invoke-direct {v3, v4, v6}, Landroid/util/Rational;-><init>(II)V

    const/4 v6, 0x4

    aput-object v3, v2, v6

    new-instance v3, Landroid/util/Rational;

    const/16 v7, 0xfa

    invoke-direct {v3, v4, v7}, Landroid/util/Rational;-><init>(II)V

    const/4 v7, 0x5

    aput-object v3, v2, v7

    new-instance v3, Landroid/util/Rational;

    const/16 v7, 0x7d

    invoke-direct {v3, v4, v7}, Landroid/util/Rational;-><init>(II)V

    const/4 v7, 0x6

    aput-object v3, v2, v7

    new-instance v3, Landroid/util/Rational;

    const/16 v7, 0x3c

    invoke-direct {v3, v4, v7}, Landroid/util/Rational;-><init>(II)V

    const/4 v7, 0x7

    aput-object v3, v2, v7

    new-instance v3, Landroid/util/Rational;

    const/16 v7, 0x1e

    invoke-direct {v3, v4, v7}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x8

    aput-object v3, v2, v7

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v4, v1}, Landroid/util/Rational;-><init>(II)V

    aput-object v3, v2, v0

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v4, v7}, Landroid/util/Rational;-><init>(II)V

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v4, v6}, Landroid/util/Rational;-><init>(II)V

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v4, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v1, 0xe

    aput-object v0, v2, v1

    sput-object v2, Lcn/nubia/b/b;->g:[Landroid/util/Rational;

    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0xc8
        0x190
        0x320
        0x640
        0xc80
        0x1900
        0x3200
        0x6400
    .end array-data
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcn/nubia/b/b;->r:Ljava/lang/Integer;

    .line 112
    iput-object v0, p0, Lcn/nubia/b/b;->s:Ljava/lang/Integer;

    .line 113
    iput-object v0, p0, Lcn/nubia/b/b;->t:Ljava/lang/Integer;

    .line 114
    iput-object v0, p0, Lcn/nubia/b/b;->u:Ljava/util/Set;

    .line 115
    iput-object v0, p0, Lcn/nubia/b/b;->v:[I

    const/4 v0, 0x0

    .line 556
    iput-boolean v0, p0, Lcn/nubia/b/b;->w:Z

    .line 118
    iput-object p1, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    .line 119
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcn/nubia/b/b;->q:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-void
.end method

.method private a([Landroid/util/Size;Ljava/lang/String;I)V
    .locals 5

    if-eqz p1, :cond_2

    .line 533
    invoke-static {}, Lcn/nubia/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ": "

    .line 537
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[DEBUG] ImageFormat: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraCharacteristicsHelper"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private a([Landroid/util/Size;[Landroid/util/Size;Ljava/util/List;Landroid/util/Size;)[Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            "[",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 503
    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-nez p4, :cond_2

    return-object p2

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 506
    array-length v1, p2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eqz p1, :cond_4

    array-length v2, p1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    if-eqz p3, :cond_5

    .line 508
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-nez p4, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    add-int/2addr v1, v3

    new-array v1, v1, [Landroid/util/Size;

    if-eqz p4, :cond_7

    .line 512
    aput-object p4, v1, v0

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    if-eqz p3, :cond_8

    .line 516
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_8

    .line 517
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/Size;

    add-int/lit8 v3, v2, 0x1

    .line 518
    aput-object p4, v1, v2

    move v2, v3

    goto :goto_5

    :cond_8
    if-eqz p1, :cond_9

    .line 521
    array-length p3, p1

    if-lez p3, :cond_9

    .line 522
    array-length p3, p1

    invoke-static {p1, v0, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    array-length p1, p1

    add-int/2addr v2, p1

    :cond_9
    if-eqz p2, :cond_a

    .line 525
    array-length p1, p2

    if-lez p1, :cond_a

    .line 526
    array-length p1, p2

    invoke-static {p2, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    array-length p1, p2

    :cond_a
    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    sget-object v1, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    invoke-virtual {v1}, Lcn/nubia/b/i;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    sget-object v1, Lcn/nubia/b/i;->a:Lcn/nubia/b/i;

    invoke-virtual {v1}, Lcn/nubia/b/i;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v1, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    invoke-virtual {v1}, Lcn/nubia/b/i;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v1, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    invoke-virtual {v1}, Lcn/nubia/b/i;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 194
    sget-object v1, Lcn/nubia/b/i;->f:Lcn/nubia/b/i;

    invoke-virtual {v1}, Lcn/nubia/b/i;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public a(III)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/b/o;->a(Landroid/hardware/camera2/CameraCharacteristics;III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/util/Size;)Z
    .locals 5

    .line 488
    invoke-virtual {p0}, Lcn/nubia/b/b;->t()Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_0

    return v1

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/b/b;->u()Ljava/util/List;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 494
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a(I)[Landroid/util/Size;
    .locals 4

    .line 155
    iget-object v0, p0, Lcn/nubia/b/b;->q:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcn/nubia/b/b;->q:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-ne p1, v3, :cond_0

    .line 160
    invoke-virtual {p0}, Lcn/nubia/b/b;->u()Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-virtual {p0}, Lcn/nubia/b/b;->t()Landroid/util/Size;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 163
    :goto_0
    invoke-direct {p0, v1, v0, v2, v3}, Lcn/nubia/b/b;->a([Landroid/util/Size;[Landroid/util/Size;Ljava/util/List;Landroid/util/Size;)[Landroid/util/Size;

    move-result-object v0

    const-string v1, "OutputSize"

    .line 164
    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/b/b;->a([Landroid/util/Size;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;)[Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcn/nubia/b/b;->q:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcn/nubia/b/b;->q:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, v0, p1, v1, v1}, Lcn/nubia/b/b;->a([Landroid/util/Size;[Landroid/util/Size;Ljava/util/List;Landroid/util/Size;)[Landroid/util/Size;

    move-result-object p1

    const-string v0, "OutputSize"

    const/4 v1, -0x2

    .line 145
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/b/b;->a([Landroid/util/Size;Ljava/lang/String;I)V

    return-object p1
.end method

.method public b()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0
.end method

.method public b(I)[Landroid/util/Size;
    .locals 2

    .line 174
    iget-object v0, p0, Lcn/nubia/b/b;->q:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, v1, v0, v1, v1}, Lcn/nubia/b/b;->a([Landroid/util/Size;[Landroid/util/Size;Ljava/util/List;Landroid/util/Size;)[Landroid/util/Size;

    move-result-object v0

    const-string v1, "InputSize"

    .line 176
    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/b/b;->a([Landroid/util/Size;Ljava/lang/String;I)V

    return-object v0
.end method

.method public c()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0
.end method

.method public c(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 364
    invoke-static {p1}, Lcn/nubia/b/o;->a(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcn/nubia/b/b;->b()Landroid/util/Range;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcn/nubia/b/b;->c()Landroid/util/Range;

    move-result-object v1

    .line 226
    new-instance v2, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    .line 227
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "auto"

    .line 230
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcn/nubia/b/b;->e:[I

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v1, v4

    .line 232
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public e()Landroid/util/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 245
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcn/nubia/b/b;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_0

    .line 246
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 247
    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v1

    .line 248
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 252
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Landroid/util/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 261
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcn/nubia/b/b;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_0

    .line 262
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 263
    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/b/b;->e()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/util/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 273
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcn/nubia/b/b;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_0

    .line 274
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 275
    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/b/b;->e()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 7

    .line 309
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 310
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v5

    :cond_2
    return v2
.end method

.method public i()Z
    .locals 6

    .line 325
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 326
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public j()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 342
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public k()F
    .locals 2

    .line 355
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 3

    const/4 v0, 0x0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcn/nubia/b/b;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 384
    iget-object v1, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public m()I
    .locals 3

    .line 388
    iget-object v0, p0, Lcn/nubia/b/b;->r:Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcn/nubia/b/b;->i:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/b;->r:Ljava/lang/Integer;

    .line 391
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 393
    :catch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/b;->r:Ljava/lang/Integer;

    .line 396
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/b;->r:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcn/nubia/b/b;->u:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/b;->u:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcn/nubia/b/b;->u:Ljava/util/Set;

    .line 406
    :goto_0
    iget-object v0, p0, Lcn/nubia/b/b;->u:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/b;->u:Ljava/util/Set;

    .line 410
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/b;->u:Ljava/util/Set;

    return-object v0
.end method

.method public o()I
    .locals 3

    .line 414
    iget-object v0, p0, Lcn/nubia/b/b;->s:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcn/nubia/b/b;->j:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/b;->s:Ljava/lang/Integer;

    .line 417
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 419
    :catch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/b;->s:Ljava/lang/Integer;

    .line 422
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/b;->s:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public p()I
    .locals 4

    .line 426
    iget-object v0, p0, Lcn/nubia/b/b;->t:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    .line 428
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcn/nubia/b/b;->k:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/nubia/b/b;->t:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 430
    iput-object v2, p0, Lcn/nubia/b/b;->t:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    iput-object v2, p0, Lcn/nubia/b/b;->t:Ljava/lang/Integer;

    .line 436
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/b/b;->t:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1
.end method

.method public q()D
    .locals 4

    .line 443
    invoke-virtual {p0}, Lcn/nubia/b/b;->r()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public r()F
    .locals 6

    .line 447
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    .line 448
    iget-object v1, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 449
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    float-to-double v0, v1

    div-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method

.method public s()Z
    .locals 3

    const/4 v0, 0x0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcn/nubia/b/b;->n:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_1

    move v0, v2

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public t()Landroid/util/Size;
    .locals 4

    .line 463
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcn/nubia/b/b;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 464
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 465
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcn/nubia/b/b;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 477
    :goto_0
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    .line 478
    new-instance v3, Landroid/util/Size;

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public v()[I
    .locals 2

    .line 558
    iget-boolean v0, p0, Lcn/nubia/b/b;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 559
    iput-boolean v0, p0, Lcn/nubia/b/b;->w:Z

    .line 561
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/b;->p:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcn/nubia/b/b;->o:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcn/nubia/b/b;->v:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/b/b;->v:[I

    return-object v0
.end method
