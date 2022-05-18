.class public Lcn/nubia/camera/ao/l;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/util/Size;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcn/nubia/camera/ao/l;->c:Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcn/nubia/camera/ao/l;->d:Landroid/util/Size;

    const/4 p1, -0x1

    .line 180
    iput p1, p0, Lcn/nubia/camera/ao/l;->e:I

    iput p1, p0, Lcn/nubia/camera/ao/l;->f:I

    .line 31
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->N()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/ao/l;->b:Z

    return-void
.end method

.method private af()Z
    .locals 4

    const v0, 0x7f0f03bd

    .line 151
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0278

    .line 152
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_normal_face_pretty_key"

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ag()Z
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected A()Ljava/lang/String;
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0241

    .line 173
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_intelligent_noise_reduction_key"

    .line 172
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 7

    .line 128
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const-string v2, "off"

    if-ne v0, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_interval_switch_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->m()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const-string v1, "on"

    .line 131
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ao/l;->d:Landroid/util/Size;

    .line 132
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v2

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_third_arith_hdr_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()I
    .locals 4

    .line 224
    invoke-super {p0}, Lcn/nubia/camera/k/x;->Z()I

    move-result v0

    .line 225
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->at()I

    move-result v1

    if-lez v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    .line 227
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/b;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/b/b;->a(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    :cond_0
    return v0
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 12

    .line 64
    invoke-direct {p0}, Lcn/nubia/camera/ao/l;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->e(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_moresetting_picturesize_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->b()[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a([Landroid/util/Size;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    sget-object v1, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->a()Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-static {}, Lcn/nubia/camera/ba/a;->H()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/w;->a(D)Landroid/util/Size;

    move-result-object v0

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ao/l;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Size;

    .line 82
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Lcn/nubia/camera/ao/l;->b(Landroid/util/Size;[Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v5}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->G()Lcn/nubia/camera/k/w;

    move-result-object v6

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double v8, v2, v4

    const-wide v10, 0x3f847ae140000000L    # 0.009999999776482582

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 87
    :goto_1
    iput-object v0, p0, Lcn/nubia/camera/ao/l;->d:Landroid/util/Size;

    .line 88
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v0, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method public a(II)V
    .locals 0

    .line 182
    iput p1, p0, Lcn/nubia/camera/ao/l;->e:I

    .line 183
    iput p2, p0, Lcn/nubia/camera/ao/l;->f:I

    return-void
.end method

.method protected ae()Z
    .locals 2

    .line 238
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/ao/l;->ag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected b()I
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0267

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_normal_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Effect_CTF_CUSTOM"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public c()Lcn/nubia/camera/k/x$c;
    .locals 1

    .line 147
    invoke-super {p0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const v2, 0x7f0f01d0

    const-string v3, "pref_camera_facedetection_key"

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_1

    return-object v1

    .line 103
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ar()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/camera/ao/l;->af()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcn/nubia/camera/ao/l;->b:Z

    return v0
.end method

.method protected f()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/ao/l;->d:Landroid/util/Size;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 166
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->f()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method protected g()Z
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0251

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0255

    .line 121
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 123
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->g()Z

    move-result v0

    return v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public i()Z
    .locals 4

    .line 210
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->m()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/ao/l;->ag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j()Z
    .locals 6

    .line 199
    invoke-super {p0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    .line 200
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 204
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ao/l;->ag()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->ae()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public n()I
    .locals 8

    .line 188
    invoke-super {p0}, Lcn/nubia/camera/k/x;->n()I

    move-result v0

    .line 189
    invoke-super {p0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 190
    iget v4, p0, Lcn/nubia/camera/ao/l;->e:I

    if-eq v4, v3, :cond_1

    iget v5, p0, Lcn/nubia/camera/ao/l;->f:I

    if-eq v5, v3, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr v4, v5

    .line 193
    div-int/lit8 v4, v4, 0x64

    return v4

    :cond_1
    :goto_0
    return v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected w()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0267

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_normal_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Effect_CTF_CUSTOM"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "none"

    :cond_0
    return-object v0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/ao/l;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0283

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/l;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_pretty_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
