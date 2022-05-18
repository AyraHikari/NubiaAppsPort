.class public Lcom/android/common/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/b/g$a;,
        Lcom/android/common/b/g$c;,
        Lcom/android/common/b/g$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:[F

.field private C:[F

.field final a:[F

.field final b:[F

.field c:[Lcom/android/common/b/g$b;

.field d:[Lcom/android/common/b/g$b;

.field e:[Lcom/android/common/b/g$b;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[I

.field private k:Lcom/android/common/b/i;

.field private final l:Lcom/android/common/b/k;

.field private m:Ljava/nio/FloatBuffer;

.field private n:Ljava/nio/FloatBuffer;

.field private o:Lcom/android/common/b/k;

.field private final p:Landroid/graphics/RectF;

.field private q:[F

.field private r:[F

.field private s:[F

.field private t:[F

.field private final u:[F

.field private v:[F

.field private w:[F

.field private final x:[F

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    .line 332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 36
    iput v1, v0, Lcom/android/common/b/g;->f:I

    .line 37
    iput v1, v0, Lcom/android/common/b/g;->g:I

    .line 38
    iput v1, v0, Lcom/android/common/b/g;->h:I

    .line 39
    iput v1, v0, Lcom/android/common/b/g;->i:I

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/android/common/b/g;->j:[I

    .line 52
    new-instance v1, Lcom/android/common/b/i;

    invoke-direct {v1}, Lcom/android/common/b/i;-><init>()V

    iput-object v1, v0, Lcom/android/common/b/g;->k:Lcom/android/common/b/i;

    .line 53
    new-instance v1, Lcom/android/common/b/k;

    invoke-direct {v1}, Lcom/android/common/b/k;-><init>()V

    iput-object v1, v0, Lcom/android/common/b/g;->l:Lcom/android/common/b/k;

    .line 56
    new-instance v1, Lcom/android/common/b/k;

    invoke-direct {v1}, Lcom/android/common/b/k;-><init>()V

    iput-object v1, v0, Lcom/android/common/b/g;->o:Lcom/android/common/b/k;

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/android/common/b/g;->p:Landroid/graphics/RectF;

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 62
    iput-object v2, v0, Lcom/android/common/b/g;->q:[F

    new-array v2, v1, [F

    .line 63
    iput-object v2, v0, Lcom/android/common/b/g;->r:[F

    const/16 v2, 0x80

    new-array v2, v2, [F

    .line 64
    iput-object v2, v0, Lcom/android/common/b/g;->s:[F

    new-array v2, v1, [F

    .line 65
    iput-object v2, v0, Lcom/android/common/b/g;->t:[F

    const/4 v2, 0x4

    new-array v3, v2, [F

    .line 66
    iput-object v3, v0, Lcom/android/common/b/g;->u:[F

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 67
    iput-object v4, v0, Lcom/android/common/b/g;->v:[F

    new-array v4, v3, [F

    .line 68
    iput-object v4, v0, Lcom/android/common/b/g;->w:[F

    new-array v1, v1, [F

    .line 69
    iput-object v1, v0, Lcom/android/common/b/g;->x:[F

    const/16 v1, 0x14

    new-array v1, v1, [F

    .line 71
    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/android/common/b/g;->a:[F

    const/16 v4, 0x1e

    new-array v4, v4, [F

    .line 78
    fill-array-data v4, :array_1

    iput-object v4, v0, Lcom/android/common/b/g;->b:[F

    const/4 v5, 0x3

    new-array v6, v5, [Lcom/android/common/b/g$b;

    .line 306
    new-instance v7, Lcom/android/common/b/g$a;

    const-string v8, "aPosition"

    invoke-direct {v7, v8}, Lcom/android/common/b/g$a;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aput-object v7, v6, v9

    new-instance v7, Lcom/android/common/b/g$c;

    const-string v10, "uMVPMatrix"

    invoke-direct {v7, v10}, Lcom/android/common/b/g$c;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    aput-object v7, v6, v11

    new-instance v7, Lcom/android/common/b/g$c;

    const-string v12, "uColor"

    invoke-direct {v7, v12}, Lcom/android/common/b/g$c;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    aput-object v7, v6, v12

    iput-object v6, v0, Lcom/android/common/b/g;->c:[Lcom/android/common/b/g$b;

    const/4 v6, 0x5

    new-array v7, v6, [Lcom/android/common/b/g$b;

    .line 312
    new-instance v13, Lcom/android/common/b/g$a;

    invoke-direct {v13, v8}, Lcom/android/common/b/g$a;-><init>(Ljava/lang/String;)V

    aput-object v13, v7, v9

    new-instance v13, Lcom/android/common/b/g$c;

    invoke-direct {v13, v10}, Lcom/android/common/b/g$c;-><init>(Ljava/lang/String;)V

    aput-object v13, v7, v11

    new-instance v13, Lcom/android/common/b/g$a;

    const-string v14, "aTextureCoord"

    invoke-direct {v13, v14}, Lcom/android/common/b/g$a;-><init>(Ljava/lang/String;)V

    aput-object v13, v7, v12

    new-instance v13, Lcom/android/common/b/g$c;

    const-string v15, "uSTMatrix"

    invoke-direct {v13, v15}, Lcom/android/common/b/g$c;-><init>(Ljava/lang/String;)V

    aput-object v13, v7, v5

    new-instance v13, Lcom/android/common/b/g$c;

    const-string v3, "uAlpha"

    invoke-direct {v13, v3}, Lcom/android/common/b/g$c;-><init>(Ljava/lang/String;)V

    aput-object v13, v7, v2

    iput-object v7, v0, Lcom/android/common/b/g;->d:[Lcom/android/common/b/g$b;

    new-array v6, v6, [Lcom/android/common/b/g$b;

    .line 320
    new-instance v7, Lcom/android/common/b/g$a;

    invoke-direct {v7, v8}, Lcom/android/common/b/g$a;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v9

    new-instance v7, Lcom/android/common/b/g$c;

    invoke-direct {v7, v10}, Lcom/android/common/b/g$c;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v11

    new-instance v7, Lcom/android/common/b/g$a;

    invoke-direct {v7, v14}, Lcom/android/common/b/g$a;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v12

    new-instance v7, Lcom/android/common/b/g$c;

    invoke-direct {v7, v15}, Lcom/android/common/b/g$c;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v5

    new-instance v5, Lcom/android/common/b/g$c;

    invoke-direct {v5, v3}, Lcom/android/common/b/g$c;-><init>(Ljava/lang/String;)V

    aput-object v5, v6, v2

    iput-object v6, v0, Lcom/android/common/b/g;->e:[Lcom/android/common/b/g$b;

    .line 327
    iput v9, v0, Lcom/android/common/b/g;->y:I

    .line 328
    iput v9, v0, Lcom/android/common/b/g;->z:I

    .line 329
    iput v9, v0, Lcom/android/common/b/g;->A:I

    new-array v3, v2, [F

    .line 562
    fill-array-data v3, :array_2

    iput-object v3, v0, Lcom/android/common/b/g;->B:[F

    new-array v2, v2, [F

    .line 639
    fill-array-data v2, :array_3

    iput-object v2, v0, Lcom/android/common/b/g;->C:[F

    .line 333
    iget-object v2, v0, Lcom/android/common/b/g;->v:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v9

    .line 334
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x20

    const/16 v3, 0x8

    div-int/2addr v2, v3

    .line 335
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 336
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/b/g;->m:Ljava/nio/FloatBuffer;

    .line 337
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 338
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x20

    div-int/2addr v1, v3

    .line 339
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 340
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/b/g;->n:Ljava/nio/FloatBuffer;

    .line 341
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 342
    iget-object v1, v0, Lcom/android/common/b/g;->s:[F

    iget v2, v0, Lcom/android/common/b/g;->z:I

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 343
    iget-object v1, v0, Lcom/android/common/b/g;->q:[F

    invoke-static {v1, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 344
    iget-object v1, v0, Lcom/android/common/b/g;->t:[F

    invoke-static {v1, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    .line 345
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v1, 0xb44

    .line 346
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(II[Lcom/android/common/b/g$b;)I
    .locals 3

    .line 359
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 360
    invoke-static {}, Lcom/android/common/b/g;->d()I

    if-eqz v0, :cond_2

    .line 364
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 365
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 366
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 367
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 368
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 369
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v1, 0x8b82

    const/4 v2, 0x0

    .line 371
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 372
    aget p2, p2, v2

    if-eq p2, p1, :cond_0

    const-string p1, "GLCanvas"

    const-string p2, "Could not link program: "

    .line 373
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v2

    .line 378
    :cond_0
    :goto_0
    array-length p1, p3

    if-ge v2, p1, :cond_1

    .line 379
    aget-object p1, p3, v2

    invoke-virtual {p1, v0}, Lcom/android/common/b/g$b;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 362
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot create GL program: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(ILjava/lang/String;)I
    .locals 0

    .line 387
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 390
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 392
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 393
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return p0
.end method

.method private a(IIF)V
    .locals 7

    .line 540
    iget v0, p0, Lcom/android/common/b/g;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 541
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 543
    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 544
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 546
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/common/b/g;->b(I)[F

    move-result-object p1

    const/4 p3, 0x3

    .line 547
    aget v0, p1, p3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 548
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/common/b/g;->a(Z)V

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 550
    aget v0, p1, v2

    aget v4, p1, v1

    aget v5, p1, v3

    aget v6, p1, p3

    invoke-static {v0, v4, v5, v6}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 551
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/android/common/b/g;->c:[Lcom/android/common/b/g$b;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/common/b/g$b;->a:I

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 556
    iget-object p1, p0, Lcom/android/common/b/g;->n:Ljava/nio/FloatBuffer;

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 557
    iget-object p1, p0, Lcom/android/common/b/g;->c:[Lcom/android/common/b/g$b;

    aget-object p1, p1, v2

    iget v0, p1, Lcom/android/common/b/g$b;->a:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/android/common/b/g;->n:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 559
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method private a(IIIIIIIIF)V
    .locals 9

    move-object v8, p0

    move v0, p2

    move/from16 v1, p8

    move/from16 v2, p9

    .line 523
    invoke-direct {p0, v1, p2, v2}, Lcom/android/common/b/g;->a(IIF)V

    .line 524
    iget-object v1, v8, Lcom/android/common/b/g;->c:[Lcom/android/common/b/g$b;

    move-object v0, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/common/b/g;->a([Lcom/android/common/b/g$b;IIIIII)V

    return-void
.end method

.method private a(Lcom/android/common/b/a;I[Lcom/android/common/b/g$b;)V
    .locals 6

    .line 417
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 418
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 420
    invoke-virtual {p1}, Lcom/android/common/b/a;->k()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/common/b/g;->e()F

    move-result p2

    const v1, 0x3f733333    # 0.95f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/common/b/g;->a(Z)V

    .line 422
    invoke-virtual {p1, p0}, Lcom/android/common/b/a;->b(Lcom/android/common/b/g;)Z

    .line 423
    iget-object p2, p0, Lcom/android/common/b/g;->m:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 424
    aget-object p2, p3, v0

    iget v0, p2, Lcom/android/common/b/g$b;->a:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/common/b/g;->m:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 426
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 428
    iget-object p2, p0, Lcom/android/common/b/g;->m:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p2, 0x2

    .line 429
    aget-object p2, p3, p2

    iget v0, p2, Lcom/android/common/b/g$b;->a:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/android/common/b/g;->m:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 431
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p2, 0x4

    .line 433
    aget-object p2, p3, p2

    iget p2, p2, Lcom/android/common/b/g$b;->a:I

    invoke-virtual {p0}, Lcom/android/common/b/g;->e()F

    move-result p3

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 434
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const p2, 0x84c0

    .line 436
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 437
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;)V

    return-void
.end method

.method private a(Lcom/android/common/b/a;Landroid/graphics/RectF;)V
    .locals 5

    .line 871
    iget-object v0, p0, Lcom/android/common/b/g;->x:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 872
    iget-object v0, p0, Lcom/android/common/b/g;->x:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 873
    iget-object v0, p0, Lcom/android/common/b/g;->x:[F

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 874
    iget-object v0, p0, Lcom/android/common/b/g;->x:[F

    const/high16 v3, -0x41000000    # -0.5f

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 875
    iget-object v0, p0, Lcom/android/common/b/g;->x:[F

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FLandroid/graphics/RectF;Z)V

    return-void
.end method

.method private a(Lcom/android/common/b/a;[FLandroid/graphics/RectF;Z)V
    .locals 7

    .line 469
    invoke-direct {p0, p1, p4}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;Z)[Lcom/android/common/b/g$b;

    move-result-object p4

    .line 470
    iget v0, p3, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    iget v0, p3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v0

    .line 471
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    float-to-int v5, p3

    invoke-virtual {p1}, Lcom/android/common/b/a;->i()[F

    move-result-object v6

    move-object v0, p0

    move-object v1, p4

    .line 470
    invoke-direct/range {v0 .. v6}, Lcom/android/common/b/g;->a([Lcom/android/common/b/g$b;IIII[F)V

    const/4 p1, 0x0

    .line 472
    aget-object p3, p4, p1

    iget p3, p3, Lcom/android/common/b/g$b;->a:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 473
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p3, 0x2

    .line 474
    aget-object v0, p4, p3

    iget v0, v0, Lcom/android/common/b/g$b;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 475
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 v0, 0x3

    .line 476
    aget-object v0, p4, v0

    iget v0, v0, Lcom/android/common/b/g$b;->a:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2, p1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 477
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p2, 0x5

    const/4 v0, 0x4

    .line 479
    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 480
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 481
    aget-object p2, p4, p1

    iget p2, p2, Lcom/android/common/b/g$b;->a:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 482
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 483
    aget-object p2, p4, p3

    iget p2, p2, Lcom/android/common/b/g$b;->a:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 484
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 486
    invoke-direct {p0, p1}, Lcom/android/common/b/g;->a(Z)V

    .line 487
    invoke-direct {p0, p1}, Lcom/android/common/b/g;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    const/16 v0, 0xbe2

    if-eqz p1, :cond_0

    .line 798
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 799
    invoke-static {}, Lcom/android/common/b/g;->d()I

    goto :goto_0

    .line 801
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 802
    invoke-static {}, Lcom/android/common/b/g;->d()I

    :goto_0
    return-void
.end method

.method private a([Lcom/android/common/b/g$b;IIIIII)V
    .locals 7

    .line 564
    iget-object v6, p0, Lcom/android/common/b/g;->B:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/common/b/g;->a([Lcom/android/common/b/g$b;IIII[F)V

    const/4 p4, 0x0

    .line 565
    aget-object p1, p1, p4

    iget p1, p1, Lcom/android/common/b/g$b;->a:I

    .line 566
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 567
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 568
    invoke-static {p2, p4, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 569
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 570
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 571
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method private a([Lcom/android/common/b/g$b;IIII[F)V
    .locals 33

    move-object/from16 v0, p0

    .line 442
    invoke-static/range {p2 .. p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 443
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 445
    iget-object v1, v0, Lcom/android/common/b/g;->q:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 446
    iget-object v1, v0, Lcom/android/common/b/g;->r:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/android/common/b/g;->j()Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 448
    iget-object v6, v0, Lcom/android/common/b/g;->q:[F

    const/4 v7, 0x0

    aget v8, p6, v2

    aget v9, p6, v5

    aget v10, p6, v4

    aget v11, p6, v3

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static/range {v6 .. v13}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v14, v0, Lcom/android/common/b/g;->q:[F

    const/4 v15, 0x0

    aget v16, p6, v2

    aget v17, p6, v5

    aget v18, p6, v4

    aget v19, p6, v3

    const/high16 v20, 0x40400000    # 3.0f

    const/high16 v21, 0x40c00000    # 6.0f

    invoke-static/range {v14 .. v21}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 460
    :goto_0
    iget-object v1, v0, Lcom/android/common/b/g;->r:[F

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x40400000    # 3.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v22 .. v32}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 461
    iget-object v10, v0, Lcom/android/common/b/g;->s:[F

    iget v11, v0, Lcom/android/common/b/g;->z:I

    iget-object v8, v0, Lcom/android/common/b/g;->r:[F

    const/4 v9, 0x0

    move-object v6, v10

    move v7, v11

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 462
    iget-object v1, v0, Lcom/android/common/b/g;->s:[F

    iget v3, v0, Lcom/android/common/b/g;->z:I

    iget-object v14, v0, Lcom/android/common/b/g;->q:[F

    const/4 v15, 0x0

    move-object v12, v1

    move v13, v3

    move-object/from16 v16, v1

    move/from16 v17, v3

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 464
    aget-object v1, p1, v5

    iget v1, v1, Lcom/android/common/b/g$b;->a:I

    iget-object v3, v0, Lcom/android/common/b/g;->s:[F

    iget v4, v0, Lcom/android/common/b/g;->z:I

    invoke-static {v1, v5, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 465
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method private a(Lcom/android/common/b/a;Z)[Lcom/android/common/b/g$b;
    .locals 2

    .line 401
    invoke-direct {p0}, Lcom/android/common/b/g;->k()V

    .line 402
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_0

    .line 403
    iget-object p2, p0, Lcom/android/common/b/g;->d:[Lcom/android/common/b/g$b;

    .line 404
    iget v0, p0, Lcom/android/common/b/g;->h:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 406
    iget-object p2, p0, Lcom/android/common/b/g;->e:[Lcom/android/common/b/g$b;

    .line 407
    iget v0, p0, Lcom/android/common/b/g;->g:I

    goto :goto_0

    .line 409
    :cond_1
    iget-object p2, p0, Lcom/android/common/b/g;->e:[Lcom/android/common/b/g$b;

    .line 410
    iget v0, p0, Lcom/android/common/b/g;->f:I

    .line 412
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;I[Lcom/android/common/b/g$b;)V

    return-object p2
.end method

.method private b(Z)V
    .locals 1

    const/16 v0, 0xb71

    if-eqz p1, :cond_0

    .line 808
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 809
    invoke-static {}, Lcom/android/common/b/g;->d()I

    goto :goto_0

    .line 811
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 812
    invoke-static {}, Lcom/android/common/b/g;->d()I

    :goto_0
    return-void
.end method

.method private b(I)[F
    .locals 5

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 528
    invoke-virtual {p0}, Lcom/android/common/b/g;->e()F

    move-result v2

    mul-float/2addr v0, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    .line 532
    iget-object v1, p0, Lcom/android/common/b/g;->u:[F

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v2, 0x1

    .line 533
    aput v3, v1, v2

    const/4 v2, 0x2

    .line 534
    aput p1, v1, v2

    const/4 p1, 0x3

    .line 535
    aput v0, v1, p1

    return-object v1
.end method

.method public static d()I
    .locals 5

    .line 654
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, ""

    goto :goto_0

    :pswitch_1
    const-string v1, "GL_INVALID_FRAMEBUFFER_OPERATION"

    goto :goto_0

    :pswitch_2
    const-string v1, "GL_OUT_OF_MEMORY"

    goto :goto_0

    :pswitch_3
    const-string v1, "GL_INVALID_OPERATION"

    goto :goto_0

    :pswitch_4
    const-string v1, "GL_INVALID_VALUE"

    goto :goto_0

    :pswitch_5
    const-string v1, "GL_INVALID_ENUM"

    .line 674
    :goto_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GLCanvas"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private i()V
    .locals 4

    const v0, 0x8d40

    .line 681
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    const-string v1, ""

    goto :goto_0

    :sswitch_0
    const-string v1, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :sswitch_1
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :sswitch_2
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_0

    :sswitch_3
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 698
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8cd6 -> :sswitch_3
        0x8cd7 -> :sswitch_2
        0x8cd9 -> :sswitch_1
        0x8cdd -> :sswitch_0
    .end sparse-switch
.end method

.method private j()Z
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/android/common/b/g;->w:[F

    iget v1, p0, Lcom/android/common/b/g;->A:I

    aget v0, v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/common/b/g;->w:[F

    iget v3, p0, Lcom/android/common/b/g;->A:I

    aget v0, v0, v3

    .line 818
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/common/b/g;->w:[F

    iget v3, p0, Lcom/android/common/b/g;->A:I

    aget v0, v0, v3

    add-float/2addr v0, v1

    .line 819
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private k()V
    .locals 7

    .line 827
    iget v0, p0, Lcom/android/common/b/g;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/common/b/g;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/common/b/g;->i:I

    if-ne v0, v1, :cond_0

    const v0, 0x8b31

    const-string v1, "uniform mat4 uMVPMatrix;\nattribute vec3 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 1.0);\n  gl_Position = uMVPMatrix * pos;\n}\n"

    .line 828
    invoke-static {v0, v1}, Lcom/android/common/b/g;->a(ILjava/lang/String;)I

    move-result v1

    const-string v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).st;\n}\n"

    .line 829
    invoke-static {v0, v2}, Lcom/android/common/b/g;->a(ILjava/lang/String;)I

    move-result v0

    const v2, 0x8b30

    const-string v3, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    .line 830
    invoke-static {v2, v3}, Lcom/android/common/b/g;->a(ILjava/lang/String;)I

    move-result v3

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    .line 831
    invoke-static {v2, v4}, Lcom/android/common/b/g;->a(ILjava/lang/String;)I

    move-result v4

    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uTextureSampler;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nconst float displayMaxLuminance = 500.0f;\nconst float maxMasteringLuminance = 1000.0f;\nconst float maxContentLuminance = 1000.0f;\nconst mat4 inputTransformMatrix = mat4(0.636958f, 0.262700f, 0.000000f, 0.000000f, 0.144617f, 0.677998f, 0.028073f, 0.000000f, 0.168881f, 0.059302f, 1.060985f, 0.000000f, 0.000000f, 0.000000f, 0.000000f, 1.000000f);\nconst mat4 outputTransformMatrix = mat4(3.240970f,-0.969244f, 0.055630f,0.000000f, -1.537383f,1.875968f,-0.203977f,0.000000f, -0.498611f, 0.041555f, 1.056971f, 0.000000f, 0.000000f, 0.000000f,0.000000f, 1.000000f);\n\nhighp vec3 InputTransform(const highp vec3 color) {\n\treturn clamp(vec3(inputTransformMatrix * vec4(color, 1.0)), 0.0, 1.0);\n}         \n\n\nhighp vec3 OutputTransform(const highp vec3 color) {\n\treturn clamp(vec3(outputTransformMatrix * vec4(color, 1.0)), 0.0, 1.0);\n}\n            \n\nvec3 EOTF(const highp vec3 color) {\n\tconst highp float m1 = (2610.0 / 4096.0) / 4.0;\n\tconst highp float m2 = (2523.0 / 4096.0) * 128.0;\n\tconst highp float c1 = (3424.0 / 4096.0);\n\tconst highp float c2 = (2413.0 / 4096.0) * 32.0;\n\tconst highp float c3 = (2392.0 / 4096.0) * 32.0;\n\n\thighp vec3 tmp = pow(clamp(color, 0.0, 1.0), 1.0 / vec3(m2));\n\ttmp = max(tmp - c1, 0.0) / (c2 - c3 * tmp);\n\treturn pow(tmp, 1.0 / vec3(m1));\n}\n            \n\nhighp vec3 ScaleLuminance(highp vec3 color) {\n\treturn color * 10000.0;\n}\n            \n\nhighp vec3 ToneMap(highp vec3 color) {\n\tfloat maxMasteringLumi = maxMasteringLuminance;\n\tfloat maxContentLumi = maxContentLuminance;\n\tfloat maxInLumi = min(maxMasteringLumi, maxContentLumi);\n\tfloat maxOutLumi = displayMaxLuminance;\n\n\tfloat nits = color.y;\n\n  \n\t// clamp to max input luminance\n\tnits = clamp(nits, 0.0, maxInLumi);\n\n\t// scale [0.0, maxInLumi] to [0.0, maxOutLumi]\n\tif (maxInLumi <= maxOutLumi) {\n\t\treturn color * (maxOutLumi / maxInLumi);\n\t} else {\n\t\t// three control points\n\t\tconst float x0 = 10.0;\n\t\tconst float y0 = 17.0;\n\t\tfloat x1 = maxOutLumi * 0.75;\n\t\tfloat y1 = x1;\n\t\tfloat x2 = x1 + (maxInLumi - x1) / 2.0;\n\t\tfloat y2 = y1 + (maxOutLumi - y1) * 0.75;\n\n\t\t// horizontal distances between the last three control points\n\t\tfloat h12 = x2 - x1;\n\t\tfloat h23 = maxInLumi - x2;\n\t\t// tangents at the last three control points\n\t\tfloat m1 = (y2 - y1) / h12;\n\t\tfloat m3 = (maxOutLumi - y2) / h23;\n\t\tfloat m2 = (m1 + m3) / 2.0;\n\n\t\tif (nits < x0) {\n\t\t\t// scale [0.0, x0] to [0.0, y0] linearly\n\t\t\tfloat slope = y0 / x0;\n\t\t\treturn color * slope;\n\t\t} else if (nits < x1) {\n\t\t\t// scale [x0, x1] to [y0, y1] linearly\n\t\t\tfloat slope = (y1 - y0) / (x1 - x0);\n\t\t\tnits = y0 + (nits - x0) * slope;\n\t\t} else if (nits < x2) {\n\t\t\t// scale [x1, x2] to [y1, y2] using Hermite interp\n\t\t\tfloat t = (nits - x1) / h12;\n\t\t\tnits = (y1 * (1.0 + 2.0 * t) + h12 * m1 * t) * (1.0 - t) * (1.0 - t) +\n\t\t\t\t\t(y2 * (3.0 - 2.0 * t) + h12 * m2 * (t - 1.0)) * t * t;\n\t\t} else {\n\t\t\t// scale [x2, maxInLumi] to [y2, maxOutLumi] using Hermite interp\n\t\t\tfloat t = (nits - x2) / h23;\n\t\t\tnits = (y2 * (1.0 + 2.0 * t) + h23 * m2 * t) * (1.0 - t) * (1.0 - t) +\n\t\t\t\t\t(maxOutLumi * (3.0 - 2.0 * t) + h23 * m3 * (t - 1.0)) * t * t;\n\t\t}\n\t}\n\n\t// color.y is greater than x0 and is thus non-zero\n\treturn color * (nits / color.y);\n}\n                    \n\nhighp vec3 NormalizeLuminance(highp vec3 color) {\n\treturn color / displayMaxLuminance;\n}\n            \n\nhighp vec3 OOTF(const highp vec3 color) {\nreturn NormalizeLuminance(ToneMap(ScaleLuminance(color)));\n}\n\n\nfloat OETF_sRGB(const float linear) {\n\treturn linear <= 0.0031308 ?\n\t\t\tlinear * 12.92 : (pow(linear, 1.0 / 2.4) * 1.055) - 0.055;\n}\n\nvec3 OETF_sRGB(const vec3 linear) {\n\treturn vec3(OETF_sRGB(linear.r), OETF_sRGB(linear.g), OETF_sRGB(linear.b));\n}\nvec3 OETF(const vec3 linear) {\n\treturn sign(linear.rgb) * OETF_sRGB(abs(linear.rgb));\n}\n\t\t\t\t\nvoid main(void) {\n    gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n    gl_FragColor.a = 1.0;\n    gl_FragColor.rgb = OETF(OutputTransform(OOTF(InputTransform(EOTF(gl_FragColor.rgb)))));\n    gl_FragColor *= uAlpha;\n}"

    .line 833
    invoke-static {v2, v5}, Lcom/android/common/b/g;->a(ILjava/lang/String;)I

    move-result v5

    const-string v6, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    .line 835
    invoke-static {v2, v6}, Lcom/android/common/b/g;->a(ILjava/lang/String;)I

    move-result v2

    .line 836
    iget-object v6, p0, Lcom/android/common/b/g;->d:[Lcom/android/common/b/g$b;

    invoke-direct {p0, v0, v2, v6}, Lcom/android/common/b/g;->a(II[Lcom/android/common/b/g$b;)I

    move-result v2

    iput v2, p0, Lcom/android/common/b/g;->h:I

    .line 838
    iget-object v2, p0, Lcom/android/common/b/g;->e:[Lcom/android/common/b/g$b;

    invoke-direct {p0, v0, v4, v2}, Lcom/android/common/b/g;->a(II[Lcom/android/common/b/g$b;)I

    move-result v2

    iput v2, p0, Lcom/android/common/b/g;->f:I

    .line 840
    iget-object v2, p0, Lcom/android/common/b/g;->e:[Lcom/android/common/b/g$b;

    invoke-direct {p0, v0, v5, v2}, Lcom/android/common/b/g;->a(II[Lcom/android/common/b/g$b;)I

    move-result v0

    iput v0, p0, Lcom/android/common/b/g;->g:I

    .line 842
    iget-object v0, p0, Lcom/android/common/b/g;->c:[Lcom/android/common/b/g$b;

    invoke-direct {p0, v1, v3, v0}, Lcom/android/common/b/g;->a(II[Lcom/android/common/b/g$b;)I

    move-result v0

    iput v0, p0, Lcom/android/common/b/g;->i:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 625
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 626
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/android/common/b/g;->v:[F

    iget v1, p0, Lcom/android/common/b/g;->y:I

    aput p1, v0, v1

    return-void
.end method

.method public a(FFF)V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/android/common/b/g;->s:[F

    iget v1, p0, Lcom/android/common/b/g;->z:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 8

    .line 722
    iget-object v0, p0, Lcom/android/common/b/g;->w:[F

    iget v1, p0, Lcom/android/common/b/g;->y:I

    aput p1, v0, v1

    .line 723
    iget-object v2, p0, Lcom/android/common/b/g;->s:[F

    iget v3, p0, Lcom/android/common/b/g;->z:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public a(I)V
    .locals 7

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/android/common/b/g;->e()F

    move-result v0

    .line 746
    iget v4, p0, Lcom/android/common/b/g;->y:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/common/b/g;->y:I

    .line 747
    iget-object v5, p0, Lcom/android/common/b/g;->v:[F

    array-length v6, v5

    if-gt v6, v4, :cond_1

    .line 748
    array-length v4, v5

    mul-int/2addr v4, v3

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/android/common/b/g;->v:[F

    .line 750
    :cond_1
    iget-object v4, p0, Lcom/android/common/b/g;->v:[F

    iget v5, p0, Lcom/android/common/b/g;->y:I

    aput v0, v4, v5

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 754
    iget v0, p0, Lcom/android/common/b/g;->z:I

    add-int/lit8 v4, v0, 0x10

    .line 755
    iput v4, p0, Lcom/android/common/b/g;->z:I

    .line 756
    iget-object v5, p0, Lcom/android/common/b/g;->s:[F

    array-length v6, v5

    if-gt v6, v4, :cond_4

    .line 757
    array-length v4, v5

    mul-int/2addr v4, v3

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/android/common/b/g;->s:[F

    .line 759
    :cond_4
    iget-object v4, p0, Lcom/android/common/b/g;->s:[F

    iget v5, p0, Lcom/android/common/b/g;->z:I

    const/16 v6, 0x10

    invoke-static {v4, v0, v4, v5, v6}, Lcom/android/common/b/d;->a([FI[FII)V

    :cond_5
    and-int/lit8 v0, p1, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    move v1, v2

    :cond_6
    if-eqz v1, :cond_8

    .line 763
    iget-object v0, p0, Lcom/android/common/b/g;->w:[F

    iget v1, p0, Lcom/android/common/b/g;->A:I

    aget v4, v0, v1

    add-int/2addr v1, v2

    .line 764
    iput v1, p0, Lcom/android/common/b/g;->A:I

    .line 765
    array-length v2, v0

    if-gt v2, v1, :cond_7

    .line 766
    array-length v1, v0

    mul-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/g;->w:[F

    .line 768
    :cond_7
    iget-object v0, p0, Lcom/android/common/b/g;->w:[F

    iget v1, p0, Lcom/android/common/b/g;->A:I

    aput v4, v0, v1

    .line 771
    :cond_8
    iget-object v0, p0, Lcom/android/common/b/g;->o:Lcom/android/common/b/k;

    invoke-virtual {v0, p1}, Lcom/android/common/b/k;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/android/common/b/g;->j:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 607
    iput-object v2, p0, Lcom/android/common/b/g;->j:[I

    .line 608
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 611
    :cond_0
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 612
    iget-object v0, p0, Lcom/android/common/b/g;->j:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 613
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const v0, 0x8ce0

    .line 615
    invoke-static {v2, v0, p1, p2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 617
    invoke-static {}, Lcom/android/common/b/g;->d()I

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind texture fail, target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLCanvas"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_1
    invoke-direct {p0}, Lcom/android/common/b/g;->i()V

    return-void
.end method

.method public a(IIIII)V
    .locals 10

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 519
    invoke-direct/range {v0 .. v9}, Lcom/android/common/b/g;->a(IIIIIIIIF)V

    return-void
.end method

.method public a(IIIIII)V
    .locals 10

    move/from16 v0, p6

    int-to-float v9, v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 511
    invoke-direct/range {v0 .. v9}, Lcom/android/common/b/g;->a(IIIIIIIIF)V

    return-void
.end method

.method public a(Lcom/android/common/b/a;)V
    .locals 3

    .line 350
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/common/b/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 351
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 352
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 353
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    const/16 v1, 0x2803

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 354
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 355
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result p1

    const/16 v0, 0x2800

    invoke-static {p1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public a(Lcom/android/common/b/a;II)V
    .locals 9

    .line 575
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    .line 576
    invoke-virtual {p1}, Lcom/android/common/b/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 577
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 578
    invoke-virtual {p1}, Lcom/android/common/b/a;->d()I

    move-result v3

    .line 579
    invoke-virtual {p1}, Lcom/android/common/b/a;->e()I

    move-result v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v6, p2

    move v7, p3

    .line 580
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public a(Lcom/android/common/b/a;IIII)V
    .locals 3

    if-lez p4, :cond_1

    if-gtz p5, :cond_0

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/common/b/g;->p:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 866
    iget-object p2, p0, Lcom/android/common/b/g;->p:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/android/common/b/a;IILandroid/graphics/Bitmap;II)V
    .locals 7

    .line 855
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    .line 856
    invoke-virtual {p1}, Lcom/android/common/b/a;->a()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 857
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 858
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public a(Lcom/android/common/b/a;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 847
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    .line 848
    invoke-virtual {p1}, Lcom/android/common/b/a;->a()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 849
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p1, 0x0

    .line 850
    invoke-static {v0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public a(Lcom/android/common/b/a;[FIIII)V
    .locals 3

    if-lez p5, :cond_1

    if-gtz p6, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/common/b/g;->p:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    add-int/2addr p4, p6

    int-to-float p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 497
    iget-object p3, p0, Lcom/android/common/b/g;->p:Landroid/graphics/RectF;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FLandroid/graphics/RectF;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/android/common/b/a;[FIIIIZ)V
    .locals 3

    if-lez p5, :cond_1

    if-gtz p6, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/common/b/g;->p:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    add-int/2addr p4, p6

    int-to-float p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 507
    iget-object p3, p0, Lcom/android/common/b/g;->p:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3, p7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FLandroid/graphics/RectF;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/android/common/b/l;)V
    .locals 5

    .line 584
    iget-object v0, p0, Lcom/android/common/b/g;->j:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 585
    iput-object v2, p0, Lcom/android/common/b/g;->j:[I

    .line 586
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 589
    :cond_0
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 590
    iget-object v0, p0, Lcom/android/common/b/g;->j:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 591
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 593
    invoke-virtual {p1}, Lcom/android/common/b/l;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    invoke-virtual {p1, p0}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    :cond_1
    const v0, 0x8ce0

    .line 597
    invoke-virtual {p1}, Lcom/android/common/b/l;->f()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/common/b/l;->a()I

    move-result v4

    .line 596
    invoke-static {v2, v0, v3, v4, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 598
    invoke-static {}, Lcom/android/common/b/g;->d()I

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind texture fail, target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/common/b/l;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/common/b/l;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GLCanvas"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_2
    invoke-direct {p0}, Lcom/android/common/b/g;->i()V

    return-void
.end method

.method public a([F)V
    .locals 4

    const/4 v0, 0x1

    .line 646
    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    aget p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 647
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/16 p1, 0x4000

    .line 648
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 650
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method public b()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/android/common/b/g;->j:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 634
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    const/4 v0, 0x0

    .line 635
    iput-object v0, p0, Lcom/android/common/b/g;->j:[I

    :cond_0
    return-void
.end method

.method public b(FFF)V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/common/b/g;->s:[F

    iget v1, p0, Lcom/android/common/b/g;->z:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public b(Lcom/android/common/b/a;)Z
    .locals 3

    .line 703
    invoke-virtual {p1}, Lcom/android/common/b/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v1, p0, Lcom/android/common/b/g;->l:Lcom/android/common/b/k;

    monitor-enter v1

    .line 706
    :try_start_0
    iget-object v2, p0, Lcom/android/common/b/g;->l:Lcom/android/common/b/k;

    invoke-virtual {p1}, Lcom/android/common/b/a;->a()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/common/b/k;->a(I)V

    .line 707
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/android/common/b/g;->C:[F

    invoke-virtual {p0, v0}, Lcom/android/common/b/g;->a([F)V

    return-void
.end method

.method public e()F
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/common/b/g;->v:[F

    iget v1, p0, Lcom/android/common/b/g;->y:I

    aget v0, v0, v1

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, -0x1

    .line 739
    invoke-virtual {p0, v0}, Lcom/android/common/b/g;->a(I)V

    return-void
.end method

.method public g()V
    .locals 5

    .line 775
    iget-object v0, p0, Lcom/android/common/b/g;->o:Lcom/android/common/b/k;

    invoke-virtual {v0}, Lcom/android/common/b/k;->a()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 778
    iget v1, p0, Lcom/android/common/b/g;->y:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/common/b/g;->y:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 783
    iget v1, p0, Lcom/android/common/b/g;->z:I

    add-int/lit8 v1, v1, -0x10

    iput v1, p0, Lcom/android/common/b/g;->z:I

    :cond_3
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    .line 788
    iget v0, p0, Lcom/android/common/b/g;->A:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/common/b/g;->A:I

    :cond_5
    return-void
.end method

.method protected h()Lcom/android/common/b/i;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/android/common/b/g;->k:Lcom/android/common/b/i;

    return-object v0
.end method
