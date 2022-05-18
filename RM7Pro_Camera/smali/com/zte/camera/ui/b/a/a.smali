.class public Lcom/zte/camera/ui/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "a"


# instance fields
.field protected b:Lcom/zte/camera/ui/b/a/b;

.field private c:Landroid/opengl/EGLSurface;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/zte/camera/ui/b/a/b;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/a;->c:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/zte/camera/ui/b/a/a;->d:I

    .line 26
    iput v0, p0, Lcom/zte/camera/ui/b/a/a;->e:I

    .line 29
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/a;->b:Lcom/zte/camera/ui/b/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 92
    sget-object v0, Lcom/zte/camera/ui/b/a/a;->a:Ljava/lang/String;

    const-string v1, "releaseEglSurface"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/a;->b:Lcom/zte/camera/ui/b/a/b;

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/a;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/b/a/b;->a(Landroid/opengl/EGLSurface;)V

    .line 94
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/a;->c:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/zte/camera/ui/b/a/a;->e:I

    iput v0, p0, Lcom/zte/camera/ui/b/a/a;->d:I

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/a;->b:Lcom/zte/camera/ui/b/a/b;

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/a;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/zte/camera/ui/b/a/b;->a(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/a;->c:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/a;->b:Lcom/zte/camera/ui/b/a/b;

    invoke-virtual {v0, p1}, Lcom/zte/camera/ui/b/a/b;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/ui/b/a/a;->c:Landroid/opengl/EGLSurface;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/a;->b:Lcom/zte/camera/ui/b/a/b;

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/a;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/b/a/b;->b(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public c()Z
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/a;->b:Lcom/zte/camera/ui/b/a/b;

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/a;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/b/a/b;->c(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    sget-object v1, Lcom/zte/camera/ui/b/a/a;->a:Ljava/lang/String;

    const-string v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
