.class public Lcn/nubia/camera/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/v/b$d;,
        Lcn/nubia/camera/v/b$b;,
        Lcn/nubia/camera/v/b$a;,
        Lcn/nubia/camera/v/b$c;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/algorithm/camera/a;

.field private b:I

.field private c:Lcn/nubia/camera/v/c;

.field private d:Lcn/nubia/camera/v/c;

.field private e:[I

.field private f:[F

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Lcn/nubia/camera/v/b$a;

.field private k:Lcn/nubia/camera/v/b$b;

.field private l:Lcn/nubia/camera/v/b$d;

.field private m:I

.field private n:I

.field private o:F

.field private p:Lcn/nubia/camera/v/b$c;

.field private q:Z

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcn/nubia/camera/v/b;->b:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/v/b;->f:[F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->h:Z

    .line 45
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->i:Z

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcn/nubia/camera/v/b;->o:F

    .line 52
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->q:Z

    .line 57
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->s:Z

    .line 111
    iput p1, p0, Lcn/nubia/camera/v/b;->o:F

    .line 112
    sget-object p1, Lcn/nubia/camera/v/b$d;->a:Lcn/nubia/camera/v/b$d;

    iput-object p1, p0, Lcn/nubia/camera/v/b;->l:Lcn/nubia/camera/v/b$d;

    .line 113
    iput-object p2, p0, Lcn/nubia/camera/v/b;->j:Lcn/nubia/camera/v/b$a;

    .line 114
    iput-object p3, p0, Lcn/nubia/camera/v/b;->k:Lcn/nubia/camera/v/b$b;

    .line 115
    iget-object p1, p0, Lcn/nubia/camera/v/b;->f:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(IILcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcn/nubia/camera/v/b;->b:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/v/b;->f:[F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->h:Z

    .line 45
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->i:Z

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcn/nubia/camera/v/b;->o:F

    .line 52
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->q:Z

    .line 57
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->s:Z

    .line 102
    iput p1, p0, Lcn/nubia/camera/v/b;->m:I

    .line 103
    iput p2, p0, Lcn/nubia/camera/v/b;->n:I

    .line 104
    sget-object p1, Lcn/nubia/camera/v/b$d;->b:Lcn/nubia/camera/v/b$d;

    iput-object p1, p0, Lcn/nubia/camera/v/b;->l:Lcn/nubia/camera/v/b$d;

    .line 105
    iput-object p3, p0, Lcn/nubia/camera/v/b;->j:Lcn/nubia/camera/v/b$a;

    .line 106
    iput-object p4, p0, Lcn/nubia/camera/v/b;->k:Lcn/nubia/camera/v/b$b;

    .line 107
    iget-object p1, p0, Lcn/nubia/camera/v/b;->f:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 6

    const-string v0, "HardwareBufferRenderer"

    const-string v1, "init"

    .line 274
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/v/b;->l:Lcn/nubia/camera/v/b$d;

    sget-object v1, Lcn/nubia/camera/v/b$d;->a:Lcn/nubia/camera/v/b$d;

    if-ne v0, v1, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/v/b;->o:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/camera/v/b;->m:I

    .line 278
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/v/b;->o:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/v/b;->n:I

    .line 279
    iget v1, p0, Lcn/nubia/camera/v/b;->r:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 280
    :cond_0
    iget v1, p0, Lcn/nubia/camera/v/b;->m:I

    .line 281
    iput v0, p0, Lcn/nubia/camera/v/b;->m:I

    .line 282
    iput v1, p0, Lcn/nubia/camera/v/b;->n:I

    :cond_1
    const v0, 0x8d65

    .line 286
    invoke-static {v0}, Lcn/nubia/camera/v/a;->a(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/v/b;->b:I

    .line 287
    iget-object v1, p0, Lcn/nubia/camera/v/b;->j:Lcn/nubia/camera/v/b$a;

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    const-string v3, "#version 310 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\n\nin vec2 vTextureCoord;\nuniform samplerExternalOES uTextureSampler;\n\nout vec4 gl_FragColor;\n\nvoid main() {\n    gl_FragColor = texture(uTextureSampler, vTextureCoord);\n}"

    if-ne v1, v2, :cond_2

    .line 288
    new-instance v1, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;

    iget v2, p0, Lcn/nubia/camera/v/b;->m:I

    iget v4, p0, Lcn/nubia/camera/v/b;->n:I

    iget v5, p0, Lcn/nubia/camera/v/b;->b:I

    invoke-direct {v1, v2, v4, v5}, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;-><init>(III)V

    iput-object v1, p0, Lcn/nubia/camera/v/b;->a:Lcn/nubia/algorithm/camera/a;

    move-object v1, v3

    goto :goto_0

    .line 292
    :cond_2
    new-instance v1, Lcn/nubia/algorithm/camera/YuvHardwareTexture;

    iget v2, p0, Lcn/nubia/camera/v/b;->m:I

    iget v4, p0, Lcn/nubia/camera/v/b;->n:I

    iget v5, p0, Lcn/nubia/camera/v/b;->b:I

    invoke-direct {v1, v2, v4, v5}, Lcn/nubia/algorithm/camera/YuvHardwareTexture;-><init>(III)V

    iput-object v1, p0, Lcn/nubia/camera/v/b;->a:Lcn/nubia/algorithm/camera/a;

    const-string v1, "#version 310 es\n#extension GL_OES_EGL_image_external_essl3 : require\n#extension GL_EXT_YUV_target : require\nprecision mediump float;\n\nin vec2 vTextureCoord;\n//uniform __samplerExternal2DY2YEXT uTextureSampler;\nuniform samplerExternalOES uTextureSampler;\n\nlayout(yuv) out vec4 gl_FragColor;\n\nvoid main() {\n    gl_FragColor = texture(uTextureSampler, vTextureCoord);\n}"

    .line 296
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/v/b;->k:Lcn/nubia/camera/v/b$b;

    sget-object v4, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    const-string v5, "#version 310 es\n\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\n\nout vec2 vTextureCoord;\n\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).st;\n}"

    if-ne v2, v4, :cond_3

    .line 297
    new-instance v2, Lcn/nubia/camera/v/c;

    .line 298
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/b/e;->a()I

    move-result p1

    invoke-direct {v2, v5, v1, p1, v0}, Lcn/nubia/camera/v/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcn/nubia/camera/v/b;->c:Lcn/nubia/camera/v/c;

    goto :goto_1

    .line 301
    :cond_3
    new-instance p1, Lcn/nubia/camera/v/c;

    iget v1, p0, Lcn/nubia/camera/v/b;->b:I

    invoke-direct {p1, v5, v3, v1, v0}, Lcn/nubia/camera/v/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p0, Lcn/nubia/camera/v/b;->d:Lcn/nubia/camera/v/c;

    :goto_1
    return-void
.end method

.method private i()V
    .locals 5

    const-string v0, "HardwareBufferRenderer"

    const-string v1, "releaseImpl"

    .line 307
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcn/nubia/camera/v/b;->c:Lcn/nubia/camera/v/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcn/nubia/camera/v/c;->b()V

    .line 310
    iput-object v1, p0, Lcn/nubia/camera/v/b;->c:Lcn/nubia/camera/v/c;

    .line 313
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/v/b;->a:Lcn/nubia/algorithm/camera/a;

    invoke-interface {v0}, Lcn/nubia/algorithm/camera/a;->a()V

    .line 314
    iput-object v1, p0, Lcn/nubia/camera/v/b;->a:Lcn/nubia/algorithm/camera/a;

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 315
    iget v3, p0, Lcn/nubia/camera/v/b;->b:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v2, -0x1

    .line 316
    iput v2, p0, Lcn/nubia/camera/v/b;->b:I

    .line 317
    iget-object v2, p0, Lcn/nubia/camera/v/b;->d:Lcn/nubia/camera/v/c;

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {v2}, Lcn/nubia/camera/v/c;->b()V

    .line 319
    iput-object v1, p0, Lcn/nubia/camera/v/b;->d:Lcn/nubia/camera/v/c;

    .line 322
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/v/b;->e:[I

    if-eqz v2, :cond_2

    .line 323
    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 324
    iput-object v1, p0, Lcn/nubia/camera/v/b;->e:[I

    .line 326
    :cond_2
    iput-boolean v4, p0, Lcn/nubia/camera/v/b;->q:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcn/nubia/camera/v/b;->i:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 270
    iput p1, p0, Lcn/nubia/camera/v/b;->r:I

    return-void
.end method

.method public a(Lcn/nubia/camera/v/b$c;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcn/nubia/camera/v/b;->p:Lcn/nubia/camera/v/b$c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcn/nubia/camera/v/b;->s:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 17

    move-object/from16 v1, p0

    .line 125
    iget-boolean v0, v1, Lcn/nubia/camera/v/b;->i:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, v1, Lcn/nubia/camera/v/b;->h:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/v/b;->i()V

    .line 129
    iput-boolean v2, v1, Lcn/nubia/camera/v/b;->h:Z

    .line 131
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v2

    :catchall_0
    move-exception v0

    .line 131
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move-object/from16 v0, p1

    .line 135
    iget-boolean v3, v1, Lcn/nubia/camera/v/b;->h:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 136
    invoke-direct/range {p0 .. p1}, Lcn/nubia/camera/v/b;->a(Lcom/android/common/c/f;)V

    .line 137
    iput-boolean v4, v1, Lcn/nubia/camera/v/b;->h:Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object v3, v1, Lcn/nubia/camera/v/b;->l:Lcn/nubia/camera/v/b$d;

    sget-object v5, Lcn/nubia/camera/v/b$d;->a:Lcn/nubia/camera/v/b$d;

    if-ne v3, v5, :cond_6

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lcn/nubia/camera/v/b;->o:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 143
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v6, v1, Lcn/nubia/camera/v/b;->o:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 144
    iget v6, v1, Lcn/nubia/camera/v/b;->r:I

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_3

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_4

    :cond_3
    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    .line 149
    :cond_4
    iget v6, v1, Lcn/nubia/camera/v/b;->m:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcn/nubia/camera/v/b;->n:I

    if-eq v3, v5, :cond_6

    .line 150
    :cond_5
    monitor-enter p0

    .line 151
    :try_start_2
    iput-boolean v2, v1, Lcn/nubia/camera/v/b;->h:Z

    .line 152
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/v/b;->i()V

    .line 153
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    invoke-direct/range {p0 .. p1}, Lcn/nubia/camera/v/b;->a(Lcom/android/common/c/f;)V

    .line 155
    iput-boolean v4, v1, Lcn/nubia/camera/v/b;->h:Z

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 153
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 161
    :cond_6
    :goto_0
    iget-object v3, v1, Lcn/nubia/camera/v/b;->k:Lcn/nubia/camera/v/b$b;

    sget-object v5, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    if-ne v3, v5, :cond_9

    .line 162
    iget-boolean v3, v1, Lcn/nubia/camera/v/b;->s:Z

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcn/nubia/camera/v/b;->p:Lcn/nubia/camera/v/b$c;

    if-nez v3, :cond_7

    return v2

    .line 165
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    const/16 v3, 0xbe2

    .line 166
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    const v3, 0x8d65

    .line 167
    iget v5, v1, Lcn/nubia/camera/v/b;->b:I

    move-object/from16 v9, p2

    invoke-virtual {v9, v3, v5}, Lcom/android/common/b/g;->a(II)V

    .line 168
    iget v3, v1, Lcn/nubia/camera/v/b;->m:I

    iget v5, v1, Lcn/nubia/camera/v/b;->n:I

    invoke-static {v2, v2, v3, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget-object v5, v1, Lcn/nubia/camera/v/b;->f:[F

    invoke-virtual {v3, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 170
    iget-object v3, v1, Lcn/nubia/camera/v/b;->f:[F

    invoke-static {v3, v2, v8, v8, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 171
    iget-object v10, v1, Lcn/nubia/camera/v/b;->f:[F

    const/4 v11, 0x0

    iget v3, v1, Lcn/nubia/camera/v/b;->r:I

    int-to-float v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 172
    iget-object v3, v1, Lcn/nubia/camera/v/b;->f:[F

    invoke-static {v3, v2, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 173
    iget-object v2, v1, Lcn/nubia/camera/v/b;->c:Lcn/nubia/camera/v/c;

    iget-object v3, v1, Lcn/nubia/camera/v/b;->f:[F

    invoke-virtual {v2, v3}, Lcn/nubia/camera/v/c;->a([F)V

    .line 174
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->a()V

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/nubia/camera/v/b;->g:J

    .line 180
    iget-object v0, v1, Lcn/nubia/camera/v/b;->p:Lcn/nubia/camera/v/b$c;

    if-eqz v0, :cond_8

    .line 181
    invoke-interface {v0}, Lcn/nubia/camera/v/b$c;->a()V

    .line 183
    :cond_8
    iget-boolean v0, v1, Lcn/nubia/camera/v/b;->s:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 184
    iput-object v0, v1, Lcn/nubia/camera/v/b;->p:Lcn/nubia/camera/v/b$c;

    goto :goto_1

    .line 187
    :cond_9
    iget-object v3, v1, Lcn/nubia/camera/v/b;->k:Lcn/nubia/camera/v/b$b;

    sget-object v5, Lcn/nubia/camera/v/b$b;->b:Lcn/nubia/camera/v/b$b;

    if-ne v3, v5, :cond_a

    iget-boolean v3, v1, Lcn/nubia/camera/v/b;->q:Z

    if-eqz v3, :cond_a

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 189
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v3, v5, v9, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 190
    iget-object v0, v1, Lcn/nubia/camera/v/b;->f:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 191
    iget-object v0, v1, Lcn/nubia/camera/v/b;->f:[F

    invoke-static {v0, v2, v8, v8, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 192
    iget-object v9, v1, Lcn/nubia/camera/v/b;->f:[F

    const/4 v10, 0x0

    iget v0, v1, Lcn/nubia/camera/v/b;->r:I

    int-to-float v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 193
    iget-object v0, v1, Lcn/nubia/camera/v/b;->f:[F

    invoke-static {v0, v2, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 194
    iget-object v0, v1, Lcn/nubia/camera/v/b;->d:Lcn/nubia/camera/v/c;

    iget-object v2, v1, Lcn/nubia/camera/v/b;->f:[F

    invoke-virtual {v0, v2}, Lcn/nubia/camera/v/c;->a([F)V

    :cond_a
    :goto_1
    return v4
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

    const/16 v0, 0xb

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-boolean p1, p0, Lcn/nubia/camera/v/b;->h:Z

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcn/nubia/camera/v/b;->i()V

    const/4 p1, 0x0

    .line 209
    iput-boolean p1, p0, Lcn/nubia/camera/v/b;->h:Z

    .line 211
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized d()J
    .locals 2

    monitor-enter p0

    .line 224
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/camera/v/b;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()[B
    .locals 1

    monitor-enter p0

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/v/b;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/v/b;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/v/b;->a:Lcn/nubia/algorithm/camera/a;

    invoke-interface {v0}, Lcn/nubia/algorithm/camera/a;->b()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 229
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Lcn/nubia/algorithm/utils/a;
    .locals 1

    monitor-enter p0

    .line 235
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/v/b;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/v/b;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/v/b;->a:Lcn/nubia/algorithm/camera/a;

    invoke-interface {v0}, Lcn/nubia/algorithm/camera/a;->c()Lcn/nubia/algorithm/utils/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 236
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()I
    .locals 1

    .line 255
    iget v0, p0, Lcn/nubia/camera/v/b;->m:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 259
    iget v0, p0, Lcn/nubia/camera/v/b;->n:I

    return v0
.end method
