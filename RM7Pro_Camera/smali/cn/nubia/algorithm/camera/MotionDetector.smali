.class public Lcn/nubia/algorithm/camera/MotionDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MotionDetector"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native detectMotion([BIIF)Z
.end method

.method public static native init()Z
.end method

.method public static native release()V
.end method
