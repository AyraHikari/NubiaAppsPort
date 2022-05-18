.class public Lcn/nubia/camera/panorama/n;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/x$b;
    .locals 8

    .line 30
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/n;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->f()Landroid/util/Size;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/n;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/panorama/n;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/n;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/n;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/w;->d()[Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/n;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/panorama/n;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/n;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/n;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    .line 38
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 37
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 39
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v0, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data
.end method

.method public ab()I
    .locals 1

    .line 54
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    return v0

    .line 57
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->ab()I

    move-result v0

    return v0
.end method

.method protected b(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
