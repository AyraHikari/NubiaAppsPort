.class public Lcom/android/common/a/a/u;
.super Lcom/android/common/a/a;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[I

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

.field private n:F

.field private o:F

.field private p:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/u;->b:[I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/common/a/a/u;->m:Z

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/common/a/a/u;->n:F

    const v0, 0x3fb13b14

    .line 43
    iput v0, p0, Lcom/android/common/a/a/u;->o:F

    const v0, 0x404ec4ec

    .line 44
    iput v0, p0, Lcom/android/common/a/a/u;->p:F

    .line 47
    iput-object p1, p0, Lcom/android/common/a/a/u;->l:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/android/common/a/a/u;->d()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/a/a/u;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a([F[FLjava/nio/FloatBuffer;IIIII)V
    .locals 6

    .line 120
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 122
    iget p4, p0, Lcom/android/common/a/a/u;->a:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p4, 0xbe2

    .line 125
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p4, 0x302

    const/16 p5, 0x303

    .line 126
    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p4, 0x0

    .line 128
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget v0, p0, Lcom/android/common/a/a/u;->c:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 131
    iget p5, p0, Lcom/android/common/a/a/u;->c:I

    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p5, 0x3

    .line 133
    invoke-virtual {p3, p5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget v0, p0, Lcom/android/common/a/a/u;->d:I

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 136
    iget p3, p0, Lcom/android/common/a/a/u;->d:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    iget p3, p0, Lcom/android/common/a/a/u;->e:I

    const/4 p5, 0x1

    invoke-static {p3, p5, p4, p1, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 139
    iget p1, p0, Lcom/android/common/a/a/u;->f:I

    invoke-static {p1, p5, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 140
    iget p1, p0, Lcom/android/common/a/a/u;->g:I

    int-to-float p2, p6

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 141
    iget p1, p0, Lcom/android/common/a/a/u;->h:I

    int-to-float p2, p7

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 142
    iget p1, p0, Lcom/android/common/a/a/u;->i:I

    iget p2, p0, Lcom/android/common/a/a/u;->n:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 143
    iget p1, p0, Lcom/android/common/a/a/u;->j:I

    iget p2, p0, Lcom/android/common/a/a/u;->o:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 144
    iget p1, p0, Lcom/android/common/a/a/u;->k:I

    iget p2, p0, Lcom/android/common/a/a/u;->p:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 146
    invoke-static {p1, p4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private d()[I
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/common/a/a/u;->l:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->M:I

    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/u;->l:Landroid/content/Context;

    sget v2, Lcom/android/common/d/d$b;->l:I

    .line 95
    invoke-static {v1, v2}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 99
    iget-boolean v0, p0, Lcom/android/common/a/a/u;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/android/common/a/a/u;->m:Z

    .line 103
    iget-object v1, p0, Lcom/android/common/a/a/u;->b:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->a:I

    if-nez v0, :cond_1

    const-string v0, "LandScapeBlurEffect"

    const-string v1, "mProgram = 0"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->c:I

    .line 108
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->d:I

    .line 109
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->e:I

    .line 110
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->f:I

    .line 111
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->g:I

    .line 112
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->h:I

    .line 113
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "offset0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->i:I

    .line 114
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "offset1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->j:I

    .line 115
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    const-string v1, "offset2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/u;->k:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public a(FFF)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/common/a/a/u;->n:F

    .line 53
    iput p2, p0, Lcom/android/common/a/a/u;->o:F

    .line 54
    iput p3, p0, Lcom/android/common/a/a/u;->p:F

    return-void
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 12

    move-object/from16 v0, p9

    .line 60
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v1

    const/16 v2, 0xde1

    if-eq v2, v1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/android/common/a/a/u;->e()V

    const/4 v1, 0x0

    move-object v4, p1

    .line 64
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const v1, 0x84c0

    .line 65
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 66
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->a()I

    move-result v1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    if-eqz v0, :cond_1

    move-object/from16 v1, p10

    .line 68
    invoke-virtual {v1, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 69
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->b()I

    move-result v9

    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->c()I

    move-result v10

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->a()I

    move-result v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/common/a/a/u;->a([F[FLjava/nio/FloatBuffer;IIIII)V

    .line 70
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->a()I

    move-result v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/common/a/a/u;->a([F[FLjava/nio/FloatBuffer;IIIII)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/common/a/a/u;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 84
    iget-object v0, p0, Lcom/android/common/a/a/u;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 85
    iget v0, p0, Lcom/android/common/a/a/u;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/common/a/a/u;->e()V

    return-void
.end method
