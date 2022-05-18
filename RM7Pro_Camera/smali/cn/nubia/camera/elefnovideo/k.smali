.class public Lcn/nubia/camera/elefnovideo/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(III)I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 134
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES31;->glGenTextures(I[II)V

    .line 136
    aget v3, v1, v2

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const/16 v3, 0x2800

    const/16 v5, 0x2600

    .line 137
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v3, 0x2801

    .line 138
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v3, 0x2802

    const v5, 0x812f

    .line 139
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 140
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    .line 142
    invoke-static {v4, v0, p0, p1, p2}, Landroid/opengl/GLES31;->glTexStorage2D(IIIII)V

    .line 143
    aget p0, v1, v2

    return p0
.end method

.method public static a(ILjava/lang/String;)I
    .locals 4

    .line 48
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const-string v1, "GLUtil"

    if-nez v0, :cond_0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create shader fail "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 53
    :cond_0
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 54
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v2, 0x8b81

    const/4 v3, 0x0

    .line 56
    invoke-static {v0, v2, p1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 57
    aget p1, p1, v3

    if-nez p1, :cond_1

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v3

    :cond_1
    return v0
.end method

.method public static varargs a([I)I
    .locals 6

    .line 27
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    const-string v1, "GLUtil"

    if-nez v0, :cond_0

    const-string p0, "create program fail"

    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 32
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, p0, v4

    .line 33
    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array v2, p0, [I

    const v4, 0x8b82

    .line 37
    invoke-static {v0, v4, v2, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 38
    aget v2, v2, v3

    if-eq v2, p0, :cond_2

    const-string p0, "Could not link program"

    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v3

    :cond_2
    return v0
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 83
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 94
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method
