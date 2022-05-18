.class public Lcn/nubia/camera/multiRecord/k;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method


# virtual methods
.method protected a([Landroid/util/Size;II)Landroid/util/Size;
    .locals 4

    .line 65
    sget-object v0, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 68
    invoke-static {v2, p2, p3}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/multiRecord/k;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 10

    .line 33
    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 38
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/k;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 43
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/k;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcn/nubia/camera/multiRecord/k;->a(D[Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v2

    .line 44
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->c()Landroid/util/Size;

    move-result-object v0

    invoke-direct {v3, p0, v2, v1, v0}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    move-object v0, v3

    :cond_1
    return-object v0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/k;->s()I

    move-result v0

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/k;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/k;->a([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v1

    .line 56
    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 57
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/k;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/k;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/util/Size;

    .line 58
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v6, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 57
    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v0

    .line 60
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v2, v0}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method protected s()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
