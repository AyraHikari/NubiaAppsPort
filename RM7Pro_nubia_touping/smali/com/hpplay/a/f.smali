.class public Lcom/hpplay/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "GlUtil"

.field private static final b:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static a(I)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const v4, 0x46240400    # 10497.0f

    const/4 v3, 0x0

    .line 162
    new-array v0, v1, [I

    .line 165
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 167
    aget v1, v0, v3

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 170
    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 171
    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 174
    const/16 v1, 0x2802

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 175
    const/16 v1, 0x2803

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 176
    aget v0, v0, v3

    return v0
.end method

.method public static a(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 90
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 91
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 92
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 93
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 94
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 95
    const-string v2, "GlUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v2, "GlUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 100
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v6, 0x46240400    # 10497.0f

    const/16 v3, 0x100

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 217
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 220
    const/16 v2, 0xff

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 225
    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 226
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    new-array v1, v7, [I

    .line 231
    invoke-static {v7, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 233
    aget v2, v1, v4

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 236
    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v5, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 237
    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v5, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 240
    const/16 v2, 0x2802

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 241
    const/16 v2, 0x2803

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 244
    invoke-static {v5, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    aget v0, v1, v4

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 52
    const v1, 0x8b31

    invoke-static {v1, p0}, Lcom/hpplay/a/f;->a(ILjava/lang/String;)I

    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/hpplay/a/f;->a(ILjava/lang/String;)I

    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 61
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 62
    const-string v4, "glCreateProgram"

    invoke-static {v4}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 63
    if-nez v1, :cond_2

    .line 64
    const-string v4, "GlUtil"

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 67
    const-string v2, "glAttachShader"

    invoke-static {v2}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 69
    const-string v2, "glAttachShader"

    invoke-static {v2}, Lcom/hpplay/a/f;->a(Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 71
    new-array v2, v6, [I

    .line 72
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 73
    aget v2, v2, v0

    if-eq v2, v6, :cond_3

    .line 74
    const-string v2, "GlUtil"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "GlUtil"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a([F)Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 132
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 133
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    return-object v0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 145
    const-string v0, "GlUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f00

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "GlUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "GlUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": glError 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "GlUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v6, 0xde1

    const/16 v1, 0x100

    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 181
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 184
    invoke-virtual {v1, v5, v5, v4, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 193
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 194
    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 198
    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x42e00000    # 112.0f

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 200
    invoke-static {v6}, Lcom/hpplay/a/f;->a(I)I

    move-result v1

    .line 207
    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 209
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    return v1
.end method

.method public static b(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 122
    if-gez p0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    return-void
.end method
