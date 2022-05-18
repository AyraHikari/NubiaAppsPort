.class public Lcn/nubia/camera/au/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/au/f$a;
    }
.end annotation


# instance fields
.field private A:[Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Lcn/nubia/camera/au/k;

.field private M:I

.field private N:I

.field private O:Landroid/util/Size;

.field private P:Z

.field private Q:Lcn/nubia/algorithm/camera/a;

.field private R:I

.field private S:Z

.field private T:Z

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/c/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/c/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcn/nubia/camera/au/f$a;

.field private j:Landroid/content/Context;

.field private k:Z

.field private l:Lcn/nubia/camera/h/a;

.field private m:Lcom/android/common/b/l;

.field private n:Lcom/android/common/b/l;

.field private o:Lcom/android/common/b/l;

.field private p:Lcom/android/common/b/e;

.field private q:[F

.field private r:[F

.field private s:[F

.field private t:Ljava/nio/FloatBuffer;

.field private u:F

.field private v:F

.field private w:Z

.field private x:I

.field private y:[I

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/Size;)V
    .locals 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcn/nubia/camera/au/f;->a:Z

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->b:Z

    .line 46
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->c:Z

    .line 47
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    .line 48
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->e:Z

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/au/f;->g:Ljava/util/ArrayList;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/au/f;->h:Ljava/util/ArrayList;

    .line 53
    new-instance v2, Lcn/nubia/camera/au/f$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcn/nubia/camera/au/f$a;-><init>(Lcn/nubia/camera/au/f;Landroid/os/Looper;)V

    iput-object v2, p0, Lcn/nubia/camera/au/f;->i:Lcn/nubia/camera/au/f$a;

    .line 56
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->k:Z

    const/16 v2, 0x10

    new-array v3, v2, [F

    .line 63
    iput-object v3, p0, Lcn/nubia/camera/au/f;->q:[F

    new-array v3, v2, [F

    .line 64
    iput-object v3, p0, Lcn/nubia/camera/au/f;->r:[F

    new-array v2, v2, [F

    .line 65
    iput-object v2, p0, Lcn/nubia/camera/au/f;->s:[F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    iput v2, p0, Lcn/nubia/camera/au/f;->u:F

    const/4 v2, 0x0

    .line 68
    iput v2, p0, Lcn/nubia/camera/au/f;->v:F

    .line 70
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->w:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 72
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcn/nubia/camera/au/f;->y:[I

    const v3, 0x8d65

    .line 75
    iput v3, p0, Lcn/nubia/camera/au/f;->B:I

    .line 91
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->P:Z

    const/4 v4, -0x1

    .line 95
    iput v4, p0, Lcn/nubia/camera/au/f;->R:I

    .line 504
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->S:Z

    .line 541
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->T:Z

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/au/f;->j:Landroid/content/Context;

    .line 100
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/camera/au/f;->M:I

    .line 101
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/camera/au/f;->N:I

    .line 102
    iput-object p2, p0, Lcn/nubia/camera/au/f;->O:Landroid/util/Size;

    const/16 p2, 0x14

    new-array p2, p2, [F

    .line 103
    fill-array-data p2, :array_1

    const/16 v4, 0x50

    .line 111
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 112
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/f;->t:Ljava/nio/FloatBuffer;

    .line 113
    invoke-virtual {v4, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array p2, v2, [Ljava/lang/String;

    const v4, 0x7f0e0043

    .line 115
    invoke-static {p1, v4}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v1

    const v5, 0x7f0e0038

    const/16 v6, 0xde1

    .line 116
    invoke-static {p1, v5, v6}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v0

    iput-object p2, p0, Lcn/nubia/camera/au/f;->z:[Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/String;

    .line 117
    invoke-static {p1, v4}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 118
    invoke-static {p1, v5, v3}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    iput-object p2, p0, Lcn/nubia/camera/au/f;->A:[Ljava/lang/String;

    .line 120
    iget-object p1, p0, Lcn/nubia/camera/au/f;->r:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/au/f;->s:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcn/nubia/camera/au/f;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/au/f;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/au/f;->f:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private a(Lcom/android/common/b/a;Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 8

    .line 368
    iget-object p3, p0, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    invoke-virtual {p3}, Lcom/android/common/b/l;->b()I

    move-result p3

    iget-object v0, p0, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p3, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 370
    iget p3, p0, Lcn/nubia/camera/au/f;->x:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p3, 0xbe2

    .line 373
    invoke-static {p3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p3, 0x302

    const/16 v0, 0x303

    .line 374
    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 376
    iget-object p3, p0, Lcn/nubia/camera/au/f;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 377
    iget v2, p0, Lcn/nubia/camera/au/f;->C:I

    iget-object v7, p0, Lcn/nubia/camera/au/f;->t:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 379
    iget p3, p0, Lcn/nubia/camera/au/f;->C:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 381
    iget-object p3, p0, Lcn/nubia/camera/au/f;->t:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 382
    iget v2, p0, Lcn/nubia/camera/au/f;->D:I

    iget-object v7, p0, Lcn/nubia/camera/au/f;->t:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 384
    iget p3, p0, Lcn/nubia/camera/au/f;->D:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 386
    iget p3, p0, Lcn/nubia/camera/au/f;->E:I

    iget-object v2, p0, Lcn/nubia/camera/au/f;->s:[F

    const/4 v3, 0x1

    invoke-static {p3, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 387
    iget p3, p0, Lcn/nubia/camera/au/f;->F:I

    iget-object v2, p0, Lcn/nubia/camera/au/f;->r:[F

    invoke-static {p3, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 388
    invoke-virtual {p2}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/camera/au/f;->q:[F

    invoke-virtual {p2, p3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 389
    iget p2, p0, Lcn/nubia/camera/au/f;->G:I

    iget-object p3, p0, Lcn/nubia/camera/au/f;->q:[F

    invoke-static {p2, v3, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 390
    iget p2, p0, Lcn/nubia/camera/au/f;->J:I

    iget p3, p0, Lcn/nubia/camera/au/f;->v:F

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 391
    iget p2, p0, Lcn/nubia/camera/au/f;->K:I

    iget p3, p0, Lcn/nubia/camera/au/f;->u:F

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const p2, 0x84c3

    .line 393
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 394
    invoke-virtual {p1}, Lcom/android/common/b/a;->f()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/common/b/a;->a()I

    move-result p1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 395
    iget p1, p0, Lcn/nubia/camera/au/f;->H:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c2

    .line 397
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 398
    iget-object p1, p0, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    invoke-virtual {p1}, Lcom/android/common/b/l;->a()I

    move-result p1

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 399
    iget p1, p0, Lcn/nubia/camera/au/f;->I:I

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 401
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private a(Lcom/android/common/b/g;)V
    .locals 3

    .line 405
    iget-boolean v0, p0, Lcn/nubia/camera/au/f;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/f;->l:Lcn/nubia/camera/h/a;

    if-nez v0, :cond_1

    .line 409
    new-instance v0, Lcn/nubia/camera/h/a;

    iget-object v1, p0, Lcn/nubia/camera/au/f;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/camera/h/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/au/f;->l:Lcn/nubia/camera/h/a;

    .line 411
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    if-nez v0, :cond_2

    .line 412
    new-instance v0, Lcom/android/common/b/l;

    iget-object v1, p0, Lcn/nubia/camera/au/f;->O:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/au/f;->O:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    .line 413
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/android/common/b/g;II)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p2, p3}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    .line 429
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p2, p3}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    .line 433
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/au/f;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/au/f;->f:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/au/f;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/au/f;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/au/f;)I
    .locals 0

    .line 42
    iget p0, p0, Lcn/nubia/camera/au/f;->M:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/au/f;)I
    .locals 0

    .line 42
    iget p0, p0, Lcn/nubia/camera/au/f;->N:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/au/f;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/au/f;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method private f()V
    .locals 9

    .line 306
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/au/f;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/au/f;->f:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/au/f;->h:Ljava/util/ArrayList;

    .line 308
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/au/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcn/nubia/camera/au/f;->e:Z

    .line 310
    iget v1, p0, Lcn/nubia/camera/au/f;->M:I

    iget v2, p0, Lcn/nubia/camera/au/f;->N:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/au/f;->f:Ljava/nio/ByteBuffer;

    .line 311
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget-object v1, p0, Lcn/nubia/camera/au/f;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 313
    iget v4, p0, Lcn/nubia/camera/au/f;->M:I

    iget v5, p0, Lcn/nubia/camera/au/f;->N:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    iget-object v8, p0, Lcn/nubia/camera/au/f;->f:Ljava/nio/ByteBuffer;

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 314
    iget-object v1, p0, Lcn/nubia/camera/au/f;->i:Lcn/nubia/camera/au/f$a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/au/f$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 317
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    .line 318
    throw v0
.end method

.method private g()V
    .locals 5

    .line 323
    iget-object v0, p0, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 325
    iput-object v1, p0, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    .line 327
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 329
    iput-object v1, p0, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    .line 331
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/f;->l:Lcn/nubia/camera/h/a;

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v0}, Lcn/nubia/camera/h/a;->b()V

    .line 333
    iput-object v1, p0, Lcn/nubia/camera/au/f;->l:Lcn/nubia/camera/h/a;

    .line 335
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 337
    iput-object v1, p0, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    .line 339
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/au/f;->Q:Lcn/nubia/algorithm/camera/a;

    if-eqz v0, :cond_4

    .line 340
    invoke-interface {v0}, Lcn/nubia/algorithm/camera/a;->a()V

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 341
    iget v3, p0, Lcn/nubia/camera/au/f;->R:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 342
    iput-object v1, p0, Lcn/nubia/camera/au/f;->Q:Lcn/nubia/algorithm/camera/a;

    const/4 v0, -0x1

    .line 343
    iput v0, p0, Lcn/nubia/camera/au/f;->R:I

    .line 345
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/au/f;->h()V

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/au/f;->L:Lcn/nubia/camera/au/k;

    invoke-virtual {v0}, Lcn/nubia/camera/au/k;->a()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 350
    iget-boolean v0, p0, Lcn/nubia/camera/au/f;->w:Z

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/f;->y:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 354
    iget-object v0, p0, Lcn/nubia/camera/au/f;->y:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 355
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/camera/au/f;->y:[I

    .line 356
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 357
    iput v1, p0, Lcn/nubia/camera/au/f;->x:I

    .line 358
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->w:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private i()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    .line 363
    iget-object v1, p0, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    iput-object v1, p0, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    .line 364
    iput-object v0, p0, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    return-void
.end method

.method private j()V
    .locals 5

    .line 418
    iget-object v0, p0, Lcn/nubia/camera/au/f;->Q:Lcn/nubia/algorithm/camera/a;

    if-nez v0, :cond_0

    const v0, 0x8d65

    .line 419
    invoke-static {v0}, Lcn/nubia/camera/v/a;->a(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/au/f;->R:I

    .line 420
    new-instance v1, Lcn/nubia/algorithm/camera/YuvHardwareTexture;

    iget-object v2, p0, Lcn/nubia/camera/au/f;->O:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/au/f;->O:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v4, p0, Lcn/nubia/camera/au/f;->R:I

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/algorithm/camera/YuvHardwareTexture;-><init>(III)V

    iput-object v1, p0, Lcn/nubia/camera/au/f;->Q:Lcn/nubia/algorithm/camera/a;

    .line 421
    new-instance v1, Lcom/android/common/b/e;

    iget v2, p0, Lcn/nubia/camera/au/f;->R:I

    iget-object v3, p0, Lcn/nubia/camera/au/f;->O:Landroid/util/Size;

    .line 422
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/au/f;->O:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/common/b/e;-><init>(IIII)V

    iput-object v1, p0, Lcn/nubia/camera/au/f;->p:Lcom/android/common/b/e;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    .line 438
    iget-boolean v0, p0, Lcn/nubia/camera/au/f;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lcn/nubia/camera/au/f;->w:Z

    .line 442
    iget-boolean v1, p0, Lcn/nubia/camera/au/f;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcn/nubia/camera/au/f;->z:[Ljava/lang/String;

    aget-object v3, v1, v2

    aget-object v1, v1, v0

    invoke-static {v3, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/au/f;->y:[I

    const/16 v1, 0xde1

    .line 444
    iput v1, p0, Lcn/nubia/camera/au/f;->B:I

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/au/f;->A:[Ljava/lang/String;

    aget-object v3, v1, v2

    aget-object v1, v1, v0

    invoke-static {v3, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/au/f;->y:[I

    const v1, 0x8d65

    .line 448
    iput v1, p0, Lcn/nubia/camera/au/f;->B:I

    .line 450
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/au/f;->y:[I

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "StarTrackRenderer"

    if-nez v0, :cond_2

    const-string v0, "mProgram = 0"

    .line 452
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 454
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProgram = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/camera/au/f;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_1
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->C:I

    .line 457
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->D:I

    .line 458
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->E:I

    .line 459
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->F:I

    .line 460
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "uPreviewSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->G:I

    .line 461
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "sTargetTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->I:I

    .line 462
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->H:I

    .line 463
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "threshold"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->J:I

    .line 464
    iget v0, p0, Lcn/nubia/camera/au/f;->x:I

    const-string v1, "ratio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/au/f;->K:I

    return-void
.end method

.method private l()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 544
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->T:Z

    .line 545
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcn/nubia/camera/au/f;->c:Z

    return-void
.end method

.method public a(Landroid/view/Surface;III)V
    .locals 1

    .line 525
    new-instance v0, Lcn/nubia/camera/au/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/camera/au/k;-><init>(Landroid/view/Surface;III)V

    iput-object v0, p0, Lcn/nubia/camera/au/f;->L:Lcn/nubia/camera/au/k;

    return-void
.end method

.method public a(Lcom/android/common/c/f$b;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "StarTrackRenderer"

    const-string v0, "addOneShotOverlayDataListener fail! listener is null"

    .line 283
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 287
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->e:Z

    .line 288
    iget-object v1, p0, Lcn/nubia/camera/au/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcn/nubia/camera/au/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcn/nubia/camera/au/f;->b:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    .line 132
    iget-object v2, v1, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    :try_start_0
    iget-boolean v3, v1, Lcn/nubia/camera/au/f;->c:Z

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcn/nubia/camera/au/f;->e:Z

    if-nez v3, :cond_0

    move v3, v14

    goto :goto_0

    :cond_0
    move v3, v15

    .line 134
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_1

    .line 136
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/au/f;->g()V

    .line 137
    invoke-virtual {v0, v1}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const-string v0, "StarTrackRenderer"

    const-string v2, "removeRenderer itself"

    .line 138
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    .line 142
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v12

    .line 143
    iget v2, v1, Lcn/nubia/camera/au/f;->M:I

    iget v3, v1, Lcn/nubia/camera/au/f;->N:I

    invoke-direct {v1, v13, v2, v3}, Lcn/nubia/camera/au/f;->a(Lcom/android/common/b/g;II)V

    .line 144
    invoke-direct {v1, v13}, Lcn/nubia/camera/au/f;->a(Lcom/android/common/b/g;)V

    .line 145
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/au/f;->j()V

    .line 146
    iget v2, v1, Lcn/nubia/camera/au/f;->B:I

    const/16 v3, 0xde1

    if-ne v2, v3, :cond_2

    iget-boolean v3, v1, Lcn/nubia/camera/au/f;->k:Z

    if-eqz v3, :cond_3

    :cond_2
    const v3, 0x8d65

    if-ne v2, v3, :cond_4

    iget-boolean v2, v1, Lcn/nubia/camera/au/f;->k:Z

    if-eqz v2, :cond_4

    .line 148
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/au/f;->h()V

    .line 150
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/au/f;->k()V

    .line 153
    iget-object v3, v1, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 154
    :try_start_1
    iget-boolean v2, v1, Lcn/nubia/camera/au/f;->S:Z

    if-nez v2, :cond_6

    iget-boolean v2, v1, Lcn/nubia/camera/au/f;->e:Z

    if-nez v2, :cond_6

    .line 155
    iget-boolean v0, v1, Lcn/nubia/camera/au/f;->T:Z

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, v1, Lcn/nubia/camera/au/f;->L:Lcn/nubia/camera/au/k;

    invoke-virtual {v0}, Lcn/nubia/camera/au/k;->a()V

    .line 158
    :cond_5
    monitor-exit v3

    return v15

    .line 160
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 162
    iget-boolean v2, v1, Lcn/nubia/camera/au/f;->b:Z

    if-nez v2, :cond_7

    return v14

    :cond_7
    const-string v2, "StarTrackRenderer"

    const-string v3, "onDraw"

    .line 166
    invoke-static {v2, v3}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v11, v1, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    monitor-enter v11

    .line 170
    :try_start_2
    iget-boolean v2, v1, Lcn/nubia/camera/au/f;->P:Z

    if-eqz v2, :cond_b

    .line 172
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/au/f;->i()V

    .line 174
    iget-boolean v2, v1, Lcn/nubia/camera/au/f;->a:Z

    if-eqz v2, :cond_8

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 176
    iget-object v2, v1, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    invoke-virtual {v13, v2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 177
    iget-object v2, v1, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    invoke-virtual {v2}, Lcom/android/common/b/l;->b()I

    move-result v5

    iget-object v2, v1, Lcn/nubia/camera/au/f;->n:Lcom/android/common/b/l;

    invoke-virtual {v2}, Lcom/android/common/b/l;->c()I

    move-result v6

    const/high16 v7, -0x1000000

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/common/b/g;->a(IIIII)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->a()V

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 180
    iput-boolean v15, v1, Lcn/nubia/camera/au/f;->a:Z

    .line 182
    :cond_8
    iget-boolean v2, v1, Lcn/nubia/camera/au/f;->k:Z

    if-eqz v2, :cond_9

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 184
    iget-object v2, v1, Lcn/nubia/camera/au/f;->l:Lcn/nubia/camera/h/a;

    new-instance v3, Landroid/util/Size;

    iget-object v4, v1, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    invoke-virtual {v4}, Lcom/android/common/b/l;->b()I

    move-result v4

    iget-object v5, v1, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    invoke-virtual {v5}, Lcom/android/common/b/l;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Lcn/nubia/camera/h/a;->a(Landroid/util/Size;)V

    .line 185
    iget-object v2, v1, Lcn/nubia/camera/au/f;->l:Lcn/nubia/camera/h/a;

    iget-object v3, v1, Lcn/nubia/camera/au/f;->s:[F

    iget-object v4, v1, Lcn/nubia/camera/au/f;->r:[F

    iget-object v5, v1, Lcn/nubia/camera/au/f;->t:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v1, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    .line 186
    invoke-virtual {v8}, Lcom/android/common/b/l;->b()I

    move-result v8

    iget-object v9, v1, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    invoke-virtual {v9}, Lcom/android/common/b/l;->c()I

    move-result v9

    iget-object v10, v1, Lcn/nubia/camera/au/f;->p:Lcom/android/common/b/e;

    iget-object v14, v1, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v11

    move-object v11, v14

    move-object v14, v12

    move-object/from16 v12, p2

    .line 185
    :try_start_3
    invoke-virtual/range {v2 .. v12}, Lcn/nubia/camera/h/a;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    goto :goto_1

    :cond_9
    move-object/from16 v16, v11

    move-object v14, v12

    .line 191
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 192
    iget-object v2, v1, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    invoke-virtual {v13, v2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 193
    iget-boolean v2, v1, Lcn/nubia/camera/au/f;->k:Z

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcn/nubia/camera/au/f;->m:Lcom/android/common/b/l;

    goto :goto_2

    :cond_a
    iget-object v2, v1, Lcn/nubia/camera/au/f;->p:Lcom/android/common/b/e;

    .line 194
    :goto_2
    invoke-direct {v1, v2, v0, v13}, Lcn/nubia/camera/au/f;->a(Lcom/android/common/b/a;Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    .line 195
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 197
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/au/f;->f()V

    .line 198
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->a()V

    .line 199
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 201
    iput-boolean v15, v1, Lcn/nubia/camera/au/f;->P:Z

    .line 203
    iget-object v2, v1, Lcn/nubia/camera/au/f;->L:Lcn/nubia/camera/au/k;

    iget-object v3, v1, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    iget-object v4, v1, Lcn/nubia/camera/au/f;->r:[F

    invoke-virtual {v2, v0, v13, v3, v4}, Lcn/nubia/camera/au/k;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/b/l;[F)V

    goto :goto_3

    :cond_b
    move-object/from16 v16, v11

    move-object v14, v12

    .line 205
    :goto_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 209
    iget-object v3, v1, Lcn/nubia/camera/au/f;->o:Lcom/android/common/b/l;

    iget-object v4, v1, Lcn/nubia/camera/au/f;->r:[F

    iget v5, v14, Landroid/graphics/Rect;->left:I

    iget v6, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v11

    .line 205
    :goto_4
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 160
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 134
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public declared-synchronized a([B)Z
    .locals 1

    monitor-enter p0

    .line 529
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/au/f;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 530
    monitor-exit p0

    return p1

    .line 532
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/au/f;->Q:Lcn/nubia/algorithm/camera/a;

    invoke-interface {v0, p1}, Lcn/nubia/algorithm/camera/a;->a([B)V

    const/4 p1, 0x1

    .line 533
    iput-boolean p1, p0, Lcn/nubia/camera/au/f;->P:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 538
    iput-boolean p1, p0, Lcn/nubia/camera/au/f;->k:Z

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
    .locals 1

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcn/nubia/camera/au/f;->c:Z

    .line 223
    iget-boolean v0, p0, Lcn/nubia/camera/au/f;->e:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/au/f;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    .line 226
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/au/f;->g()V

    .line 227
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 508
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->P:Z

    const/4 v2, 0x1

    .line 509
    iput-boolean v2, p0, Lcn/nubia/camera/au/f;->S:Z

    .line 510
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->b:Z

    .line 511
    iput-boolean v2, p0, Lcn/nubia/camera/au/f;->a:Z

    .line 512
    iget-object v2, p0, Lcn/nubia/camera/au/f;->i:Lcn/nubia/camera/au/f$a;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/au/f$a;->removeMessages(I)V

    .line 513
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->e:Z

    .line 514
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcn/nubia/camera/au/f;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 519
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/au/f;->S:Z

    .line 520
    invoke-direct {p0}, Lcn/nubia/camera/au/f;->l()V

    .line 521
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
