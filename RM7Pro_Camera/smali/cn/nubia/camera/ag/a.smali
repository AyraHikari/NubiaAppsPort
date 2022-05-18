.class public Lcn/nubia/camera/ag/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private volatile I:Z

.field a:Landroid/content/Context;

.field b:Ljava/nio/FloatBuffer;

.field c:[F

.field d:[F

.field e:Lcom/android/common/b/l;

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field m:I

.field n:Z

.field private o:Z

.field private p:Z

.field private q:[I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 36
    iput-object v1, p0, Lcn/nubia/camera/ag/a;->c:[F

    new-array v0, v0, [F

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/ag/a;->d:[F

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcn/nubia/camera/ag/a;->o:Z

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/ag/a;->p:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 41
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/camera/ag/a;->q:[I

    const/high16 v1, 0x44070000    # 540.0f

    .line 62
    iput v1, p0, Lcn/nubia/camera/ag/a;->f:F

    const/high16 v2, 0x44340000    # 720.0f

    iput v2, p0, Lcn/nubia/camera/ag/a;->g:F

    .line 64
    iput v1, p0, Lcn/nubia/camera/ag/a;->h:F

    iput v2, p0, Lcn/nubia/camera/ag/a;->i:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 66
    iput v1, p0, Lcn/nubia/camera/ag/a;->j:F

    const/high16 v1, 0x43340000    # 180.0f

    .line 68
    iput v1, p0, Lcn/nubia/camera/ag/a;->k:F

    const v1, 0x43688000    # 232.5f

    .line 70
    iput v1, p0, Lcn/nubia/camera/ag/a;->l:F

    const/4 v1, 0x1

    .line 72
    iput v1, p0, Lcn/nubia/camera/ag/a;->m:I

    .line 74
    iput-boolean v1, p0, Lcn/nubia/camera/ag/a;->n:Z

    .line 76
    iput v1, p0, Lcn/nubia/camera/ag/a;->H:I

    .line 77
    iput-boolean v0, p0, Lcn/nubia/camera/ag/a;->I:Z

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/ag/a;->a:Landroid/content/Context;

    const/16 p1, 0x14

    new-array p1, p1, [F

    .line 81
    fill-array-data p1, :array_1

    const/16 v1, 0x50

    .line 88
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ag/a;->b:Ljava/nio/FloatBuffer;

    .line 90
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    iget-object p1, p0, Lcn/nubia/camera/ag/a;->c:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/android/common/b/g;)V
    .locals 4

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/ag/a;->e:Lcom/android/common/b/l;

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ag/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080243

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/android/common/b/l;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v1, p0, Lcn/nubia/camera/ag/a;->e:Lcom/android/common/b/l;

    .line 248
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/camera/ag/a;->l:F

    .line 249
    iget-object v1, p0, Lcn/nubia/camera/ag/a;->e:Lcom/android/common/b/l;

    invoke-virtual {v1, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 250
    iget-object p1, p0, Lcn/nubia/camera/ag/a;->e:Lcom/android/common/b/l;

    invoke-virtual {p1}, Lcom/android/common/b/l;->a()I

    move-result p1

    const/16 v1, 0xde1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 v2, 0x2601

    .line 251
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 252
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p1, 0x0

    .line 253
    invoke-static {v1, p1, v0, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 186
    iget-boolean v0, p0, Lcn/nubia/camera/ag/a;->o:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/ag/a;->q:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 188
    iget-object v0, p0, Lcn/nubia/camera/ag/a;->q:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 189
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 190
    iput-boolean v1, p0, Lcn/nubia/camera/ag/a;->o:Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ag/a;->e:Lcom/android/common/b/l;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcn/nubia/camera/ag/a;->e:Lcom/android/common/b/l;

    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    .line 259
    iget-boolean v0, p0, Lcn/nubia/camera/ag/a;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcn/nubia/camera/ag/a;->o:Z

    .line 263
    iget-object v1, p0, Lcn/nubia/camera/ag/a;->a:Landroid/content/Context;

    const v2, 0x7f0e002b

    .line 264
    invoke-static {v1, v2}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/ag/a;->a:Landroid/content/Context;

    const v3, 0x7f0e002a

    .line 265
    invoke-static {v2, v3}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ag/a;->q:[I

    const/4 v2, 0x0

    .line 266
    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->r:I

    if-nez v0, :cond_1

    const-string v0, "FangDaRenderer"

    const-string v1, "mProgram = 0"

    .line 268
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->s:I

    .line 271
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->t:I

    .line 272
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->u:I

    .line 273
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->v:I

    .line 274
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->C:I

    .line 276
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uX"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->w:I

    .line 277
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->x:I

    .line 278
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->y:I

    .line 279
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->z:I

    .line 280
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->A:I

    .line 281
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->B:I

    .line 282
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uFangZhi"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->D:I

    .line 283
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uXOfShow"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->E:I

    .line 284
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "uYOfShow"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->F:I

    .line 285
    iget v0, p0, Lcn/nubia/camera/ag/a;->r:I

    const-string v1, "v4Color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/a;->G:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcn/nubia/camera/ag/a;->p:Z

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 231
    iput p1, p0, Lcn/nubia/camera/ag/a;->k:F

    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 212
    iput p1, p0, Lcn/nubia/camera/ag/a;->f:F

    .line 213
    iput p2, p0, Lcn/nubia/camera/ag/a;->g:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcn/nubia/camera/ag/a;->H:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 235
    iput p1, p0, Lcn/nubia/camera/ag/a;->m:I

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 11

    .line 103
    iget-boolean v0, p0, Lcn/nubia/camera/ag/a;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcn/nubia/camera/ag/a;->d()V

    .line 105
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/ag/a;->I:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 109
    iput-boolean v1, p0, Lcn/nubia/camera/ag/a;->I:Z

    return v2

    .line 112
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/ag/a;->n:Z

    if-nez v0, :cond_2

    return v1

    .line 115
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/ag/a;->e()V

    .line 117
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 118
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 120
    iget v3, p0, Lcn/nubia/camera/ag/a;->r:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v3, 0xbe2

    .line 123
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v3, 0x302

    const/16 v4, 0x303

    .line 124
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 126
    iget-object v3, p0, Lcn/nubia/camera/ag/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    iget v4, p0, Lcn/nubia/camera/ag/a;->s:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x14

    iget-object v9, p0, Lcn/nubia/camera/ag/a;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 129
    iget v3, p0, Lcn/nubia/camera/ag/a;->s:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 131
    iget-object v3, p0, Lcn/nubia/camera/ag/a;->b:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget v5, p0, Lcn/nubia/camera/ag/a;->t:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x14

    iget-object v10, p0, Lcn/nubia/camera/ag/a;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 134
    iget v3, p0, Lcn/nubia/camera/ag/a;->t:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v3, 0x84c0

    .line 136
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v3, 0x8d65

    .line 137
    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 138
    iget v3, p0, Lcn/nubia/camera/ag/a;->C:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 140
    iget v3, p0, Lcn/nubia/camera/ag/a;->u:I

    iget-object v4, p0, Lcn/nubia/camera/ag/a;->c:[F

    invoke-static {v3, v2, v1, v4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 141
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/camera/ag/a;->d:[F

    invoke-virtual {p1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 142
    iget p1, p0, Lcn/nubia/camera/ag/a;->v:I

    iget-object v3, p0, Lcn/nubia/camera/ag/a;->d:[F

    invoke-static {p1, v2, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 143
    iget p1, p0, Lcn/nubia/camera/ag/a;->w:I

    iget v3, p0, Lcn/nubia/camera/ag/a;->f:F

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 144
    iget p1, p0, Lcn/nubia/camera/ag/a;->x:I

    iget v3, p0, Lcn/nubia/camera/ag/a;->g:F

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 145
    iget p1, p0, Lcn/nubia/camera/ag/a;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 146
    iget p1, p0, Lcn/nubia/camera/ag/a;->z:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 147
    iget p1, p0, Lcn/nubia/camera/ag/a;->A:I

    iget v3, p0, Lcn/nubia/camera/ag/a;->k:F

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 148
    iget p1, p0, Lcn/nubia/camera/ag/a;->B:I

    iget v3, p0, Lcn/nubia/camera/ag/a;->j:F

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 149
    iget p1, p0, Lcn/nubia/camera/ag/a;->D:I

    iget v3, p0, Lcn/nubia/camera/ag/a;->m:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 150
    iget p1, p0, Lcn/nubia/camera/ag/a;->E:I

    iget v3, p0, Lcn/nubia/camera/ag/a;->h:F

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 151
    iget p1, p0, Lcn/nubia/camera/ag/a;->F:I

    iget v3, p0, Lcn/nubia/camera/ag/a;->i:F

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 152
    iget p1, p0, Lcn/nubia/camera/ag/a;->H:I

    if-ne p1, v2, :cond_3

    .line 153
    iget p1, p0, Lcn/nubia/camera/ag/a;->G:I

    sget-object v3, Lcn/nubia/camera/ag/b;->a:[F

    invoke-static {p1, v2, v3, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    goto :goto_0

    .line 155
    :cond_3
    iget p1, p0, Lcn/nubia/camera/ag/a;->G:I

    sget-object v3, Lcn/nubia/camera/ag/b;->b:[F

    invoke-static {p1, v2, v3, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    :goto_0
    const/4 p1, 0x5

    const/4 v3, 0x4

    .line 158
    invoke-static {p1, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 160
    invoke-direct {p0, p2}, Lcn/nubia/camera/ag/a;->a(Lcom/android/common/b/g;)V

    .line 161
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 162
    invoke-virtual {p2, v1, p1, v1}, Lcom/android/common/b/g;->b(FFF)V

    .line 164
    iget-object v4, p0, Lcn/nubia/camera/ag/a;->e:Lcom/android/common/b/l;

    iget-object v5, p0, Lcn/nubia/camera/ag/a;->c:[F

    iget p1, p0, Lcn/nubia/camera/ag/a;->h:F

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcn/nubia/camera/ag/a;->l:F

    sub-float/2addr p1, v1

    float-to-int v6, p1

    iget p1, p0, Lcn/nubia/camera/ag/a;->i:F

    sub-float/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int v7, p1

    iget p1, p0, Lcn/nubia/camera/ag/a;->l:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    float-to-int v8, v1

    mul-float/2addr p1, v0

    float-to-int v9, p1

    move-object v3, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 165
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    return v2
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcn/nubia/camera/ag/a;->I:Z

    return-void
.end method

.method public b(FF)V
    .locals 0

    .line 222
    iput p1, p0, Lcn/nubia/camera/ag/a;->h:F

    .line 223
    iput p2, p0, Lcn/nubia/camera/ag/a;->i:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcn/nubia/camera/ag/a;->n:Z

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcn/nubia/camera/ag/a;->d()V

    return-void
.end method
