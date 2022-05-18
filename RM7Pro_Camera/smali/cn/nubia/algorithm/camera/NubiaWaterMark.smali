.class public Lcn/nubia/algorithm/camera/NubiaWaterMark;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "water_mark"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcn/nubia/algorithm/utils/a;IIIIZ)V
    .locals 6

    .line 20
    iget-object v0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/nubia/algorithm/camera/NubiaWaterMark;->addNubiaWaterMarkYUV(Ljava/nio/ByteBuffer;IIIIZ)V

    return-void
.end method

.method public static native addNubiaWaterMark(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIIZ)V
.end method

.method public static native addNubiaWaterMarkYUV(Ljava/nio/ByteBuffer;IIIIZ)V
.end method
