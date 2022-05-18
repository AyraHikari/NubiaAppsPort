.class public Lcn/nubia/algorithm/camera/ArcsoftHDR;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ArcsoftHDR"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/media/Image;)I
    .locals 14

    .line 24
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    const-string p0, "ArcsoftHDR"

    const-string v0, "ImageFormat not supported. Only support YUV420_888"

    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    .line 30
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 31
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 32
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 33
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 34
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v13

    .line 32
    invoke-static/range {v3 .. v13}, Lcn/nubia/algorithm/camera/ArcsoftHDR;->shot(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)I

    move-result p0

    return p0
.end method

.method public static native init(I)I
.end method

.method static native shot(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)I
.end method

.method public static native unInit()I
.end method
