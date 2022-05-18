.class public Lcn/nubia/algorithm/camera/ArcsoftPrettyAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ArcsoftPrettyAlgorithm"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native pretty(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIIII)V
.end method
