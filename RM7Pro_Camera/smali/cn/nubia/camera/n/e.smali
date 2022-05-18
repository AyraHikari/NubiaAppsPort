.class public Lcn/nubia/camera/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:I

.field private c:Ljava/nio/FloatBuffer;

.field private d:[F

.field private e:[F

.field private f:I

.field private g:[I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/nio/IntBuffer;

.field private q:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/n/e;->a:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 27
    iput-object v1, p0, Lcn/nubia/camera/n/e;->d:[F

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lcn/nubia/camera/n/e;->e:[F

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 31
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/camera/n/e;->g:[I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/camera/n/e;->l:Z

    const v1, 0x8d65

    .line 104
    iput v1, p0, Lcn/nubia/camera/n/e;->m:I

    const/4 v1, 0x1

    .line 203
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/n/e;->p:Ljava/nio/IntBuffer;

    .line 204
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/n/e;->q:Ljava/nio/IntBuffer;

    const/16 v1, 0x14

    new-array v1, v1, [F

    .line 85
    fill-array-data v1, :array_1

    const/16 v2, 0x50

    .line 93
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 94
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/n/e;->c:Ljava/nio/FloatBuffer;

    .line 95
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

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

.method private d()V
    .locals 3

    .line 161
    iget v0, p0, Lcn/nubia/camera/n/e;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/n/e;->g:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/n/e;->g:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/n/e;->g:[I

    aput v1, v0, v2

    aput v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/n/e;->f:I

    return-void
.end method

.method private e()V
    .locals 3

    .line 168
    iget v0, p0, Lcn/nubia/camera/n/e;->f:I

    if-nez v0, :cond_0

    .line 169
    iget v0, p0, Lcn/nubia/camera/n/e;->m:I

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvec4 color;\nfloat luminance( in vec3 color ) {\n    return 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b;\n}\nvec4 pass2(vec2 pos, float xDistance, float yDistance)\n{\n    float s00 = luminance(texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb);\n\t float s10 = luminance(texture2D( sTexture, pos + vec2(-xDistance,0.0) ).rgb);\n\t float s20 = luminance(texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb);\n\t float s01 = luminance(texture2D( sTexture, pos + vec2(0.0,yDistance) ).rgb);\n\t float s21 = luminance(texture2D( sTexture, pos + vec2(0.0,-yDistance) ).rgb);\n\t float s02 = luminance(texture2D( sTexture, pos + vec2(xDistance, yDistance) ).rgb);\n\t float s12 = luminance(texture2D( sTexture, pos + vec2(xDistance, 0.0) ).rgb);\n \t float s22 = luminance(texture2D( sTexture, pos + vec2(xDistance, -yDistance) ).rgb);\n    float sx = s00 + 2.0 * s10 + s20 - (s02 + 2.0 * s12 + s22);\n    float sy = s00 + 2.0 * s01 + s02 - (s20 + 2.0 * s21 + s22);\n    float dist = sx * sx + sy * sy;\n\t if( dist > 0.7)\n        return vec4(1.0, 0.0, 0.0, 1.0);\n    else\n    \t return vec4(0.0, 0.0, 0.0, 0.0);\n}\nvoid main() {\n\t float xDistance = 1.0 / 1920.0;\n\t float yDistance = 1.0 / 1080.0;\n\t vec2 pos = vTextureCoord.st;\n\t color = pass2(pos, xDistance, yDistance);\n\t gl_FragColor =color;\n}\n"

    .line 171
    invoke-static {v1, v0}, Lcom/android/common/b/n;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n \tgl_Position =  uMVPMatrix * aPosition;\n \tvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}"

    .line 169
    invoke-static {v1, v0}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/n/e;->g:[I

    const/4 v1, 0x0

    .line 172
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/n/e;->f:I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createProgram "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/n/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FengZhiRenderer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v0, p0, Lcn/nubia/camera/n/e;->f:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/n/e;->h:I

    .line 175
    iget v0, p0, Lcn/nubia/camera/n/e;->f:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/n/e;->i:I

    .line 176
    iget v0, p0, Lcn/nubia/camera/n/e;->f:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/n/e;->j:I

    .line 177
    iget v0, p0, Lcn/nubia/camera/n/e;->f:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/n/e;->k:I

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    const/16 v0, 0xbe2

    .line 207
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/n/e;->o:Z

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/n/e;->p:Ljava/nio/IntBuffer;

    const v1, 0x80cb

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/n/e;->q:Ljava/nio/IntBuffer;

    const v1, 0x80ca

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 213
    iget-boolean v0, p0, Lcn/nubia/camera/n/e;->o:Z

    const/16 v1, 0xbe2

    if-eqz v0, :cond_0

    .line 214
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/n/e;->p:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/camera/n/e;->q:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcn/nubia/camera/n/e;->l:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 8

    .line 107
    iget-boolean p2, p0, Lcn/nubia/camera/n/e;->l:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 108
    iget p2, p0, Lcn/nubia/camera/n/e;->f:I

    if-eqz p2, :cond_0

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/n/e;->d()V

    .line 111
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v0

    .line 114
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/n/e;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/n/e;->b:I

    .line 116
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/n/e;->d:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 117
    iget-object v1, p0, Lcn/nubia/camera/n/e;->e:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 119
    iget v1, p0, Lcn/nubia/camera/n/e;->m:I

    iput v1, p0, Lcn/nubia/camera/n/e;->n:I

    .line 120
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v1, 0xde1

    .line 121
    iput v1, p0, Lcn/nubia/camera/n/e;->m:I

    goto :goto_0

    :cond_2
    const v1, 0x8d65

    .line 123
    iput v1, p0, Lcn/nubia/camera/n/e;->m:I

    .line 126
    :goto_0
    iget v1, p0, Lcn/nubia/camera/n/e;->m:I

    iget v2, p0, Lcn/nubia/camera/n/e;->n:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcn/nubia/camera/n/e;->f:I

    if-eqz v1, :cond_3

    .line 127
    invoke-direct {p0}, Lcn/nubia/camera/n/e;->d()V

    .line 130
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/n/e;->e()V

    .line 132
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 133
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 132
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 135
    iget v1, p0, Lcn/nubia/camera/n/e;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 136
    invoke-direct {p0}, Lcn/nubia/camera/n/e;->f()V

    .line 137
    iget v1, p0, Lcn/nubia/camera/n/e;->m:I

    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/b/l;->a()I

    move-result p1

    :goto_1
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0xbe2

    .line 139
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v1, 0x303

    .line 140
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 142
    iget-object p1, p0, Lcn/nubia/camera/n/e;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    iget v1, p0, Lcn/nubia/camera/n/e;->h:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    iget-object v6, p0, Lcn/nubia/camera/n/e;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 145
    iget p1, p0, Lcn/nubia/camera/n/e;->h:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 147
    iget-object p1, p0, Lcn/nubia/camera/n/e;->c:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    iget v2, p0, Lcn/nubia/camera/n/e;->i:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    iget-object v7, p0, Lcn/nubia/camera/n/e;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 150
    iget p1, p0, Lcn/nubia/camera/n/e;->i:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 152
    iget p1, p0, Lcn/nubia/camera/n/e;->j:I

    iget-object v1, p0, Lcn/nubia/camera/n/e;->e:[F

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 153
    iget p1, p0, Lcn/nubia/camera/n/e;->k:I

    iget-object v1, p0, Lcn/nubia/camera/n/e;->d:[F

    invoke-static {p1, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 154
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 155
    invoke-direct {p0}, Lcn/nubia/camera/n/e;->g()V

    .line 156
    monitor-exit p2

    return v2

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 193
    iget p1, p0, Lcn/nubia/camera/n/e;->f:I

    if-eqz p1, :cond_0

    .line 194
    invoke-direct {p0}, Lcn/nubia/camera/n/e;->d()V

    :cond_0
    return-void
.end method
