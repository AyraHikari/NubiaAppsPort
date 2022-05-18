.class public final Lcom/hpplay/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Ljava/lang/String; = "EglCore"

.field private static final d:I = 0x3142


# instance fields
.field private e:Landroid/opengl/EGLDisplay;

.field private f:Landroid/opengl/EGLContext;

.field private g:Landroid/opengl/EGLConfig;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hpplay/a/b;-><init>(Landroid/opengl/EGLContext;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    .line 55
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    .line 56
    iput-object v2, p0, Lcom/hpplay/a/b;->g:Landroid/opengl/EGLConfig;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/a/b;->h:I

    .line 76
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL already set up"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-nez p1, :cond_1

    .line 81
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 84
    :cond_1
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    .line 85
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_2

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    new-array v0, v6, [I

    .line 89
    iget-object v1, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v4, v0, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iput-object v2, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_3
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4

    .line 97
    invoke-direct {p0, p2, v5}, Lcom/hpplay/a/b;->b(II)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 103
    iget-object v2, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, p1, v1, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 106
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_4

    .line 108
    iput-object v0, p0, Lcom/hpplay/a/b;->g:Landroid/opengl/EGLConfig;

    .line 109
    iput-object v1, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    .line 110
    iput v5, p0, Lcom/hpplay/a/b;->h:I

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_6

    .line 116
    invoke-direct {p0, p2, v6}, Lcom/hpplay/a/b;->b(II)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 117
    if-nez v0, :cond_5

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_5
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    .line 124
    iget-object v2, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, p1, v1, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 126
    const-string v2, "eglCreateContext"

    invoke-direct {p0, v2}, Lcom/hpplay/a/b;->b(Ljava/lang/String;)V

    .line 127
    iput-object v0, p0, Lcom/hpplay/a/b;->g:Landroid/opengl/EGLConfig;

    .line 128
    iput-object v1, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    .line 129
    iput v6, p0, Lcom/hpplay/a/b;->h:I

    .line 133
    :cond_6
    new-array v0, v7, [I

    .line 134
    iget-object v1, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    const/16 v3, 0x3098

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 136
    const-string v1, "EglCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGLContext created, client version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 99
    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    .line 120
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 346
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 347
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    .line 348
    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 349
    const-string v3, "EglCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current EGL ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", context="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method private b(II)Landroid/opengl/EGLConfig;
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 146
    .line 147
    if-lt p2, v8, :cond_2

    .line 148
    const/16 v0, 0x44

    .line 154
    :goto_0
    const/16 v1, 0xd

    new-array v1, v1, [I

    const/16 v4, 0x3024

    aput v4, v1, v2

    aput v6, v1, v7

    const/4 v4, 0x2

    const/16 v5, 0x3023

    aput v5, v1, v4

    aput v6, v1, v8

    const/16 v4, 0x3022

    aput v4, v1, v3

    const/4 v3, 0x5

    aput v6, v1, v3

    const/4 v3, 0x6

    const/16 v4, 0x3021

    aput v4, v1, v3

    const/4 v3, 0x7

    aput v6, v1, v3

    const/16 v3, 0x3040

    aput v3, v1, v6

    const/16 v3, 0x9

    aput v0, v1, v3

    const/16 v0, 0xa

    const/16 v3, 0x3038

    aput v3, v1, v0

    const/16 v0, 0xb

    aput v2, v1, v0

    const/16 v0, 0xc

    const/16 v3, 0x3038

    aput v3, v1, v0

    .line 165
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 166
    array-length v0, v1

    add-int/lit8 v0, v0, -0x3

    const/16 v3, 0x3142

    aput v3, v1, v0

    .line 167
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aput v7, v1, v0

    .line 169
    :cond_0
    new-array v3, v7, [Landroid/opengl/EGLConfig;

    .line 170
    new-array v6, v7, [I

    .line 171
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const-string v0, "EglCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to find RGB8888 / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGLConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_1
    return-object v0

    :cond_1
    aget-object v0, v3, v2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 361
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 362
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/opengl/EGLSurface;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 327
    iget-object v1, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 328
    aget v0, v0, v2

    return v0
.end method

.method public a(II)Landroid/opengl/EGLSurface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v3

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3056

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 253
    iget-object v1, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/hpplay/a/b;->g:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 255
    const-string v1, "eglCreatePbufferSurface"

    invoke-direct {p0, v1}, Lcom/hpplay/a/b;->b(Ljava/lang/String;)V

    .line 256
    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 235
    iget-object v1, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/hpplay/a/b;->g:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 237
    const-string v1, "eglCreateWindowSurface"

    invoke-direct {p0, v1}, Lcom/hpplay/a/b;->b(Ljava/lang/String;)V

    .line 238
    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 187
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 188
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 189
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 192
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    .line 193
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/a/b;->g:Landroid/opengl/EGLConfig;

    .line 195
    return-void
.end method

.method public a(Landroid/opengl/EGLSurface;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 219
    return-void
.end method

.method public a(Landroid/opengl/EGLSurface;J)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 312
    return-void
.end method

.method public a(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 281
    const-string v0, "EglCore"

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent(draw,read) failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    return-void
.end method

.method public b(Landroid/opengl/EGLSurface;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 268
    const-string v0, "EglCore"

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/hpplay/a/b;->h:I

    return v0
.end method

.method public c(Landroid/opengl/EGLSurface;)Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method

.method public d()Landroid/opengl/EGLContext;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public d(Landroid/opengl/EGLSurface;)Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/hpplay/a/b;->f:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3059

    .line 319
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/a/b;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 205
    const-string v0, "EglCore"

    const-string v1, "WARNING: EglCore was not explicitly released -- state may be leaked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/hpplay/a/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
