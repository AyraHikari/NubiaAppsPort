.class Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;
.super Ljava/lang/Object;
.source "BlockingGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/views/BlockingGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/photos/views/BlockingGLTextureView$1;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;-><init>()V

    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v7, v0, [I

    new-array v0, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 117
    invoke-static {}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->getConfig()[I

    move-result-object v3

    .line 118
    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 121
    aget v2, v7, v1

    if-lez v2, :cond_0

    .line 122
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 120
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroySurfaceImp()V
    .locals 5

    .line 268
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 272
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " failed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getConfig()[I
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 128
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 298
    invoke-static {p1, p2}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 0

    .line 293
    invoke-static {p0, p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 294
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 141
    fill-array-data v0, :array_0

    .line 142
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public createGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    .line 249
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public createSurface(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 196
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    .line 199
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    .line 202
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    .line 210
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->destroySurfaceImp()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 216
    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 218
    :cond_0
    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 221
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 238
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const-string v1, "EGLHelper"

    const-string v2, "eglMakeCurrent"

    invoke-static {v1, v2, p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 222
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v1, 0x300b

    if-ne p1, v1, :cond_4

    const-string p1, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 224
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    .line 203
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "mEglConfig not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglDisplay not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "egl not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroySurface()V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->destroySurfaceImp()V

    return-void
.end method

.method public finish()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 280
    iput-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 282
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 283
    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 284
    iput-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 152
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 157
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 159
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 167
    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 176
    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {p0, v1, v2, v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_1

    .line 179
    :cond_0
    iput-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    .line 180
    invoke-direct {p0, v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 183
    :cond_1
    iput-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swap()I
    .locals 3

    .line 257
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method
