.class public Lcn/nubia/algorithm/camera/TrajectoryAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nubia_trajectory"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native Compose([ILandroid/graphics/Bitmap;)I
.end method

.method public static native ComposePrepare()I
.end method

.method public static native CompositionCancel()V
.end method

.method public static native PreRegister()I
.end method

.method public static native SaveYuvData(IIII[B)I
.end method
