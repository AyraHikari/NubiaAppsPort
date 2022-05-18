.class public Lcn/nubia/camera/clone/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IIIII[BILandroid/graphics/Bitmap;)I
    .locals 0

    .line 40
    invoke-static/range {p0 .. p7}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraSaveRGBAData(IIIII[BILandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static a(ILandroid/graphics/Bitmap;)I
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraEditGetPicture(ILandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 96
    invoke-static {p0, p1, p2}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraPaintContour(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 55
    invoke-static {p0}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraAutoCompose(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static a()[B
    .locals 1

    .line 121
    invoke-static {}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraComposeConfirmByte()[B

    move-result-object v0

    return-object v0
.end method

.method public static b()I
    .locals 1

    .line 134
    invoke-static {}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraCleanData()I

    move-result v0

    return v0
.end method

.method public static b(ILandroid/graphics/Bitmap;)I
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraEditGetMaskPicture(ILandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 110
    invoke-static {p0}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraEditPreview(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static c(ILandroid/graphics/Bitmap;)I
    .locals 0

    .line 149
    invoke-static {p0, p1}, Lcn/nubia/algorithm/camera/CloneAlgorithm;->CloneCameraErase(ILandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method
