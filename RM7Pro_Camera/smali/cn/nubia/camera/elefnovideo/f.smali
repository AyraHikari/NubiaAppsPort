.class public Lcn/nubia/camera/elefnovideo/f;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method

.method private a([Landroid/util/Size;II)Landroid/util/Size;
    .locals 4

    .line 41
    sget-object v0, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 44
    invoke-static {v2, p2, p3}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/elefnovideo/f;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public Z()I
    .locals 3

    .line 59
    invoke-super {p0}, Lcn/nubia/camera/k/x;->Z()I

    move-result v0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->F()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->L()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/elefnovideo/j;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 10

    .line 26
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->s()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/elefnovideo/f;->a([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v1

    .line 32
    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 33
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/util/Size;

    .line 34
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v6, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 33
    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v0

    .line 36
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v2, v0}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method public aa()I
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/elefnovideo/j;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()I
    .locals 3

    .line 68
    invoke-super {p0}, Lcn/nubia/camera/k/x;->q()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->F()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/f;->L()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/elefnovideo/j;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected s()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
