.class public Lcn/nubia/camera/aj/g;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Lcn/nubia/camera/s/a$b;

.field private d:Z

.field private e:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 38
    sget-object p1, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    iput-object p1, p0, Lcn/nubia/camera/aj/g;->c:Lcn/nubia/camera/s/a$b;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/camera/aj/g;->d:Z

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcn/nubia/camera/aj/g;->e:Landroid/util/Size;

    .line 44
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->M()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->K()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq p2, p3, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->N()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->K()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne p2, p3, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    iput-boolean p1, p0, Lcn/nubia/camera/aj/g;->b:Z

    .line 46
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/aj/g;->c:Lcn/nubia/camera/s/a$b;

    invoke-virtual {p2}, Lcn/nubia/camera/s/a$b;->a()I

    move-result p2

    const-string p3, "pref_gender_key"

    invoke-virtual {p1, p3, p2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aj/g;->c:Lcn/nubia/camera/s/a$b;

    return-void
.end method

.method private af()Z
    .locals 4

    const v0, 0x7f0f03bd

    .line 234
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0278

    .line 235
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_normal_face_pretty_key"

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ag()Landroid/util/Size;
    .locals 5

    .line 266
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aA()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const v2, 0x7f0f027a

    invoke-virtual {p0, v2}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_nubia_debug_mode_key"

    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "key_debug_12M_to_48M_switch"

    const-string v4, "on"

    invoke-virtual {v2, v3, v4}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "key_12M_to_48M"

    const-string v2, "12M"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xfa0

    const/16 v2, 0xbb8

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 276
    :cond_1
    sget-object v0, Lcn/nubia/camera/ba/b;->b:Landroid/util/Size;

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method protected A()Ljava/lang/String;
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0241

    .line 259
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_intelligent_noise_reduction_key"

    .line 258
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 7

    .line 168
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->ae()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_0

    return-object v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aJ()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_camera_interval_switch_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->m()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/aj/g;->e:Landroid/util/Size;

    .line 178
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v3, "KEY_LOW_POWER_MODE_5PER"

    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_third_arith_hdr_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method protected S()Z
    .locals 3

    .line 326
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f021d

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_wideportrait_correction_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

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

.method protected T()I
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->b(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 292
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->T()I

    move-result v0

    return v0
.end method

.method public Z()I
    .locals 4

    .line 312
    invoke-super {p0}, Lcn/nubia/camera/k/x;->Z()I

    move-result v0

    .line 313
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->as()I

    move-result v1

    if-gtz v1, :cond_1

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->at()I

    move-result v1

    if-lez v1, :cond_2

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    .line 316
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/b;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/b/b;->a(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    :cond_2
    return v0
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 12

    .line 90
    invoke-direct {p0}, Lcn/nubia/camera/aj/g;->ag()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_moresetting_picturesize_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->b()[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a([Landroid/util/Size;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    sget-object v1, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->a()Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

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

    .line 108
    :goto_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v1, v1, v3

    const/4 v2, 0x2

    if-gez v1, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/util/Size;

    const/16 v5, 0x640

    const/16 v6, 0x320

    invoke-direct {v1, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcn/nubia/camera/aj/g;->b(Landroid/util/Size;[Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    goto/16 :goto_1

    .line 111
    :cond_3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    float-to-double v5, v1

    const-wide v7, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_4

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/util/Size;

    const/16 v5, 0x500

    const/16 v6, 0x3c0

    invoke-direct {v1, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 112
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcn/nubia/camera/aj/g;->b(Landroid/util/Size;[Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    float-to-double v5, v1

    const-wide v7, 0x4001555555555555L    # 2.1666666666666665

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_5

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/util/Size;

    const/16 v3, 0x618

    const/16 v4, 0x2d0

    invoke-direct {v1, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcn/nubia/camera/aj/g;->b(Landroid/util/Size;[Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    goto :goto_1

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/g;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 121
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Size;

    .line 122
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Lcn/nubia/camera/aj/g;->b(Landroid/util/Size;[Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v5}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v6

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

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

    .line 127
    :goto_2
    iput-object v0, p0, Lcn/nubia/camera/aj/g;->e:Landroid/util/Size;

    .line 128
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v0, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3

    :array_0
    .array-data 4
        0x640
        0x320
    .end array-data

    :array_1
    .array-data 4
        0x500
        0x3c0
    .end array-data

    :array_2
    .array-data 4
        0x618
        0x2d0
    .end array-data
.end method

.method public a(Lcn/nubia/camera/s/a$b;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/aj/g;->c:Lcn/nubia/camera/s/a$b;

    return-void
.end method

.method protected ae()Z
    .locals 3

    .line 333
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->r()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->r()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected b()I
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcn/nubia/camera/aj/g;->d:Z

    return-void
.end method

.method public c()Lcn/nubia/camera/k/x$c;
    .locals 5

    .line 193
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 194
    invoke-super {p0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 197
    new-instance v0, Lcn/nubia/camera/k/x$c;

    invoke-direct {v0}, Lcn/nubia/camera/k/x$c;-><init>()V

    .line 198
    iput v1, v0, Lcn/nubia/camera/k/x$c;->a:I

    .line 200
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    .line 201
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/aj/g;->c:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v3}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v3

    const-string v4, "pref_gender_key"

    invoke-virtual {v1, v4, v3}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v1

    .line 202
    sget-object v3, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 209
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v1

    const-string v3, "pref_camera_pretty_slimming"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/nubia/camera/k/x$c;->b:I

    .line 210
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v1

    const-string v3, "pref_camera_pretty_toning"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/nubia/camera/k/x$c;->c:I

    .line 211
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v1

    const-string v3, "pref_camera_pretty_smooth"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/nubia/camera/k/x$c;->d:I

    return-object v0

    .line 215
    :cond_3
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ar()I

    move-result v0

    if-lez v0, :cond_5

    .line 216
    invoke-direct {p0}, Lcn/nubia/camera/aj/g;->af()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    new-instance v2, Lcn/nubia/camera/k/x$c;

    invoke-direct {v2}, Lcn/nubia/camera/k/x$c;-><init>()V

    .line 218
    iput v1, v2, Lcn/nubia/camera/k/x$c;->a:I

    .line 219
    iget-boolean v1, p0, Lcn/nubia/camera/aj/g;->d:Z

    if-nez v1, :cond_4

    const/4 v0, 0x0

    .line 222
    :cond_4
    iput v0, v2, Lcn/nubia/camera/k/x$c;->b:I

    .line 223
    iput v0, v2, Lcn/nubia/camera/k/x$c;->c:I

    .line 224
    iput v0, v2, Lcn/nubia/camera/k/x$c;->d:I

    return-object v2

    .line 228
    :cond_5
    invoke-super {p0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const v2, 0x7f0f01d0

    const-string v3, "pref_camera_facedetection_key"

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_1

    return-object v1

    .line 143
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ar()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/camera/aj/g;->af()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcn/nubia/camera/aj/g;->b:Z

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

    .line 247
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    const/4 v1, 0x7

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Range;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/g;->e:Landroid/util/Size;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    new-instance v0, Landroid/util/Range;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 252
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/k/x;->f()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method protected g()Z
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0251

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0255

    .line 161
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 163
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->g()Z

    move-result v0

    return v0
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 4

    .line 297
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->m()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->W()Z

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
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->ae()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public q()I
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 304
    iget v0, v0, Lcn/nubia/camera/k/x$c;->a:I

    if-ne v0, v1, :cond_0

    const/16 v1, 0x101

    :cond_0
    return v1
.end method

.method protected w()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0267

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_normal_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const v2, 0x7f0f0283

    const-string v3, "pref_pretty_effect_key"

    if-ne v0, v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/g;->c:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v1}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v1

    const-string v2, "pref_gender_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    .line 74
    sget-object v1, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v1, v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f022c

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_female_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f024f

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_male_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/aj/g;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcn/nubia/camera/aj/g;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
