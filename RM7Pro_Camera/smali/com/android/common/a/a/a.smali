.class public Lcom/android/common/a/a/a;
.super Lcom/android/common/a/a;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Z

.field private final n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/a;->a:[I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/common/a/a/a;->m:Z

    .line 45
    iput-object p1, p0, Lcom/android/common/a/a/a;->l:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/android/common/a/a/a;->n:I

    .line 47
    invoke-direct {p0}, Lcom/android/common/a/a/a;->d()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/a/a/a;->a:[I

    .line 48
    sget p2, Lcom/android/common/d/d$a;->w:I

    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/common/a/a/a;->g:I

    .line 49
    sget p2, Lcom/android/common/d/d$a;->v:I

    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/common/a/a/a;->i:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a([F[FLjava/nio/FloatBuffer;IIIIII)V
    .locals 6

    .line 110
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 112
    iget p4, p0, Lcom/android/common/a/a/a;->b:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p4, 0xbe2

    .line 115
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p4, 0x302

    const/16 p5, 0x303

    .line 116
    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p4, 0x0

    .line 118
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget v0, p0, Lcom/android/common/a/a/a;->c:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 121
    iget p5, p0, Lcom/android/common/a/a/a;->c:I

    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p5, 0x3

    .line 123
    invoke-virtual {p3, p5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    iget v0, p0, Lcom/android/common/a/a/a;->d:I

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 126
    iget p3, p0, Lcom/android/common/a/a/a;->d:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p3, 0x84c0

    .line 128
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 129
    invoke-static {p9, p8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 130
    iget p3, p0, Lcom/android/common/a/a/a;->o:I

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p3, 0x84c2

    .line 132
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 133
    iget p3, p0, Lcom/android/common/a/a/a;->i:I

    const/16 p6, 0xde1

    invoke-static {p6, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 134
    iget p3, p0, Lcom/android/common/a/a/a;->j:I

    const/4 p7, 0x2

    invoke-static {p3, p7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p3, 0x84c3

    .line 136
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 137
    iget p3, p0, Lcom/android/common/a/a/a;->g:I

    invoke-static {p6, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 138
    iget p3, p0, Lcom/android/common/a/a/a;->h:I

    invoke-static {p3, p5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 p3, 0x10

    new-array p3, p3, [F

    .line 141
    invoke-static {p3, p4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 p5, 0x0

    const/high16 p6, 0x3f000000    # 0.5f

    .line 142
    invoke-static {p3, p4, p5, p6, p5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 p6, 0x3f800000    # 1.0f

    const/high16 p7, -0x40800000    # -1.0f

    .line 143
    invoke-static {p3, p4, p6, p7, p6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 p6, -0x41000000    # -0.5f

    .line 144
    invoke-static {p3, p4, p5, p6, p5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 145
    iget p5, p0, Lcom/android/common/a/a/a;->k:I

    const/4 p6, 0x1

    invoke-static {p5, p6, p4, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 147
    iget p3, p0, Lcom/android/common/a/a/a;->e:I

    invoke-static {p3, p6, p4, p1, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 148
    iget p1, p0, Lcom/android/common/a/a/a;->f:I

    invoke-static {p1, p6, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 150
    invoke-static {p1, p4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private d()[I
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/common/a/a/a;->l:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->b:I

    .line 54
    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/a;->l:Landroid/content/Context;

    sget v2, Lcom/android/common/d/d$b;->a:I

    iget v3, p0, Lcom/android/common/a/a/a;->n:I

    .line 55
    invoke-static {v1, v2, v3}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/android/common/a/a/a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/common/a/a/a;->m:Z

    .line 63
    iget-object v1, p0, Lcom/android/common/a/a/a;->a:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->b:I

    if-nez v0, :cond_1

    const-string v0, "AreaEffect"

    const-string v1, "mProgram = 0"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->c:I

    .line 68
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->d:I

    .line 69
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->e:I

    .line 70
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->f:I

    .line 72
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    const-string v1, "uEAMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->k:I

    .line 73
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    const-string v1, "uFrontTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->h:I

    .line 74
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    const-string v1, "uEffectAreaTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->j:I

    .line 75
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/a;->o:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/common/a/a/a;->n:I

    return v0
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 12

    move-object/from16 v0, p9

    move-object v10, p0

    .line 81
    iget v1, v10, Lcom/android/common/a/a/a;->n:I

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/android/common/a/a/a;->e()V

    const/4 v1, 0x0

    move-object v2, p1

    .line 85
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v0, :cond_1

    move-object/from16 v11, p10

    .line 87
    invoke-virtual {v11, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 88
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->b()I

    move-result v6

    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->c()I

    move-result v7

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->a()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/a;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    .line 89
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->a()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/a;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/android/common/a/a/a;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 103
    iget-object v0, p0, Lcom/android/common/a/a/a;->a:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 104
    iget v0, p0, Lcom/android/common/a/a/a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 105
    iget v4, p0, Lcom/android/common/a/a/a;->g:I

    aput v4, v3, v1

    iget v4, p0, Lcom/android/common/a/a/a;->i:I

    aput v4, v3, v2

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/common/a/a/a;->e()V

    return-void
.end method
