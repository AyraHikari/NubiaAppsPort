.class public Lcn/nubia/algorithm/utils/SnpeJni;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "snpe_jni"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native addPadding(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
.end method

.method public static native bitmapToFloatArray(Landroid/graphics/Bitmap;)[F
.end method

.method public static native floatArrayToBitmap([FLandroid/graphics/Bitmap;II)Z
.end method

.method public static native getInputSize(J[I)V
.end method

.method public static native initSNPE([B)J
.end method

.method public static native process(J[F)[F
.end method

.method public static native releaseSNPE(J)V
.end method
