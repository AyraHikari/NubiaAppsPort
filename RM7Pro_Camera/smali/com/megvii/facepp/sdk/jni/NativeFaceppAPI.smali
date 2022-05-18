.class public Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static isLoadSuccess:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "megface-new"

    .line 80
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "MegviiFacepp"

    .line 81
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "MegviiFacepp-jni-0.5.2"

    .line 82
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    sput-boolean v0, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->isLoadSuccess:Z

    goto :goto_0

    .line 84
    :catch_1
    sput-boolean v0, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->isLoadSuccess:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeAgeGender(JI)[F
.end method

.method public static native nativeAttribute(JI)[F
.end method

.method public static native nativeBlurness(JI)[F
.end method

.method public static native nativeDetect(J[BIII)I
.end method

.method public static native nativeExtractFeature(JI)I
.end method

.method public static native nativeEyeStatus(JI)[F
.end method

.method public static native nativeFaceCompare(J[B[BI)D
.end method

.method public static native nativeFaceInfo(JI)[F
.end method

.method public static native nativeGetAlgorithmInfo([B)[J
.end method

.method public static native nativeGetApiExpication()J
.end method

.method public static native nativeGetApiName()J
.end method

.method public static native nativeGetFaceppConfig(J)[F
.end method

.method public static native nativeGetFeatureData(JI)[B
.end method

.method public static native nativeGetJenkinsNumber()Ljava/lang/String;
.end method

.method public static native nativeGetSDKAuthType()I
.end method

.method public static native nativeGetVersion()Ljava/lang/String;
.end method

.method public static native nativeInit(Landroid/content/Context;[BI)J
.end method

.method public static native nativeLandMark(JII)[F
.end method

.method public static native nativeLandMarkRaw(JII)[F
.end method

.method public static native nativeMinority(JI)[F
.end method

.method public static native nativeMouthStatus(JI)[F
.end method

.method public static native nativePose3D(JI)[F
.end method

.method public static native nativeRect(JI)[F
.end method

.method public static native nativeRelease(J)V
.end method

.method public static native nativeResetTrack(J)I
.end method

.method public static native nativeSetFaceppConfig(JFFFFFFFFFFZZZZFF)I
.end method

.method public static native nativeShutDown()I
.end method
