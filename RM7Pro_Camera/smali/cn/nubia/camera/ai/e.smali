.class public Lcn/nubia/camera/ai/e;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 31
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result p1

    const/16 p2, 0xf0

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x140

    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p1, :cond_0

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    .line 33
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x122

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    .line 39
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x12c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private af()I
    .locals 2

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public Z()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 8

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->I()Lcn/nubia/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/b;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->I()Lcn/nubia/b/b;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 58
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->J()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/nubia/b/b;->a(Landroid/util/Size;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/ai/e;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    .line 67
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    .line 68
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x3f847ae140000000L    # 0.009999999776482582

    .line 66
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 72
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v0, v1, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3

    .line 75
    :cond_3
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    return-object v0
.end method

.method protected b()I
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01d0

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ai/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_facedetection_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0251

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ai/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0255

    .line 96
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ai/e;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 98
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->g()Z

    move-result v0

    return v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public i()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected j()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/ai/e;->b:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/e;->a:Lcn/nubia/camera/k/ae;

    sget-object v2, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k/ae;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 140
    invoke-direct {p0}, Lcn/nubia/camera/ai/e;->af()I

    move-result v2

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public q()I
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcn/nubia/camera/ai/e;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x101

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
