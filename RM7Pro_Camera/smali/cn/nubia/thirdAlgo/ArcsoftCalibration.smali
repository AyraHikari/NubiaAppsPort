.class public Lcn/nubia/thirdAlgo/ArcsoftCalibration;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ArcsoftCalibrationAlgorithm"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native processCalibrationWithResultString(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
