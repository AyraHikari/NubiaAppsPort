.class public Lcom/hpplay/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "EglSurfaceBase"


# instance fields
.field protected b:Lcom/hpplay/a/b;

.field private c:Landroid/opengl/EGLSurface;

.field private d:I

.field private e:I


# direct methods
.method protected constructor <init>(Lcom/hpplay/a/b;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    .line 50
    iput v1, p0, Lcom/hpplay/a/c;->d:I

    .line 51
    iput v1, p0, Lcom/hpplay/a/c;->e:I

    .line 54
    iput-object p1, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    .line 55
    return-void
.end method

.method static synthetic b(Lcom/hpplay/a/c;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/hpplay/a/c;->d:I

    return v0
.end method

.method static synthetic c(Lcom/hpplay/a/c;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/hpplay/a/c;->e:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/hpplay/a/c;->d:I

    return v0
.end method

.method public a(II)V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "surface already created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/a/b;->a(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    .line 82
    iput p1, p0, Lcom/hpplay/a/c;->d:I

    .line 83
    iput p2, p0, Lcom/hpplay/a/c;->e:I

    .line 85
    const-string v0, "EglSurfaceBase"

    const-string v1, "createOffscreenSurface:size(%d,%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/hpplay/a/c;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/hpplay/a/c;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/hpplay/a/b;->a(Landroid/opengl/EGLSurface;J)V

    .line 147
    return-void
.end method

.method public a(Lcom/hpplay/a/c;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    iget-object v2, p1, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/a/b;->a(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    .line 125
    return-void
.end method

.method public a(Ljava/io/File;I)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v2, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v2}, Lcom/hpplay/a/b;->d(Landroid/opengl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected EGL context/surface is not current"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 180
    iget v1, p0, Lcom/hpplay/a/c;->d:I

    iget v2, p0, Lcom/hpplay/a/c;->e:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 181
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 182
    iget v2, p0, Lcom/hpplay/a/c;->d:I

    iget v3, p0, Lcom/hpplay/a/c;->e:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 183
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 185
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/hpplay/a/c$1;

    move-object v4, p0

    move-object v5, v7

    move v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/hpplay/a/c$1;-><init>(Lcom/hpplay/a/c;Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "surface already created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    invoke-virtual {v0, p1}, Lcom/hpplay/a/b;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    .line 68
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/a/b;->a(Landroid/opengl/EGLSurface;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/c;->d:I

    .line 69
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/a/b;->a(Landroid/opengl/EGLSurface;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/c;->e:I

    .line 71
    const-string v0, "EglSurfaceBase"

    const-string v1, "createWindowSurface:size(%d,%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/hpplay/a/c;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/hpplay/a/c;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/hpplay/a/c;->e:I

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/hpplay/a/b;->a(Landroid/opengl/EGLSurface;)V

    .line 107
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/a/c;->e:I

    iput v0, p0, Lcom/hpplay/a/c;->d:I

    .line 109
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/hpplay/a/b;->b(Landroid/opengl/EGLSurface;)V

    .line 116
    iget v0, p0, Lcom/hpplay/a/c;->d:I

    iget v1, p0, Lcom/hpplay/a/c;->e:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 117
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/hpplay/a/b;->c(Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    const-string v1, "EglSurfaceBase"

    const-string v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return v0
.end method

.method public f()V
    .locals 5

    .prologue
    .line 240
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/a/b;->a(Landroid/opengl/EGLSurface;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/c;->d:I

    .line 241
    iget-object v0, p0, Lcom/hpplay/a/c;->b:Lcom/hpplay/a/b;

    iget-object v1, p0, Lcom/hpplay/a/c;->c:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/a/b;->a(Landroid/opengl/EGLSurface;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/a/c;->e:I

    .line 243
    const-string v0, "EglSurfaceBase"

    const-string v1, "updateSize:%d,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/hpplay/a/c;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/hpplay/a/c;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method
