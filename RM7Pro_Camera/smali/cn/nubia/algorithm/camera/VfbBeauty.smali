.class public Lcn/nubia/algorithm/camera/VfbBeauty;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VfbBeauty"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native init([BII)J
.end method

.method public static native process(J[BII[II)V
.end method

.method public static native unInit(J)V
.end method
