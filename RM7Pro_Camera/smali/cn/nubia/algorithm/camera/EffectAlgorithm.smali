.class public Lcn/nubia/algorithm/camera/EffectAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Algorithm"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native BitmapEffect(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
.end method

.method public static native Effect([BIILjava/lang/String;I)V
.end method

.method public static a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIILjava/lang/String;I)V
    .locals 14

    .line 24
    invoke-static/range {p0 .. p10}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v1

    move/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v2, p11

    move/from16 v5, p12

    .line 29
    invoke-static {v1, v3, v4, v2, v5}, Lcn/nubia/algorithm/camera/EffectAlgorithm;->Effect([BIILjava/lang/String;I)V

    .line 30
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 31
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v0, v1}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    move-object v2, v0

    move-object v5, p0

    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    .line 32
    invoke-static/range {v2 .. v13}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V

    .line 35
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    return-void
.end method
