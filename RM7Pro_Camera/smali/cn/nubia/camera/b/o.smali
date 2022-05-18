.class public Lcn/nubia/camera/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/b/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    const v0, 0x3f333333    # 0.7f

    return v0
.end method

.method public a(B)F
    .locals 1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    return p1
.end method

.method public a(II)Lcn/nubia/camera/v/b;
    .locals 3

    .line 20
    new-instance v0, Lcn/nubia/camera/v/b;

    int-to-float p1, p1

    const/high16 v1, 0x3f600000    # 0.875f

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-int p2, p2

    sget-object v1, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v2, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, p1, p2, v1, v2}, Lcn/nubia/camera/v/b;-><init>(IILcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    return-object v0
.end method

.method public a([BIII[FII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    mul-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x4

    .line 27
    new-array v4, v4, [B

    sub-int v5, p2, v2

    .line 28
    div-int/lit8 v5, v5, 0x2

    sub-int v6, p3, v3

    .line 29
    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    move v8, v6

    move v9, v7

    :goto_0
    add-int v10, v6, v3

    if-ge v8, v10, :cond_1

    mul-int v10, v8, p2

    mul-int/lit8 v10, v10, 0x4

    mul-int/lit8 v11, v5, 0x4

    add-int/2addr v10, v11

    move v11, v5

    :goto_1
    add-int v12, v5, v2

    if-ge v11, v12, :cond_0

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v10, 0x1

    .line 34
    aget-byte v10, p1, v10

    aput-byte v10, v4, v9

    add-int/lit8 v9, v12, 0x1

    add-int/lit8 v10, v13, 0x1

    .line 35
    aget-byte v13, p1, v13

    aput-byte v13, v4, v12

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v10, 0x1

    .line 36
    aget-byte v10, p1, v10

    aput-byte v10, v4, v9

    add-int/lit8 v9, v12, 0x1

    add-int/lit8 v10, v13, 0x1

    .line 37
    aget-byte v13, p1, v13

    aput-byte v13, v4, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    move v6, v5

    :goto_2
    if-ge v5, v3, :cond_6

    move v8, v7

    :goto_3
    if-ge v8, v2, :cond_5

    const/16 v9, 0x5a

    if-eq v1, v9, :cond_4

    const/16 v9, 0xb4

    if-eq v1, v9, :cond_3

    const/16 v9, 0x10e

    if-eq v1, v9, :cond_2

    mul-int v9, v5, v2

    add-int/2addr v9, v8

    goto :goto_5

    :cond_2
    mul-int v9, v8, v2

    sub-int v10, v2, v5

    goto :goto_4

    :cond_3
    sub-int v9, v3, v5

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v9, v2

    sub-int v10, v2, v8

    :goto_4
    add-int/lit8 v10, v10, -0x1

    add-int/2addr v9, v10

    goto :goto_5

    :cond_4
    sub-int v9, v3, v8

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v9, v2

    add-int/2addr v9, v5

    :goto_5
    mul-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v6, 0x1

    .line 64
    aget-byte v11, v4, v9

    invoke-virtual {p0, v11}, Lcn/nubia/camera/b/o;->a(B)F

    move-result v11

    aput v11, p5, v6

    add-int/lit8 v6, v10, 0x1

    add-int/lit8 v11, v9, 0x1

    .line 65
    aget-byte v11, v4, v11

    invoke-virtual {p0, v11}, Lcn/nubia/camera/b/o;->a(B)F

    move-result v11

    aput v11, p5, v10

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v9, v9, 0x2

    .line 66
    aget-byte v9, v4, v9

    invoke-virtual {p0, v9}, Lcn/nubia/camera/b/o;->a(B)F

    move-result v9

    aput v9, p5, v6

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public a([F)V
    .locals 11

    .line 99
    sget-object v0, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 100
    aget v1, p1, v0

    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v2

    mul-float/2addr v1, v2

    const v2, 0x3f59999a    # 0.85f

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 102
    sget-object v0, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v1, "green_plants"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 103
    sget-object v1, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v2, "waterfall"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 105
    aget v2, p1, v0

    aget v3, p1, v1

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 106
    aget v2, p1, v0

    aget v4, p1, v1

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    .line 107
    aget v2, p1, v0

    aget v4, p1, v1

    add-float/2addr v2, v4

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    .line 108
    aget v2, p1, v0

    aget v1, p1, v1

    add-float/2addr v2, v1

    goto :goto_0

    .line 112
    :cond_0
    aget v2, p1, v0

    aget v4, p1, v1

    add-float/2addr v2, v4

    aput v2, p1, v1

    :cond_1
    move v2, v3

    .line 116
    :goto_0
    sget-object v1, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v4, "flower"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 117
    sget-object v4, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v5, "green_leaf"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 118
    sget-object v5, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v6, "fall_leaf"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 120
    aget v6, p1, v0

    aget v7, p1, v4

    add-float/2addr v6, v7

    cmpl-float v7, v6, v3

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    .line 124
    :goto_1
    aget v7, p1, v0

    aget v8, p1, v1

    add-float/2addr v7, v8

    cmpl-float v8, v7, v6

    if-lez v8, :cond_3

    move v6, v7

    .line 128
    :cond_3
    aget v7, p1, v0

    aget v8, p1, v5

    add-float/2addr v7, v8

    cmpl-float v8, v7, v6

    if-lez v8, :cond_4

    move v6, v7

    .line 132
    :cond_4
    aget v7, p1, v4

    aget v1, p1, v1

    add-float/2addr v7, v1

    cmpl-float v1, v7, v6

    if-lez v1, :cond_5

    move v6, v7

    .line 136
    :cond_5
    aget v1, p1, v4

    aget v4, p1, v5

    add-float/2addr v1, v4

    cmpl-float v4, v1, v6

    if-lez v4, :cond_6

    move v6, v1

    .line 140
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_7

    cmpg-float v1, v2, v6

    if-gez v1, :cond_7

    move v2, v6

    .line 144
    :cond_7
    sget-object v1, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v4, "apple"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 145
    sget-object v4, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v5, "pear"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 146
    sget-object v5, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v6, "orange"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 147
    aget v6, p1, v1

    aget v7, p1, v4

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8

    .line 148
    aget v6, p1, v1

    aget v7, p1, v4

    add-float/2addr v6, v7

    aput v6, p1, v4

    .line 150
    :cond_8
    aget v4, p1, v1

    aget v6, p1, v5

    add-float/2addr v4, v6

    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    .line 151
    aget v1, p1, v1

    aget v4, p1, v5

    add-float/2addr v1, v4

    aput v1, p1, v5

    .line 154
    :cond_9
    sget-object v1, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v4, "sea"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 155
    sget-object v4, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v5, "blue_sky"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 156
    sget-object v5, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v6, "mountain"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 157
    sget-object v6, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v7, "high_buildings"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 158
    sget-object v7, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    const-string v8, "airplane"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 160
    aget v8, p1, v1

    aget v9, p1, v4

    add-float/2addr v8, v9

    .line 161
    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_b

    .line 162
    aget v9, p1, v1

    aget v10, p1, v4

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    .line 163
    aput v8, p1, v1

    goto :goto_2

    :cond_a
    cmpg-float v1, v3, v8

    if-gez v1, :cond_b

    move v3, v8

    .line 171
    :cond_b
    :goto_2
    aget v1, p1, v5

    aget v8, p1, v4

    add-float/2addr v1, v8

    .line 172
    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_d

    .line 173
    aget v8, p1, v5

    aget v9, p1, v4

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_c

    .line 174
    aput v1, p1, v5

    goto :goto_3

    :cond_c
    cmpg-float v5, v3, v1

    if-gez v5, :cond_d

    move v3, v1

    .line 182
    :cond_d
    :goto_3
    aget v1, p1, v6

    aget v5, p1, v4

    add-float/2addr v1, v5

    .line 183
    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_f

    .line 184
    aget v5, p1, v6

    aget v8, p1, v4

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_e

    .line 185
    aput v1, p1, v6

    goto :goto_4

    :cond_e
    cmpg-float v5, v3, v1

    if-gez v5, :cond_f

    move v3, v1

    .line 193
    :cond_f
    :goto_4
    aget v1, p1, v7

    aget v5, p1, v4

    add-float/2addr v1, v5

    .line 194
    invoke-virtual {p0}, Lcn/nubia/camera/b/o;->a()F

    move-result v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_11

    .line 195
    aget v5, p1, v7

    aget v6, p1, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_10

    .line 196
    aput v1, p1, v7

    goto :goto_5

    :cond_10
    cmpg-float v5, v3, v1

    if-gez v5, :cond_11

    move v3, v1

    .line 205
    :cond_11
    :goto_5
    aget v1, p1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    .line 206
    aput v2, p1, v0

    .line 208
    :cond_12
    aget v0, p1, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_13

    .line 209
    aput v3, p1, v4

    :cond_13
    return-void
.end method
