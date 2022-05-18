.class public Lcn/nubia/algorithm/camera/Composition;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Composition"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native init()J
.end method

.method public static native release(J)Z
.end method

.method public static native run(J[BIIIF[F)[Lcn/nubia/algorithm/camera/CompositionInfo;
.end method
