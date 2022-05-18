.class public Lcom/android/common/a/a/z;
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

.field private h:Landroid/content/Context;

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/z;->b:[I

    const/16 v0, 0xde1

    .line 34
    iput v0, p0, Lcom/android/common/a/a/z;->j:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/common/a/a/z;->k:Z

    .line 38
    iput p3, p0, Lcom/android/common/a/a/z;->j:I

    .line 39
    iput-object p1, p0, Lcom/android/common/a/a/z;->h:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/android/common/a/a/z;->i:I

    .line 41
    invoke-direct {p0}, Lcom/android/common/a/a/z;->d()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/a/a/z;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V
    .locals 7

    const/4 v0, 0x0

    .line 71
    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const v1, 0x84c0

    .line 72
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 73
    invoke-virtual {p8}, Lcom/android/common/b/a;->f()I

    move-result v1

    invoke-virtual {p8}, Lcom/android/common/b/a;->a()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 74
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 76
    iget p4, p0, Lcom/android/common/a/a/z;->a:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p4, 0xbe2

    .line 79
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p4, 0x302

    const/16 p5, 0x303

    .line 80
    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 82
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget v1, p0, Lcom/android/common/a/a/z;->c:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 85
    iget p4, p0, Lcom/android/common/a/a/z;->c:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p4, 0x3

    .line 87
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    iget v1, p0, Lcom/android/common/a/a/z;->d:I

    const/4 v2, 0x2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 90
    iget p3, p0, Lcom/android/common/a/a/z;->d:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 92
    iget p3, p0, Lcom/android/common/a/a/z;->e:I

    const/4 p4, 0x1

    invoke-static {p3, p4, v0, p1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 93
    iget p1, p0, Lcom/android/common/a/a/z;->f:I

    invoke-static {p1, p4, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p1, 0x84c4

    .line 95
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 96
    invoke-virtual {p8}, Lcom/android/common/b/a;->f()I

    move-result p1

    invoke-virtual {p8}, Lcom/android/common/b/a;->a()I

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 97
    iget p1, p0, Lcom/android/common/a/a/z;->g:I

    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    .line 99
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private d()[I
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/common/a/a/z;->h:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->M:I

    .line 46
    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/z;->h:Landroid/content/Context;

    iget v2, p0, Lcom/android/common/a/a/z;->i:I

    iget v3, p0, Lcom/android/common/a/a/z;->j:I

    .line 47
    invoke-static {v1, v2, v3}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/android/common/a/a/z;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/common/a/a/z;->k:Z

    .line 119
    iget-object v1, p0, Lcom/android/common/a/a/z;->b:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/z;->a:I

    if-nez v0, :cond_1

    const-string v0, "PrettySimpleEffect"

    const-string v1, "mProgram = 0"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/z;->a:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/z;->c:I

    .line 124
    iget v0, p0, Lcom/android/common/a/a/z;->a:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/z;->d:I

    .line 125
    iget v0, p0, Lcom/android/common/a/a/z;->a:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/z;->e:I

    .line 126
    iget v0, p0, Lcom/android/common/a/a/z;->a:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/z;->f:I

    .line 127
    iget v0, p0, Lcom/android/common/a/a/z;->a:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/z;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/common/a/a/z;->j:I

    return v0
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 11

    move-object/from16 v0, p9

    .line 54
    invoke-virtual {p0}, Lcom/android/common/a/a/z;->a()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v0, "PrettySimpleEffect"

    const-string v1, "texture target != effect target!!!"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/android/common/a/a/z;->e()V

    if-eqz v0, :cond_1

    move-object/from16 v1, p10

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 63
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->b()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->c()I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/common/a/a/z;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V

    .line 64
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/android/common/a/a/z;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/common/a/a/z;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 110
    iget-object v0, p0, Lcom/android/common/a/a/z;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 111
    iget v0, p0, Lcom/android/common/a/a/z;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/common/a/a/z;->e()V

    return-void
.end method
