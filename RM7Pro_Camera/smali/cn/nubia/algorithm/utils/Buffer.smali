.class public Lcn/nubia/algorithm/utils/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Buffer"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native createBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static native getDataFromNative(Ljava/nio/ByteBuffer;)[B
.end method

.method public static native getIntArrayFromNative(Ljava/nio/ByteBuffer;)[I
.end method

.method public static native putDataToNative([BLjava/nio/ByteBuffer;I)V
.end method

.method public static native releaseBuffer(Ljava/nio/ByteBuffer;)V
.end method
