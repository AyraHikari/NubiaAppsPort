.class public Lcn/nubia/camera/o/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/o/g$a;
    }
.end annotation


# static fields
.field private static Z:Ljava/lang/String;


# instance fields
.field private A:[F

.field private B:[F

.field private C:[F

.field private D:[F

.field private E:Landroid/graphics/Rect;

.field private F:[F

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/c/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/nio/ByteBuffer;

.field private I:Lcn/nubia/camera/o/g$a;

.field private J:Landroid/graphics/SurfaceTexture;

.field private volatile K:Z

.field private L:I

.field private M:F

.field private N:Z

.field private O:Z

.field private P:I

.field private volatile Q:Z

.field private volatile R:Z

.field private S:Z

.field private T:Landroid/opengl/EGLDisplay;

.field private U:Landroid/opengl/EGLConfig;

.field private V:Landroid/opengl/EGLContext;

.field private W:Landroid/opengl/EGLSurface;

.field private X:Landroid/opengl/EGLSurface;

.field private Y:Z

.field a:Lcn/nubia/camera/o/c$a;

.field private aa:Landroid/content/Context;

.field private ab:Ljava/nio/FloatBuffer;

.field private ac:Ljava/nio/FloatBuffer;

.field private final ad:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:[F

.field final c:[F

.field private d:I

.field private e:I

.field private f:[I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/android/common/b/l;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/content/Context;)V
    .locals 5

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcn/nubia/camera/o/g;->e:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 44
    iput-object v1, p0, Lcn/nubia/camera/o/g;->f:[I

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcn/nubia/camera/o/g;->i:Z

    const/4 v2, 0x0

    .line 48
    iput v2, p0, Lcn/nubia/camera/o/g;->j:I

    .line 49
    iput v2, p0, Lcn/nubia/camera/o/g;->k:I

    .line 50
    iput v2, p0, Lcn/nubia/camera/o/g;->l:I

    const/high16 v3, 0x42480000    # 50.0f

    .line 52
    iput v3, p0, Lcn/nubia/camera/o/g;->m:F

    .line 58
    iput v2, p0, Lcn/nubia/camera/o/g;->p:I

    .line 59
    iput v2, p0, Lcn/nubia/camera/o/g;->q:I

    .line 60
    iput v2, p0, Lcn/nubia/camera/o/g;->r:I

    const/16 v3, 0x10

    new-array v4, v3, [F

    .line 71
    iput-object v4, p0, Lcn/nubia/camera/o/g;->A:[F

    new-array v4, v3, [F

    .line 72
    iput-object v4, p0, Lcn/nubia/camera/o/g;->B:[F

    new-array v4, v3, [F

    .line 73
    iput-object v4, p0, Lcn/nubia/camera/o/g;->C:[F

    new-array v4, v3, [F

    .line 74
    iput-object v4, p0, Lcn/nubia/camera/o/g;->D:[F

    new-array v3, v3, [F

    .line 77
    iput-object v3, p0, Lcn/nubia/camera/o/g;->F:[F

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/camera/o/g;->G:Ljava/util/ArrayList;

    .line 82
    new-instance v3, Lcn/nubia/camera/o/g$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcn/nubia/camera/o/g$a;-><init>(Lcn/nubia/camera/o/g;Landroid/os/Looper;)V

    iput-object v3, p0, Lcn/nubia/camera/o/g;->I:Lcn/nubia/camera/o/g$a;

    const/4 v3, 0x0

    .line 83
    iput-object v3, p0, Lcn/nubia/camera/o/g;->a:Lcn/nubia/camera/o/c$a;

    .line 84
    iput-object v3, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    .line 86
    iput v0, p0, Lcn/nubia/camera/o/g;->L:I

    .line 94
    iget v0, p0, Lcn/nubia/camera/o/g;->m:F

    iput v0, p0, Lcn/nubia/camera/o/g;->M:F

    .line 95
    iput-boolean v2, p0, Lcn/nubia/camera/o/g;->N:Z

    .line 96
    iput-boolean v2, p0, Lcn/nubia/camera/o/g;->O:Z

    .line 99
    iput v1, p0, Lcn/nubia/camera/o/g;->P:I

    .line 100
    iput-boolean v2, p0, Lcn/nubia/camera/o/g;->Q:Z

    .line 101
    iput-boolean v2, p0, Lcn/nubia/camera/o/g;->R:Z

    .line 102
    iput-boolean v2, p0, Lcn/nubia/camera/o/g;->S:Z

    .line 108
    iput-boolean v2, p0, Lcn/nubia/camera/o/g;->Y:Z

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 296
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/camera/o/g;->b:[F

    new-array v0, v0, [F

    .line 302
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/camera/o/g;->c:[F

    .line 704
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/o/g;->ad:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    iput-object p1, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    .line 122
    iput-object p2, p0, Lcn/nubia/camera/o/g;->aa:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcn/nubia/camera/o/g;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/o/g;->H:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/o/g;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/camera/o/g;->H:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private a(IILcom/android/common/b/g;)V
    .locals 7

    .line 421
    iget-boolean v0, p0, Lcn/nubia/camera/o/g;->S:Z

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcn/nubia/camera/o/g;->f:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES32;->glGenTextures(I[II)V

    move v0, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 425
    iget-object v4, p0, Lcn/nubia/camera/o/g;->f:[I

    aget v4, v4, v0

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Landroid/opengl/GLES32;->glBindTexture(II)V

    const/16 v4, 0x2800

    const/16 v6, 0x2600

    .line 426
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES32;->glTexParameteri(III)V

    const/16 v4, 0x2801

    .line 427
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES32;->glTexParameteri(III)V

    const/16 v4, 0x2802

    const v6, 0x812f

    .line 428
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES32;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 429
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES32;->glTexParameteri(III)V

    const v4, 0x822e

    .line 430
    invoke-static {v5, v3, v4, p1, p2}, Landroid/opengl/GLES32;->glTexStorage2D(IIIII)V

    .line 431
    invoke-static {v5, v2}, Landroid/opengl/GLES32;->glBindTexture(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p1, p2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/o/g;->s:Lcom/android/common/b/l;

    .line 434
    invoke-virtual {v0, p3}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 435
    iput-boolean v3, p0, Lcn/nubia/camera/o/g;->S:Z

    :cond_1
    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 336
    invoke-static {p2}, Landroid/opengl/GLES32;->glCreateShader(I)I

    move-result p2

    const-string v1, "ElectronicFnoRenderer"

    if-eqz p2, :cond_0

    .line 338
    invoke-static {p2, p3}, Landroid/opengl/GLES32;->glShaderSource(ILjava/lang/String;)V

    .line 339
    invoke-static {p2}, Landroid/opengl/GLES32;->glCompileShader(I)V

    const p3, 0x8b81

    const/4 v2, 0x0

    .line 340
    invoke-static {p2, p3, v0, v2}, Landroid/opengl/GLES32;->glGetShaderiv(II[II)V

    .line 341
    aget p3, v0, v2

    if-nez p3, :cond_1

    const-string p1, "Failed compiled shade"

    .line 342
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {p2}, Landroid/opengl/GLES32;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {p2}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    return-void

    :cond_0
    const-string p3, "Create shader failed"

    .line 348
    invoke-static {v1, p3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_1
    invoke-static {p1, p2}, Landroid/opengl/GLES32;->glAttachShader(II)V

    .line 351
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/o/g;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/o/g;->G:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 749
    iget-object v1, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcn/nubia/camera/o/g;->U:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    .line 750
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 754
    iget-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/nubia/camera/o/g;->V:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 755
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 756
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 757
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 758
    iget-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 759
    iget-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 760
    iget-object p1, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void

    .line 752
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create window surface with error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lcn/nubia/camera/o/g;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/camera/o/g;->g:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/o/g;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/camera/o/g;->h:I

    return p0
.end method

.method private l()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/o/g;->b:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    .line 315
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 316
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/g;->ab:Ljava/nio/FloatBuffer;

    .line 317
    iget-object v1, p0, Lcn/nubia/camera/o/g;->b:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/o/g;->c:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    .line 320
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 321
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/g;->ac:Ljava/nio/FloatBuffer;

    .line 322
    iget-object v2, p0, Lcn/nubia/camera/o/g;->c:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private m()V
    .locals 3

    .line 372
    invoke-static {}, Landroid/opengl/GLES32;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->e:I

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mClearProgram = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/o/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoRenderer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v0, Lcn/nubia/camera/o/g;->Z:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/o/g;->aa:Landroid/content/Context;

    const v1, 0x7f0e0025

    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/o/g;->Z:Ljava/lang/String;

    .line 377
    :cond_0
    iget v0, p0, Lcn/nubia/camera/o/g;->e:I

    const v1, 0x91b9

    sget-object v2, Lcn/nubia/camera/o/g;->Z:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/o/g;->a(IILjava/lang/String;)V

    .line 378
    iget v0, p0, Lcn/nubia/camera/o/g;->e:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glLinkProgram(I)V

    .line 379
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method private n()V
    .locals 10

    .line 562
    iget v0, p0, Lcn/nubia/camera/o/g;->e:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 563
    iget-object v0, p0, Lcn/nubia/camera/o/g;->f:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x88ba

    const v8, 0x822e

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/o/g;->f:[I

    const/4 v1, 0x1

    aget v3, v0, v1

    const/4 v2, 0x1

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 565
    iget-object v0, p0, Lcn/nubia/camera/o/g;->f:[I

    const/4 v2, 0x2

    aget v4, v0, v2

    const/4 v3, 0x2

    const/4 v7, 0x0

    const v8, 0x88ba

    const v9, 0x822e

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 566
    iget v0, p0, Lcn/nubia/camera/o/g;->g:I

    div-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcn/nubia/camera/o/g;->h:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES32;->glDispatchCompute(III)V

    return-void
.end method

.method private o()V
    .locals 8

    .line 571
    iget-boolean v0, p0, Lcn/nubia/camera/o/g;->N:Z

    if-nez v0, :cond_0

    iget v1, p0, Lcn/nubia/camera/o/g;->M:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/o/g;->O:Z

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 575
    :cond_2
    :try_start_0
    iget v0, p0, Lcn/nubia/camera/o/g;->g:I

    iget v1, p0, Lcn/nubia/camera/o/g;->h:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/g;->H:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 576
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 577
    iget-object v0, p0, Lcn/nubia/camera/o/g;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 578
    iget v3, p0, Lcn/nubia/camera/o/g;->g:I

    iget v4, p0, Lcn/nubia/camera/o/g;->h:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    iget-object v7, p0, Lcn/nubia/camera/o/g;->H:Ljava/nio/ByteBuffer;

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 579
    iget-object v0, p0, Lcn/nubia/camera/o/g;->I:Lcn/nubia/camera/o/g$a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/g$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 581
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    .line 582
    throw v0
.end method

.method private p()V
    .locals 11

    .line 587
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWidth mHeight is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/o/g;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/o/g;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoRenderer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget v0, p0, Lcn/nubia/camera/o/g;->g:I

    iget v1, p0, Lcn/nubia/camera/o/g;->h:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES32;->glViewport(IIII)V

    .line 590
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/16 v0, 0xbd0

    .line 591
    invoke-static {v0}, Landroid/opengl/GLES32;->glDisable(I)V

    .line 592
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/16 v0, 0xb71

    .line 593
    invoke-static {v0}, Landroid/opengl/GLES32;->glDisable(I)V

    .line 594
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 595
    invoke-static {v0, v1, v0, v0}, Landroid/opengl/GLES32;->glClearColor(FFFF)V

    .line 596
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/16 v0, 0x4100

    .line 597
    invoke-static {v0}, Landroid/opengl/GLES32;->glClear(I)V

    .line 598
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 600
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 601
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 602
    iget v0, p0, Lcn/nubia/camera/o/g;->u:I

    iget-object v1, p0, Lcn/nubia/camera/o/g;->C:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    .line 603
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 605
    iget v0, p0, Lcn/nubia/camera/o/g;->z:I

    iget-object v1, p0, Lcn/nubia/camera/o/g;->F:[F

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES32;->glUniformMatrix4fv(IIZ[FI)V

    .line 606
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 608
    iget v0, p0, Lcn/nubia/camera/o/g;->y:I

    iget v1, p0, Lcn/nubia/camera/o/g;->g:I

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 609
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 610
    iget v0, p0, Lcn/nubia/camera/o/g;->x:I

    iget v1, p0, Lcn/nubia/camera/o/g;->h:I

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 611
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 615
    iget-object v0, p0, Lcn/nubia/camera/o/g;->ab:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 616
    iget v4, p0, Lcn/nubia/camera/o/g;->v:I

    iget-object v9, p0, Lcn/nubia/camera/o/g;->ab:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES32;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 617
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 618
    iget v0, p0, Lcn/nubia/camera/o/g;->v:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glEnableVertexAttribArray(I)V

    .line 619
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 620
    iget-object v0, p0, Lcn/nubia/camera/o/g;->ac:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 621
    iget v4, p0, Lcn/nubia/camera/o/g;->w:I

    iget-object v9, p0, Lcn/nubia/camera/o/g;->ac:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES32;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 622
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 623
    iget v0, p0, Lcn/nubia/camera/o/g;->w:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glEnableVertexAttribArray(I)V

    .line 624
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 625
    iget-object v0, p0, Lcn/nubia/camera/o/g;->f:[I

    aget v5, v0, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0x88b8

    const v10, 0x822e

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 626
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 627
    iget-object v0, p0, Lcn/nubia/camera/o/g;->f:[I

    aget v5, v0, v3

    const/4 v4, 0x1

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 628
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 629
    iget-object v0, p0, Lcn/nubia/camera/o/g;->f:[I

    const/4 v1, 0x2

    aget v4, v0, v1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const v8, 0x88b8

    const v9, 0x822e

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 630
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 632
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES32;->glDrawArrays(III)V

    .line 633
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method private q()V
    .locals 2

    .line 637
    iget v0, p0, Lcn/nubia/camera/o/g;->L:I

    if-lez v0, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->L:I

    .line 641
    iget-object v0, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 642
    iget-object v0, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcn/nubia/camera/o/g;->L:I

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurfaceTextureForCamera: mSurfaceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/o/g;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurfaceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/o/g;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCameraTextureID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/o/g;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoRenderer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private r()V
    .locals 3

    .line 676
    iget-boolean v0, p0, Lcn/nubia/camera/o/g;->S:Z

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcn/nubia/camera/o/g;->s:Lcom/android/common/b/l;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcn/nubia/camera/o/g;->s:Lcom/android/common/b/l;

    :cond_0
    const/4 v0, 0x3

    .line 681
    iget-object v1, p0, Lcn/nubia/camera/o/g;->f:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES32;->glDeleteTextures(I[II)V

    .line 682
    iput-boolean v2, p0, Lcn/nubia/camera/o/g;->S:Z

    :cond_1
    return-void
.end method

.method private s()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    .line 711
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    .line 713
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/g;->U:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Lcom/android/common/b/d;->b(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/g;->U:Landroid/opengl/EGLConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEGLConfig fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/o/g;->V:Landroid/opengl/EGLContext;

    if-nez v0, :cond_2

    .line 721
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/g;->V:Landroid/opengl/EGLContext;

    .line 723
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/o/g;->W:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_3

    const/16 v0, 0x3059

    .line 724
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/g;->W:Landroid/opengl/EGLSurface;

    .line 726
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/o/g;->X:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    const/16 v0, 0x305a

    .line 727
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/g;->X:Landroid/opengl/EGLSurface;

    :cond_4
    return-void
.end method

.method private t()V
    .locals 5

    .line 732
    iget-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, "ElectronicFnoRenderer"

    if-nez v0, :cond_0

    const-string v0, "restoreRenderContext unregister fail"

    .line 734
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcn/nubia/camera/o/g;->W:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcn/nubia/camera/o/g;->X:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcn/nubia/camera/o/g;->V:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "restoreRenderContext register fail"

    .line 738
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 740
    iput-object v0, p0, Lcn/nubia/camera/o/g;->V:Landroid/opengl/EGLContext;

    .line 741
    iput-object v0, p0, Lcn/nubia/camera/o/g;->U:Landroid/opengl/EGLConfig;

    .line 742
    iput-object v0, p0, Lcn/nubia/camera/o/g;->T:Landroid/opengl/EGLDisplay;

    .line 743
    iput-object v0, p0, Lcn/nubia/camera/o/g;->W:Landroid/opengl/EGLSurface;

    .line 744
    iput-object v0, p0, Lcn/nubia/camera/o/g;->X:Landroid/opengl/EGLSurface;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ElectronicFnoRenderer"

    const-string v1, "cancel capture"

    .line 113
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/o/g;->I:Lcn/nubia/camera/o/g$a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/g$a;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/o/g;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcn/nubia/camera/o/g;->R:Z

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcn/nubia/camera/o/g;->Q:Z

    return-void
.end method

.method public a(III)V
    .locals 1

    int-to-float v0, p1

    .line 131
    iput v0, p0, Lcn/nubia/camera/o/g;->m:F

    int-to-float v0, p2

    .line 132
    iput v0, p0, Lcn/nubia/camera/o/g;->M:F

    .line 133
    iput p2, p0, Lcn/nubia/camera/o/g;->n:I

    .line 134
    iput p3, p0, Lcn/nubia/camera/o/g;->o:I

    const/4 p2, 0x0

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcn/nubia/camera/o/g;->N:Z

    .line 137
    iput-boolean p2, p0, Lcn/nubia/camera/o/g;->O:Z

    goto :goto_0

    .line 139
    :cond_0
    iput-boolean p2, p0, Lcn/nubia/camera/o/g;->N:Z

    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcn/nubia/camera/o/g;->Y:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/k/x$b;)V
    .locals 1

    .line 309
    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->h:I

    .line 310
    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/o/g;->g:I

    return-void
.end method

.method public a(Lcn/nubia/camera/o/c$a;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcn/nubia/camera/o/g;->a:Lcn/nubia/camera/o/c$a;

    return-void
.end method

.method public a(Lcom/android/common/c/f$b;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ElectronicFnoRenderer"

    const-string v0, "addRenderDataCopyListener is null"

    .line 648
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/g;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcn/nubia/camera/o/g;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    .line 447
    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->K:Z

    const-string v2, "ElectronicFnoRenderer"

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    const-string v0, "ElectronicFnoRenderer has been removed.."

    .line 448
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/g;->j()V

    move-object/from16 v3, p1

    .line 450
    invoke-virtual {v3, v1}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v10

    :cond_0
    move-object/from16 v3, p1

    .line 453
    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->R:Z

    const/4 v11, 0x0

    if-nez v0, :cond_3

    .line 454
    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->Q:Z

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, v1, Lcn/nubia/camera/o/g;->I:Lcn/nubia/camera/o/g$a;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Lcn/nubia/camera/o/g$a;->sendEmptyMessage(I)Z

    .line 456
    iput-boolean v11, v1, Lcn/nubia/camera/o/g;->Q:Z

    .line 458
    :cond_1
    iget-object v0, v1, Lcn/nubia/camera/o/g;->ad:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, v1, Lcn/nubia/camera/o/g;->L:I

    if-lez v0, :cond_2

    .line 459
    iget-object v0, v1, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 460
    iget-object v0, v1, Lcn/nubia/camera/o/g;->ad:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    return v11

    .line 464
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/o/g;->q()V

    .line 468
    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->Y:Z

    if-eqz v0, :cond_4

    .line 469
    iput-boolean v11, v1, Lcn/nubia/camera/o/g;->Y:Z

    .line 470
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/o/g;->s()V

    .line 472
    :try_start_0
    iget-object v0, v1, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0}, Lcn/nubia/camera/o/g;->b(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearSurfaceTexture fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/o/g;->t()V

    .line 479
    :cond_4
    iget-object v0, v1, Lcn/nubia/camera/o/g;->ad:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5

    .line 480
    iget-object v0, v1, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 481
    iget-object v0, v1, Lcn/nubia/camera/o/g;->ad:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 484
    :cond_5
    iget v0, v1, Lcn/nubia/camera/o/g;->M:F

    const/4 v12, 0x0

    cmpl-float v0, v0, v12

    if-gtz v0, :cond_6

    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->N:Z

    if-eqz v0, :cond_a

    :cond_6
    const-string v0, "ElectronicFnoRenderer Compute"

    .line 485
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->i:Z

    if-eqz v0, :cond_7

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/g;->h()V

    .line 488
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/g;->g()V

    .line 490
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 491
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/o/g;->m()V

    .line 492
    iput-boolean v11, v1, Lcn/nubia/camera/o/g;->i:Z

    .line 493
    iget-object v0, v1, Lcn/nubia/camera/o/g;->F:[F

    invoke-static {v0, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 495
    :cond_7
    iget-object v0, v1, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    iget-object v4, v1, Lcn/nubia/camera/o/g;->D:[F

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 496
    iget v0, v1, Lcn/nubia/camera/o/g;->g:I

    iget v4, v1, Lcn/nubia/camera/o/g;->h:I

    invoke-direct {v1, v0, v4, v9}, Lcn/nubia/camera/o/g;->a(IILcom/android/common/b/g;)V

    .line 498
    iget v0, v1, Lcn/nubia/camera/o/g;->P:I

    if-ne v0, v10, :cond_8

    .line 499
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/o/g;->n()V

    .line 502
    :cond_8
    iget v0, v1, Lcn/nubia/camera/o/g;->d:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glUseProgram(I)V

    .line 503
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 505
    iget v0, v1, Lcn/nubia/camera/o/g;->j:I

    iget v4, v1, Lcn/nubia/camera/o/g;->g:I

    invoke-static {v0, v4}, Landroid/opengl/GLES32;->glUniform1ui(II)V

    .line 506
    iget v0, v1, Lcn/nubia/camera/o/g;->l:I

    iget v4, v1, Lcn/nubia/camera/o/g;->m:F

    invoke-static {v0, v4}, Landroid/opengl/GLES32;->glUniform1f(IF)V

    .line 507
    iget v0, v1, Lcn/nubia/camera/o/g;->p:I

    iget v4, v1, Lcn/nubia/camera/o/g;->h:I

    invoke-static {v0, v4}, Landroid/opengl/GLES32;->glUniform1ui(II)V

    .line 508
    iget v0, v1, Lcn/nubia/camera/o/g;->q:I

    iget v4, v1, Lcn/nubia/camera/o/g;->P:I

    int-to-float v4, v4

    invoke-static {v0, v4}, Landroid/opengl/GLES32;->glUniform1f(IF)V

    .line 509
    iget v0, v1, Lcn/nubia/camera/o/g;->r:I

    iget v4, v1, Lcn/nubia/camera/o/g;->o:I

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    invoke-static {v0, v4}, Landroid/opengl/GLES32;->glUniform1f(IF)V

    .line 510
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const v0, 0x84c2

    .line 512
    invoke-static {v0}, Landroid/opengl/GLES32;->glActiveTexture(I)V

    .line 513
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const v0, 0x8d65

    .line 514
    iget v4, v1, Lcn/nubia/camera/o/g;->L:I

    invoke-static {v0, v4}, Landroid/opengl/GLES32;->glBindTexture(II)V

    .line 515
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 516
    iget v0, v1, Lcn/nubia/camera/o/g;->k:I

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/opengl/GLES32;->glUniform1i(II)V

    .line 517
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 v13, 0x0

    .line 518
    iget-object v0, v1, Lcn/nubia/camera/o/g;->f:[I

    aget v14, v0, v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x88ba

    const v19, 0x822e

    invoke-static/range {v13 .. v19}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 519
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/16 v20, 0x1

    .line 520
    iget-object v0, v1, Lcn/nubia/camera/o/g;->f:[I

    aget v21, v0, v10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0x88ba

    const v26, 0x822e

    invoke-static/range {v20 .. v26}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 521
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 v13, 0x2

    .line 522
    iget-object v0, v1, Lcn/nubia/camera/o/g;->f:[I

    aget v14, v0, v4

    invoke-static/range {v13 .. v19}, Landroid/opengl/GLES32;->glBindImageTexture(IIIZIII)V

    .line 523
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 524
    iget v0, v1, Lcn/nubia/camera/o/g;->g:I

    div-int/lit8 v0, v0, 0x4

    iget v4, v1, Lcn/nubia/camera/o/g;->h:I

    div-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4, v10}, Landroid/opengl/GLES32;->glDispatchCompute(III)V

    .line 525
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 526
    invoke-static {}, Landroid/opengl/GLES32;->glFinish()V

    .line 527
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 528
    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->N:Z

    if-nez v0, :cond_9

    .line 529
    iget-object v0, v1, Lcn/nubia/camera/o/g;->a:Lcn/nubia/camera/o/c$a;

    iget v4, v1, Lcn/nubia/camera/o/g;->n:I

    int-to-float v6, v4

    iget v7, v1, Lcn/nubia/camera/o/g;->M:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    int-to-float v4, v4

    div-float/2addr v6, v4

    float-to-int v4, v6

    invoke-interface {v0, v4}, Lcn/nubia/camera/o/c$a;->a(I)V

    .line 530
    iget v0, v1, Lcn/nubia/camera/o/g;->M:F

    sub-float/2addr v0, v5

    iput v0, v1, Lcn/nubia/camera/o/g;->M:F

    .line 532
    :cond_9
    iget v0, v1, Lcn/nubia/camera/o/g;->P:I

    add-int/2addr v0, v10

    iput v0, v1, Lcn/nubia/camera/o/g;->P:I

    .line 536
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/camera/o/g;->E:Landroid/graphics/Rect;

    const-string v0, "ElectronicFnoRenderer onDraw"

    .line 538
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 540
    iget-object v0, v1, Lcn/nubia/camera/o/g;->s:Lcom/android/common/b/l;

    invoke-virtual {v9, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 541
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/o/g;->p()V

    .line 542
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/o/g;->o()V

    .line 543
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->a()V

    .line 544
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 546
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 547
    iget-object v3, v1, Lcn/nubia/camera/o/g;->s:Lcom/android/common/b/l;

    iget-object v4, v1, Lcn/nubia/camera/o/g;->D:[F

    iget-object v0, v1, Lcn/nubia/camera/o/g;->E:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v1, Lcn/nubia/camera/o/g;->E:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v1, Lcn/nubia/camera/o/g;->E:Landroid/graphics/Rect;

    .line 549
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v0, v1, Lcn/nubia/camera/o/g;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v2, p2

    .line 547
    invoke-virtual/range {v2 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 552
    invoke-static {}, Landroid/opengl/GLES32;->glFinish()V

    .line 554
    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->N:Z

    if-nez v0, :cond_b

    iget v2, v1, Lcn/nubia/camera/o/g;->M:F

    cmpg-float v2, v2, v12

    if-lez v2, :cond_c

    :cond_b
    if-eqz v0, :cond_d

    iget-boolean v0, v1, Lcn/nubia/camera/o/g;->O:Z

    if-eqz v0, :cond_d

    .line 555
    :cond_c
    iget-object v0, v1, Lcn/nubia/camera/o/g;->I:Lcn/nubia/camera/o/g$a;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcn/nubia/camera/o/g$a;->sendEmptyMessage(I)Z

    .line 556
    iput-boolean v11, v1, Lcn/nubia/camera/o/g;->R:Z

    :cond_d
    return v10
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 694
    invoke-virtual {p0}, Lcn/nubia/camera/o/g;->j()V

    const/4 p1, 0x1

    .line 695
    iput-boolean p1, p0, Lcn/nubia/camera/o/g;->K:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 291
    iput v0, p0, Lcn/nubia/camera/o/g;->P:I

    .line 292
    iput-boolean v0, p0, Lcn/nubia/camera/o/g;->R:Z

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcn/nubia/camera/o/g;->Q:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcn/nubia/camera/o/g;->K:Z

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcn/nubia/camera/o/g;->O:Z

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/o/g;->I:Lcn/nubia/camera/o/g$a;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/g$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public g()V
    .locals 3

    .line 358
    invoke-static {}, Landroid/opengl/GLES32;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->d:I

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCompProgram = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/o/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoRenderer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    const v1, 0x91b9

    const-string v2, "#version 320 es\n#extension GL_OES_EGL_image_external_essl3 : require\n\nprecision highp int;\nprecision highp uint;\nprecision mediump image2D;\nprecision mediump imageBuffer;\nprecision highp float;\n\nlayout(local_size_x = 4, local_size_y = 4, local_size_z = 1) in;\nlayout(binding = 0, r32f) uniform  image2D desImagR;\nlayout(binding = 1, r32f) uniform  image2D desImagG;\nlayout(binding = 2, r32f) uniform  image2D desImagB;\nuniform uint width;\n//\u9884\u671f\u7684\u53e0\u52a0\u5e27\u6570\uff0c\u4e0d\u4e00\u5b9a\u7b49\u4e8e\u5b9e\u9645\u7684\u53e0\u52a0\u5e27\u6570\nuniform float num;\n//RGB\u4e09\u4e2a\u901a\u9053\u7684\u989c\u8272\u8865\u507f\nuniform float compensation;\n//\u8868\u793a\u5f53\u524d\u662f\u7b2c\u51e0\u5e27\nuniform float calculatetimes;\n//\u8f93\u5165\u7eb9\u7406\nuniform samplerExternalOES tex;\nuniform uint height;\nvoid main()\n{\n\n   vec4 color = texture(tex, vec2(gl_GlobalInvocationID.xy) / vec2(width, height));\n   ivec2 location = ivec2(gl_GlobalInvocationID.xy);\n\n   float r = imageLoad(desImagR, location).x;\n   if(num != -1.0f){\n       r = r*num + color.r*255.0f*compensation;\n       imageStore(desImagR, location, vec4(r/num,0,0,0));\n   }else{\n       r = (r*(calculatetimes-1.0f) + color.r*255.0f)/calculatetimes;\n       imageStore(desImagR, location, vec4(r,0,0,0));\n   }\n\n   float g = imageLoad(desImagG, location).x;\n   if(num != -1.0f){\n       g = g*num + color.g*255.0f*compensation;\n       imageStore(desImagG, location, vec4(g/num,0,0,0));\n   }else{\n       g = (g*(calculatetimes-1.0f) + color.g*255.0f)/calculatetimes;\n       imageStore(desImagG, location, vec4(g,0,0,0));\n   }\n\n   float b = imageLoad(desImagB, location).x;\n   if(num != -1.0f){\n       b = b*num + color.b*255.0f*compensation;\n       imageStore(desImagB, location, vec4(b/num,0,0,0));\n   }else{\n       b = (b*(calculatetimes-1.0f) + color.b*255.0f)/calculatetimes;\n       imageStore(desImagB, location, vec4(b,0,0,0));\n   }\n}\n"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/o/g;->a(IILjava/lang/String;)V

    .line 361
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glLinkProgram(I)V

    .line 363
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    const-string v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->j:I

    .line 364
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    const-string v1, "num"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->l:I

    .line 365
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    const-string v1, "tex"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->k:I

    .line 366
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    const-string v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->p:I

    .line 367
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    const-string v1, "calculatetimes"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->q:I

    .line 368
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    const-string v1, "compensation"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->r:I

    return-void
.end method

.method public h()V
    .locals 3

    .line 383
    invoke-static {}, Landroid/opengl/GLES32;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->t:I

    .line 384
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 385
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    const v1, 0x8b31

    const-string v2, "#version 320 es\n\nin vec2 aVertex;\nin vec2 aTexCoor;\nout vec2 vTexCoor;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\n\nvoid main()\n{\n    gl_Position = uMVPMatrix * vec4(aVertex, 0.0f, 1.0f);\n    vTexCoor = (uSTMatrix * vec4(aTexCoor,0.0f,1.0f)).st;\n}"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/o/g;->a(IILjava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 387
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    const v1, 0x8b30

    const-string v2, "#version 320 es\n\nprecision highp int;\nprecision highp uint;\nprecision highp float;\nprecision highp imageBuffer;\nprecision mediump image2D;\n\nlayout (binding = 0, r32f) readonly uniform image2D srcImageR;\nlayout (binding = 1, r32f) readonly uniform image2D srcImageG;\nlayout (binding = 2, r32f) readonly uniform image2D srcImageB;\n\nin vec2 vTexCoor;\nout vec4 uFragColor;\nuniform int width;\nuniform int height;\n\nvoid main()\n{\n    ivec2 location = ivec2(vTexCoor * vec2(width, height));\n    float r = float(imageLoad(srcImageR, location).x);\n    float rEx = r / 255.0f;\n    float g = float(imageLoad(srcImageG, location).x);\n    float gEx = g / 255.0f;\n    float b = float(imageLoad(srcImageB, location).x);\n    float bEx = b / 255.0f;\n    uFragColor = vec4(rEx, gEx, bEx, 1.0f);\n}\n"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/o/g;->a(IILjava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 389
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glLinkProgram(I)V

    .line 390
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 392
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->u:I

    .line 393
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 394
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->z:I

    .line 395
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 396
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    const-string v1, "aVertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->v:I

    .line 397
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 398
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    const-string v1, "aTexCoor"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->w:I

    .line 399
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 403
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    const-string v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->y:I

    .line 404
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 405
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    const-string v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES32;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/g;->x:I

    .line 406
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 408
    invoke-virtual {p0}, Lcn/nubia/camera/o/g;->i()V

    .line 409
    invoke-direct {p0}, Lcn/nubia/camera/o/g;->l()V

    return-void
.end method

.method public i()V
    .locals 20

    move-object/from16 v0, p0

    .line 415
    iget-object v1, v0, Lcn/nubia/camera/o/g;->A:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 416
    iget-object v12, v0, Lcn/nubia/camera/o/g;->B:[F

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x40400000    # 3.0f

    const/high16 v19, 0x40c00000    # 6.0f

    invoke-static/range {v12 .. v19}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 417
    iget-object v1, v0, Lcn/nubia/camera/o/g;->C:[F

    iget-object v3, v0, Lcn/nubia/camera/o/g;->B:[F

    iget-object v5, v0, Lcn/nubia/camera/o/g;->A:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 660
    iget-object v0, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    .line 661
    iget-object v0, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 662
    iput-object v0, p0, Lcn/nubia/camera/o/g;->J:Landroid/graphics/SurfaceTexture;

    .line 664
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/o/g;->r()V

    .line 665
    iget v0, p0, Lcn/nubia/camera/o/g;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 666
    iget v0, p0, Lcn/nubia/camera/o/g;->t:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 667
    iput v0, p0, Lcn/nubia/camera/o/g;->d:I

    .line 668
    iput v0, p0, Lcn/nubia/camera/o/g;->t:I

    .line 669
    iget v0, p0, Lcn/nubia/camera/o/g;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 670
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 671
    iput v1, p0, Lcn/nubia/camera/o/g;->e:I

    :cond_1
    return-void
.end method

.method public k()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcn/nubia/camera/o/g;->ad:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
