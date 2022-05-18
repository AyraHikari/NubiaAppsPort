.class public Lcom/android/common/a/a/v;
.super Lcom/android/common/a/a;
.source "SourceFile"


# instance fields
.field a:I

.field final b:I

.field final c:I

.field final d:I

.field private e:I

.field private f:[I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:[F

.field private r:Landroid/content/Context;

.field private s:Z

.field private final t:I

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[FIII)V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 26
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/common/a/a/v;->f:[I

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/android/common/a/a/v;->a:I

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 40
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/common/a/a/v;->q:[F

    .line 41
    iput v1, p0, Lcom/android/common/a/a/v;->b:I

    const/4 v2, 0x1

    .line 42
    iput v2, p0, Lcom/android/common/a/a/v;->c:I

    .line 43
    iput v0, p0, Lcom/android/common/a/a/v;->d:I

    .line 46
    iput-boolean v1, p0, Lcom/android/common/a/a/v;->s:Z

    .line 51
    iput-object p1, p0, Lcom/android/common/a/a/v;->r:Landroid/content/Context;

    .line 52
    iput p5, p0, Lcom/android/common/a/a/v;->t:I

    .line 53
    invoke-direct {p0, p4}, Lcom/android/common/a/a/v;->a(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/a/a/v;->f:[I

    .line 54
    iput p3, p0, Lcom/android/common/a/a/v;->a:I

    .line 55
    iput-object p2, p0, Lcom/android/common/a/a/v;->q:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a([F[FLjava/nio/FloatBuffer;IIIIII)V
    .locals 6

    .line 110
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 112
    iget p4, p0, Lcom/android/common/a/a/v;->e:I

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
    iget v0, p0, Lcom/android/common/a/a/v;->g:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 121
    iget p5, p0, Lcom/android/common/a/a/v;->g:I

    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p5, 0x3

    .line 123
    invoke-virtual {p3, p5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    iget v0, p0, Lcom/android/common/a/a/v;->h:I

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 126
    iget p3, p0, Lcom/android/common/a/a/v;->h:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p3, 0x84c0

    .line 128
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 129
    invoke-static {p9, p8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 130
    iget p3, p0, Lcom/android/common/a/a/v;->u:I

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 132
    iget p3, p0, Lcom/android/common/a/a/v;->i:I

    const/4 p5, 0x1

    invoke-static {p3, p5, p4, p1, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 133
    iget p1, p0, Lcom/android/common/a/a/v;->j:I

    invoke-static {p1, p5, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 134
    iget p1, p0, Lcom/android/common/a/a/v;->k:I

    int-to-float p2, p6

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 135
    iget p1, p0, Lcom/android/common/a/a/v;->l:I

    int-to-float p2, p7

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 136
    iget p1, p0, Lcom/android/common/a/a/v;->m:I

    iget-object p2, p0, Lcom/android/common/a/a/v;->q:[F

    aget p2, p2, p4

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 137
    iget p1, p0, Lcom/android/common/a/a/v;->n:I

    iget-object p2, p0, Lcom/android/common/a/a/v;->q:[F

    aget p2, p2, p5

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 138
    iget p1, p0, Lcom/android/common/a/a/v;->o:I

    iget-object p2, p0, Lcom/android/common/a/a/v;->q:[F

    const/4 p3, 0x2

    aget p2, p2, p3

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 139
    iget p1, p0, Lcom/android/common/a/a/v;->p:I

    iget p2, p0, Lcom/android/common/a/a/v;->a:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 141
    invoke-static {p1, p4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private a(I)[I
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/android/common/a/a/v;->r:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->M:I

    .line 60
    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/v;->r:Landroid/content/Context;

    iget v2, p0, Lcom/android/common/a/a/v;->t:I

    .line 61
    invoke-static {v1, p1, v2}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/android/common/a/a/v;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/common/a/a/v;->s:Z

    .line 91
    iget-object v1, p0, Lcom/android/common/a/a/v;->f:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->e:I

    if-nez v0, :cond_1

    const-string v0, "PragueEffect"

    const-string v1, "mProgram = 0"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->g:I

    .line 96
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->h:I

    .line 97
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->i:I

    .line 98
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->j:I

    .line 99
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->k:I

    .line 100
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->l:I

    .line 101
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "L"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->m:I

    .line 102
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "A"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->n:I

    .line 103
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "B"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->o:I

    .line 104
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "index"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->p:I

    .line 105
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/v;->u:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/android/common/a/a/v;->t:I

    return v0
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 12

    move-object/from16 v0, p9

    move-object v10, p0

    .line 72
    iget v1, v10, Lcom/android/common/a/a/v;->t:I

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/android/common/a/a/v;->d()V

    const/4 v1, 0x0

    move-object v2, p1

    .line 76
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v0, :cond_1

    move-object/from16 v11, p10

    .line 78
    invoke-virtual {v11, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 79
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

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/v;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    .line 80
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 82
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

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/v;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/common/a/a/v;->f:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 152
    iget-object v0, p0, Lcom/android/common/a/a/v;->f:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 153
    iget v0, p0, Lcom/android/common/a/a/v;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/android/common/a/a/v;->d()V

    return-void
.end method
