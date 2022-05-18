.class public Lc/c/a/f/a/h/b$a;
.super Lc/c/a/f/a/h/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/f/a/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/c/a/f/a/h/b;-><init>()V

    .line 2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lc/c/a/f/a/h/b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lc/c/a/f/a/h/b;->b:Landroid/opengl/EGLContext;

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Landroid/opengl/EGLContext;)V
    .locals 0

    return-void
.end method

.method public d(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    return-void
.end method
