.class public Lcn/nubia/improve/category/algorithm/DengBoModel;
.super Ljava/lang/Object;
.source "DengBoModel.java"

# interfaces
.implements Lcn/nubia/improve/category/algorithm/IModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    return p1
.end method

.method public postProcess([F)V
    .locals 0

    return-void
.end method

.method public preProcessInputData(Landroid/graphics/Bitmap;I[FII)V
    .locals 7

    .line 56
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p4, p4

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    int-to-float p5, p5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    invoke-virtual {v5, p4, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p2, p2

    .line 58
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcn/nubia/improve/category/algorithm/BitmapUtil;->bitmap2byteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const/4 p2, 0x0

    move p4, p2

    .line 63
    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_0

    .line 64
    aget-byte p5, p1, p4

    invoke-virtual {p0, p5}, Lcn/nubia/improve/category/algorithm/DengBoModel;->normalization(B)F

    move-result p5

    aput p5, p3, p2

    add-int/lit8 p5, p2, 0x1

    add-int/lit8 v0, p4, 0x1

    .line 65
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcn/nubia/improve/category/algorithm/DengBoModel;->normalization(B)F

    move-result v0

    aput v0, p3, p5

    add-int/lit8 p5, p2, 0x2

    add-int/lit8 v0, p4, 0x2

    .line 66
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcn/nubia/improve/category/algorithm/DengBoModel;->normalization(B)F

    move-result v0

    aput v0, p3, p5

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 p4, p4, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preProcessInputData([BIII[FII)V
    .locals 5

    const/4 p6, 0x0

    move p7, p6

    move v0, p7

    :goto_0
    if-ge p7, p3, :cond_4

    move v1, p6

    :goto_1
    if-ge v1, p2, :cond_3

    const/16 v2, 0x5a

    if-eq p4, v2, :cond_2

    const/16 v2, 0xb4

    if-eq p4, v2, :cond_1

    const/16 v2, 0x10e

    if-eq p4, v2, :cond_0

    mul-int v2, p7, p2

    add-int/2addr v2, v1

    goto :goto_3

    :cond_0
    mul-int v2, v1, p2

    sub-int v3, p2, p7

    goto :goto_2

    :cond_1
    sub-int v2, p3, p7

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p2

    sub-int v3, p2, v1

    :goto_2
    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    goto :goto_3

    :cond_2
    sub-int v2, p3, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p2

    add-int/2addr v2, p7

    :goto_3
    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v0, 0x1

    .line 46
    aget-byte v4, p1, v2

    invoke-virtual {p0, v4}, Lcn/nubia/improve/category/algorithm/DengBoModel;->normalization(B)F

    move-result v4

    aput v4, p5, v0

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 47
    aget-byte v4, p1, v4

    invoke-virtual {p0, v4}, Lcn/nubia/improve/category/algorithm/DengBoModel;->normalization(B)F

    move-result v4

    aput v4, p5, v3

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v2, v2, 0x2

    .line 48
    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lcn/nubia/improve/category/algorithm/DengBoModel;->normalization(B)F

    move-result v2

    aput v2, p5, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public renormalization(F)B
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-byte p1, p1

    return p1
.end method
