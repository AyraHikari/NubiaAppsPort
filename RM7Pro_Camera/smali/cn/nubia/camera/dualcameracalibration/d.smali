.class public Lcn/nubia/camera/dualcameracalibration/d;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# static fields
.field private static c:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private static d:Landroid/util/Size;

.field private static e:Landroid/util/Size;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/nubia/camera/k/x$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, [I

    const-string v1, "com.nubia.staticinfo.CalibrationSize"

    invoke-static {v1, v0}, Lcn/nubia/camera/k/a/a$a;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/dualcameracalibration/d;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcn/nubia/camera/dualcameracalibration/d;->d:Landroid/util/Size;

    sput-object v0, Lcn/nubia/camera/dualcameracalibration/d;->e:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/d;->b:Ljava/util/Map;

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/d;->b:Ljava/util/Map;

    .line 38
    :try_start_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/dualcameracalibration/d;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 39
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/dualcameracalibration/d;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 40
    new-instance p3, Landroid/util/Size;

    const/4 p4, 0x0

    aget v0, p1, p4

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-direct {p3, v0, p1}, Landroid/util/Size;-><init>(II)V

    sput-object p3, Lcn/nubia/camera/dualcameracalibration/d;->d:Landroid/util/Size;

    .line 41
    new-instance p1, Landroid/util/Size;

    aget p3, p2, p4

    aget p2, p2, v1

    invoke-direct {p1, p3, p2}, Landroid/util/Size;-><init>(II)V

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/d;->e:Landroid/util/Size;

    const-string p1, "DualCalibrationParameterItems"

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MASTER_CALIBRAITON_SIZE: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/dualcameracalibration/d;->d:Landroid/util/Size;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; SLAVE_CALIBRATION_SIZE: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/dualcameracalibration/d;->e:Landroid/util/Size;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public M()Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/d;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/d;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :cond_1
    return v1
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/d;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/dualcameracalibration/d;->a(Ljava/lang/String;)Lcn/nubia/camera/k/x$b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcn/nubia/camera/k/x$b;
    .locals 8

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/k/x$b;

    return-object p1

    .line 57
    :cond_0
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 58
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/d;->d:Landroid/util/Size;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1230

    const/16 v2, 0xda8

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/d;->e:Landroid/util/Size;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 68
    :cond_3
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xb10

    const/16 v2, 0x850

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 71
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/d;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/dualcameracalibration/d;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/d;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/d;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    .line 73
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 72
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 74
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v0, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method
