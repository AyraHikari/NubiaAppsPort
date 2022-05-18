.class public Lcn/nubia/algorithm/camera/ArcsoftSkinSoften;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ArcsoftSkinSoften"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native init()J
.end method

.method public static native process(J[BIIII)V
.end method

.method public static native unInit(J)V
.end method
