.class public Lcn/nubia/improve/category/algorithm/XuAihuiModel;
.super Ljava/lang/Object;
.source "XuAihuiModel.java"

# interfaces
.implements Lcn/nubia/improve/category/algorithm/IModel;


# static fields
.field static final scale:F = 0.875f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 229
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 230
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getClassifyThreshold()F
    .locals 1

    const v0, 0x3f333333    # 0.7f

    return v0
.end method

.method public getHeight()I
    .locals 1

    const/16 v0, 0x12b

    return v0
.end method

.method public getWidth()I
    .locals 1

    const/16 v0, 0x12b

    return v0
.end method

.method public normalization(B)F
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

.method public postProcess([F)V
    .locals 11

    .line 101
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getThingsLabels()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    .line 103
    invoke-static {v0, v1}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 104
    aget v2, p1, v1

    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x3f59999a    # 0.85f

    div-float/2addr v2, v3

    aput v2, p1, v1

    const-string v1, "green_plants"

    .line 106
    invoke-static {v0, v1}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "waterfall"

    .line 107
    invoke-static {v0, v2}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 109
    aget v3, p1, v1

    aget v4, p1, v2

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 110
    aget v3, p1, v1

    aget v5, p1, v2

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 111
    aget v3, p1, v1

    aget v5, p1, v2

    add-float/2addr v3, v5

    cmpg-float v3, v4, v3

    if-gez v3, :cond_1

    .line 112
    aget v3, p1, v1

    aget v2, p1, v2

    add-float/2addr v3, v2

    goto :goto_0

    .line 116
    :cond_0
    aget v3, p1, v1

    aget v5, p1, v2

    add-float/2addr v3, v5

    aput v3, p1, v2

    :cond_1
    move v3, v4

    :goto_0
    const-string v2, "flower"

    .line 120
    invoke-static {v0, v2}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "green_leaf"

    .line 121
    invoke-static {v0, v5}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "fall_leaf"

    .line 122
    invoke-static {v0, v6}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 124
    aget v7, p1, v1

    aget v8, p1, v5

    add-float/2addr v7, v8

    cmpl-float v8, v7, v4

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    move v7, v4

    .line 128
    :goto_1
    aget v8, p1, v1

    aget v9, p1, v2

    add-float/2addr v8, v9

    cmpl-float v9, v8, v7

    if-lez v9, :cond_3

    move v7, v8

    .line 132
    :cond_3
    aget v8, p1, v1

    aget v9, p1, v6

    add-float/2addr v8, v9

    cmpl-float v9, v8, v7

    if-lez v9, :cond_4

    move v7, v8

    .line 136
    :cond_4
    aget v8, p1, v5

    aget v2, p1, v2

    add-float/2addr v8, v2

    cmpl-float v2, v8, v7

    if-lez v2, :cond_5

    move v7, v8

    .line 140
    :cond_5
    aget v2, p1, v5

    aget v5, p1, v6

    add-float/2addr v2, v5

    cmpl-float v5, v2, v7

    if-lez v5, :cond_6

    move v7, v2

    .line 144
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_7

    cmpg-float v2, v3, v7

    if-gez v2, :cond_7

    move v3, v7

    :cond_7
    const-string v2, "apple"

    .line 148
    invoke-static {v0, v2}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "pear"

    .line 149
    invoke-static {v0, v5}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "orange"

    .line 150
    invoke-static {v0, v6}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 151
    aget v7, p1, v2

    aget v8, p1, v5

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 152
    aget v7, p1, v2

    aget v8, p1, v5

    add-float/2addr v7, v8

    aput v7, p1, v5

    .line 154
    :cond_8
    aget v5, p1, v2

    aget v7, p1, v6

    add-float/2addr v5, v7

    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_9

    .line 155
    aget v2, p1, v2

    aget v5, p1, v6

    add-float/2addr v2, v5

    aput v2, p1, v6

    :cond_9
    const-string v2, "sea"

    .line 158
    invoke-static {v0, v2}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "blue_sky"

    .line 159
    invoke-static {v0, v5}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "mountain"

    .line 160
    invoke-static {v0, v6}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "high_buildings"

    .line 161
    invoke-static {v0, v7}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "airplane"

    .line 162
    invoke-static {v0, v8}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 164
    aget v8, p1, v2

    aget v9, p1, v5

    add-float/2addr v8, v9

    .line 165
    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_b

    .line 166
    aget v9, p1, v2

    aget v10, p1, v5

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    .line 167
    aput v8, p1, v2

    goto :goto_2

    :cond_a
    cmpg-float v2, v4, v8

    if-gez v2, :cond_b

    move v4, v8

    .line 175
    :cond_b
    :goto_2
    aget v2, p1, v6

    aget v8, p1, v5

    add-float/2addr v2, v8

    .line 176
    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v8

    cmpl-float v8, v2, v8

    if-lez v8, :cond_d

    .line 177
    aget v8, p1, v6

    aget v9, p1, v5

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_c

    .line 178
    aput v2, p1, v6

    goto :goto_3

    :cond_c
    cmpg-float v6, v4, v2

    if-gez v6, :cond_d

    move v4, v2

    .line 186
    :cond_d
    :goto_3
    aget v2, p1, v7

    aget v6, p1, v5

    add-float/2addr v2, v6

    .line 187
    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_f

    .line 188
    aget v6, p1, v7

    aget v8, p1, v5

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_e

    .line 189
    aput v2, p1, v7

    goto :goto_4

    :cond_e
    cmpg-float v6, v4, v2

    if-gez v6, :cond_f

    move v4, v2

    .line 197
    :cond_f
    :goto_4
    aget v2, p1, v0

    aget v6, p1, v5

    add-float/2addr v2, v6

    .line 198
    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->getClassifyThreshold()F

    move-result v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_11

    .line 199
    aget v6, p1, v0

    aget v7, p1, v5

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    .line 200
    aput v2, p1, v0

    goto :goto_5

    :cond_10
    cmpg-float v0, v4, v2

    if-gez v0, :cond_11

    move v4, v2

    .line 209
    :cond_11
    :goto_5
    aget v0, p1, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_12

    .line 210
    aput v3, p1, v1

    .line 212
    :cond_12
    aget v0, p1, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_13

    .line 213
    aput v4, p1, v5

    :cond_13
    return-void
.end method

.method public preProcessInputData(Landroid/graphics/Bitmap;I[FII)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    float-to-int v3, v5

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f600000    # 0.875f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    move-object v6, p1

    invoke-static {p1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 81
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v2, p4

    int-to-float v2, v2

    .line 82
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move/from16 v3, p5

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move v2, p2

    int-to-float v2, v2

    .line 83
    invoke-virtual {v11, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 84
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    invoke-static {v2}, Lcn/nubia/improve/category/algorithm/BitmapUtil;->bitmap2byteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 88
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 89
    aget-byte v5, v2, v4

    invoke-virtual {p0, v5}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->normalization(B)F

    move-result v5

    aput v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    .line 90
    aget-byte v6, v2, v6

    invoke-virtual {p0, v6}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->normalization(B)F

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v4, 0x2

    .line 91
    aget-byte v6, v2, v6

    invoke-virtual {p0, v6}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->normalization(B)F

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preProcessInputData([BIII[FII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    mul-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x4

    .line 30
    new-array v4, v4, [B

    sub-int v5, p2, v2

    .line 31
    div-int/lit8 v5, v5, 0x2

    sub-int v6, p3, v3

    .line 32
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

    .line 37
    aget-byte v10, p1, v10

    aput-byte v10, v4, v9

    add-int/lit8 v9, v12, 0x1

    add-int/lit8 v10, v13, 0x1

    .line 38
    aget-byte v13, p1, v13

    aput-byte v13, v4, v12

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v10, 0x1

    .line 39
    aget-byte v10, p1, v10

    aput-byte v10, v4, v9

    add-int/lit8 v9, v12, 0x1

    add-int/lit8 v10, v13, 0x1

    .line 40
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

    .line 67
    aget-byte v11, v4, v9

    invoke-virtual {p0, v11}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->normalization(B)F

    move-result v11

    aput v11, p5, v6

    add-int/lit8 v6, v10, 0x1

    add-int/lit8 v11, v9, 0x1

    .line 68
    aget-byte v11, v4, v11

    invoke-virtual {p0, v11}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->normalization(B)F

    move-result v11

    aput v11, p5, v10

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v9, v9, 0x2

    .line 69
    aget-byte v9, v4, v9

    invoke-virtual {p0, v9}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;->normalization(B)F

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

.method public renormalization(F)B
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-byte p1, p1

    return p1
.end method
