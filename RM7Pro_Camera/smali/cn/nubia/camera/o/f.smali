.class public Lcn/nubia/camera/o/f;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 28
    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->G()Lcn/nubia/camera/k/w;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/w;->e()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/o/f;->b:Landroid/util/Size;

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->G()Lcn/nubia/camera/k/w;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->G()Lcn/nubia/camera/k/w;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/k/w;->d()[Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/o/f;->b:Landroid/util/Size;

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xf00
        0x870
    .end array-data
.end method

.method private af()Z
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01b3

    invoke-virtual {p0, v1}, Lcn/nubia/camera/o/f;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_anti_shake"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f030b

    invoke-virtual {p0, v1}, Lcn/nubia/camera/o/f;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected B()Z
    .locals 1

    .line 58
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->B()Z

    move-result v0

    return v0
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 8

    .line 36
    invoke-direct {p0}, Lcn/nubia/camera/o/f;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/camera/o/f;->b:Landroid/util/Size;

    .line 38
    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/o/f;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    .line 40
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 39
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 41
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v0, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3

    .line 43
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)I
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/o/f;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/k/x;->b(I)I

    move-result p1

    return p1
.end method

.method protected h()I
    .locals 1

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/o/f;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
