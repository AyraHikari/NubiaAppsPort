.class public Lcn/nubia/camera/b/e;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/camera/b/k;

.field private c:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;Lcn/nubia/camera/b/k;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 36
    iput-object p5, p0, Lcn/nubia/camera/b/e;->b:Lcn/nubia/camera/b/k;

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/x$b;
    .locals 12

    .line 44
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_moresetting_picturesize_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "X"

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->b()[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/aq/f;->a([Landroid/util/Size;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->F()Lcom/android/preference/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 55
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/b/e;->c:Landroid/util/Size;

    return-object v0

    .line 60
    :cond_1
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->b()[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a([Landroid/util/Size;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 71
    :cond_2
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

    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    goto :goto_1

    .line 73
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

    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/b/e;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 79
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Size;

    .line 80
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Lcn/nubia/camera/b/e;->b(Landroid/util/Size;[Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v5}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    .line 83
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v6

    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

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

    .line 85
    :goto_2
    iput-object v0, p0, Lcn/nubia/camera/b/e;->c:Landroid/util/Size;

    .line 86
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v0, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3

    nop

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
.end method

.method protected b()I
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public c()Lcn/nubia/camera/k/x$c;
    .locals 4

    .line 98
    new-instance v0, Lcn/nubia/camera/k/x$c;

    invoke-direct {v0}, Lcn/nubia/camera/k/x$c;-><init>()V

    const/4 v1, 0x1

    .line 99
    iput v1, v0, Lcn/nubia/camera/k/x$c;->a:I

    .line 101
    iget-object v1, p0, Lcn/nubia/camera/b/e;->b:Lcn/nubia/camera/b/k;

    invoke-virtual {v1}, Lcn/nubia/camera/b/k;->c()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "PRETTY"

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 108
    :goto_1
    iput v1, v0, Lcn/nubia/camera/k/x$c;->b:I

    .line 109
    iput v1, v0, Lcn/nubia/camera/k/x$c;->c:I

    .line 110
    iput v1, v0, Lcn/nubia/camera/k/x$c;->d:I

    return-object v0
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

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/b/e;->c:Landroid/util/Size;

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 128
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->f()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method protected g()Z
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcn/nubia/camera/b/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0251

    invoke-virtual {p0, v1}, Lcn/nubia/camera/b/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0255

    .line 136
    invoke-virtual {p0, v1}, Lcn/nubia/camera/b/e;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 138
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->g()Z

    move-result v0

    return v0
.end method
