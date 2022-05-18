.class public Lcn/nubia/algorithm/utils/YUVAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/algorithm/utils/YUVAlgorithm$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Algorithm"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static native Bitmap2YVU(Landroid/graphics/Bitmap;II)Ljava/nio/ByteBuffer;
.end method

.method static native NV21ToYUV420888(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V
.end method

.method static native YUV420888ToYuv420C(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIII)Ljava/nio/ByteBuffer;
.end method

.method static native YVU2ARGB(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method

.method static native YVU2Bitmap(Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;II)V
.end method

.method public static a(Landroid/graphics/Bitmap;II)Lcn/nubia/algorithm/utils/a;
    .locals 1

    .line 81
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    invoke-static {p0, p1, p2}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->Bitmap2YVU(Landroid/graphics/Bitmap;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;
    .locals 1

    .line 62
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    iget-object p0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {p0, p1, p2}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->YVU2ARGB(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static a(Lcn/nubia/algorithm/utils/a;IIII)Lcn/nubia/algorithm/utils/a;
    .locals 1

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    .line 168
    new-instance p1, Lcn/nubia/algorithm/utils/a;

    invoke-virtual {p0}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    return-object p1

    .line 170
    :cond_0
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    iget-object p0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->scale(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 100
    invoke-static/range {v0 .. v11}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->YUV420888ToYuv420C(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    new-instance v1, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v1, v0}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public static a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIII)Lcn/nubia/algorithm/utils/a;
    .locals 0

    .line 115
    invoke-static/range {p0 .. p11}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->YUV420888ToYuv420C(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIII)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_0
    new-instance p1, Lcn/nubia/algorithm/utils/a;

    invoke-direct {p1, p0}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p1
.end method

.method public static a(Lcn/nubia/algorithm/utils/a;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V
    .locals 12

    move-object v0, p0

    .line 130
    iget-object v0, v0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->NV21ToYUV420888(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V

    return-void
.end method

.method public static a(Lcn/nubia/algorithm/utils/a;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {p0, p1, p2, p3}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->YVU2Bitmap(Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public static a(Lcn/nubia/algorithm/utils/a;Lcn/nubia/algorithm/utils/a;III)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->rotateYUV(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method public static a(Lcn/nubia/algorithm/utils/a;IILcn/nubia/algorithm/utils/YUVAlgorithm$a;)Z
    .locals 0

    .line 163
    iget-object p0, p0, Lcn/nubia/algorithm/utils/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->a()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->mirror(Ljava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method

.method static native mirror(Ljava/nio/ByteBuffer;III)Z
.end method

.method static native rotateYUV(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
.end method

.method static native scale(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;
.end method
