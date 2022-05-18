.class public Lcn/nubia/algorithm/camera/ArcsoftDualCameraVerify;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ArcsoftDualCamVerifyAlgorithm"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native processVerWithResultString(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Ljava/lang/String;
.end method
