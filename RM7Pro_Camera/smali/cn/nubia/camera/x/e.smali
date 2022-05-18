.class public Lcn/nubia/camera/x/e;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/x$b;
    .locals 10

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/x/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->b()[Landroid/util/Size;

    move-result-object v0

    .line 38
    array-length v1, v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 39
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 40
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/16 v8, 0x438

    if-lt v7, v8, :cond_0

    mul-int/lit8 v8, v7, 0x4

    mul-int/lit8 v9, v6, 0x3

    if-ne v8, v9, :cond_0

    mul-int/2addr v6, v7

    if-ge v6, v2, :cond_0

    move-object v3, v5

    move v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/x/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcn/nubia/camera/x/e;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picture size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preview size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdPhotoParameterItems"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcn/nubia/camera/x/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/x/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Landroid/util/Size;

    .line 51
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double v6, v1, v6

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 50
    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v1

    .line 52
    new-instance v2, Lcn/nubia/camera/k/x$b;

    invoke-direct {v2, p0, v0, v3, v1}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v2
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "on"

    return-object v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcn/nubia/camera/x/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/x/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0251

    invoke-virtual {p0, v1}, Lcn/nubia/camera/x/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0255

    .line 59
    invoke-virtual {p0, v1}, Lcn/nubia/camera/x/e;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 58
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

.method protected h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
