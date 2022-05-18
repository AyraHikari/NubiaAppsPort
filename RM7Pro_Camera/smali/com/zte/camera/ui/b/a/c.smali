.class public Lcom/zte/camera/ui/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static ac:F

.field private static final b:[F

.field private static final c:[F

.field private static final y:D


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/content/Context;

.field private D:Lcom/zte/camera/ui/b/c/a/b$a;

.field private E:Lcom/zte/camera/ui/b/c/a/b$b;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Ljava/nio/ByteBuffer;

.field private K:Ljava/nio/ByteBuffer;

.field private L:Ljava/nio/ByteBuffer;

.field private M:Ljava/nio/ByteBuffer;

.field private N:Ljava/nio/FloatBuffer;

.field private O:Ljava/nio/ByteBuffer;

.field private P:Ljava/nio/ByteBuffer;

.field private Q:Ljava/nio/ByteBuffer;

.field private R:Ljava/nio/ByteBuffer;

.field private S:Ljava/nio/ByteBuffer;

.field private T:Ljava/nio/ByteBuffer;

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:F

.field private aA:I

.field private aB:I

.field private aC:F

.field private aD:F

.field private aE:F

.field private aF:Z

.field private aa:F

.field private ab:F

.field private ad:F

.field private ae:F

.field private af:Z

.field private final ag:I

.field private ah:[I

.field private ai:[I

.field private aj:[I

.field private ak:[I

.field private al:[I

.field private am:[I

.field private an:[Ljava/lang/String;

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field private final d:[F

.field private final e:[F

.field private final f:[B

.field private g:[F

.field private h:[F

.field private i:[F

.field private j:Ljava/nio/FloatBuffer;

.field private k:Ljava/nio/FloatBuffer;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:F

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:J

.field private z:Lcom/zte/camera/ui/b/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 280
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/camera/ui/b/a/c;->b:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 287
    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/camera/ui/b/a/c;->c:[F

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, -0x3fde000000000000L    # -9.0

    .line 377
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/zte/camera/ui/b/a/c;->y:D

    const v0, 0x3f471c72

    .line 419
    sput v0, Lcom/zte/camera/ui/b/a/c;->ac:F

    return-void

    :array_0
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
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    new-array v1, v0, [F

    .line 294
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/zte/camera/ui/b/a/c;->d:[F

    new-array v0, v0, [F

    .line 318
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->e:[F

    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 342
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->f:[B

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 351
    iput-object v1, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    new-array v1, v0, [F

    .line 352
    iput-object v1, p0, Lcom/zte/camera/ui/b/a/c;->h:[F

    new-array v0, v0, [F

    .line 353
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->i:[F

    const/4 v0, -0x1

    .line 358
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->m:I

    const/4 v0, 0x3

    .line 360
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->n:I

    const/4 v0, 0x2

    .line 361
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->o:I

    const/4 v1, 0x0

    .line 364
    iput v1, p0, Lcom/zte/camera/ui/b/a/c;->q:F

    const/4 v2, 0x0

    .line 365
    iput-boolean v2, p0, Lcom/zte/camera/ui/b/a/c;->r:Z

    .line 366
    iput-boolean v2, p0, Lcom/zte/camera/ui/b/a/c;->s:Z

    .line 368
    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->t:I

    const/16 v3, 0x96

    .line 370
    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->u:I

    .line 372
    div-int/2addr v3, v0

    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->v:I

    .line 374
    iput-boolean v2, p0, Lcom/zte/camera/ui/b/a/c;->w:Z

    .line 383
    sget-object v0, Lcom/zte/camera/ui/b/c/a/b$a;->a:Lcom/zte/camera/ui/b/c/a/b$a;

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->D:Lcom/zte/camera/ui/b/c/a/b$a;

    .line 384
    sget-object v0, Lcom/zte/camera/ui/b/c/a/b$b;->e:Lcom/zte/camera/ui/b/c/a/b$b;

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->E:Lcom/zte/camera/ui/b/c/a/b$b;

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->N:Ljava/nio/FloatBuffer;

    .line 399
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->O:Ljava/nio/ByteBuffer;

    const v0, 0x3fe66666    # 1.8f

    .line 414
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->Z:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 415
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->aa:F

    .line 416
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->ab:F

    const/high16 v3, 0x41f00000    # 30.0f

    .line 420
    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->ad:F

    const v3, 0x3fe38e39

    .line 421
    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->ae:F

    const/4 v3, 0x1

    .line 424
    iput-boolean v3, p0, Lcom/zte/camera/ui/b/a/c;->af:Z

    const/16 v3, 0xa

    .line 441
    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->ag:I

    .line 474
    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    .line 476
    iput v1, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    .line 477
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->aD:F

    .line 478
    iput v1, p0, Lcom/zte/camera/ui/b/a/c;->aE:F

    .line 479
    iput-boolean v2, p0, Lcom/zte/camera/ui/b/a/c;->aF:Z

    .line 482
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->C:Landroid/content/Context;

    .line 484
    iput-boolean p2, p0, Lcom/zte/camera/ui/b/a/c;->aF:Z

    .line 486
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->a:Lcom/zte/camera/ui/b/c/a/b$a;

    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->D:Lcom/zte/camera/ui/b/c/a/b$a;

    .line 487
    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    .line 488
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$b;->e:Lcom/zte/camera/ui/b/c/a/b$b;

    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->E:Lcom/zte/camera/ui/b/c/a/b$b;

    new-array p1, v3, [I

    .line 490
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->ah:[I

    new-array p1, v3, [I

    .line 491
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    new-array p1, v3, [I

    .line 492
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->aj:[I

    new-array p1, v3, [I

    .line 493
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->ak:[I

    new-array p1, v3, [Ljava/lang/String;

    .line 494
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->an:[Ljava/lang/String;

    new-array p1, v3, [I

    .line 495
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->al:[I

    new-array p1, v3, [I

    .line 496
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->am:[I

    .line 498
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->i()V

    .line 499
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->j()V

    .line 500
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->l()Z

    .line 501
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->e()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x3ebadf33
        0x41b29067
        -0x4104ecc6
        0x41cbec4d
        -0x3e882766
        0x4127d89a
        -0x3f95be66
        0x415a9067
        0x4102b7cd
        0x4186a41a
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        -0x3e6ab7cd
        -0x40548334
        -0x3f256f99
        0x3fea419a    # 1.830127f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x4186a41a
        0x4102b7cd
        -0x3e515be6
        -0x3ead4833
        -0x3ee00000    # -10.0f
        -0x3ee00000    # -10.0f
        0x3fea419a    # 1.830127f
        -0x3f256f99
        0x415a9067
        -0x3f95be66
        -0x3ead4833
        -0x3e515be6
        -0x40548334
        -0x3e6ab7cd
        0x4127d89a
        -0x3e882766
    .end array-data

    :array_1
    .array-data 4
        0x3fea419a    # 1.830127f
        -0x3f256f99
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        -0x3f256f99
        0x3fea419a    # 1.830127f
        0x3fea419a    # 1.830127f
        -0x3f256f99
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        -0x3f256f99
        0x3fea419a    # 1.830127f
        0x3fea419a    # 1.830127f
        -0x3f256f99
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        -0x3f256f99
        0x3fea419a    # 1.830127f
        0x3fea419a    # 1.830127f
        -0x3f256f99
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        -0x3f256f99
        0x3fea419a    # 1.830127f
        0x3fea419a    # 1.830127f
        -0x3f256f99
        -0x3f256f99
        0x3fea419a    # 1.830127f
        0x3fea419a    # 1.830127f
        -0x3f256f99
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x0t
        0x3t
        0x1t
        0x4t
        0x6t
        0x2t
        0x7t
        0x3t
        0x8t
        0x4t
        0x9t
        0x5t
        0xat
        0x6t
        0xbt
        0x7t
        0xct
        0x8t
        0xdt
        0x9t
        0xat
        0xet
        0xbt
        0xft
        0xct
        0x10t
        0xdt
    .end array-data
.end method

.method private a(Ljava/nio/ByteBuffer;II)I
    .locals 11

    const/4 v9, 0x0

    if-nez p1, :cond_0

    .line 1238
    sget-object v0, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBlendTexture2 failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 1242
    invoke-static {v0, v10, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1243
    aget v0, v10, v9

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 1244
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    .line 1245
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x47012f00    # 33071.0f

    .line 1246
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 1247
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1907

    const/4 v5, 0x0

    const/16 v6, 0x1907

    const/16 v7, 0x1401

    move v3, p2

    move v4, p3

    move-object v8, p1

    .line 1250
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const-string v0, "loadBlendTexture2 failed"

    .line 1252
    invoke-direct {p0, v0}, Lcom/zte/camera/ui/b/a/c;->b(Ljava/lang/String;)V

    .line 1253
    aget v0, v10, v9

    return v0
.end method

.method private a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1224
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 1226
    sget-object p2, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadBlendTexture failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x3

    .line 1230
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1231
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method private a(JJ)V
    .locals 6

    .line 933
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->N:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    .line 936
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 937
    iget-object p3, p0, Lcom/zte/camera/ui/b/a/c;->aj:[I

    const/4 p4, 0x6

    aget v0, p3, p4

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p3, "glVertexAttribPointer"

    .line 939
    invoke-direct {p0, p3}, Lcom/zte/camera/ui/b/a/c;->b(Ljava/lang/String;)V

    .line 940
    iget-object p3, p0, Lcom/zte/camera/ui/b/a/c;->aj:[I

    aget p3, p3, p4

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p3, 0x3

    .line 942
    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 943
    iget-object p3, p0, Lcom/zte/camera/ui/b/a/c;->ak:[I

    aget v0, p3, p4

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "glVertexAttribPointer1"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/zte/camera/ui/b/a/c;->ak:[I

    aget p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/camera/ui/b/a/c;->b(Ljava/lang/String;)V

    .line 946
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->ak:[I

    aget p1, p1, p4

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 947
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/b/a/c;->b(Ljava/lang/String;)V

    .line 949
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->al:[I

    aget p1, p1, p4

    iget-object p3, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    const/4 v0, 0x1

    invoke-static {p1, v0, p2, p3, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 950
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->am:[I

    aget p1, p1, p4

    iget-object p3, p0, Lcom/zte/camera/ui/b/a/c;->h:[F

    invoke-static {p1, v0, p2, p3, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    .line 1283
    :try_start_0
    iget-object v1, p0, Lcom/zte/camera/ui/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 1285
    new-array v1, v1, [B

    .line 1286
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 1293
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1295
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_3

    :catch_2
    move-exception v1

    move-object p1, v0

    .line 1288
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_1

    .line 1293
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 1295
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p1, :cond_2

    .line 1293
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 1295
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1298
    :cond_2
    :goto_4
    throw v0
.end method

.method private b(II)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    if-le p2, v0, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 844
    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->ae:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    .line 845
    sput p1, Lcom/zte/camera/ui/b/a/c;->ac:F

    goto :goto_0

    :cond_0
    const p1, 0x3fe38e39

    .line 847
    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->ae:F

    const p1, 0x3f471c72

    .line 848
    sput p1, Lcom/zte/camera/ui/b/a/c;->ac:F

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 1326
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    sget-object v1, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(II)V
    .locals 11

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 904
    :cond_0
    iget-boolean v0, p0, Lcom/zte/camera/ui/b/a/c;->aF:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v10, p2

    move p2, p1

    move p1, v10

    :goto_0
    const/high16 v0, 0x41100000    # 9.0f

    int-to-float p1, p1

    div-float p1, v0, p1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    .line 911
    sget-object p2, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalizeW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x55

    new-array p2, p2, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x5

    .line 915
    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->d:[F

    mul-int/lit8 v5, v2, 0x2

    aget v6, v4, v5

    const v7, 0x3f8ccccd    # 1.1f

    mul-float/2addr v6, v7

    div-float/2addr v6, v0

    aput v6, p2, v3

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v8, v5, 0x1

    .line 916
    aget v4, v4, v8

    mul-float/2addr v4, v7

    div-float/2addr v4, p1

    aput v4, p2, v6

    add-int/lit8 v4, v3, 0x2

    const/4 v6, 0x0

    .line 917
    aput v6, p2, v4

    add-int/lit8 v4, v3, 0x3

    .line 919
    iget-object v6, p0, Lcom/zte/camera/ui/b/a/c;->e:[F

    aget v5, v6, v5

    mul-float/2addr v5, v7

    sub-float v5, p1, v5

    div-float/2addr v5, p1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x4

    .line 920
    aget v4, v6, v8

    mul-float/2addr v4, v7

    sub-float v4, v0, v4

    div-float/2addr v4, v0

    div-float/2addr v4, v9

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0x154

    .line 923
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 924
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->N:Ljava/nio/FloatBuffer;

    .line 925
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 926
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->f:[B

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    .line 927
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 928
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->O:Ljava/nio/ByteBuffer;

    .line 929
    iget-object p2, p0, Lcom/zte/camera/ui/b/a/c;->f:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    :goto_2
    return-void
.end method

.method private c(JJZ)V
    .locals 8

    .line 1114
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-nez p5, :cond_0

    return-void

    :cond_0
    long-to-double p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v2

    long-to-double p3, p3

    div-double/2addr p1, p3

    double-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1119
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    .line 1120
    sget p3, Lcom/zte/camera/ui/b/a/c;->ac:F

    mul-float/2addr p3, p1

    const p4, 0x3f99999a    # 1.2f

    mul-float/2addr p3, p4

    add-float/2addr p3, p2

    iput p3, p0, Lcom/zte/camera/ui/b/a/c;->aD:F

    .line 1121
    iget p4, p0, Lcom/zte/camera/ui/b/a/c;->ad:F

    mul-float/2addr p4, p1

    iput p4, p0, Lcom/zte/camera/ui/b/a/c;->aE:F

    .line 1123
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    invoke-static {p1, v1, p3, p3, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1125
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    iget p3, p0, Lcom/zte/camera/ui/b/a/c;->ae:F

    div-float p3, p2, p3

    const/4 p4, 0x0

    invoke-static {p1, v1, p3, p2, p4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1126
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/camera/ui/b/a/c;->aE:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1127
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    iget p3, p0, Lcom/zte/camera/ui/b/a/c;->ae:F

    invoke-static {p1, v1, p3, p2, p4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1131
    iget p1, p0, Lcom/zte/camera/ui/b/a/c;->t:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->t:I

    return-void
.end method

.method private d(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 717
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_0
    return-void
.end method

.method private d(JJZ)V
    .locals 4

    .line 1135
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-nez p5, :cond_0

    return-void

    :cond_0
    long-to-double p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v2

    long-to-double p3, p3

    div-double/2addr p1, p3

    double-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1139
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    .line 1140
    iget p2, p0, Lcom/zte/camera/ui/b/a/c;->Z:F

    iget p3, p0, Lcom/zte/camera/ui/b/a/c;->ab:F

    sub-float p3, p2, p3

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/zte/camera/ui/b/a/c;->aD:F

    .line 1142
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    invoke-static {p1, v1, p2, p2, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1146
    iget p1, p0, Lcom/zte/camera/ui/b/a/c;->t:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->t:I

    return-void
.end method

.method private e()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->f()V

    .line 524
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->g()V

    .line 525
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->h()V

    return-void
.end method

.method private e(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 723
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    return-void
.end method

.method private e(JJZ)V
    .locals 9

    .line 1168
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->h:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-nez p5, :cond_0

    return-void

    .line 1173
    :cond_0
    iget-object p5, p0, Lcom/zte/camera/ui/b/a/c;->i:[F

    invoke-static {p5, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    long-to-double p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v2

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, p3

    double-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    .line 1174
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    .line 1175
    iget-boolean p3, p0, Lcom/zte/camera/ui/b/a/c;->af:Z

    if-nez p3, :cond_1

    sub-float/2addr p2, p1

    .line 1176
    iput p2, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    .line 1182
    :cond_1
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->i:[F

    const p2, 0x3f2aaaab

    invoke-static {p1, v1, p2, p2, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1183
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->h:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->i:[F

    const/4 v5, 0x0

    iget v6, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    return-void
.end method

.method private f()V
    .locals 1

    const v0, 0x3fe66666    # 1.8f

    .line 529
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->Z:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 530
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->ab:F

    return-void
.end method

.method private f(I)V
    .locals 4

    .line 954
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->O:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 956
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x5

    const/16 v1, 0x1401

    .line 957
    invoke-static {p1, p1, v1, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 958
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0x8

    .line 959
    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    const/16 v3, 0xd

    .line 960
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 961
    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    const/16 v2, 0x15

    .line 962
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x7

    .line 963
    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method private f(JJZ)V
    .locals 9

    .line 1187
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->h:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-nez p5, :cond_0

    return-void

    .line 1192
    :cond_0
    iget-object p5, p0, Lcom/zte/camera/ui/b/a/c;->i:[F

    invoke-static {p5, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    long-to-double p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v2

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, p3

    double-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    .line 1193
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    .line 1194
    iget-boolean p3, p0, Lcom/zte/camera/ui/b/a/c;->af:Z

    if-nez p3, :cond_1

    sub-float/2addr p2, p1

    .line 1195
    iput p2, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    .line 1202
    :cond_1
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->i:[F

    const p2, 0x3f2aaaab

    invoke-static {p1, v1, p2, p2, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1203
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->h:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->i:[F

    const/4 v5, 0x0

    const/high16 v6, 0x3e800000    # 0.25f

    iget v7, p0, Lcom/zte/camera/ui/b/a/c;->aC:F

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    return-void
.end method

.method private g()V
    .locals 1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 534
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->ad:F

    const v0, 0x3fe38e39

    .line 535
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->ae:F

    const v0, 0x3f471c72

    .line 536
    sput v0, Lcom/zte/camera/ui/b/a/c;->ac:F

    return-void
.end method

.method private g(I)Z
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xde1

    if-eq p1, v2, :cond_6

    const/4 v4, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v0, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v1, :cond_2

    const-string v0, "glbind8 shader id="

    const v1, 0x84c8

    const/16 v4, 0x9

    const/16 v5, 0x8

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_0

    return v2

    :cond_0
    const v4, 0x84ca

    .line 1046
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1047
    iget v4, p0, Lcom/zte/camera/ui/b/a/c;->X:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1048
    iget v4, p0, Lcom/zte/camera/ui/b/a/c;->ay:I

    const/16 v6, 0xa

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1049
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "glbind10 shader id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    .line 1050
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1051
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->V:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1052
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->az:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    const v0, 0x84cb

    .line 1054
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1055
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->Y:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1056
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->aA:I

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glbind11 shader id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    return v2

    :cond_1
    const v6, 0x84c7

    .line 1031
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1032
    iget v6, p0, Lcom/zte/camera/ui/b/a/c;->U:I

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1033
    iget v6, p0, Lcom/zte/camera/ui/b/a/c;->av:I

    const/4 v7, 0x7

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1034
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "glbind7 shader id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    .line 1035
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1036
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->V:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1037
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->aw:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    const v0, 0x84c9

    .line 1040
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1041
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->W:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1042
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->ax:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glbind shader9 id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    return v2

    .line 1027
    :cond_2
    iget p1, p0, Lcom/zte/camera/ui/b/a/c;->ao:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1028
    iget p1, p0, Lcom/zte/camera/ui/b/a/c;->ap:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return v2

    :cond_3
    const v0, 0x84c6

    .line 1021
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1022
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->F:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1023
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->as:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glbind6 shader id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    return v2

    :cond_4
    const v0, 0x84c5

    .line 1015
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1016
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->I:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1017
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->au:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glbind5 shader id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    return v2

    :cond_5
    const v0, 0x84c4

    .line 1009
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1010
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->H:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1011
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->at:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glbind4 shader id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    return v2

    :cond_6
    const v4, 0x84c2

    .line 998
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 999
    iget v4, p0, Lcom/zte/camera/ui/b/a/c;->F:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1000
    iget v4, p0, Lcom/zte/camera/ui/b/a/c;->aq:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glbind2 shader id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    const v1, 0x84c3

    .line 1003
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1004
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->G:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1005
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->ar:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glbind3 shader id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    return v2
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lcom/zte/camera/ui/b/a/c;->af:Z

    return-void
.end method

.method private i()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->an:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uAdditionalColor;\nout vec4 outFragColor;\nvoid main()\n{\n    vec4 color = texture(sTexture, vTextureCoord);\n    outFragColor = vec4(color.r + uAdditionalColor,color.g + uAdditionalColor,color.b + uAdditionalColor,color.a);\n}\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v3, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform sampler2D inputImageTexture2;\nuniform sampler2D inputImageTexture3;\nuniform float uAdditionalColor;\nout vec4 outFragColor;\n\nvoid lomo(vec2 vCoordNew)\n{\n    vec4 pixelColor = texture(sTexture, vCoordNew);\n    vec2 red = vec2(pixelColor.r, 0.16666);\n    vec2 green = vec2(pixelColor.g, 0.5);\n    vec2 blue = vec2(pixelColor.b, 0.83333);\n    pixelColor.rgb = vec3(texture(inputImageTexture2, red).r,texture(inputImageTexture2, green).g,texture(inputImageTexture2, blue).b);\n    vec2 tc = (2.0 * vCoordNew) - 1.0;\n    float d = dot(tc, tc);\n   vec2 lookup = vec2(d, pixelColor.r);\n   pixelColor.r = texture(inputImageTexture3, lookup).r;\n   lookup.y = pixelColor.g;\n   pixelColor.g = texture(inputImageTexture3, lookup).g;\n   lookup.y = pixelColor.b;\n   pixelColor.b\t= texture(inputImageTexture3, lookup).b;\n   pixelColor.a = 1.0;\n   outFragColor = vec4(pixelColor.r + uAdditionalColor,pixelColor.g + uAdditionalColor,pixelColor.b + uAdditionalColor,pixelColor.a);\n}\nvoid main()\n{\n    lomo(vTextureCoord);\n}\n"

    .line 545
    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform sampler2D inputImageTexture2;\nconst vec4 border_color = vec4(0.043, 0.69, 1.0, 1.0);\nconst float width = 0.02;\nconst float lutHeight = 16.0;\nconst float lutWidth = 256.0;\nuniform int draw_border;\nuniform float uAdditionalColor;\nout vec4 outFragColor;\nvoid lutfx(vec2 src_coord)\n{\n     vec4 px = texture(sTexture, src_coord);\n     vec4 lut_dims = vec4(16.0, 16.0, 16.0, 0.0);\n     vec4 lut_coord = clamp(floor(px * 16.0), 0.0, 14.0);\n     vec4 delta = fract(px * 16.0);\n     ivec2 c000 = ivec2((lut_coord.b * lut_dims.b + lut_coord.r), lut_coord.g);\n     ivec2 c100 = ivec2((lut_coord.b * lut_dims.b + lut_coord.r + 1.0), lut_coord.g);\n     ivec2 c001 = ivec2(((lut_coord.b + 1.0) * lut_dims.b + lut_coord.r), lut_coord.g);\n     ivec2 c101 = ivec2(((lut_coord.b + 1.0) * lut_dims.b + lut_coord.r + 1.0), lut_coord.g);\n     ivec2 c010 = ivec2((lut_coord.b * lut_dims.b + lut_coord.r), lut_coord.g + 1.0);\n     ivec2 c110 = ivec2((lut_coord.b * lut_dims.b + lut_coord.r + 1.0),  lut_coord.g + 1.0);\n     ivec2 c011 = ivec2(((lut_coord.b + 1.0) * lut_dims.b + lut_coord.r), lut_coord.g + 1.0);\n     ivec2 c111 = ivec2(((lut_coord.b + 1.0) * lut_dims.b + lut_coord.r + 1.0), lut_coord.g + 1.0);\n     vec4 along_r_0 = mix(texelFetch(inputImageTexture2, c000, 0), texelFetch(inputImageTexture2, c100, 0), delta.r);\n     vec4 along_r_1 = mix(texelFetch(inputImageTexture2, c001, 0), texelFetch(inputImageTexture2, c101, 0), delta.r);\n     vec4 along_r_2 = mix(texelFetch(inputImageTexture2, c010, 0), texelFetch(inputImageTexture2, c110, 0), delta.r);\n     vec4 along_r_3 = mix(texelFetch(inputImageTexture2, c011, 0), texelFetch(inputImageTexture2, c111, 0), delta.r);\n     vec4 along_b_0 = mix(along_r_0, along_r_1, delta.b);\n     vec4 along_b_1 = mix(along_r_2, along_r_3, delta.b);\n     vec4 along_g   = mix(along_b_0, along_b_1, delta.g);\n     outFragColor = along_g;\n}\nvoid main()\n{\n    lutfx(vTextureCoord);\n}\n"

    .line 546
    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 547
    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform sampler2D inputImageTexture2;\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\nout vec4 outFragColor;\nvoid mono(vec2 vCoordNew)\n{\n    vec4 pixelColor = texture(sTexture, vCoordNew);\n    float luminance = dot(pixelColor.rgb, W);\n    vec2 red = vec2(luminance, 0.16666);\n    vec2 green = vec2(luminance, 0.5);\n    vec2 blue = vec2(luminance, 0.83333);\n    pixelColor.rgb = vec3(texture(inputImageTexture2, red).r,texture(inputImageTexture2, green).g,texture(inputImageTexture2, blue).b);\n    pixelColor.a = 1.0;\n    outFragColor = pixelColor;\n}\nvoid main()\n{\n    mono(vTextureCoord);\n}\n"

    .line 548
    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform int isMirroring;\nuniform int isFront;\nout vec4 outFragColor;\nvoid main()\n{\n    vec2 vCoordNew = vTextureCoord;\n    if (isFront == 0)\n    {\n        if (isMirroring == 1)        {\n            if (vCoordNew.x < 0.5)            {\n                vCoordNew.x = 1.0 - vCoordNew.x;\n            }\n        }\n        else\n        {\n            if (vCoordNew.x > 0.5)\n            {\n                 vCoordNew.x = 1.0 - vCoordNew.x;\n             }\n         }\n         outFragColor = texture(sTexture, vCoordNew);\n    }\n    else\n    {\n        if (isMirroring == 1)\n        {\n            if (vCoordNew.x < 0.5)\n            {\n                vCoordNew.x = 1.0 - vCoordNew.x;\n            }\n        }\n        else\n        {\n            if (vCoordNew.x > 0.5)\n            {\n                vCoordNew.x = 1.0 - vCoordNew.x;\n            }\n        }\n        outFragColor = texture(sTexture, vCoordNew);\n    }\n}\n"

    .line 549
    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 550
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nconst mat4 colorMatrix = mat4(0.3588, 0.7044, 0.1368, 0.0,\n0.2990, 0.5870, 0.1140, 0.0,\n0.2392, 0.4696, 0.0912, 0.0,\n0.0, 0.0, 0.0, 1.0);\nout vec4 outFragColor;\nvoid main()\n{\n    vec4 pixelColor = texture(sTexture, vTextureCoord);\n    outFragColor = pixelColor * colorMatrix;\n}\n"

    .line 551
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform sampler2D inputImageTexture2;\nuniform sampler2D inputImageTexture3;\nuniform sampler2D inputImageTexture4;\nout vec4 outFragColor;\nvoid main()\n{\n    vec4 pixelColor = texture(sTexture, vTextureCoord);\n    vec4 bbTexel = texture(inputImageTexture2, vTextureCoord);\n    vec4 mapped;\n    mapped.r = texture(inputImageTexture4, vec2(pixelColor.r, .16666)).r;\n    mapped.g = texture(inputImageTexture4, vec2(pixelColor.g, .5)).g;\n    mapped.b = texture(inputImageTexture4, vec2(pixelColor.b, .83333)).b;\n    mapped.a = 1.0;\n    outFragColor = mapped;\n}\n"

    .line 552
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform sampler2D inputImageTexture2;\nuniform sampler2D inputImageTexture3;\nuniform sampler2D inputImageTexture4;\nout vec4 outFragColor;\nvoid warm(vec2 coordNew)\n{\n    vec4 pixelColor = texture(sTexture, coordNew);\n    vec3 bbTexel = texture(inputImageTexture2, coordNew).rgb;\n    pixelColor.r = texture(inputImageTexture3, vec2(bbTexel.r, pixelColor.r)).r;\n    pixelColor.g = texture(inputImageTexture3, vec2(bbTexel.g, pixelColor.g)).g;\n    pixelColor.b = texture(inputImageTexture3, vec2(bbTexel.b, pixelColor.b)).b;\n    vec4 mapped;\n    mapped.r = texture(inputImageTexture4, vec2(pixelColor.r, .16666)).r;\n    mapped.g = texture(inputImageTexture4, vec2(pixelColor.g, .5)).g;\n    mapped.b = texture(inputImageTexture4, vec2(pixelColor.b, .83333)).b;\n    mapped.a = 1.0;\n    outFragColor = mapped;\n}\nvoid main()\n{\n    warm(vTextureCoord);\n}\n"

    .line 553
    aput-object v2, v0, v1

    return-void
.end method

.method private j()V
    .locals 2

    .line 557
    sget-object v0, Lcom/zte/camera/ui/b/a/c;->b:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 558
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 559
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->j:Ljava/nio/FloatBuffer;

    .line 560
    sget-object v0, Lcom/zte/camera/ui/b/a/c;->c:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 561
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 562
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->k:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private k()V
    .locals 4

    .line 578
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->J:Ljava/nio/ByteBuffer;

    const/16 v1, 0x100

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->F:I

    .line 579
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->K:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->G:I

    .line 580
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->L:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-direct {p0, v0, v1, v3}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->H:I

    .line 581
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->M:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v3}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->I:I

    .line 583
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->P:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->U:I

    .line 584
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->Q:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->V:I

    .line 585
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->R:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->W:I

    .line 587
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->S:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->X:I

    .line 588
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->T:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->Y:I

    return-void
.end method

.method private l()Z
    .locals 4

    const-string v0, "filter/lomo_map.rgb"

    const/16 v1, 0x100

    const/4 v2, 0x3

    .line 592
    invoke-direct {p0, v0, v1, v2}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->J:Ljava/nio/ByteBuffer;

    const-string v0, "filter/vignette_map.rgb"

    .line 593
    invoke-direct {p0, v0, v1, v1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->K:Ljava/nio/ByteBuffer;

    const-string v0, "filter/instant_lut.rgb"

    const/16 v3, 0x10

    .line 594
    invoke-direct {p0, v0, v1, v3}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->L:Ljava/nio/ByteBuffer;

    const-string v0, "filter/punch_lut.rgb"

    .line 595
    invoke-direct {p0, v0, v1, v3}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->M:Ljava/nio/ByteBuffer;

    const-string v0, "filter/cool_background.rgb"

    .line 597
    invoke-direct {p0, v0, v1, v1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->P:Ljava/nio/ByteBuffer;

    const-string v0, "filter/overlay_map.rgb"

    .line 598
    invoke-direct {p0, v0, v1, v1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->Q:Ljava/nio/ByteBuffer;

    const-string v0, "filter/cool_map.rgb"

    .line 599
    invoke-direct {p0, v0, v1, v2}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->R:Ljava/nio/ByteBuffer;

    const-string v0, "filter/blackboard.rgb"

    .line 601
    invoke-direct {p0, v0, v1, v1}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->S:Ljava/nio/ByteBuffer;

    const-string v0, "filter/warm_map.rgb"

    .line 602
    invoke-direct {p0, v0, v1, v2}, Lcom/zte/camera/ui/b/a/c;->a(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->T:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    return v0
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x0

    .line 607
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->J:Ljava/nio/ByteBuffer;

    .line 608
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->K:Ljava/nio/ByteBuffer;

    .line 609
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->L:Ljava/nio/ByteBuffer;

    .line 610
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->M:Ljava/nio/ByteBuffer;

    .line 611
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->P:Ljava/nio/ByteBuffer;

    .line 612
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->Q:Ljava/nio/ByteBuffer;

    .line 613
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->R:Ljava/nio/ByteBuffer;

    .line 614
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->S:Ljava/nio/ByteBuffer;

    .line 615
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/c;->T:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private n()V
    .locals 2

    .line 619
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->F:I

    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    const/4 v0, 0x0

    .line 620
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->F:I

    .line 621
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->G:I

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    .line 622
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->G:I

    .line 623
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->H:I

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    .line 624
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->H:I

    .line 625
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->I:I

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    .line 626
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->I:I

    .line 628
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->U:I

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    .line 629
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->U:I

    .line 630
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->V:I

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    .line 631
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->V:I

    .line 632
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->W:I

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    .line 633
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->W:I

    .line 635
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->X:I

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    .line 636
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->X:I

    .line 637
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->Y:I

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/b/a/c;->c(I)V

    .line 638
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->Y:I

    return-void
.end method

.method private o()Z
    .locals 6

    const v0, 0x8b31

    const-string v1, "#version 300 es\nin vec4  a_position;\nuniform mat4 u_MVPMatrix;\nuniform mat4 u_texMatrix;\nin vec2 a_texCoord;\nout vec2 vTextureCoord;\nvoid main()\n{\n   gl_Position = u_MVPMatrix * a_position;\n   vec4 texCoord = vec4(a_texCoord.x, a_texCoord.y, 0.0, 1.0);\n   vec4 finalCoord= u_texMatrix * texCoord;\n   vTextureCoord = vec2(finalCoord.x,finalCoord.y);\n}\n"

    .line 642
    invoke-static {v0, v1}, Lcom/zte/camera/d/c;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->l:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 644
    sget-object v0, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    const-string v2, "vlog filter load program vertext shader=0"

    invoke-static {v0, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ge v0, v2, :cond_a

    .line 650
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ah:[I

    const v4, 0x8b30

    iget-object v5, p0, Lcom/zte/camera/ui/b/a/c;->an:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Lcom/zte/camera/d/c;->a(ILjava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 651
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ah:[I

    aget v4, v2, v0

    if-nez v4, :cond_1

    .line 652
    sget-object v2, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vlog filter load program vertext shader=0,index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 655
    :cond_1
    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    iget v5, p0, Lcom/zte/camera/ui/b/a/c;->l:I

    aget v2, v2, v0

    invoke-static {v5, v2}, Lcom/zte/camera/d/c;->a(II)I

    move-result v2

    aput v2, v4, v0

    .line 656
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v4, v2, v0

    if-nez v4, :cond_2

    .line 657
    sget-object v2, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vlog filter load program i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",program="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",shader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->ah:[I

    aget v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 660
    :cond_2
    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->aj:[I

    aget v2, v2, v0

    const-string v5, "a_position"

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v4, v0

    .line 661
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ak:[I

    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v4, v4, v0

    const-string v5, "a_texCoord"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 662
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->al:[I

    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v4, v4, v0

    const-string v5, "u_MVPMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 663
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->am:[I

    iget-object v4, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v4, v4, v0

    const-string v5, "u_texMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    const-string v2, "inputImageTexture3"

    const-string v4, "inputImageTexture2"

    if-eq v0, v3, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    const-string v5, "inputImageTexture4"

    if-eq v0, v3, :cond_4

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    goto/16 :goto_1

    .line 692
    :cond_3
    iget-object v3, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v3, v3, v0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->ay:I

    .line 693
    iget-object v3, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v3, v3, v0

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->az:I

    .line 694
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v2, v2, v0

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->aA:I

    goto :goto_1

    .line 687
    :cond_4
    iget-object v3, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v3, v3, v0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->av:I

    .line 688
    iget-object v3, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v3, v3, v0

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->aw:I

    .line 689
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v2, v2, v0

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->ax:I

    goto :goto_1

    .line 679
    :cond_5
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v2, v2, v0

    const-string v3, "isMirroring"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->ao:I

    .line 680
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v2, v2, v0

    const-string v3, "isFront"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->ap:I

    goto :goto_1

    .line 676
    :cond_6
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v2, v2, v0

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->as:I

    goto :goto_1

    .line 673
    :cond_7
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v2, v2, v0

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->au:I

    goto :goto_1

    .line 670
    :cond_8
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v2, v2, v0

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->at:I

    goto :goto_1

    .line 666
    :cond_9
    iget-object v3, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v3, v3, v0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->aq:I

    .line 667
    iget-object v3, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v3, v3, v0

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->ar:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    return v3
.end method

.method private p()V
    .locals 3

    .line 704
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->l:I

    invoke-direct {p0, v0}, Lcom/zte/camera/ui/b/a/c;->d(I)V

    const/4 v0, 0x0

    .line 705
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->l:I

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ah:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/zte/camera/ui/b/a/c;->d(I)V

    .line 709
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ah:[I

    aput v0, v2, v1

    .line 710
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/zte/camera/ui/b/a/c;->e(I)V

    .line 711
    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()V
    .locals 6

    .line 735
    sget-object v0, Lcom/zte/camera/ui/b/a/c$1;->a:[I

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/c;->D:Lcom/zte/camera/ui/b/c/a/b$a;

    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 767
    iput v5, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    .line 764
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    .line 761
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x7

    .line 758
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    .line 755
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    .line 752
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    .line 749
    :pswitch_5
    iput v1, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    .line 746
    :pswitch_6
    iput v2, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    .line 743
    :pswitch_7
    iput v3, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    .line 740
    :pswitch_8
    iput v4, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    goto :goto_0

    .line 737
    :pswitch_9
    iput v5, p0, Lcom/zte/camera/ui/b/a/c;->aB:I

    .line 770
    :goto_0
    sget-object v0, Lcom/zte/camera/ui/b/a/c$1;->b:[I

    iget-object v5, p0, Lcom/zte/camera/ui/b/a/c;->E:Lcom/zte/camera/ui/b/c/a/b$b;

    invoke-virtual {v5}, Lcom/zte/camera/ui/b/c/a/b$b;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 781
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->s()V

    goto :goto_1

    .line 778
    :cond_1
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->r()V

    goto :goto_1

    .line 775
    :cond_2
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->r()V

    goto :goto_1

    .line 772
    :cond_3
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->t()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private r()V
    .locals 3

    const/4 v0, 0x1

    .line 791
    iput-boolean v0, p0, Lcom/zte/camera/ui/b/a/c;->af:Z

    .line 792
    iget-object v1, p0, Lcom/zte/camera/ui/b/a/c;->z:Lcom/zte/camera/ui/b/c/a/b;

    if-eqz v1, :cond_1

    .line 793
    invoke-interface {v1}, Lcom/zte/camera/ui/b/c/a/b;->d()F

    move-result v1

    iget-object v2, p0, Lcom/zte/camera/ui/b/a/c;->z:Lcom/zte/camera/ui/b/c/a/b;

    invoke-interface {v2}, Lcom/zte/camera/ui/b/c/a/b;->e()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zte/camera/ui/b/a/c;->af:Z

    :cond_1
    return-void
.end method

.method private s()V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->z:Lcom/zte/camera/ui/b/c/a/b;

    if-eqz v0, :cond_0

    .line 800
    invoke-interface {v0}, Lcom/zte/camera/ui/b/c/a/b;->d()F

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->ad:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    .line 802
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->ad:F

    :goto_0
    return-void
.end method

.method private t()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->z:Lcom/zte/camera/ui/b/c/a/b;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 808
    invoke-interface {v0}, Lcom/zte/camera/ui/b/c/a/b;->d()F

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->Z:F

    .line 813
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->z:Lcom/zte/camera/ui/b/c/a/b;

    invoke-interface {v0}, Lcom/zte/camera/ui/b/c/a/b;->e()F

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->ab:F

    .line 818
    iput v1, p0, Lcom/zte/camera/ui/b/a/c;->aa:F

    goto :goto_0

    :cond_0
    const v0, 0x3fe66666    # 1.8f

    .line 820
    iput v0, p0, Lcom/zte/camera/ui/b/a/c;->Z:F

    .line 821
    iput v1, p0, Lcom/zte/camera/ui/b/a/c;->ab:F

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 6

    .line 968
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 505
    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->m:I

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 832
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->A:I

    .line 833
    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->B:I

    .line 834
    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->A:I

    .line 835
    iput p2, p0, Lcom/zte/camera/ui/b/a/c;->B:I

    .line 836
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/b/a/c;->b(II)V

    .line 837
    iget v2, p0, Lcom/zte/camera/ui/b/a/c;->A:I

    if-ne v2, v0, :cond_0

    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->B:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->N:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 838
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/b/a/c;->c(II)V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 854
    iput-wide p1, p0, Lcom/zte/camera/ui/b/a/c;->x:J

    return-void
.end method

.method protected a(JJI)V
    .locals 6

    .line 974
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->j:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 975
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->j:Ljava/nio/FloatBuffer;

    sget-object p3, Lcom/zte/camera/ui/b/a/c;->b:[F

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 976
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->aj:[I

    aget v0, p1, p5

    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->n:I

    mul-int/lit8 v4, v1, 0x4

    iget-object v5, p0, Lcom/zte/camera/ui/b/a/c;->j:Ljava/nio/FloatBuffer;

    const/16 v2, 0x1406

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 977
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->aj:[I

    aget p1, p1, p5

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 979
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 980
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->k:Ljava/nio/FloatBuffer;

    sget-object p3, Lcom/zte/camera/ui/b/a/c;->c:[F

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 981
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->ak:[I

    aget v0, p1, p5

    iget v1, p0, Lcom/zte/camera/ui/b/a/c;->o:I

    mul-int/lit8 v4, v1, 0x4

    iget-object v5, p0, Lcom/zte/camera/ui/b/a/c;->k:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 982
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->ak:[I

    aget p1, p1, p5

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 984
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->al:[I

    aget p1, p1, p5

    iget-object p3, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    const/4 p4, 0x1

    invoke-static {p1, p4, p2, p3, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 985
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->am:[I

    aget p1, p1, p5

    iget-object p3, p0, Lcom/zte/camera/ui/b/a/c;->h:[F

    invoke-static {p1, p4, p2, p3, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method protected a(JJZ)V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->g:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1097
    sget-object v0, Lcom/zte/camera/ui/b/a/c$1;->b:[I

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/c;->E:Lcom/zte/camera/ui/b/c/a/b$b;

    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/zte/camera/ui/b/a/c;->c(JJZ)V

    goto :goto_0

    .line 1099
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/zte/camera/ui/b/a/c;->d(JJZ)V

    :goto_0
    return-void
.end method

.method public a(Lcom/zte/camera/ui/b/c/a/b;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->z:Lcom/zte/camera/ui/b/c/a/b;

    if-eqz p1, :cond_0

    .line 729
    invoke-interface {p1}, Lcom/zte/camera/ui/b/c/a/b;->a()Lcom/zte/camera/ui/b/c/a/b$b;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$b;->e:Lcom/zte/camera/ui/b/c/a/b$b;

    :goto_0
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->E:Lcom/zte/camera/ui/b/c/a/b$b;

    .line 730
    iget-object p1, p0, Lcom/zte/camera/ui/b/a/c;->z:Lcom/zte/camera/ui/b/c/a/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/zte/camera/ui/b/c/a/b;->b()Lcom/zte/camera/ui/b/c/a/b$a;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->a:Lcom/zte/camera/ui/b/c/a/b$a;

    :goto_1
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/c;->D:Lcom/zte/camera/ui/b/c/a/b$a;

    .line 731
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->q()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 827
    iput-boolean p1, p0, Lcom/zte/camera/ui/b/a/c;->w:Z

    const/4 p1, 0x0

    .line 828
    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->t:I

    return-void
.end method

.method protected a(ZZJJJ)V
    .locals 2

    cmp-long p3, p5, p7

    const/4 p4, 0x0

    if-lez p3, :cond_2

    const-wide v0, 0x3fd3333333333333L    # 0.3

    if-eqz p1, :cond_0

    sub-long/2addr p5, p7

    long-to-double p1, p5

    div-double/2addr p1, v0

    .line 1211
    sget-wide p3, Lcom/zte/camera/ui/b/a/c;->y:D

    mul-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->q:F

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sub-long/2addr p5, p7

    long-to-double p1, p5

    div-double/2addr p1, v0

    .line 1213
    sget-wide p3, Lcom/zte/camera/ui/b/a/c;->y:D

    mul-double/2addr p1, p3

    double-to-float p1, p1

    neg-float p1, p1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->q:F

    goto :goto_0

    .line 1215
    :cond_1
    iput p4, p0, Lcom/zte/camera/ui/b/a/c;->q:F

    goto :goto_0

    .line 1218
    :cond_2
    iput p4, p0, Lcom/zte/camera/ui/b/a/c;->q:F

    .line 1220
    :goto_0
    iget p1, p0, Lcom/zte/camera/ui/b/a/c;->p:I

    iget p2, p0, Lcom/zte/camera/ui/b/a/c;->q:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 509
    sget-object v0, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    const-string v1, "vlog filter init"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->k()V

    .line 511
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->o()Z

    move-result v0

    return v0
.end method

.method public a(ZZZJJJZ)Z
    .locals 12

    move-object v9, p0

    .line 860
    iget v10, v9, Lcom/zte/camera/ui/b/a/c;->aB:I

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 861
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 862
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    move-object v0, p0

    move-wide/from16 v1, p6

    move-wide/from16 v3, p4

    move/from16 v5, p10

    .line 863
    invoke-virtual/range {v0 .. v5}, Lcom/zte/camera/ui/b/a/c;->a(JJZ)V

    .line 864
    invoke-virtual/range {v0 .. v5}, Lcom/zte/camera/ui/b/a/c;->b(JJZ)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    .line 867
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/b/a/c;->a(F)V

    .line 870
    :cond_0
    iget-object v0, v9, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget v0, v0, v10

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glUseProgram shader id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    move-result v11

    const/4 v0, 0x6

    if-eq v10, v0, :cond_1

    move-object v0, p0

    move-wide/from16 v1, p6

    move-wide/from16 v3, p4

    move v5, v10

    .line 874
    invoke-virtual/range {v0 .. v5}, Lcom/zte/camera/ui/b/a/c;->a(JJI)V

    .line 875
    invoke-virtual {p0, v10}, Lcom/zte/camera/ui/b/a/c;->b(I)V

    move v1, p2

    move v2, p3

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    .line 876
    invoke-virtual/range {v0 .. v8}, Lcom/zte/camera/ui/b/a/c;->a(ZZJJJ)V

    .line 877
    invoke-direct {p0, v10}, Lcom/zte/camera/ui/b/a/c;->g(I)Z

    .line 878
    invoke-virtual {p0}, Lcom/zte/camera/ui/b/a/c;->c()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 880
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0

    .line 882
    :cond_1
    iget-object v0, v9, Lcom/zte/camera/ui/b/a/c;->O:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/zte/camera/ui/b/a/c;->N:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    .line 883
    :cond_2
    iget v0, v9, Lcom/zte/camera/ui/b/a/c;->A:I

    iget v1, v9, Lcom/zte/camera/ui/b/a/c;->B:I

    invoke-direct {p0, v0, v1}, Lcom/zte/camera/ui/b/a/c;->c(II)V

    :cond_3
    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    .line 885
    invoke-direct {p0, v5, v6, v3, v4}, Lcom/zte/camera/ui/b/a/c;->a(JJ)V

    .line 886
    invoke-virtual {p0, v10}, Lcom/zte/camera/ui/b/a/c;->b(I)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    .line 887
    invoke-virtual/range {v0 .. v8}, Lcom/zte/camera/ui/b/a/c;->a(ZZJJJ)V

    .line 889
    invoke-virtual {p0}, Lcom/zte/camera/ui/b/a/c;->c()V

    .line 890
    invoke-direct {p0, v10}, Lcom/zte/camera/ui/b/a/c;->f(I)V

    :goto_0
    return v11
.end method

.method protected b(I)V
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->ai:[I

    aget p1, v0, p1

    const-string v0, "uAdditionalColor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zte/camera/ui/b/a/c;->p:I

    return-void
.end method

.method protected b(JJZ)V
    .locals 2

    .line 1150
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/c;->h:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1151
    sget-object v0, Lcom/zte/camera/ui/b/a/c$1;->b:[I

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/c;->E:Lcom/zte/camera/ui/b/c/a/b$b;

    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1158
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/zte/camera/ui/b/a/c;->f(JJZ)V

    goto :goto_0

    .line 1155
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/zte/camera/ui/b/a/c;->e(JJZ)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 515
    sget-object v0, Lcom/zte/camera/ui/b/a/c;->a:Ljava/lang/String;

    const-string v1, "vlog filter reinit"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->p()V

    .line 517
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->n()V

    .line 518
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->k()V

    .line 519
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->o()Z

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 3

    const v0, 0x84c0

    .line 1066
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1067
    iget v0, p0, Lcom/zte/camera/ui/b/a/c;->m:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture GL_TEXTURE_EXTERNAL_OES id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/zte/camera/ui/b/a/c;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    .line 1070
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 1072
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 1075
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 1077
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method protected c(I)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1090
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 1082
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->n()V

    .line 1083
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->p()V

    .line 1084
    invoke-direct {p0}, Lcom/zte/camera/ui/b/a/c;->m()V

    return-void
.end method
