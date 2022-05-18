.class public Lcn/nubia/algorithm/camera/SingleBokeh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SingleBokeh"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/media/Image;FI)V
    .locals 16

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 35
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 36
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 37
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v13

    move/from16 v14, p1

    move/from16 v15, p2

    .line 35
    invoke-static/range {v3 .. v15}, Lcn/nubia/algorithm/camera/SingleBokeh;->bokeh(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIFI)V

    return-void
.end method

.method public static a(Landroid/media/Image;I)V
    .locals 15

    const-string v0, "SingleBokeh"

    const-string v1, "java segment"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 21
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 22
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 24
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 25
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 26
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    .line 27
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v13

    move/from16 v14, p1

    .line 24
    invoke-static/range {v3 .. v14}, Lcn/nubia/algorithm/camera/SingleBokeh;->segment(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIII)V

    return-void
.end method

.method static native bokeh(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIFI)V
.end method

.method public static native init([BLjava/lang/String;I)V
.end method

.method public static native release()V
.end method

.method public static native render(IIF)V
.end method

.method static native segment(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIII)V
.end method
