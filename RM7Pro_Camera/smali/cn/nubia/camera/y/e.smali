.class public Lcn/nubia/camera/y/e;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method

.method private ah()Z
    .locals 2

    .line 74
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ai()Z
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->ag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected B()Z
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0251

    invoke-virtual {p0, v1}, Lcn/nubia/camera/y/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0255

    .line 48
    invoke-virtual {p0, v1}, Lcn/nubia/camera/y/e;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 50
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->B()Z

    move-result v0

    return v0
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 8

    .line 36
    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->I()Lcn/nubia/b/b;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/y/e;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    .line 39
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 38
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 40
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v0, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3

    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data
.end method

.method protected ae()Z
    .locals 2

    .line 100
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public af()I
    .locals 1

    .line 67
    invoke-direct {p0}, Lcn/nubia/camera/y/e;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8016

    return v0

    :cond_0
    const v0, 0x800f

    return v0
.end method

.method public ag()Ljava/lang/String;
    .locals 3

    .line 78
    invoke-direct {p0}, Lcn/nubia/camera/y/e;->ah()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "off"

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/y/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0260

    invoke-virtual {p0, v1}, Lcn/nubia/camera/y/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_Intervalometer_night_scene_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()I
    .locals 1

    .line 60
    invoke-direct {p0}, Lcn/nubia/camera/y/e;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    return v0

    :cond_0
    const/4 v0, 0x7

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 90
    invoke-direct {p0}, Lcn/nubia/camera/y/e;->ai()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
