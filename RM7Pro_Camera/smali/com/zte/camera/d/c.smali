.class public Lcom/zte/camera/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "c"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p0, "glAttachShader"

    .line 23
    invoke-static {p0}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    .line 24
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 25
    invoke-static {p0}, Lcom/zte/camera/d/c;->a(Ljava/lang/String;)Z

    .line 26
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const v2, 0x8b82

    .line 28
    invoke-static {v1, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 29
    aget p1, p1, v0

    if-eq p1, p0, :cond_1

    .line 30
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ES20_ERROR"

    invoke-static {p1, p0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 16
    :cond_2
    :goto_1
    sget-object p0, Lcom/zte/camera/d/c;->a:Ljava/lang/String;

    const-string p1, "ES20_ERROR createProgram shader handler is 0"

    invoke-static {p0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(ILjava/lang/String;)I
    .locals 3

    .line 39
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 42
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 43
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x8b81

    .line 45
    invoke-static {p0, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 46
    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 47
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ES20_ERROR"

    invoke-static {v2, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 49
    invoke-static {v2, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v0

    :cond_0
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .line 57
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v1, Lcom/zte/camera/d/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
