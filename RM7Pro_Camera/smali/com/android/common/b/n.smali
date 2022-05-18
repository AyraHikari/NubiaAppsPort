.class public Lcom/android/common/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 156
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 159
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 160
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const v2, 0x8b82

    .line 162
    invoke-static {v1, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 163
    aget p1, p1, v0

    if-eq p1, p0, :cond_2

    .line 164
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private static a(ILjava/lang/String;)I
    .locals 3

    .line 123
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 126
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v2, 0x8b81

    .line 128
    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 129
    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "==wq"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 35
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 37
    aget v0, v1, v2

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 41
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 46
    aget p1, v1, v2

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 v3, 0x2601

    .line 49
    invoke-static {v0, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 50
    invoke-static {v0, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 53
    invoke-static {v0, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    invoke-static {}, Lcom/android/common/b/j;->a()V

    .line 59
    throw p0

    .line 63
    :cond_0
    :goto_0
    aget p0, v1, v2

    if-eqz p0, :cond_1

    .line 68
    aget p0, v1, v2

    return p0

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error loading texture."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 4

    .line 247
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 248
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 251
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v3, Landroid/graphics/NinePatch;

    invoke-direct {v3, p1, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v2, p0, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    .line 252
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 256
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    invoke-virtual {v2, v1, v1, p2, p3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 259
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 263
    invoke-static {}, Lcom/android/common/b/j;->a()V

    .line 264
    throw p0
.end method

.method public static a(Landroid/content/Context;II)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0, p2}, Lcom/android/common/b/n;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    .line 103
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_1
    const-string p0, "wq"

    const-string v0, "is is null: "

    .line 118
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xde1

    if-ne p1, v0, :cond_0

    const-string p1, "uniform\\s+samplerExternalOES\\s+sTexture"

    .line 83
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "uniform sampler2D sTexture"

    .line 86
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x8d65

    if-ne p1, v0, :cond_1

    const-string p1, "uniform\\s+sampler2D\\s+sTexture"

    .line 89
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "uniform samplerExternalOES sTexture"

    .line 92
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;IIII)V
    .locals 4

    if-eqz p1, :cond_0

    .line 203
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 204
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 208
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 209
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v3, Landroid/graphics/NinePatch;

    invoke-direct {v3, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v2, p0, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    .line 210
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 214
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 215
    invoke-virtual {v2, v1, v1, p3, p4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 217
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    const/16 p3, 0xde1

    .line 220
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p4, 0x2801

    const/16 v0, 0x2601

    .line 223
    invoke-static {p3, p4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p4, 0x2800

    .line 224
    invoke-static {p3, p4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 227
    invoke-static {p3, v1, p0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 230
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    invoke-static {}, Lcom/android/common/b/j;->a()V

    .line 234
    throw p0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 240
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error loading texture."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const v1, 0x8b31

    .line 141
    invoke-static {v1, p0}, Lcom/android/common/b/n;->a(ILjava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    const p0, 0x8b30

    .line 142
    invoke-static {p0, p1}, Lcom/android/common/b/n;->a(ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/android/common/b/n;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
