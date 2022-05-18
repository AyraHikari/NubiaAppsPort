.class public Lcom/android/common/a/a/c;
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

.field private k:Landroid/content/Context;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/c;->b:[I

    const/16 v0, 0xde1

    .line 41
    iput v0, p0, Lcom/android/common/a/a/c;->j:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/common/a/a/c;->l:Z

    .line 46
    iput p2, p0, Lcom/android/common/a/a/c;->j:I

    .line 47
    iput-object p1, p0, Lcom/android/common/a/a/c;->k:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/android/common/a/a/c;->d()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/a/a/c;->b:[I

    .line 49
    invoke-direct {p0, p1, p3}, Lcom/android/common/a/a/c;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/common/a/a/c;->i:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/c;->b:[I

    const/16 v0, 0xde1

    .line 41
    iput v0, p0, Lcom/android/common/a/a/c;->j:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/common/a/a/c;->l:Z

    .line 53
    iput p2, p0, Lcom/android/common/a/a/c;->j:I

    .line 54
    iput-object p1, p0, Lcom/android/common/a/a/c;->k:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/android/common/a/a/c;->d()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/a/a/c;->b:[I

    .line 56
    invoke-direct {p0, p3}, Lcom/android/common/a/a/c;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/common/a/a/c;->i:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a(Landroid/content/Context;I)I
    .locals 0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/common/a/a/c;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;)I
    .locals 15

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 72
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES31;->glGenTextures(I[II)V

    const v0, 0x84c0

    .line 73
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 74
    aget v0, v1, v2

    const v3, 0x806f

    invoke-static {v3, v0}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    .line 75
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 77
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47037000    # 33648.0f

    .line 79
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 81
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    const v0, 0x8072

    .line 83
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES31;->glTexParameterf(IIF)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int v12, v0, v0

    mul-int v3, v12, v0

    .line 87
    new-array v4, v3, [I

    mul-int/lit8 v3, v3, 0x4

    .line 88
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 89
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v12, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object v6, v4

    move v8, v0

    move v11, v0

    .line 96
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([II)V

    const-string v3, "ColorTableFilterEffect"

    const-string v5, "ColorTableFilterEffect CTF bitmap is height != width * width."

    .line 94
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    invoke-virtual {v14, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 101
    invoke-virtual {v14, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const v5, 0x806f

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    move v8, v0

    move v9, v0

    move v10, v0

    .line 102
    invoke-static/range {v5 .. v14}, Landroid/opengl/GLES31;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    .line 104
    aget v0, v1, v2

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 0

    .line 65
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/common/a/a/c;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method private a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V
    .locals 7

    const/4 v0, 0x0

    .line 134
    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 135
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES31;->glViewport(IIII)V

    .line 136
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 138
    iget p4, p0, Lcom/android/common/a/a/c;->a:I

    invoke-static {p4}, Landroid/opengl/GLES31;->glUseProgram(I)V

    .line 139
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 141
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget v1, p0, Lcom/android/common/a/a/c;->c:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 144
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 145
    iget p4, p0, Lcom/android/common/a/a/c;->c:I

    invoke-static {p4}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    .line 146
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p4, 0x3

    .line 148
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    iget v1, p0, Lcom/android/common/a/a/c;->d:I

    const/4 v2, 0x2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES31;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 151
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 152
    iget p3, p0, Lcom/android/common/a/a/c;->d:I

    invoke-static {p3}, Landroid/opengl/GLES31;->glEnableVertexAttribArray(I)V

    .line 153
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 155
    iget p3, p0, Lcom/android/common/a/a/c;->e:I

    const/4 p4, 0x1

    invoke-static {p3, p4, v0, p1, v0}, Landroid/opengl/GLES31;->glUniformMatrix4fv(IIZ[FI)V

    .line 156
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 157
    iget p1, p0, Lcom/android/common/a/a/c;->f:I

    invoke-static {p1, p4, v0, p2, v0}, Landroid/opengl/GLES31;->glUniformMatrix4fv(IIZ[FI)V

    .line 158
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 160
    iget p1, p0, Lcom/android/common/a/a/c;->g:I

    invoke-static {p1, v0}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 161
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const p1, 0x84c0

    .line 162
    invoke-static {p1}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    .line 163
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 164
    invoke-virtual {p8}, Lcom/android/common/b/a;->f()I

    move-result p1

    invoke-virtual {p8}, Lcom/android/common/b/a;->a()I

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES31;->glBindTexture(II)V

    .line 165
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 167
    iget p1, p0, Lcom/android/common/a/a/c;->h:I

    invoke-static {p1, p4}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 168
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const p1, 0x84c1

    .line 169
    invoke-static {p1}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    .line 170
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 171
    iget p1, p0, Lcom/android/common/a/a/c;->i:I

    const p2, 0x806f

    invoke-static {p2, p1}, Landroid/opengl/GLES31;->glBindTexture(II)V

    .line 172
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 174
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES31;->glDrawArrays(III)V

    .line 175
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method private d()[I
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/common/a/a/c;->k:Landroid/content/Context;

    sget v1, Lcom/android/common/d/d$b;->N:I

    .line 109
    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/a/c;->k:Landroid/content/Context;

    sget v2, Lcom/android/common/d/d$b;->o:I

    iget v3, p0, Lcom/android/common/a/a/c;->j:I

    .line 110
    invoke-static {v1, v2, v3}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 192
    iget-boolean v0, p0, Lcom/android/common/a/a/c;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/android/common/a/a/c;->l:Z

    .line 197
    iget-object v1, p0, Lcom/android/common/a/a/c;->b:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/c;->a:I

    if-nez v0, :cond_1

    const-string v0, "ColorTableFilterEffect"

    const-string v1, "mProgram = 0"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    iget v0, p0, Lcom/android/common/a/a/c;->a:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/c;->c:I

    .line 204
    iget v0, p0, Lcom/android/common/a/a/c;->a:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/c;->d:I

    .line 205
    iget v0, p0, Lcom/android/common/a/a/c;->a:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/c;->e:I

    .line 206
    iget v0, p0, Lcom/android/common/a/a/c;->a:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/c;->f:I

    .line 207
    iget v0, p0, Lcom/android/common/a/a/c;->a:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/c;->g:I

    .line 208
    iget v0, p0, Lcom/android/common/a/a/c;->a:I

    const-string v1, "texColorFilter"

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/a/a/c;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/common/a/a/c;->j:I

    return v0
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 11

    move-object/from16 v0, p9

    .line 117
    invoke-virtual {p0}, Lcom/android/common/a/a/c;->a()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v0, "ColorTableFilterEffect"

    const-string v1, "texture target != effect target!!!"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/common/a/a/c;->e()V

    if-eqz v0, :cond_1

    move-object/from16 v1, p10

    .line 125
    invoke-virtual {v1, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 126
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->b()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->c()I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/common/a/a/c;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V

    .line 127
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/android/common/a/a/c;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 185
    iget v2, p0, Lcom/android/common/a/a/c;->i:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES31;->glDeleteTextures(I[II)V

    .line 186
    iget-object v1, p0, Lcom/android/common/a/a/c;->b:[I

    aget v1, v1, v3

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 187
    iget-object v1, p0, Lcom/android/common/a/a/c;->b:[I

    aget v0, v1, v0

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 188
    iget v0, p0, Lcom/android/common/a/a/c;->a:I

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/android/common/a/a/c;->e()V

    return-void
.end method
