.class public Lcom/android/common/a/a/r;
.super Lcom/android/common/a/a;
.source "SourceFile"


# instance fields
.field private final A:[F

.field private final a:I

.field private b:I

.field private c:[I

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

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:I

.field private final y:[F

.field private final z:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/r;->c:[I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/common/a/a/r;->w:Z

    .line 53
    iput v0, p0, Lcom/android/common/a/a/r;->x:I

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 54
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/common/a/a/r;->y:[F

    new-array v2, v1, [F

    .line 60
    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/android/common/a/a/r;->z:[F

    new-array v1, v1, [F

    .line 66
    iput-object v1, p0, Lcom/android/common/a/a/r;->A:[F

    .line 69
    iput p2, p0, Lcom/android/common/a/a/r;->a:I

    .line 70
    iput-object p1, p0, Lcom/android/common/a/a/r;->m:Landroid/content/Context;

    .line 71
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    invoke-direct {p0}, Lcom/android/common/a/a/r;->d()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/a/a/r;->c:[I

    .line 73
    sget p2, Lcom/android/common/d/d$a;->C:I

    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/common/a/a/r;->n:I

    .line 74
    sget p2, Lcom/android/common/d/d$a;->B:I

    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/common/a/a/r;->o:I

    .line 75
    sget p2, Lcom/android/common/d/d$a;->A:I

    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/common/a/a/r;->p:I

    .line 76
    sget p2, Lcom/android/common/d/d$a;->z:I

    invoke-static {p1, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/common/a/a/r;->q:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a([F[FLjava/nio/FloatBuffer;IIIIII)V
    .locals 6

    .line 151
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 153
    iget p4, p0, Lcom/android/common/a/a/r;->b:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p4, 0xbe2

    .line 156
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p4, 0x302

    const/16 p5, 0x303

    .line 157
    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p4, 0x0

    .line 159
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    iget v0, p0, Lcom/android/common/a/a/r;->d:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 162
    iget p5, p0, Lcom/android/common/a/a/r;->d:I

    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p5, 0x3

    .line 164
    invoke-virtual {p3, p5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget v0, p0, Lcom/android/common/a/a/r;->e:I

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 167
    iget p3, p0, Lcom/android/common/a/a/r;->e:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 171
    iget p3, p0, Lcom/android/common/a/a/r;->f:I

    const/4 v0, 0x1

    invoke-static {p3, v0, p4, p1, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 172
    iget p1, p0, Lcom/android/common/a/a/r;->i:I

    invoke-static {p1, v0, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 173
    iget p1, p0, Lcom/android/common/a/a/r;->h:I

    iget-object p2, p0, Lcom/android/common/a/a/r;->A:[F

    invoke-static {p1, v0, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 174
    iget p1, p0, Lcom/android/common/a/a/r;->j:I

    int-to-float p2, p6

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 175
    iget p1, p0, Lcom/android/common/a/a/r;->k:I

    int-to-float p2, p7

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 p6, 0x64

    .line 177
    rem-long/2addr p1, p6

    long-to-float p1, p1

    .line 178
    iget p2, p0, Lcom/android/common/a/a/r;->l:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 180
    iget p1, p0, Lcom/android/common/a/a/r;->x:I

    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_0

    .line 181
    iget p1, p0, Lcom/android/common/a/a/r;->g:I

    iget-object p2, p0, Lcom/android/common/a/a/r;->y:[F

    invoke-static {p1, v0, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0

    .line 183
    :cond_0
    iget p1, p0, Lcom/android/common/a/a/r;->g:I

    iget-object p2, p0, Lcom/android/common/a/a/r;->z:[F

    invoke-static {p1, v0, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :goto_0
    const p1, 0x84c0

    .line 186
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 187
    invoke-static {p9, p8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 188
    iget p1, p0, Lcom/android/common/a/a/r;->v:I

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c3

    .line 190
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 191
    iget p1, p0, Lcom/android/common/a/a/r;->n:I

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 192
    iget p1, p0, Lcom/android/common/a/a/r;->r:I

    invoke-static {p1, p5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c4

    .line 194
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 195
    iget p1, p0, Lcom/android/common/a/a/r;->o:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 196
    iget p1, p0, Lcom/android/common/a/a/r;->s:I

    const/4 p3, 0x4

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c5

    .line 198
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 199
    iget p1, p0, Lcom/android/common/a/a/r;->p:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    iget p1, p0, Lcom/android/common/a/a/r;->t:I

    const/4 p5, 0x5

    invoke-static {p1, p5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c6

    .line 202
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 203
    iget p1, p0, Lcom/android/common/a/a/r;->q:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 204
    iget p1, p0, Lcom/android/common/a/a/r;->u:I

    const/4 p2, 0x6

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 206
    invoke-static {p5, p4, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private d()[I
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/common/a/a/r;->m:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->D:I

    .line 81
    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/r;->m:Landroid/content/Context;

    sget v2, Lcom/android/common/d/d$b;->C:I

    iget v3, p0, Lcom/android/common/a/a/r;->a:I

    .line 82
    invoke-static {v1, v2, v3}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 86
    iget-boolean v0, p0, Lcom/android/common/a/a/r;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/common/a/a/r;->w:Z

    .line 90
    iget-object v1, p0, Lcom/android/common/a/a/r;->c:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->b:I

    if-nez v0, :cond_1

    const-string v0, "OldFilmEffect"

    const-string v1, "mProgram = 0"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->d:I

    .line 95
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->e:I

    .line 96
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->f:I

    .line 97
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->i:I

    .line 98
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "uPictureSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->h:I

    .line 99
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "uR90Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->g:I

    .line 100
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->j:I

    .line 101
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->k:I

    .line 103
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "offset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->l:I

    .line 105
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "uVignetteTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->r:I

    .line 106
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "uScratchesTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->s:I

    .line 107
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "uDustTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->t:I

    .line 108
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "uNoiseTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->u:I

    .line 109
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/r;->v:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/android/common/a/a/r;->a:I

    return v0
.end method

.method public a(IZ)V
    .locals 1

    .line 216
    iget p2, p0, Lcom/android/common/a/a/r;->x:I

    if-eq p2, p1, :cond_0

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOrientation: mOrientation = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/common/a/a/r;->x:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OldFilmEffect"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iput p1, p0, Lcom/android/common/a/a/r;->x:I

    return-void
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v0, p9

    .line 115
    iget v1, v10, Lcom/android/common/a/a/r;->a:I

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawEffect: mTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/android/common/a/a/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OldFilmEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/common/a/a/r;->e()V

    const/4 v1, 0x0

    move-object v2, p1

    .line 120
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const v1, 0x84c0

    .line 121
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 122
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->a()I

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    if-eqz v0, :cond_1

    move-object/from16 v11, p10

    .line 124
    invoke-virtual {v11, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 125
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

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/r;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    .line 126
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 128
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

    invoke-direct/range {v0 .. v9}, Lcom/android/common/a/a/r;->a([F[FLjava/nio/FloatBuffer;IIIIII)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/common/a/a/r;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 140
    iget-object v0, p0, Lcom/android/common/a/a/r;->c:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 141
    iget v0, p0, Lcom/android/common/a/a/r;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    new-array v0, v2, [I

    .line 142
    iget v3, p0, Lcom/android/common/a/a/r;->n:I

    aput v3, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v0, v2, [I

    .line 143
    iget v3, p0, Lcom/android/common/a/a/r;->o:I

    aput v3, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v0, v2, [I

    .line 144
    iget v3, p0, Lcom/android/common/a/a/r;->p:I

    aput v3, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v0, v2, [I

    .line 145
    iget v3, p0, Lcom/android/common/a/a/r;->q:I

    aput v3, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/common/a/a/r;->e()V

    return-void
.end method
