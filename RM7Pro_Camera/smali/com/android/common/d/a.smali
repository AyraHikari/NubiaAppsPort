.class public Lcom/android/common/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/graphics/Rect;

.field private static b:Ljava/nio/ByteBuffer;

.field private static c:Lcom/android/common/c/d;


# instance fields
.field private d:Lcom/android/common/b/l;

.field private e:[F

.field private f:Z

.field private g:Ljava/nio/IntBuffer;

.field private h:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/common/c/d;

    invoke-direct {v0}, Lcom/android/common/c/d;-><init>()V

    sput-object v0, Lcom/android/common/d/a;->c:Lcom/android/common/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 23
    iput-object v0, p0, Lcom/android/common/d/a;->e:[F

    const/4 v0, 0x1

    .line 93
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/d/a;->g:Ljava/nio/IntBuffer;

    .line 94
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/d/a;->h:Ljava/nio/IntBuffer;

    .line 26
    iget-object v0, p0, Lcom/android/common/d/a;->e:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private b()V
    .locals 2

    const/16 v0, 0xbe2

    .line 97
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/d/a;->f:Z

    .line 98
    iget-object v0, p0, Lcom/android/common/d/a;->g:Ljava/nio/IntBuffer;

    const v1, 0x80cb

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 99
    iget-object v0, p0, Lcom/android/common/d/a;->h:Ljava/nio/IntBuffer;

    const v1, 0x80ca

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 103
    iget-boolean v0, p0, Lcom/android/common/d/a;->f:Z

    const/16 v1, 0xbe2

    if-eqz v0, :cond_0

    .line 104
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/common/d/a;->g:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/common/d/a;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/common/c/f;Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 1

    if-eqz p2, :cond_0

    .line 53
    sget-object v0, Lcom/android/common/d/a;->c:Lcom/android/common/c/d;

    invoke-virtual {v0, p2, p3}, Lcom/android/common/c/d;->a(Landroid/graphics/Rect;Z)Z

    .line 55
    :cond_0
    sget-object p2, Lcom/android/common/d/a;->c:Lcom/android/common/c/d;

    invoke-virtual {p2, p1}, Lcom/android/common/c/d;->a(Lcom/android/common/c/f;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/common/d/a;->d:Lcom/android/common/b/l;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/android/common/d/a;->d:Lcom/android/common/b/l;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 47
    sget-object v0, Lcom/android/common/d/a;->c:Lcom/android/common/c/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/c/d;->a(Landroid/graphics/Rect;Z)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/d/b;)V
    .locals 7

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/common/d/b;->b(Lcom/android/common/c/f;Lcom/android/common/b/g;Z)V

    .line 32
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 33
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object p2, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    .line 34
    sget-object p1, Lcom/android/common/d/a;->c:Lcom/android/common/c/d;

    invoke-virtual {p1, p2, v0}, Lcom/android/common/c/d;->a(Landroid/graphics/Rect;Z)Z

    .line 35
    sget-object p1, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sget-object p2, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    sput-object p1, Lcom/android/common/d/a;->b:Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    sget-object p1, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget-object p1, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget-object p1, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget-object p1, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v6, Lcom/android/common/d/a;->b:Ljava/nio/ByteBuffer;

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 39
    iget-object p1, p0, Lcom/android/common/d/a;->d:Lcom/android/common/b/l;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/android/common/b/l;->j()V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/common/d/a;->d:Lcom/android/common/b/l;

    :cond_0
    return-void
.end method

.method public a(Lcom/android/common/c/f;Landroid/graphics/Rect;Lcom/android/common/b/g;F)Z
    .locals 11

    .line 60
    sget-object v0, Lcom/android/common/d/a;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/common/d/a;->d:Lcom/android/common/b/l;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Lcom/android/common/b/l;

    sget-object v2, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget-object v3, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcom/android/common/d/a;->d:Lcom/android/common/b/l;

    .line 65
    invoke-virtual {v0, p3}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 66
    sget-object v0, Lcom/android/common/d/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v0, 0x84c0

    .line 67
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 68
    iget-object v1, p0, Lcom/android/common/d/a;->d:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    .line 69
    sget-object v0, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sget-object v0, Lcom/android/common/d/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    sget-object v10, Lcom/android/common/d/a;->b:Ljava/nio/ByteBuffer;

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_1
    if-nez p2, :cond_2

    .line 72
    sget-object p2, Lcom/android/common/d/a;->c:Lcom/android/common/c/d;

    invoke-virtual {p2, p1}, Lcom/android/common/c/d;->a(Lcom/android/common/c/f;)Landroid/graphics/Rect;

    move-result-object p2

    .line 74
    :cond_2
    invoke-virtual {p3}, Lcom/android/common/b/g;->f()V

    .line 75
    invoke-direct {p0}, Lcom/android/common/d/a;->b()V

    const/16 p1, 0xbe2

    .line 76
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v0, 0x303

    .line 77
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 78
    invoke-virtual {p3, p4}, Lcom/android/common/b/g;->a(F)V

    .line 79
    iget-object v2, p0, Lcom/android/common/d/a;->d:Lcom/android/common/b/l;

    iget-object v3, p0, Lcom/android/common/d/a;->e:[F

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 80
    invoke-direct {p0}, Lcom/android/common/d/a;->c()V

    .line 81
    invoke-virtual {p3}, Lcom/android/common/b/g;->g()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method
