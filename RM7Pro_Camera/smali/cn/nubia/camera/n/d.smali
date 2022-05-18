.class public Lcn/nubia/camera/n/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z

.field private c:Ljava/nio/FloatBuffer;

.field private d:[F

.field private e:[F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:I

.field private o:I

.field private p:Lcom/android/common/b/l;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/n/d;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcn/nubia/camera/n/d;->b:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 27
    iput-object v2, p0, Lcn/nubia/camera/n/d;->d:[F

    new-array v1, v1, [F

    .line 28
    iput-object v1, p0, Lcn/nubia/camera/n/d;->e:[F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, p0, Lcn/nubia/camera/n/d;->m:F

    const v1, 0x8d65

    .line 104
    iput v1, p0, Lcn/nubia/camera/n/d;->n:I

    const/16 v1, 0x14

    new-array v1, v1, [F

    .line 85
    fill-array-data v1, :array_0

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

    iput-object v2, p0, Lcn/nubia/camera/n/d;->c:Ljava/nio/FloatBuffer;

    .line 95
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
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

.method private a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    .line 221
    invoke-virtual {v0, p2}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    .line 223
    invoke-virtual {p2}, Lcom/android/common/b/l;->c()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 224
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/common/b/l;->c(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcn/nubia/camera/n/d;->b:Z

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/n/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iput p1, p0, Lcn/nubia/camera/n/d;->m:F

    .line 210
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 11

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/n/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/n/d;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/n/d;->d()V

    .line 110
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    .line 111
    iput-boolean v2, p0, Lcn/nubia/camera/n/d;->b:Z

    .line 114
    :cond_0
    iget v1, p0, Lcn/nubia/camera/n/d;->m:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 115
    monitor-exit v0

    return v3

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcn/nubia/camera/n/d;->a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V

    .line 118
    iget-object v1, p0, Lcn/nubia/camera/n/d;->d:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 119
    iget-object v1, p0, Lcn/nubia/camera/n/d;->e:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 121
    iget v1, p0, Lcn/nubia/camera/n/d;->n:I

    iput v1, p0, Lcn/nubia/camera/n/d;->o:I

    .line 122
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v1, 0xde1

    .line 123
    iput v1, p0, Lcn/nubia/camera/n/d;->n:I

    goto :goto_0

    :cond_2
    const v1, 0x8d65

    .line 125
    iput v1, p0, Lcn/nubia/camera/n/d;->n:I

    .line 128
    :goto_0
    iget v1, p0, Lcn/nubia/camera/n/d;->n:I

    iget v4, p0, Lcn/nubia/camera/n/d;->o:I

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcn/nubia/camera/n/d;->f:I

    if-eqz v1, :cond_3

    .line 129
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 130
    iput v2, p0, Lcn/nubia/camera/n/d;->f:I

    .line 133
    :cond_3
    iget v1, p0, Lcn/nubia/camera/n/d;->f:I

    if-nez v1, :cond_5

    const-string v1, "ExposuretimeRenderer"

    const-string v4, "createProgram"

    .line 134
    invoke-static {v1, v4}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n \tgl_Position =  uMVPMatrix * aPosition;\n \tvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float exposure_ratio;\n\nvoid main() {\n\n\n\tvec4 color = texture2D(sTexture, vTextureCoord);\n\n\tgl_FragColor = vec4(color.r * exposure_ratio, color.g * exposure_ratio, color.b * exposure_ratio, color.a);\n}"

    .line 135
    iget v5, p0, Lcn/nubia/camera/n/d;->n:I

    .line 137
    invoke-static {v4, v5}, Lcom/android/common/b/n;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v1, v4}, Lcom/android/common/b/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/n/d;->f:I

    if-nez v1, :cond_4

    .line 139
    monitor-exit v0

    return v2

    :cond_4
    const-string v4, "aPosition"

    .line 141
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/n/d;->g:I

    .line 142
    iget v1, p0, Lcn/nubia/camera/n/d;->f:I

    const-string v4, "aTextureCoord"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/n/d;->h:I

    .line 143
    iget v1, p0, Lcn/nubia/camera/n/d;->f:I

    const-string v4, "uMVPMatrix"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/n/d;->j:I

    .line 144
    iget v1, p0, Lcn/nubia/camera/n/d;->f:I

    const-string v4, "uSTMatrix"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/n/d;->k:I

    .line 145
    iget v1, p0, Lcn/nubia/camera/n/d;->f:I

    const-string v4, "sTexture"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/n/d;->i:I

    .line 147
    iget v1, p0, Lcn/nubia/camera/n/d;->f:I

    const-string v4, "exposure_ratio"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/n/d;->l:I

    .line 150
    :cond_5
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 151
    iget-object v1, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    invoke-virtual {p2, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 152
    iget-object v1, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->b()I

    move-result v1

    iget-object v4, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    invoke-virtual {v4}, Lcom/android/common/b/l;->c()I

    move-result v4

    invoke-static {v2, v2, v1, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 154
    iget v1, p0, Lcn/nubia/camera/n/d;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 156
    iget-object v1, p0, Lcn/nubia/camera/n/d;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    iget v4, p0, Lcn/nubia/camera/n/d;->g:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x14

    iget-object v9, p0, Lcn/nubia/camera/n/d;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 159
    iget v1, p0, Lcn/nubia/camera/n/d;->g:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    .line 161
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 162
    iget v1, p0, Lcn/nubia/camera/n/d;->n:I

    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v4

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/b/l;->a()I

    move-result v4

    :goto_1
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    iget v1, p0, Lcn/nubia/camera/n/d;->i:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 165
    iget-object v1, p0, Lcn/nubia/camera/n/d;->c:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    iget v5, p0, Lcn/nubia/camera/n/d;->h:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x14

    iget-object v10, p0, Lcn/nubia/camera/n/d;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 168
    iget v1, p0, Lcn/nubia/camera/n/d;->h:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 170
    iget v1, p0, Lcn/nubia/camera/n/d;->j:I

    iget-object v4, p0, Lcn/nubia/camera/n/d;->e:[F

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 171
    iget v1, p0, Lcn/nubia/camera/n/d;->k:I

    iget-object v4, p0, Lcn/nubia/camera/n/d;->d:[F

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 172
    iget v1, p0, Lcn/nubia/camera/n/d;->l:I

    iget v4, p0, Lcn/nubia/camera/n/d;->m:F

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v1, 0x5

    const/4 v4, 0x4

    .line 174
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 176
    iget v1, p0, Lcn/nubia/camera/n/d;->g:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 177
    iget v1, p0, Lcn/nubia/camera/n/d;->h:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 179
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 180
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 181
    iget-object p2, p0, Lcn/nubia/camera/n/d;->p:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    .line 182
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit v0
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

    const/4 v0, 0x4

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcn/nubia/camera/n/d;->d()V

    .line 199
    iget-object p2, p0, Lcn/nubia/camera/n/d;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 200
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/n/d;->b:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const/4 p1, 0x0

    .line 202
    iput-boolean p1, p0, Lcn/nubia/camera/n/d;->b:Z

    .line 204
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
