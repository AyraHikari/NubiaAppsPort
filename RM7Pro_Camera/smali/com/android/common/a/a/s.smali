.class public Lcom/android/common/a/a/s;
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

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Lcom/android/common/b/a;

.field private p:[F

.field private q:[F

.field private final r:I

.field private final s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/s;->b:[I

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/common/a/a/s;->n:Z

    .line 49
    iput-object p1, p0, Lcom/android/common/a/a/s;->m:Landroid/content/Context;

    .line 50
    iput p2, p0, Lcom/android/common/a/a/s;->r:I

    .line 51
    iput p3, p0, Lcom/android/common/a/a/s;->s:I

    .line 52
    invoke-direct {p0}, Lcom/android/common/a/a/s;->d()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/a/a/s;->b:[I

    .line 53
    sget p2, Lcom/android/common/d/d$a;->c:I

    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/common/a/a/s;->k:I

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

    .line 128
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 130
    iget p4, p0, Lcom/android/common/a/a/s;->a:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p4, 0xbe2

    .line 133
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p4, 0x302

    const/16 p5, 0x303

    .line 134
    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p4, 0x0

    .line 136
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    iget v0, p0, Lcom/android/common/a/a/s;->c:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 139
    iget p5, p0, Lcom/android/common/a/a/s;->c:I

    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p5, 0x3

    .line 141
    invoke-virtual {p3, p5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget v0, p0, Lcom/android/common/a/a/s;->d:I

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 144
    iget p3, p0, Lcom/android/common/a/a/s;->d:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 146
    iget p3, p0, Lcom/android/common/a/a/s;->e:I

    const/4 p6, 0x1

    invoke-static {p3, p6, p4, p1, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 147
    iget p1, p0, Lcom/android/common/a/a/s;->f:I

    invoke-static {p1, p6, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 148
    iget p1, p0, Lcom/android/common/a/a/s;->g:I

    iget-object p2, p0, Lcom/android/common/a/a/s;->p:[F

    invoke-static {p1, p6, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 149
    iget p1, p0, Lcom/android/common/a/a/s;->j:I

    iget-object p2, p0, Lcom/android/common/a/a/s;->q:[F

    invoke-static {p1, p6, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p1, 0x84c3

    .line 151
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 152
    iget-object p1, p0, Lcom/android/common/a/a/s;->o:Lcom/android/common/b/a;

    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result p1

    iget-object p2, p0, Lcom/android/common/a/a/s;->o:Lcom/android/common/b/a;

    invoke-virtual {p2}, Lcom/android/common/b/a;->a()I

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 153
    iget p1, p0, Lcom/android/common/a/a/s;->i:I

    invoke-static {p1, p5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c2

    .line 155
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 156
    invoke-static {p9, p8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 157
    iget p1, p0, Lcom/android/common/a/a/s;->h:I

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c4

    .line 159
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 160
    iget p1, p0, Lcom/android/common/a/a/s;->k:I

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 161
    iget p1, p0, Lcom/android/common/a/a/s;->l:I

    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    .line 165
    invoke-static {p1, p4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private d()[I
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/common/a/a/s;->m:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->F:I

    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/s;->m:Landroid/content/Context;

    sget v2, Lcom/android/common/d/d$b;->E:I

    iget v3, p0, Lcom/android/common/a/a/s;->s:I

    .line 102
    invoke-static {v1, v2, v3}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/android/common/a/a/s;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/common/a/a/s;->n:Z

    .line 110
    iget-object v1, p0, Lcom/android/common/a/a/s;->b:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->a:I

    if-nez v0, :cond_1

    const-string v0, "OverlyEffect"

    const-string v1, "mProgram = 0"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->c:I

    .line 115
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->d:I

    .line 116
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->e:I

    .line 117
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->f:I

    .line 118
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "uPreviewSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->g:I

    .line 119
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "uChangeSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->j:I

    .line 120
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->i:I

    .line 121
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "sChangeTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->l:I

    .line 122
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    const-string v1, "sBlurTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/s;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/common/a/a/s;->r:I

    return v0
.end method

.method public a(Lcom/android/common/b/a;[F)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/common/a/a/s;->o:Lcom/android/common/b/a;

    .line 94
    iput-object p2, p0, Lcom/android/common/a/a/s;->p:[F

    return-void
.end method

.method public a([F)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/common/a/a/s;->q:[F

    return-void
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 12

    move-object/from16 v0, p9

    move-object v10, p0

    .line 59
    iget v1, v10, Lcom/android/common/a/a/s;->r:I

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/android/common/a/a/s;->e()V

    const/4 v1, 0x0

    move-object v2, p1

    .line 64
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v0, :cond_1

    move-object/from16 v11, p10

    .line 66
    invoke-virtual {v11, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 67
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

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/s;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    .line 68
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 70
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

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/s;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/android/common/a/a/s;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 82
    iget-object v0, p0, Lcom/android/common/a/a/s;->b:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 83
    iget v0, p0, Lcom/android/common/a/a/s;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    new-array v0, v2, [I

    .line 84
    iget v3, p0, Lcom/android/common/a/a/s;->k:I

    aput v3, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/common/a/a/s;->e()V

    return-void
.end method
