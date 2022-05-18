.class public Lcn/nubia/camera/v/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/v/d$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcn/nubia/algorithm/camera/a;

.field private c:I

.field private d:Lcn/nubia/camera/v/c;

.field private e:[I

.field private f:[F

.field private g:Z

.field private h:Z

.field private i:Lcn/nubia/camera/v/b$a;

.field private j:Lcn/nubia/camera/v/d$a;

.field private k:Lcn/nubia/camera/v/d$a;

.field private l:F

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(FLcn/nubia/camera/v/b$a;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcn/nubia/camera/v/d;->a:J

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcn/nubia/camera/v/d;->c:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/v/d;->f:[F

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcn/nubia/camera/v/d;->g:Z

    .line 43
    iput-boolean v1, p0, Lcn/nubia/camera/v/d;->h:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    iput v2, p0, Lcn/nubia/camera/v/d;->l:F

    .line 49
    iput-boolean v1, p0, Lcn/nubia/camera/v/d;->o:Z

    .line 59
    iput p1, p0, Lcn/nubia/camera/v/d;->l:F

    .line 60
    iput-object p2, p0, Lcn/nubia/camera/v/d;->i:Lcn/nubia/camera/v/b$a;

    .line 61
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private declared-synchronized a(Lcom/android/common/b/a;Lcom/android/common/c/f;)V
    .locals 3

    monitor-enter p0

    .line 208
    :try_start_0
    invoke-virtual {p2}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/v/d;->l:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/v/d;->m:I

    .line 209
    invoke-virtual {p2}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcn/nubia/camera/v/d;->l:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/camera/v/d;->n:I

    const p2, 0x8d65

    .line 210
    invoke-static {p2}, Lcn/nubia/camera/v/a;->a(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/v/d;->c:I

    .line 212
    iget-object p2, p0, Lcn/nubia/camera/v/d;->i:Lcn/nubia/camera/v/b$a;

    sget-object v0, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    if-ne p2, v0, :cond_0

    .line 213
    new-instance p2, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;

    iget v0, p0, Lcn/nubia/camera/v/d;->m:I

    iget v1, p0, Lcn/nubia/camera/v/d;->n:I

    iget v2, p0, Lcn/nubia/camera/v/d;->c:I

    invoke-direct {p2, v0, v1, v2}, Lcn/nubia/algorithm/camera/RgbaHardwareTexture;-><init>(III)V

    iput-object p2, p0, Lcn/nubia/camera/v/d;->b:Lcn/nubia/algorithm/camera/a;

    const-string p2, "#version 310 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\n\nin vec2 vTextureCoord;\nuniform samplerExternalOES uTextureSampler;\n\nout vec4 gl_FragColor;\n\nvoid main() {\n    gl_FragColor = texture(uTextureSampler, vTextureCoord);\n}"

    goto :goto_0

    .line 216
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/v/d;->i:Lcn/nubia/camera/v/b$a;

    sget-object v0, Lcn/nubia/camera/v/b$a;->c:Lcn/nubia/camera/v/b$a;

    if-ne p2, v0, :cond_1

    .line 217
    new-instance p2, Lcn/nubia/algorithm/camera/YuvHardwareTexture;

    iget v0, p0, Lcn/nubia/camera/v/d;->m:I

    iget v1, p0, Lcn/nubia/camera/v/d;->n:I

    iget v2, p0, Lcn/nubia/camera/v/d;->c:I

    invoke-direct {p2, v0, v1, v2}, Lcn/nubia/algorithm/camera/YuvHardwareTexture;-><init>(III)V

    iput-object p2, p0, Lcn/nubia/camera/v/d;->b:Lcn/nubia/algorithm/camera/a;

    const-string p2, "#version 310 es\n#extension GL_OES_EGL_image_external_essl3 : require\n#extension GL_EXT_YUV_target : require\nprecision mediump float;\n\nin vec2 vTextureCoord;\nuniform samplerExternalOES uTextureSampler;\n\nlayout(yuv) out vec4 gl_FragColor;\n\nvoid main() {\n    mat4 rgb2yuvMatrix = mat4(0.2568f,  0.4392f, -0.1482f,  0.0000f,\n                              0.5041f, -0.3678f, -0.2910f,  0.0000f,\n                              0.0979f, -0.0714f,  0.4392f,  0.0000f,\n                              0.0627f,  0.5000f,  0.5000f,  1.0000f);\n    gl_FragColor = rgb2yuvMatrix * texture(uTextureSampler, vTextureCoord);\n}"

    goto :goto_0

    .line 221
    :cond_1
    new-instance p2, Lcn/nubia/algorithm/camera/YuvHardwareTexture;

    iget v0, p0, Lcn/nubia/camera/v/d;->m:I

    iget v1, p0, Lcn/nubia/camera/v/d;->n:I

    iget v2, p0, Lcn/nubia/camera/v/d;->c:I

    invoke-direct {p2, v0, v1, v2}, Lcn/nubia/algorithm/camera/YuvHardwareTexture;-><init>(III)V

    iput-object p2, p0, Lcn/nubia/camera/v/d;->b:Lcn/nubia/algorithm/camera/a;

    const-string p2, "#version 310 es\n#extension GL_OES_EGL_image_external_essl3 : require\n#extension GL_EXT_YUV_target : require\nprecision mediump float;\n\nin vec2 vTextureCoord;\nuniform samplerExternalOES uTextureSampler;\n\nlayout(yuv) out vec4 gl_FragColor;\n\nvoid main() {\n    mat4 rgb2yuvMatrix = mat4(0.2568f,  0.4392f, -0.1482f,  0.0000f,\n                              0.5041f, -0.3678f, -0.2910f,  0.0000f,\n                              0.0979f, -0.0714f,  0.4392f,  0.0000f,\n                              0.0627f,  0.5000f,  0.5000f,  1.0000f);\n    vec4 color = rgb2yuvMatrix * texture(uTextureSampler, vTextureCoord);\n    gl_FragColor = color.rbga;\n}"

    .line 224
    :goto_0
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result v0

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_2

    const-string v0, "uniform\\s+samplerExternalOES\\s+uTextureSampler"

    .line 225
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "uniform sampler2D uTextureSampler"

    .line 228
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 232
    :cond_2
    new-instance v0, Lcn/nubia/camera/v/c;

    const-string v1, "#version 310 es\n\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\n\nout vec2 vTextureCoord;\n\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).st;\n}"

    invoke-virtual {p1}, Lcom/android/common/b/a;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result p1

    invoke-direct {v0, v1, p2, v2, p1}, Lcn/nubia/camera/v/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcn/nubia/camera/v/d;->d:Lcn/nubia/camera/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 3

    .line 204
    iget v0, p0, Lcn/nubia/camera/v/d;->m:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/v/d;->l:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/camera/v/d;->n:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcn/nubia/camera/v/d;->l:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f()V
    .locals 2

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/v/d;->j:Lcn/nubia/camera/v/d$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/v/d;->j:Lcn/nubia/camera/v/d$a;

    .line 141
    iput-object v1, p0, Lcn/nubia/camera/v/d;->j:Lcn/nubia/camera/v/d$a;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 143
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {v0}, Lcn/nubia/camera/v/d$a;->a()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 149
    :goto_1
    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/v/d;->k:Lcn/nubia/camera/v/d$a;

    if-eqz v0, :cond_2

    .line 151
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 152
    iget-object v1, p0, Lcn/nubia/camera/v/d;->k:Lcn/nubia/camera/v/d$a;

    .line 154
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 156
    invoke-interface {v1}, Lcn/nubia/camera/v/d$a;->a()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 154
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 143
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 5

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/v/d;->d:Lcn/nubia/camera/v/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcn/nubia/camera/v/c;->b()V

    .line 239
    iput-object v1, p0, Lcn/nubia/camera/v/d;->d:Lcn/nubia/camera/v/c;

    .line 242
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/v/d;->b:Lcn/nubia/algorithm/camera/a;

    invoke-interface {v0}, Lcn/nubia/algorithm/camera/a;->a()V

    .line 243
    iput-object v1, p0, Lcn/nubia/camera/v/d;->b:Lcn/nubia/algorithm/camera/a;

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 244
    iget v3, p0, Lcn/nubia/camera/v/d;->c:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v2, -0x1

    .line 245
    iput v2, p0, Lcn/nubia/camera/v/d;->c:I

    .line 247
    iget-object v2, p0, Lcn/nubia/camera/v/d;->e:[I

    if-eqz v2, :cond_1

    .line 248
    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 249
    iput-object v1, p0, Lcn/nubia/camera/v/d;->e:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcn/nubia/camera/v/d;->h:Z

    return-void
.end method

.method public declared-synchronized a(Lcn/nubia/camera/v/d$a;)V
    .locals 0

    monitor-enter p0

    .line 181
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/v/d;->j:Lcn/nubia/camera/v/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcn/nubia/camera/v/d;->o:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 5

    .line 71
    iget-boolean v0, p0, Lcn/nubia/camera/v/d;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean p2, p0, Lcn/nubia/camera/v/d;->g:Z

    if-eqz p2, :cond_0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/v/d;->g()V

    .line 75
    iput-boolean v1, p0, Lcn/nubia/camera/v/d;->g:Z

    .line 77
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 81
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/v/d;->j:Lcn/nubia/camera/v/d$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/v/d;->k:Lcn/nubia/camera/v/d$a;

    if-nez v0, :cond_2

    return v1

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v0

    .line 85
    :goto_0
    monitor-enter p0

    .line 86
    :try_start_2
    iget-boolean v2, p0, Lcn/nubia/camera/v/d;->g:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 87
    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/v/d;->a(Lcom/android/common/b/a;Lcom/android/common/c/f;)V

    .line 88
    iput-boolean v3, p0, Lcn/nubia/camera/v/d;->g:Z

    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {v0}, Lcom/android/common/b/a;->f()I

    move-result v2

    iget-object v4, p0, Lcn/nubia/camera/v/d;->d:Lcn/nubia/camera/v/c;

    invoke-virtual {v4}, Lcn/nubia/camera/v/c;->a()I

    move-result v4

    if-ne v2, v4, :cond_5

    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/camera/v/d;->a(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 91
    :cond_5
    iput-boolean v1, p0, Lcn/nubia/camera/v/d;->g:Z

    .line 92
    invoke-direct {p0}, Lcn/nubia/camera/v/d;->g()V

    .line 93
    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/v/d;->a(Lcom/android/common/b/a;Lcom/android/common/c/f;)V

    .line 94
    iput-boolean v3, p0, Lcn/nubia/camera/v/d;->g:Z

    .line 96
    :cond_6
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    const/16 v2, 0xbe2

    .line 98
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    const v2, 0x8d65

    .line 99
    iget v4, p0, Lcn/nubia/camera/v/d;->c:I

    invoke-virtual {p2, v2, v4}, Lcom/android/common/b/g;->a(II)V

    .line 100
    iget v2, p0, Lcn/nubia/camera/v/d;->m:I

    iget v4, p0, Lcn/nubia/camera/v/d;->n:I

    invoke-static {v1, v1, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 101
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/v/d;->f:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 102
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/camera/v/d;->a:J

    .line 103
    iget-boolean p1, p0, Lcn/nubia/camera/v/d;->o:Z

    if-eqz p1, :cond_7

    .line 104
    iget-object p1, p0, Lcn/nubia/camera/v/d;->f:[F

    invoke-virtual {p0, p1}, Lcn/nubia/camera/v/d;->a([F)[F

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/v/d;->f:[F

    .line 106
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/v/d;->d:Lcn/nubia/camera/v/c;

    iget-object v1, p0, Lcn/nubia/camera/v/d;->f:[F

    invoke-virtual {v0}, Lcom/android/common/b/a;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/v/c;->a([FI)V

    .line 107
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 108
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 110
    invoke-direct {p0}, Lcn/nubia/camera/v/d;->f()V

    return v3

    :catchall_1
    move-exception p1

    .line 96
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a([F)[F
    .locals 7

    const/16 v0, 0x10

    new-array v3, v0, [F

    const/4 v1, 0x0

    .line 194
    invoke-static {v3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 195
    invoke-static {v3, v1, v2, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 196
    invoke-static {v3, v1, v2, v5, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v2, -0x41000000    # -0.5f

    .line 197
    invoke-static {v3, v1, v2, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    .line 199
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public declared-synchronized b(Lcn/nubia/camera/v/d$a;)V
    .locals 0

    monitor-enter p0

    .line 185
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/v/d;->k:Lcn/nubia/camera/v/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean p1, p0, Lcn/nubia/camera/v/d;->g:Z

    if-eqz p1, :cond_0

    .line 124
    invoke-direct {p0}, Lcn/nubia/camera/v/d;->g()V

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcn/nubia/camera/v/d;->g:Z

    .line 127
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

.method public declared-synchronized d()Lcom/android/common/a;
    .locals 5

    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/v/d;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 167
    monitor-exit p0

    return-object v1

    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/v/d;->b:Lcn/nubia/algorithm/camera/a;

    invoke-interface {v0}, Lcn/nubia/algorithm/camera/a;->b()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 171
    monitor-exit p0

    return-object v1

    .line 173
    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/common/a;

    iget-object v2, p0, Lcn/nubia/camera/v/d;->i:Lcn/nubia/camera/v/b$a;

    invoke-virtual {v2}, Lcn/nubia/camera/v/b$a;->a()I

    move-result v2

    iget v3, p0, Lcn/nubia/camera/v/d;->m:I

    iget v4, p0, Lcn/nubia/camera/v/d;->n:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/common/a;-><init>([BIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()J
    .locals 2

    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/camera/v/d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
