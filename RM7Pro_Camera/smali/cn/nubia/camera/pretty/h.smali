.class public Lcn/nubia/camera/pretty/h;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcn/nubia/camera/s/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/h;->b:Z

    .line 33
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/h;->c:Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/h;->d:Z

    .line 35
    sget-object p2, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    iput-object p2, p0, Lcn/nubia/camera/pretty/h;->e:Lcn/nubia/camera/s/a$b;

    .line 39
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->O()Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/camera/pretty/h;->b:Z

    .line 40
    sget-object p2, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    invoke-static {p2, p3}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/camera/pretty/h;->c:Z

    .line 41
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 42
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/h;->d:Z

    .line 43
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/pretty/h;->e:Lcn/nubia/camera/s/a$b;

    invoke-virtual {p2}, Lcn/nubia/camera/s/a$b;->a()I

    move-result p2

    const-string p3, "pref_gender_key"

    invoke-virtual {p1, p3, p2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/pretty/h;->e:Lcn/nubia/camera/s/a$b;

    return-void
.end method

.method private af()Z
    .locals 3

    .line 193
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01b2

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_bokeh_level_adjustable"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private ag()Z
    .locals 3

    .line 197
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/h;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f028b

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_pretty_switch_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public D()F
    .locals 3

    .line 169
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/h;->c:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcn/nubia/camera/pretty/h;->af()Z

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_bigaperture_focus_length"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    :cond_0
    return v1

    .line 176
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/k/x;->D()F

    move-result v0

    return v0
.end method

.method protected E()Z
    .locals 3

    .line 181
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/h;->c:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f028f

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_refocus_after_capture_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 184
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->E()Z

    move-result v0

    return v0
.end method

.method public Z()I
    .locals 4

    .line 242
    invoke-super {p0}, Lcn/nubia/camera/k/x;->Z()I

    move-result v0

    .line 243
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->as()I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    .line 245
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/b;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->J()Ljava/lang/String;

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
    .locals 18

    move-object/from16 v0, p0

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_moresetting_picturesize_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->b()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/aq/f;->a([Landroid/util/Size;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_0
    sget-object v2, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->a()Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-static {}, Lcn/nubia/camera/ba/a;->H()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/nubia/camera/k/w;->a(D)Landroid/util/Size;

    move-result-object v1

    .line 65
    :goto_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 66
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->J()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    new-instance v3, Landroid/util/Size;

    const/16 v2, 0x400

    const/16 v4, 0x300

    invoke-direct {v3, v2, v4}, Landroid/util/Size;-><init>(II)V

    goto/16 :goto_2

    .line 69
    :cond_2
    iget-boolean v4, v0, Lcn/nubia/camera/pretty/h;->c:Z

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide v7, 0x3ff5555555555555L    # 1.3333333333333333

    const-wide v9, 0x4001555555555555L    # 2.1666666666666665

    const/4 v11, 0x2

    const-wide v12, 0x3fb99999a0000000L    # 0.10000000149011612

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lcn/nubia/camera/pretty/h;->d:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    float-to-double v14, v2

    sub-double v7, v14, v7

    .line 86
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v2, v7, v12

    if-gez v2, :cond_4

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    new-array v3, v11, [I

    fill-array-data v3, :array_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto/16 :goto_2

    :cond_4
    sub-double v4, v14, v5

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v4, v12

    if-gez v2, :cond_5

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    new-array v3, v11, [I

    fill-array-data v3, :array_1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto/16 :goto_2

    :cond_5
    sub-double/2addr v14, v9

    .line 90
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v4, v12

    if-gez v2, :cond_b

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    new-array v3, v11, [I

    fill-array-data v3, :array_2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto/16 :goto_2

    .line 70
    :cond_6
    :goto_1
    invoke-static {}, Lcn/nubia/camera/ba/a;->w()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result v4

    if-nez v4, :cond_a

    float-to-double v14, v2

    const-wide v16, 0x4000e38e38e38e39L    # 2.111111111111111

    sub-double v16, v14, v16

    .line 71
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v2, v16, v12

    if-gez v2, :cond_7

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    new-array v3, v11, [I

    fill-array-data v3, :array_3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto/16 :goto_2

    :cond_7
    sub-double v4, v14, v5

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v4, v12

    if-gez v2, :cond_8

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    new-array v3, v11, [I

    fill-array-data v3, :array_4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto :goto_2

    :cond_8
    sub-double v4, v14, v7

    .line 75
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v4, v12

    if-gez v2, :cond_9

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    new-array v3, v11, [I

    fill-array-data v3, :array_5

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto :goto_2

    :cond_9
    sub-double/2addr v14, v9

    .line 77
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v4, v12

    if-gez v2, :cond_b

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    new-array v3, v11, [I

    fill-array-data v3, :array_6

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto :goto_2

    :cond_a
    float-to-double v4, v2

    sub-double/2addr v4, v9

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v4, v12

    if-gez v2, :cond_b

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    new-array v3, v11, [I

    fill-array-data v3, :array_7

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    :cond_b
    :goto_2
    if-nez v3, :cond_c

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/pretty/h;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    .line 97
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Size;

    .line 98
    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/Size;

    const/16 v5, 0x280

    const/16 v6, 0x1e0

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v4, v2}, Lcn/nubia/camera/pretty/h;->b(Landroid/util/Size;[Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 99
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v5, v6}, Landroid/util/Size;-><init>(II)V

    goto :goto_3

    .line 101
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/pretty/h;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Landroid/util/Size;

    .line 102
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v4, v2

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v9, v2

    div-double v9, v4, v9

    const-wide v11, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 101
    invoke-virtual/range {v7 .. v12}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 104
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pictureSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " previewSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PrettyParameterItem"

    invoke-static {v5, v4}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v4, Lcn/nubia/camera/k/x$b;

    invoke-direct {v4, v0, v3, v1, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v4

    nop

    :array_0
    .array-data 4
        0x500
        0x3c0
    .end array-data

    :array_1
    .array-data 4
        0x640
        0x320
    .end array-data

    :array_2
    .array-data 4
        0x618
        0x2d0
    .end array-data

    :array_3
    .array-data 4
        0x5f0
        0x2d0
    .end array-data

    :array_4
    .array-data 4
        0x640
        0x320
    .end array-data

    :array_5
    .array-data 4
        0x500
        0x3c0
    .end array-data

    :array_6
    .array-data 4
        0x618
        0x2d0
    .end array-data

    :array_7
    .array-data 4
        0x618
        0x2d0
    .end array-data
.end method

.method public a(Lcn/nubia/camera/s/a$b;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/pretty/h;->e:Lcn/nubia/camera/s/a$b;

    return-void
.end method

.method public ab()I
    .locals 1

    .line 255
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    return v0

    .line 258
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->ab()I

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected b(I)I
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->L()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 211
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-super {p0, p1}, Lcn/nubia/camera/k/x;->b(I)I

    move-result p1

    .line 215
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_1

    add-int/lit16 p1, p1, 0xb4

    .line 218
    :cond_1
    rem-int/lit16 p1, p1, 0x168

    return p1

    .line 220
    :cond_2
    invoke-super {p0, p1}, Lcn/nubia/camera/k/x;->b(I)I

    move-result p1

    return p1
.end method

.method public c()Lcn/nubia/camera/k/x$c;
    .locals 5

    .line 115
    invoke-direct {p0}, Lcn/nubia/camera/pretty/h;->ag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Lcn/nubia/camera/k/x$c;

    invoke-direct {v0}, Lcn/nubia/camera/k/x$c;-><init>()V

    const/4 v1, 0x1

    .line 117
    iput v1, v0, Lcn/nubia/camera/k/x$c;->a:I

    .line 119
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/pretty/h;->e:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v3}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v3

    const-string v4, "pref_gender_key"

    invoke-virtual {v1, v4, v3}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v1

    .line 121
    sget-object v3, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 128
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v1

    const-string v3, "pref_camera_pretty_slimming"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/nubia/camera/k/x$c;->b:I

    .line 129
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v1

    const-string v3, "pref_camera_pretty_toning"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/nubia/camera/k/x$c;->c:I

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v1

    const-string v3, "pref_camera_pretty_smooth"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/nubia/camera/k/x$c;->d:I

    return-object v0

    .line 133
    :cond_2
    invoke-super {p0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "on"

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/h;->b:Z

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

    .line 205
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method protected g()Z
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->L()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->g()Z

    move-result v0

    return v0

    .line 141
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0251

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0255

    .line 142
    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/h;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected j()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/h;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public q()I
    .locals 2

    .line 231
    invoke-super {p0}, Lcn/nubia/camera/k/x;->q()I

    move-result v0

    .line 232
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    or-int/lit16 v0, v0, 0x100

    or-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 154
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    iget-object v1, p0, Lcn/nubia/camera/pretty/h;->e:Lcn/nubia/camera/s/a$b;

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f022c

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_female_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f024f

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_male_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0283

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_pretty_effect_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
