.class public Lcn/nubia/camera/videomaker/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# instance fields
.field private a:Lcn/nubia/k/a/a;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Landroid/content/Context;

.field private d:Lcn/nubia/l/a/b;

.field private e:Lcn/nubia/camera/k/ah;

.field private f:Lcn/nubia/camera/videomaker/f;


# direct methods
.method public constructor <init>(Lcn/nubia/k/a/a;Lcn/nubia/camera/ad/a;Landroid/content/Context;Lcn/nubia/l/a/b;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/videomaker/f;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/nubia/camera/videomaker/g;->a:Lcn/nubia/k/a/a;

    .line 40
    iput-object p2, p0, Lcn/nubia/camera/videomaker/g;->b:Lcn/nubia/camera/ad/a;

    .line 41
    iput-object p3, p0, Lcn/nubia/camera/videomaker/g;->c:Landroid/content/Context;

    .line 42
    iput-object p4, p0, Lcn/nubia/camera/videomaker/g;->d:Lcn/nubia/l/a/b;

    .line 43
    iput-object p5, p0, Lcn/nubia/camera/videomaker/g;->e:Lcn/nubia/camera/k/ah;

    .line 44
    iput-object p6, p0, Lcn/nubia/camera/videomaker/g;->f:Lcn/nubia/camera/videomaker/f;

    return-void
.end method

.method private static a(Lcn/nubia/b/a/f;)Z
    .locals 1

    .line 98
    invoke-interface {p0}, Lcn/nubia/b/a/f;->b()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcn/nubia/b/a/f;I)[B
    .locals 20

    move/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/videomaker/g;->a(Lcn/nubia/b/a/f;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 115
    invoke-interface/range {p0 .. p0}, Lcn/nubia/b/a/f;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 116
    invoke-interface/range {p0 .. p0}, Lcn/nubia/b/a/f;->b()I

    move-result v4

    .line 117
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 118
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 119
    invoke-interface/range {p0 .. p0}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v7

    mul-int v8, v5, v6

    .line 120
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    const/4 v9, 0x0

    .line 121
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/b/a/f$a;

    invoke-interface {v10}, Lcn/nubia/b/a/f$a;->a()I

    move-result v10

    new-array v10, v10, [B

    move v13, v2

    move v11, v9

    move v12, v11

    .line 125
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_d

    if-eqz v11, :cond_6

    if-eq v11, v2, :cond_4

    if-eq v11, v1, :cond_2

    goto :goto_3

    :cond_2
    if-ne v0, v2, :cond_3

    int-to-double v12, v8

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move v13, v2

    goto :goto_3

    :cond_3
    if-ne v0, v1, :cond_7

    move v13, v1

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_5

    move v13, v2

    :goto_2
    move v12, v8

    goto :goto_3

    :cond_5
    if-ne v0, v1, :cond_7

    add-int/lit8 v12, v8, 0x1

    move v13, v1

    goto :goto_3

    :cond_6
    move v13, v2

    move v12, v9

    .line 150
    :cond_7
    :goto_3
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/nubia/b/a/f$a;

    invoke-interface {v14}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 151
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/b/a/f$a;

    invoke-interface {v15}, Lcn/nubia/b/a/f$a;->a()I

    move-result v15

    .line 152
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcn/nubia/b/a/f$a;

    invoke-interface/range {v16 .. v16}, Lcn/nubia/b/a/f$a;->b()I

    move-result v1

    if-nez v11, :cond_8

    move/from16 v16, v9

    goto :goto_4

    :cond_8
    move/from16 v16, v2

    :goto_4
    shr-int v9, v5, v16

    shr-int v2, v6, v16

    .line 163
    iget v0, v3, Landroid/graphics/Rect;->top:I

    shr-int v0, v0, v16

    mul-int/2addr v0, v15

    move/from16 v18, v5

    iget v5, v3, Landroid/graphics/Rect;->left:I

    shr-int v5, v5, v16

    mul-int/2addr v5, v1

    add-int/2addr v0, v5

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_c

    const/4 v5, 0x1

    if-ne v1, v5, :cond_9

    if-ne v13, v5, :cond_9

    .line 168
    invoke-virtual {v14, v4, v12, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v9

    move-object/from16 v17, v3

    move v3, v9

    goto :goto_7

    :cond_9
    add-int/lit8 v16, v9, -0x1

    mul-int v16, v16, v1

    move-object/from16 v17, v3

    add-int/lit8 v3, v16, 0x1

    const/4 v5, 0x0

    .line 172
    invoke-virtual {v14, v10, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_6
    if-ge v5, v9, :cond_a

    mul-int v19, v5, v1

    .line 174
    aget-byte v19, v10, v19

    aput-byte v19, v4, v12

    add-int/2addr v12, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v5, v2, -0x1

    if-ge v0, v5, :cond_b

    .line 179
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v15

    sub-int/2addr v5, v3

    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v17

    goto :goto_5

    :cond_c
    move-object/from16 v17, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move/from16 v5, v18

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_d
    return-object v4

    .line 113
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert Image to byte array, format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lcn/nubia/b/a/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/videomaker/g;->f:Lcn/nubia/camera/videomaker/f;

    invoke-virtual {p2}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/g;->a(Lcn/nubia/b/a/f;I)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/camera/videomaker/j;->a([B)V

    .line 91
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 29
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/videomaker/g;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
