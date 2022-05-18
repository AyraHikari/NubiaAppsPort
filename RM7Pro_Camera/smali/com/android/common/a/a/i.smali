.class public Lcom/android/common/a/a/i;
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

.field private i:Landroid/content/Context;

.field private j:Z

.field private final k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/i;->b:[I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/common/a/a/i;->j:Z

    .line 41
    iput-object p1, p0, Lcom/android/common/a/a/i;->i:Landroid/content/Context;

    .line 42
    iput p2, p0, Lcom/android/common/a/a/i;->k:I

    .line 43
    invoke-direct {p0}, Lcom/android/common/a/a/i;->d()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/a/a/i;->b:[I

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

    .line 101
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 103
    iget p4, p0, Lcom/android/common/a/a/i;->a:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p4, 0xbe2

    .line 106
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p4, 0x302

    const/16 p5, 0x303

    .line 107
    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p4, 0x0

    .line 109
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    iget v0, p0, Lcom/android/common/a/a/i;->c:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 112
    iget p5, p0, Lcom/android/common/a/a/i;->c:I

    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p5, 0x3

    .line 114
    invoke-virtual {p3, p5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    iget v0, p0, Lcom/android/common/a/a/i;->d:I

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 117
    iget p3, p0, Lcom/android/common/a/a/i;->d:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p3, 0x84c0

    .line 119
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 120
    invoke-static {p9, p8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    iget p3, p0, Lcom/android/common/a/a/i;->l:I

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 122
    iget p3, p0, Lcom/android/common/a/a/i;->e:I

    const/4 p5, 0x1

    invoke-static {p3, p5, p4, p1, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 123
    iget p1, p0, Lcom/android/common/a/a/i;->f:I

    invoke-static {p1, p5, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 124
    iget p1, p0, Lcom/android/common/a/a/i;->g:I

    int-to-float p2, p6

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 125
    iget p1, p0, Lcom/android/common/a/a/i;->h:I

    int-to-float p2, p7

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 127
    invoke-static {p1, p4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private d()[I
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/android/common/a/a/i;->i:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->N:I

    .line 48
    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/i;->i:Landroid/content/Context;

    sget v2, Lcom/android/common/d/d$b;->t:I

    iget v3, p0, Lcom/android/common/a/a/i;->k:I

    .line 49
    invoke-static {v1, v2, v3}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 53
    iget-boolean v0, p0, Lcom/android/common/a/a/i;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/common/a/a/i;->j:Z

    .line 57
    iget-object v1, p0, Lcom/android/common/a/a/i;->b:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/i;->a:I

    if-nez v0, :cond_1

    const-string v0, "FishEyeEffect"

    const-string v1, "mProgram = 0"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/i;->a:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/i;->c:I

    .line 62
    iget v0, p0, Lcom/android/common/a/a/i;->a:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/i;->d:I

    .line 63
    iget v0, p0, Lcom/android/common/a/a/i;->a:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/i;->e:I

    .line 64
    iget v0, p0, Lcom/android/common/a/a/i;->a:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/i;->f:I

    .line 65
    iget v0, p0, Lcom/android/common/a/a/i;->a:I

    const-string v1, "uWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/i;->g:I

    .line 66
    iget v0, p0, Lcom/android/common/a/a/i;->a:I

    const-string v1, "uHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/i;->h:I

    .line 67
    iget v0, p0, Lcom/android/common/a/a/i;->a:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/i;->l:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/common/a/a/i;->k:I

    return v0
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 12

    move-object/from16 v0, p9

    move-object v10, p0

    .line 73
    iget v1, v10, Lcom/android/common/a/a/i;->k:I

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/android/common/a/a/i;->e()V

    const/4 v1, 0x0

    move-object v2, p1

    .line 77
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v0, :cond_1

    move-object/from16 v11, p10

    .line 79
    invoke-virtual {v11, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 80
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

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/i;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    .line 81
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 83
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

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/i;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/common/a/a/i;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 95
    iget-object v0, p0, Lcom/android/common/a/a/i;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 96
    iget v0, p0, Lcom/android/common/a/a/i;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/common/a/a/i;->e()V

    return-void
.end method
