.class public Lcom/android/common/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 92
    fill-array-data v0, :array_0

    .line 93
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    .line 94
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_0

    return-object p0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to get EGLContext error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static a()Landroid/opengl/EGLDisplay;
    .locals 4

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/android/common/b/d;->a(Landroid/opengl/EGLDisplay;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 106
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    return-object v1
.end method

.method public static a(Landroid/opengl/EGLDisplay;)V
    .locals 2

    .line 31
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p0, v0, :cond_0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "info"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "no display"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([FI[FII)V
    .locals 2

    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p2

    if-ge p3, v1, :cond_0

    if-ge v0, p4, :cond_0

    .line 20
    aget v1, p0, p1

    aput v1, p2, p3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([II[III)V
    .locals 2

    const/4 v0, 0x0

    .line 25
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p2

    if-ge p3, v1, :cond_0

    if-ge v0, p4, :cond_0

    .line 26
    aget v1, p0, p1

    aput v1, p2, p3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 11

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    const/16 v1, 0xd

    new-array v2, v1, [I

    .line 41
    fill-array-data v2, :array_0

    new-array v0, v0, [I

    const/4 v10, 0x0

    aput v10, v0, v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, v9

    move-object v7, v0

    .line 52
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 54
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    if-eqz p0, :cond_0

    aget p0, v0, v10

    if-eqz p0, :cond_0

    .line 59
    aget-object p0, v9, v10

    return-object p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "get display config failed"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x40
        0x3142
        0x1
        0x3038
    .end array-data
.end method
