.class public Lcom/android/common/a/a/aa;
.super Lcom/android/common/a/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:I

.field private d:[I

.field private e:I

.field private f:I

.field private g:I

.field private h:[F

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/common/a/a/aa;->b:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/aa;->d:[I

    const v0, 0x66ffffff

    .line 33
    iput v0, p0, Lcom/android/common/a/a/aa;->i:I

    .line 37
    iput-object p1, p0, Lcom/android/common/a/a/aa;->a:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/android/common/a/a/aa;->d()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/a/a/aa;->d:[I

    .line 50
    iget p1, p0, Lcom/android/common/a/a/aa;->i:I

    invoke-direct {p0, p1}, Lcom/android/common/a/a/aa;->b(I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/a/a/aa;->h:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a([F[FLjava/nio/FloatBuffer;IIII)V
    .locals 6

    .line 110
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 112
    iget p2, p0, Lcom/android/common/a/a/aa;->c:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p2, 0xbe2

    .line 115
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p2, 0x302

    const/16 p4, 0x303

    .line 116
    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 117
    invoke-static {p2}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 p2, 0x0

    .line 119
    invoke-virtual {p3, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget v0, p0, Lcom/android/common/a/a/aa;->e:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 122
    iget p3, p0, Lcom/android/common/a/a/aa;->e:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 124
    iget p3, p0, Lcom/android/common/a/a/aa;->g:I

    const/4 p4, 0x1

    invoke-static {p3, p4, p2, p1, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 125
    iget p1, p0, Lcom/android/common/a/a/aa;->f:I

    iget-object p3, p0, Lcom/android/common/a/a/aa;->h:[F

    invoke-static {p1, p4, p3, p2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 127
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private b(I)[F
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [F

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v2

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v2

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v2, 0x0

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v4, v0, v2

    const/4 v2, 0x2

    aput p1, v0, v2

    const/4 p1, 0x3

    aput v1, v0, p1

    return-object v0
.end method

.method private d()[I
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/common/a/a/aa;->a:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->K:I

    .line 75
    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/aa;->a:Landroid/content/Context;

    sget v2, Lcom/android/common/d/d$b;->J:I

    .line 76
    invoke-static {v1, v2}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 80
    iget-boolean v0, p0, Lcom/android/common/a/a/aa;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/common/a/a/aa;->b:Z

    .line 84
    iget-object v1, p0, Lcom/android/common/a/a/aa;->d:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/aa;->c:I

    if-nez v0, :cond_1

    const-string v0, "RectFrameEffect"

    const-string v1, "mProgram = 0"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/aa;->c:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/aa;->e:I

    .line 89
    iget v0, p0, Lcom/android/common/a/a/aa;->c:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/aa;->g:I

    .line 90
    iget v0, p0, Lcom/android/common/a/a/aa;->c:I

    const-string v1, "uColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/aa;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/common/a/a/aa;->i:I

    if-eq v0, p1, :cond_0

    .line 55
    iput p1, p0, Lcom/android/common/a/a/aa;->i:I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/common/a/a/aa;->b(I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/a/a/aa;->h:[F

    :cond_0
    return-void
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 10

    move-object/from16 v0, p9

    .line 97
    invoke-direct {p0}, Lcom/android/common/a/a/aa;->e()V

    const/4 v1, 0x0

    move-object v3, p1

    .line 98
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v0, :cond_0

    move-object/from16 v1, p10

    .line 100
    invoke-virtual {v1, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 101
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->b()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->c()I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/common/a/a/aa;->a([F[FLjava/nio/FloatBuffer;IIII)V

    .line 102
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/android/common/a/a/aa;->a([F[FLjava/nio/FloatBuffer;IIII)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
