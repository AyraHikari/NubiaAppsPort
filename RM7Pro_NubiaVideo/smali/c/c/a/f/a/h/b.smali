.class public Lc/c/a/f/a/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/f/a/h/b$a;
    }
.end annotation


# static fields
.field public static c:Lc/c/a/f/a/h/b;


# instance fields
.field protected a:Ljavax/microedition/khronos/egl/EGLContext;

.field protected b:Landroid/opengl/EGLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/f/a/h/b$a;

    invoke-direct {v0}, Lc/c/a/f/a/h/b$a;-><init>()V

    sput-object v0, Lc/c/a/f/a/h/b;->c:Lc/c/a/f/a/h/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/opengl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/b;->b:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public b()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public c(Landroid/opengl/EGLContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/h/b;->b:Landroid/opengl/EGLContext;

    return-void
.end method

.method public d(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/h/b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method
