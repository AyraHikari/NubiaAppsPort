.class public Lcn/nubia/gallery3d/util/BlurUtil;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# static fields
.field private static hRadius:F = 6.0f

.field private static iterations:I = 0x6

.field private static vRadius:F = 6.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BoxBlurFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 29
    new-array v10, v0, [I

    .line 31
    new-array v11, v0, [I

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 35
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    .line 37
    :goto_0
    sget v0, Lcn/nubia/gallery3d/util/BlurUtil;->iterations:I

    if-ge p0, v0, :cond_0

    .line 38
    sget v0, Lcn/nubia/gallery3d/util/BlurUtil;->hRadius:F

    invoke-static {v10, v11, v8, v9, v0}, Lcn/nubia/gallery3d/util/BlurUtil;->blur([I[IIIF)V

    .line 40
    sget v0, Lcn/nubia/gallery3d/util/BlurUtil;->vRadius:F

    invoke-static {v11, v10, v9, v8, v0}, Lcn/nubia/gallery3d/util/BlurUtil;->blur([I[IIIF)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    sget p0, Lcn/nubia/gallery3d/util/BlurUtil;->hRadius:F

    invoke-static {v10, v11, v8, v9, p0}, Lcn/nubia/gallery3d/util/BlurUtil;->blurFractional([I[IIIF)V

    .line 46
    sget p0, Lcn/nubia/gallery3d/util/BlurUtil;->vRadius:F

    invoke-static {v11, v10, v9, v8, p0}, Lcn/nubia/gallery3d/util/BlurUtil;->blurFractional([I[IIIF)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 48
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v12
.end method

.method public static blur([I[IIIF)V
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p3

    add-int/lit8 v2, v0, -0x1

    move/from16 v3, p4

    float-to-int v3, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v4, 0x100

    .line 63
    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_0

    .line 67
    div-int v9, v8, v4

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v4, v7

    move v5, v4

    :goto_1
    if-ge v4, v1, :cond_5

    neg-int v8, v3

    move v9, v7

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_2
    if-gt v8, v3, :cond_1

    .line 77
    invoke-static {v8, v7, v2}, Lcn/nubia/gallery3d/util/BlurUtil;->clamp(III)I

    move-result v13

    add-int/2addr v13, v5

    aget v13, p0, v13

    shr-int/lit8 v14, v13, 0x18

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v9, v14

    shr-int/lit8 v14, v13, 0x10

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v10, v14

    shr-int/lit8 v14, v13, 0x8

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v11, v14

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    move v13, v4

    move v8, v7

    :goto_3
    if-ge v8, v0, :cond_4

    .line 90
    aget v14, v6, v9

    shl-int/lit8 v14, v14, 0x18

    aget v15, v6, v10

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    aget v15, v6, v11

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    aget v15, v6, v12

    or-int/2addr v14, v15

    aput v14, p1, v13

    add-int v14, v8, v3

    add-int/lit8 v14, v14, 0x1

    if-le v14, v2, :cond_2

    move v14, v2

    :cond_2
    sub-int v15, v8, v3

    if-gez v15, :cond_3

    move v15, v7

    :cond_3
    add-int/2addr v14, v5

    .line 106
    aget v14, p0, v14

    add-int/2addr v15, v5

    .line 108
    aget v15, p0, v15

    shr-int/lit8 v7, v14, 0x18

    and-int/lit16 v7, v7, 0xff

    move/from16 v16, v2

    shr-int/lit8 v2, v15, 0x18

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v7, v2

    add-int/2addr v9, v7

    const/high16 v2, 0xff0000

    and-int v7, v14, v2

    and-int/2addr v2, v15

    sub-int/2addr v7, v2

    shr-int/lit8 v2, v7, 0x10

    add-int/2addr v10, v2

    const v2, 0xff00

    and-int v7, v14, v2

    and-int/2addr v2, v15

    sub-int/2addr v7, v2

    shr-int/lit8 v2, v7, 0x8

    add-int/2addr v11, v2

    and-int/lit16 v2, v14, 0xff

    and-int/lit16 v7, v15, 0xff

    sub-int/2addr v2, v7

    add-int/2addr v12, v2

    add-int/2addr v13, v1

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    move/from16 v16, v2

    add-int/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public static blurFractional([I[IIIF)V
    .locals 19

    move/from16 v0, p3

    move/from16 v1, p4

    float-to-int v2, v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float/2addr v3, v2

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    .line 140
    aget v6, p0, v2

    aput v6, p1, v4

    add-int v6, v4, v0

    const/4 v7, 0x1

    move v8, v7

    :goto_1
    add-int/lit8 v9, p2, -0x1

    if-ge v8, v9, :cond_0

    add-int v9, v5, v8

    add-int/lit8 v10, v9, -0x1

    .line 147
    aget v10, p0, v10

    .line 149
    aget v11, p0, v9

    add-int/2addr v9, v7

    .line 151
    aget v9, p0, v9

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v10, 0x10

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v14, v10, 0x8

    and-int/lit16 v14, v14, 0xff

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v15, v11, 0x18

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v2, v11, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v7, v11, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v11, v11, 0xff

    move/from16 v16, v4

    shr-int/lit8 v4, v9, 0x18

    and-int/lit16 v4, v4, 0xff

    move/from16 v17, v5

    shr-int/lit8 v5, v9, 0x10

    and-int/lit16 v5, v5, 0xff

    move/from16 v18, v8

    shr-int/lit8 v8, v9, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v12, v4

    int-to-float v4, v12

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/2addr v15, v4

    add-int/2addr v13, v5

    int-to-float v4, v13

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/2addr v2, v4

    add-int/2addr v14, v8

    int-to-float v4, v14

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/2addr v7, v4

    add-int/2addr v10, v9

    int-to-float v4, v10

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/2addr v11, v4

    int-to-float v4, v15

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v5, v7

    mul-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v7, v11

    mul-float/2addr v7, v3

    float-to-int v7, v7

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v7

    .line 193
    aput v2, p1, v6

    add-int/2addr v6, v0

    add-int/lit8 v8, v18, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move/from16 v16, v4

    move/from16 v17, v5

    .line 199
    aget v2, p0, v9

    aput v2, p1, v6

    add-int v5, v17, p2

    add-int/lit8 v4, v16, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method
