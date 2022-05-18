.class public Lcn/nubia/improve/category/algorithm/FaceClassify;
.super Ljava/lang/Object;
.source "FaceClassify.java"


# static fields
.field private static final MAX_SIZE:I = 0x640

.field private static final TAG:Ljava/lang/String; = "FaceClassify"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NubiaFaceClassify"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native FaceClassifyGetFaceCover(I)I
.end method

.method public static native FaceClassifyGetFaceValue(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public static native FaceClassifyInit(Ljava/lang/String;[I)V
.end method

.method public static native FaceClassifyOnProcess(ILandroid/graphics/Bitmap;[I[I[F)I
.end method

.method public static FaceClassifyOnProcessEx(ILjava/lang/String;[I[I[F)I
    .locals 4

    .line 40
    invoke-static {p1}, Lcn/nubia/gallery3d/common/BitmapUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x640

    .line 42
    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/common/BitmapUtils;->getRotationAndScaledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 49
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p1, 0x6

    if-eq p1, v0, :cond_2

    const/16 p1, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 60
    invoke-static {p0, v1, p2, p3, p4}, Lcn/nubia/improve/category/algorithm/FaceClassify;->FaceClassifyOnProcess(ILandroid/graphics/Bitmap;[I[I[F)I

    move-result p0

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p0, :cond_3

    mul-int/lit8 p4, p2, 0x4

    .line 64
    aget v0, p3, p4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    aput v0, p3, p4

    add-int/lit8 v0, p4, 0x1

    .line 65
    aget v2, p3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, p4, 0x2

    .line 66
    aget v2, p3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, p3, v0

    add-int/lit8 p4, p4, 0x3

    .line 67
    aget v0, p3, p4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    aput v0, p3, p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return p0
.end method

.method public static native FaceClassifyOnProcessFace(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[I[I[F)I
.end method

.method public static FaceClassifyOnProcessFaceEx(ILjava/lang/String;[Landroid/graphics/Bitmap;[I[I[F)I
    .locals 14

    move-object v0, p1

    .line 77
    invoke-static {p1}, Lcn/nubia/gallery3d/common/BitmapUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x640

    .line 79
    invoke-static {p1, v1, v2}, Lcn/nubia/gallery3d/common/BitmapUtils;->getRotationAndScaledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v0, -0x1

    return v0

    .line 85
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 86
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 87
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x6

    if-eq v0, v1, :cond_2

    const/16 v0, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_1

    .line 91
    :cond_2
    :goto_0
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    div-float/2addr v0, v1

    move v11, v0

    const/4 v12, 0x0

    .line 97
    aget-object v2, p2, v12

    aget-object v3, p2, v3

    const/4 v0, 0x2

    aget-object v4, p2, v0

    const/4 v13, 0x3

    aget-object v5, p2, v13

    const/4 v0, 0x4

    aget-object v6, p2, v0

    move v0, p0

    move-object v1, v10

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Lcn/nubia/improve/category/algorithm/FaceClassify;->FaceClassifyOnProcessFace(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[I[I[F)I

    move-result v0

    :goto_2
    if-ge v12, v0, :cond_3

    mul-int/lit8 v1, v12, 0x4

    .line 103
    aget v2, p4, v1

    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    aput v2, p4, v1

    add-int/lit8 v2, v1, 0x1

    .line 104
    aget v3, p4, v2

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    aput v3, p4, v2

    add-int/lit8 v2, v1, 0x2

    .line 105
    aget v3, p4, v2

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    aput v3, p4, v2

    add-int/2addr v1, v13

    .line 106
    aget v2, p4, v1

    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    aput v2, p4, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    return v0
.end method

.method public static native FaceClassifySetThreshold(F)V
.end method

.method public static native FaceClassifyUnInit()V
.end method
