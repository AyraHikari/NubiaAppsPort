.class public Lcn/nubia/camera/h/a;
.super Lcom/android/common/a/a;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:[I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcn/nubia/camera/h/a;->a:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 31
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/camera/h/a;->d:[I

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x1230

    const/16 v3, 0xda4

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcn/nubia/camera/h/a;->p:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/h/a;->q:Landroid/util/Size;

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/h/a;->b:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V
    .locals 6

    .line 73
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 75
    iget p4, p0, Lcn/nubia/camera/h/a;->c:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 p4, 0x0

    .line 77
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    iget v0, p0, Lcn/nubia/camera/h/a;->e:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 80
    iget p5, p0, Lcn/nubia/camera/h/a;->e:I

    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p5, 0x3

    .line 82
    invoke-virtual {p3, p5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget v0, p0, Lcn/nubia/camera/h/a;->f:I

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 85
    iget p3, p0, Lcn/nubia/camera/h/a;->f:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 87
    invoke-static {p1, p4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 88
    iget p3, p0, Lcn/nubia/camera/h/a;->g:I

    const/4 p5, 0x1

    invoke-static {p3, p5, p4, p1, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 89
    iget p1, p0, Lcn/nubia/camera/h/a;->h:I

    invoke-static {p1, p5, p4, p2, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 90
    iget p1, p0, Lcn/nubia/camera/h/a;->j:I

    iget-object p2, p0, Lcn/nubia/camera/h/a;->q:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 91
    iget p1, p0, Lcn/nubia/camera/h/a;->k:I

    iget-object p2, p0, Lcn/nubia/camera/h/a;->q:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 92
    iget p1, p0, Lcn/nubia/camera/h/a;->l:I

    iget-object p2, p0, Lcn/nubia/camera/h/a;->p:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 93
    iget p1, p0, Lcn/nubia/camera/h/a;->m:I

    iget-object p2, p0, Lcn/nubia/camera/h/a;->p:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 94
    iget p1, p0, Lcn/nubia/camera/h/a;->n:I

    iget-object p2, p0, Lcn/nubia/camera/h/a;->p:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 95
    iget p1, p0, Lcn/nubia/camera/h/a;->o:I

    iget-object p2, p0, Lcn/nubia/camera/h/a;->p:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const p1, 0x84c4

    .line 97
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 98
    invoke-virtual {p8}, Lcom/android/common/b/a;->f()I

    move-result p1

    invoke-virtual {p8}, Lcom/android/common/b/a;->a()I

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    iget p1, p0, Lcn/nubia/camera/h/a;->i:I

    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    .line 101
    invoke-static {p1, p4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private d()V
    .locals 5

    .line 129
    iget-boolean v0, p0, Lcn/nubia/camera/h/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcn/nubia/camera/h/a;->a:Z

    .line 134
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/nubia/camera/h/a;->e()I

    move-result v1

    if-ne v1, v0, :cond_1

    const v1, 0x7f0e0024

    goto :goto_1

    .line 137
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcn/nubia/camera/ba/a;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {}, Lcn/nubia/camera/ba/a;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0e0023

    goto :goto_1

    :cond_3
    const v1, 0x7f0e0021

    goto :goto_1

    :cond_4
    :goto_0
    const v1, 0x7f0e0022

    .line 146
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/h/a;->b:Landroid/content/Context;

    const v3, 0x7f0e004f

    .line 147
    invoke-static {v2, v3}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/h/a;->b:Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Lcn/nubia/camera/h/a;->a()I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v2, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/h/a;->d:[I

    const/4 v2, 0x0

    .line 149
    aget v3, v1, v2

    aget v1, v1, v0

    invoke-static {v3, v1}, Lcom/android/common/b/n;->a(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/h/a;->c:I

    if-nez v1, :cond_5

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShaders = {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/h/a;->d:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/h/a;->d:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} mProgram = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/h/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CorrectionEffect"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_5
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->e:I

    .line 155
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->f:I

    .line 156
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->g:I

    .line 157
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->h:I

    .line 158
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->i:I

    .line 160
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->j:I

    .line 161
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->k:I

    .line 162
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "subImgInRawLeftTopX"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->l:I

    .line 163
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "subImgInRawLeftTopY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->m:I

    .line 164
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "subImgInRawWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->n:I

    .line 165
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    const-string v1, "subImgInRawHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/h/a;->o:I

    return-void
.end method

.method private static e()I
    .locals 3

    .line 169
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 177
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/b/b;->p()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x8d65

    return v0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcn/nubia/camera/h/a;->p:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcn/nubia/camera/h/a;->q:Landroid/util/Size;

    return-void
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 11

    move-object/from16 v0, p9

    .line 57
    invoke-virtual {p0}, Lcn/nubia/camera/h/a;->a()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v0, "CorrectionEffect"

    const-string v1, "texture target != effect target!!!"

    .line 58
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/h/a;->d()V

    if-eqz v0, :cond_1

    move-object/from16 v1, p10

    .line 64
    invoke-virtual {v1, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 65
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->b()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->c()I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcn/nubia/camera/h/a;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V

    .line 66
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcn/nubia/camera/h/a;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcn/nubia/camera/h/a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/h/a;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/h/a;->d:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 116
    iget v0, p0, Lcn/nubia/camera/h/a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 117
    iput-boolean v1, p0, Lcn/nubia/camera/h/a;->a:Z

    return-void
.end method
