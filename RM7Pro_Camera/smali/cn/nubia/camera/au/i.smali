.class public Lcn/nubia/camera/au/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)D
    .locals 7

    .line 109
    invoke-static {p0}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v1, p0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v5

    .line 110
    invoke-static {p1}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;)F

    move-result p0

    div-float/2addr p0, v0

    float-to-double p0, p0

    mul-double/2addr p0, v3

    div-double/2addr p0, v5

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static a(F)F
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static a(FF)F
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    float-to-double p0, p1

    div-double/2addr v0, p0

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    div-double/2addr p0, v2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public static a(Ljava/lang/String;)F
    .locals 2

    .line 77
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x42e40000    # 114.0f

    .line 78
    invoke-static {p0}, Lcn/nubia/camera/au/i;->a(F)F

    move-result p0

    return p0

    .line 80
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x4250cccd    # 52.2f

    if-eqz v0, :cond_1

    return v1

    .line 83
    :cond_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p0, 0x42880000    # 68.0f

    .line 84
    invoke-static {p0}, Lcn/nubia/camera/au/i;->a(F)F

    move-result p0

    return p0

    .line 86
    :cond_2
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x41400000    # 12.0f

    return p0

    :cond_3
    return v1
.end method

.method public static a([BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static a([I[FIIIIIIFLcn/nubia/camera/au/b/a;)V
    .locals 14

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    aput p2, p0, v1

    const/4 v2, 0x1

    .line 167
    aput p3, p0, v2

    const/4 v3, 0x2

    .line 168
    aput v1, p0, v3

    const/4 v4, 0x3

    .line 169
    aput p4, p0, v4

    const/4 v5, 0x4

    .line 170
    aput p5, p0, v5

    const/4 v6, 0x5

    .line 171
    aput p6, p0, v6

    const/4 v7, 0x6

    .line 172
    aput p7, p0, v7

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x7

    aput v8, p0, v9

    .line 174
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v2

    const/16 v10, 0x8

    aput v8, p0, v10

    .line 175
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v11, 0x9

    aput v8, p0, v11

    const/16 v8, 0xb

    .line 176
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v13, 0xa

    aput v12, p0, v13

    const/16 v12, 0xc

    .line 177
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    aput v13, p0, v8

    const/16 v8, 0xd

    .line 178
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v13

    aput v13, p0, v12

    const/16 v12, 0xf

    .line 179
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    div-int/lit16 v0, v0, 0x3e8

    aput v0, p0, v8

    .line 181
    invoke-virtual/range {p9 .. p9}, Lcn/nubia/camera/au/b/a;->d()[F

    move-result-object v0

    .line 182
    invoke-virtual/range {p9 .. p9}, Lcn/nubia/camera/au/b/a;->e()[F

    move-result-object v8

    .line 183
    invoke-virtual/range {p9 .. p9}, Lcn/nubia/camera/au/b/a;->f()F

    move-result v12

    aput v12, p1, v1

    .line 184
    invoke-virtual/range {p9 .. p9}, Lcn/nubia/camera/au/b/a;->g()F

    move-result v12

    aput v12, p1, v2

    .line 185
    aget v12, v0, v1

    aput v12, p1, v3

    .line 186
    aget v12, v0, v2

    aput v12, p1, v4

    .line 187
    aget v0, v0, v3

    aput v0, p1, v5

    .line 188
    aget v0, v8, v1

    aput v0, p1, v6

    .line 189
    aget v0, v8, v2

    aput v0, p1, v7

    .line 190
    aget v0, v8, v3

    aput v0, p1, v9

    .line 191
    invoke-virtual/range {p9 .. p9}, Lcn/nubia/camera/au/b/a;->h()F

    move-result v0

    aput v0, p1, v10

    .line 192
    aput p8, p1, v11

    return-void
.end method

.method public static a([I[FLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
