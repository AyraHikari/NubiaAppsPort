.class public Lcn/nubia/modules/videoRender/e/b;
.super Lcn/nubia/modules/videoRender/e/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:[F

.field private final j:[F

.field private final k:[F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/e/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/modules/videoRender/e/b;->h:I

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 3
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcn/nubia/modules/videoRender/e/b;->i:[F

    new-array v2, v1, [F

    .line 4
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcn/nubia/modules/videoRender/e/b;->j:[F

    new-array v1, v1, [F

    .line 5
    iput-object v1, p0, Lcn/nubia/modules/videoRender/e/b;->k:[F

    .line 6
    iput-boolean v0, p0, Lcn/nubia/modules/videoRender/e/b;->x:Z

    return-void

    nop

    :array_0
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

    :array_1
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

.method private n(Landroid/graphics/Bitmap;)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    aget v0, v1, v2

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v4, 0x2601

    .line 4
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 5
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 6
    invoke-static {v3, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    aget p1, v1, v2

    if-eqz p1, :cond_1

    .line 9
    aget p1, v1, v2

    return p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error loading texture."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-super {p0}, Lc/c/a/g/a;->a()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    iget v2, p0, Lcn/nubia/modules/videoRender/e/b;->l:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    .line 3
    iget v2, p0, Lcn/nubia/modules/videoRender/e/b;->m:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    .line 4
    iget v2, p0, Lcn/nubia/modules/videoRender/e/b;->n:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    .line 5
    iget v2, p0, Lcn/nubia/modules/videoRender/e/b;->o:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/e/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sampler2D"

    const-string v3, "samplerExternalOES"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float; \nvarying vec2 vTextureCoord;\nuniform sampler2D uTextureSampler;\nuniform float width;\nuniform float height;\nuniform float offset;\nuniform sampler2D uVignetteTexture;\nuniform sampler2D uScratchesTexture;\nuniform sampler2D uDustTexture;\nuniform sampler2D uNoiseTexture;\nuniform mat4 uR90Matrix;\nvoid main() {\n    float xDistance = 1.0 / height;\n    float yDistance = 1.0 / width;\n    float xoffset = (offset) / height;\n    float yoffset = (100.0 - offset) / width;\n    vec4 color = texture2D(uTextureSampler, vTextureCoord);\n    vec4 colorinv;\n    colorinv.rgb = vec3(1.0) - color.rgb;\n    color.r = color.r * colorinv.r * 0.2 + (1.0 - 0.2) * color.r;\n    color.g = color.g * colorinv.g * 0.3 + (1.0 - 0.3) * color.g;\n    color.b = color.b * colorinv.b * 0.5 + (1.0 - 0.5) * color.b;\n    vec4 colorChange;\n    colorChange.rgb = color.rgb;\n    vec2 rnd = vec2(xoffset, 0.0);\n    vec2 pos = vTextureCoord.st;\n    vec4 Vignette = texture2D(uVignetteTexture, pos).bgra;\n    vec2 scratchesPosition = (uR90Matrix * vec4(pos, 1.0, 1.0)).st + rnd;\n    vec4 Scratches = texture2D(uScratchesTexture, scratchesPosition).bgra;\n    float strengthnoise = 0.01;\n    vec4 Noise = texture2D(uNoiseTexture, pos + rnd).bgra;\n    vec4 colornosie;\n    colornosie.r = colorChange.r + strengthnoise * (Noise.r - 0.5);\n    colornosie.g = colorChange.g + strengthnoise * (Noise.r - 0.5);\n    colornosie.b = colorChange.b + strengthnoise * (Noise.r - 0.5);\n    vec4 coloradd;\n    coloradd.r = colornosie.r * Scratches.r;\n    coloradd.g = colornosie.g * Scratches.g;\n    coloradd.b = colornosie.b * Scratches.b;\n    xoffset = (offset - 50.0) / 100.0;\n    yoffset = (50.0 - offset) / 100.0;\n    rnd = vec2(xoffset, yoffset);\n    vec2 DustPosition = (uR90Matrix*vec4(pos, 1.0, 1.0)).st+rnd;\n    vec4 Dust = texture2D(uDustTexture, DustPosition).bgra;\n    vec4 colorDust;\n    colorDust.r = coloradd.r * Dust.r;\n    colorDust.g = coloradd.g * Dust.g;\n    colorDust.b = coloradd.b * Dust.b;\n    vec4 colorcorner;\n    if (colorDust.r < 0.5) colorcorner.r = colorDust.r * Vignette.r * 2.0;\n    else colorcorner.r = 1.0 - (1.0 - colorDust.r) * (1.0 - Vignette.r) * 2.0;\n    if (colorDust.g < 0.5) colorcorner.g = colorDust.g * Vignette.g * 2.0;\n    else colorcorner.g = 1.0 - (1.0 - colorDust.g) * (1.0 - Vignette.g) * 2.0;\n    if (colorDust.b < 0.5) colorcorner.b = colorDust.b * Vignette.b * 2.0;\n    else colorcorner.b = 1.0 - (1.0 - colorDust.b) * (1.0 - Vignette.b) * 2.0;\n    float alph = max(0.90, abs(offset - 50.0) / 50.0);\n    alph = min(0.80, alph);\n    vec3 out_color;\n    out_color.rgb = alph * colorcorner.rgb + (1.0 - alph) * colorDust.rgb;\n    gl_FragColor = vec4(out_color.rgb, color.a);\n}"

    return-object v0
.end method

.method public d(ILc/c/a/e/a;Lc/c/a/b;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/g/a;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    .line 2
    iget-boolean p3, p0, Lcn/nubia/modules/videoRender/e/b;->x:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    new-array p3, v0, [I

    .line 3
    iget v2, p0, Lcn/nubia/modules/videoRender/e/b;->l:I

    aput v2, p3, v1

    invoke-static {v0, p3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array p3, v0, [I

    .line 4
    iget v2, p0, Lcn/nubia/modules/videoRender/e/b;->m:I

    aput v2, p3, v1

    invoke-static {v0, p3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array p3, v0, [I

    .line 5
    iget v2, p0, Lcn/nubia/modules/videoRender/e/b;->n:I

    aput v2, p3, v1

    invoke-static {v0, p3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array p3, v0, [I

    .line 6
    iget v2, p0, Lcn/nubia/modules/videoRender/e/b;->o:I

    aput v2, p3, v1

    invoke-static {v0, p3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 7
    iget-object p3, p0, Lcn/nubia/modules/videoRender/e/b;->t:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3}, Lcn/nubia/modules/videoRender/e/b;->n(Landroid/graphics/Bitmap;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/b;->l:I

    .line 8
    iget-object p3, p0, Lcn/nubia/modules/videoRender/e/b;->u:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3}, Lcn/nubia/modules/videoRender/e/b;->n(Landroid/graphics/Bitmap;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/b;->m:I

    .line 9
    iget-object p3, p0, Lcn/nubia/modules/videoRender/e/b;->v:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3}, Lcn/nubia/modules/videoRender/e/b;->n(Landroid/graphics/Bitmap;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/b;->n:I

    .line 10
    iget-object p3, p0, Lcn/nubia/modules/videoRender/e/b;->w:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3}, Lcn/nubia/modules/videoRender/e/b;->n(Landroid/graphics/Bitmap;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/b;->o:I

    .line 11
    :cond_0
    iget-object p3, p0, Lcn/nubia/modules/videoRender/e/b;->k:[F

    invoke-static {p3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const-string p3, "width"

    .line 12
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/b;->c:I

    const-string p3, "height"

    .line 13
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/modules/videoRender/e/b;->d:I

    .line 14
    iget p3, p0, Lcn/nubia/modules/videoRender/e/b;->c:I

    invoke-virtual {p2}, Lc/c/a/e/a;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p3, v2}, Lc/c/a/d;->a(IF)V

    .line 15
    iget p3, p0, Lcn/nubia/modules/videoRender/e/b;->d:I

    invoke-virtual {p2}, Lc/c/a/e/a;->c()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p3, p2}, Lc/c/a/d;->a(IF)V

    const-string p2, "offset"

    .line 16
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/b;->e:I

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v2, 0x64

    .line 18
    rem-long/2addr p2, v2

    long-to-float p2, p2

    .line 19
    iget p3, p0, Lcn/nubia/modules/videoRender/e/b;->e:I

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p2, "uPictureSTMatrix"

    .line 20
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/b;->g:I

    .line 21
    iget-object p3, p0, Lcn/nubia/modules/videoRender/e/b;->k:[F

    invoke-static {p2, v0, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p2, "uR90Matrix"

    .line 22
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/b;->f:I

    .line 23
    iget p3, p0, Lcn/nubia/modules/videoRender/e/b;->h:I

    rem-int/lit16 p3, p3, 0xb4

    if-nez p3, :cond_1

    .line 24
    iget-object p3, p0, Lcn/nubia/modules/videoRender/e/b;->i:[F

    invoke-static {p2, v0, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p3, p0, Lcn/nubia/modules/videoRender/e/b;->j:[F

    invoke-static {p2, v0, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :goto_0
    const-string p2, "uVignetteTexture"

    .line 26
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/b;->p:I

    const-string p2, "uScratchesTexture"

    .line 27
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/b;->q:I

    const-string p2, "uDustTexture"

    .line 28
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/modules/videoRender/e/b;->r:I

    const-string p2, "uNoiseTexture"

    .line 29
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/modules/videoRender/e/b;->s:I

    const p1, 0x84c3

    .line 30
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 31
    iget p1, p0, Lcn/nubia/modules/videoRender/e/b;->l:I

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 32
    iget p1, p0, Lcn/nubia/modules/videoRender/e/b;->p:I

    const/4 p3, 0x3

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c4

    .line 33
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 34
    iget p1, p0, Lcn/nubia/modules/videoRender/e/b;->m:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 35
    iget p1, p0, Lcn/nubia/modules/videoRender/e/b;->q:I

    const/4 p3, 0x4

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c5

    .line 36
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 37
    iget p1, p0, Lcn/nubia/modules/videoRender/e/b;->n:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 38
    iget p1, p0, Lcn/nubia/modules/videoRender/e/b;->r:I

    const/4 p3, 0x5

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c6

    .line 39
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 40
    iget p1, p0, Lcn/nubia/modules/videoRender/e/b;->o:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 41
    iget p1, p0, Lcn/nubia/modules/videoRender/e/b;->s:I

    const/4 p2, 0x6

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public h(Landroid/content/Context;[I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v1, p2, v1

    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/modules/videoRender/e/b;->t:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/modules/videoRender/e/b;->u:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x2

    aget v3, p2, v3

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/modules/videoRender/e/b;->v:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x3

    aget p2, p2, v1

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/modules/videoRender/e/b;->w:Landroid/graphics/Bitmap;

    .line 7
    iget-object p2, p0, Lcn/nubia/modules/videoRender/e/b;->t:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/modules/videoRender/e/b;->u:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/modules/videoRender/e/b;->v:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 8
    iput-boolean v2, p0, Lcn/nubia/modules/videoRender/e/b;->x:Z

    :cond_0
    return-void
.end method
