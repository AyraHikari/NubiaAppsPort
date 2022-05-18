.class public Lcn/nubia/algorithm/camera/CloneAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nubia_clone"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native CloneCameraAutoCompose(Landroid/graphics/Bitmap;)I
.end method

.method public static native CloneCameraCleanData()I
.end method

.method public static native CloneCameraComposeConfirmByte()[B
.end method

.method public static native CloneCameraEditGetMaskPicture(ILandroid/graphics/Bitmap;)I
.end method

.method public static native CloneCameraEditGetPicture(ILandroid/graphics/Bitmap;)I
.end method

.method public static native CloneCameraEditPreview(Landroid/graphics/Bitmap;)I
.end method

.method public static native CloneCameraErase(ILandroid/graphics/Bitmap;)I
.end method

.method public static native CloneCameraPaintContour(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
.end method

.method public static native CloneCameraSaveRGBAData(IIIII[BILandroid/graphics/Bitmap;)I
.end method
