.class public Lcom/bluestareffects/sdk/materials/shader/ShaderUtil;
.super Ljava/lang/Object;
.source "ShaderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 96
    const-string v1, "ES20_ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 48
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/bluestareffects/sdk/materials/shader/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 49
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 87
    :cond_0
    :goto_0
    return v2

    .line 55
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/bluestareffects/sdk/materials/shader/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 56
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 58
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 64
    .local v2, "program":I
    if-eqz v2, :cond_0

    .line 67
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 68
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/bluestareffects/sdk/materials/shader/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 70
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 71
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/bluestareffects/sdk/materials/shader/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 73
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 75
    new-array v0, v6, [I

    .line 77
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 79
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 81
    const-string v4, "ES20_ERROR"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v4, "ES20_ERROR"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 84
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 104
    const/4 v5, 0x0

    .line 107
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 108
    .local v4, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 109
    .local v2, "ch":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 112
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 114
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "ch":I
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 115
    .local v1, "buff":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 116
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 117
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :try_start_2
    const-string v7, "\\r\\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_2

    .line 120
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 23
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 26
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 28
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 30
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 32
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 33
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 35
    const-string v2, "ES20_ERROR"

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

    .line 36
    const-string v2, "ES20_ERROR"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 38
    const/4 v1, 0x0

    .line 41
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method
