.class public Lcn/nubia/camera/lightpainting/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/lightpainting/a$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Lcn/nubia/camera/au/k;

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Lcom/android/common/c/f$b;

.field private M:Lcom/android/common/c/f$b;

.field private N:Ljava/nio/ByteBuffer;

.field private O:Z

.field private P:Z

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Lcn/nubia/camera/lightpainting/a$a;

.field private f:Lcom/android/common/b/l;

.field private g:Lcom/android/common/b/l;

.field private h:Lcom/android/common/b/e;

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:I

.field private k:[F

.field private l:[F

.field private m:[F

.field private n:Ljava/nio/FloatBuffer;

.field private o:F

.field private p:F

.field private q:Z

.field private r:I

.field private s:[I

.field private t:[Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->a:Z

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->b:Z

    .line 42
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->c:Z

    .line 43
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    .line 44
    new-instance v2, Lcn/nubia/camera/lightpainting/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcn/nubia/camera/lightpainting/a$a;-><init>(Lcn/nubia/camera/lightpainting/a;Landroid/os/Looper;)V

    iput-object v2, p0, Lcn/nubia/camera/lightpainting/a;->e:Lcn/nubia/camera/lightpainting/a$a;

    const/16 v2, 0x10

    new-array v3, v2, [F

    .line 51
    iput-object v3, p0, Lcn/nubia/camera/lightpainting/a;->k:[F

    new-array v3, v2, [F

    .line 52
    iput-object v3, p0, Lcn/nubia/camera/lightpainting/a;->l:[F

    new-array v2, v2, [F

    .line 53
    iput-object v2, p0, Lcn/nubia/camera/lightpainting/a;->m:[F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    iput v2, p0, Lcn/nubia/camera/lightpainting/a;->o:F

    const/4 v2, 0x0

    .line 56
    iput v2, p0, Lcn/nubia/camera/lightpainting/a;->p:F

    .line 58
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->q:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 60
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcn/nubia/camera/lightpainting/a;->s:[I

    .line 74
    iput v1, p0, Lcn/nubia/camera/lightpainting/a;->E:I

    .line 78
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->H:Z

    .line 79
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->I:Z

    .line 508
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->J:Z

    .line 509
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    const/4 v3, 0x0

    .line 510
    iput-object v3, p0, Lcn/nubia/camera/lightpainting/a;->L:Lcom/android/common/c/f$b;

    .line 511
    iput-object v3, p0, Lcn/nubia/camera/lightpainting/a;->M:Lcom/android/common/c/f$b;

    .line 512
    iput-object v3, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    .line 513
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->O:Z

    .line 555
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->P:Z

    .line 83
    iput-object p2, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    .line 84
    iput p3, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    .line 85
    iput p4, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    const/16 p2, 0x14

    new-array p2, p2, [F

    .line 86
    fill-array-data p2, :array_1

    const/16 p3, 0x50

    .line 94
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 95
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/camera/lightpainting/a;->n:Ljava/nio/FloatBuffer;

    .line 96
    invoke-virtual {p3, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array p2, v2, [Ljava/lang/String;

    const p3, 0x7f0e0043

    .line 98
    invoke-static {p1, p3}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    const p3, 0x7f0e0038

    .line 99
    invoke-static {p1, p3}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    iput-object p2, p0, Lcn/nubia/camera/lightpainting/a;->t:[Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a;->l:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 102
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a;->m:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

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

.method static synthetic a(Lcn/nubia/camera/lightpainting/a;Lcom/android/common/c/f$b;)Lcom/android/common/c/f$b;
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/a;->L:Lcom/android/common/c/f$b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/a;)Ljava/lang/Object;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/a;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private a(Lcom/android/common/b/g;II)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p2, p3}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    .line 390
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p2, p3}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    .line 394
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/lightpainting/a;Lcom/android/common/c/f$b;)Lcom/android/common/c/f$b;
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/a;->M:Lcom/android/common/c/f$b;

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/lightpainting/a;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/a;->L:Lcom/android/common/c/f$b;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/lightpainting/a;)I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    return p0
.end method

.method private d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 8

    .line 333
    iget-object p2, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    invoke-virtual {p2}, Lcom/android/common/b/l;->b()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 335
    iget p2, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p2, 0xbe2

    .line 338
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p2, 0x302

    const/16 v0, 0x303

    .line 339
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 341
    iget-object p2, p0, Lcn/nubia/camera/lightpainting/a;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 342
    iget v2, p0, Lcn/nubia/camera/lightpainting/a;->u:I

    iget-object v7, p0, Lcn/nubia/camera/lightpainting/a;->n:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 344
    iget p2, p0, Lcn/nubia/camera/lightpainting/a;->u:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 346
    iget-object p2, p0, Lcn/nubia/camera/lightpainting/a;->n:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget v2, p0, Lcn/nubia/camera/lightpainting/a;->v:I

    iget-object v7, p0, Lcn/nubia/camera/lightpainting/a;->n:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 349
    iget p2, p0, Lcn/nubia/camera/lightpainting/a;->v:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 351
    iget p2, p0, Lcn/nubia/camera/lightpainting/a;->w:I

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/a;->m:[F

    const/4 v3, 0x1

    invoke-static {p2, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 352
    iget p2, p0, Lcn/nubia/camera/lightpainting/a;->x:I

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/a;->l:[F

    invoke-static {p2, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 353
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/lightpainting/a;->k:[F

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 354
    iget p1, p0, Lcn/nubia/camera/lightpainting/a;->y:I

    iget-object p2, p0, Lcn/nubia/camera/lightpainting/a;->k:[F

    invoke-static {p1, v3, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 355
    iget p1, p0, Lcn/nubia/camera/lightpainting/a;->B:I

    iget p2, p0, Lcn/nubia/camera/lightpainting/a;->p:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 356
    iget p1, p0, Lcn/nubia/camera/lightpainting/a;->C:I

    iget p2, p0, Lcn/nubia/camera/lightpainting/a;->o:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const p1, 0x84c3

    .line 358
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 359
    iget p1, p0, Lcn/nubia/camera/lightpainting/a;->j:I

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 360
    iget p1, p0, Lcn/nubia/camera/lightpainting/a;->z:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c2

    .line 362
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 363
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    invoke-virtual {p1}, Lcom/android/common/b/l;->a()I

    move-result p1

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 364
    iget p1, p0, Lcn/nubia/camera/lightpainting/a;->A:I

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 366
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/lightpainting/a;)I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/a;->M:Lcom/android/common/c/f$b;

    return-object p0
.end method

.method private h()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 293
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    .line 295
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 297
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    .line 299
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    const-string v2, "LightPaintingRenderer"

    if-eqz v0, :cond_2

    .line 301
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 302
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    .line 303
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 304
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    .line 305
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->h:Lcom/android/common/b/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :goto_0
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    .line 310
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->h:Lcom/android/common/b/e;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 307
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release error! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :goto_1
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    .line 310
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->h:Lcom/android/common/b/e;

    .line 311
    throw v0

    .line 313
    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->s:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->s:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 315
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/a;->s:[I

    .line 316
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 317
    iput v3, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    .line 318
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->q:Z

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->D:Lcn/nubia/camera/au/k;

    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {v0}, Lcn/nubia/camera/au/k;->a()V

    .line 321
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->D:Lcn/nubia/camera/au/k;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/lightpainting/a;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
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

    .line 327
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    .line 328
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    .line 329
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    return-void
.end method

.method private j()V
    .locals 6

    .line 370
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->h:Lcom/android/common/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->j:I

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurfaceTextureForCamera: mSurfaceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurfaceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightPaintingRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Lcom/android/common/b/e;

    iget v2, p0, Lcn/nubia/camera/lightpainting/a;->j:I

    const v3, 0x8d65

    iget v4, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    iget v5, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/common/b/e;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/a;->h:Lcom/android/common/b/e;

    .line 380
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcn/nubia/camera/lightpainting/a;->j:I

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachFromGLContext error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private k()V
    .locals 4

    .line 399
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->q:Z

    .line 403
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->t:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-object v1, v1, v0

    invoke-static {v3, v1}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->s:[I

    .line 404
    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "LightPaintingRenderer"

    if-nez v0, :cond_1

    const-string v0, "mProgram = 0"

    .line 406
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProgram = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->u:I

    .line 411
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->v:I

    .line 412
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->w:I

    .line 413
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->x:I

    .line 414
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "uPreviewSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->y:I

    .line 415
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "sTargetTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->A:I

    .line 416
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->z:I

    .line 417
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "threshold"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->B:I

    .line 418
    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->r:I

    const-string v1, "ratio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/a;->C:I

    return-void
.end method

.method private l()V
    .locals 11

    .line 423
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->M:Lcom/android/common/c/f$b;

    if-eqz v1, :cond_0

    .line 427
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    .line 428
    iget v1, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    iget v4, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    mul-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    .line 429
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 430
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 431
    iget v6, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    iget v7, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    iget-object v10, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 432
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->e:Lcn/nubia/camera/lightpainting/a$a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/lightpainting/a$a;->removeMessages(I)V

    .line 433
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->e:Lcn/nubia/camera/lightpainting/a$a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/lightpainting/a$a;->sendEmptyMessage(I)Z

    .line 434
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->O:Z

    goto :goto_0

    .line 436
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->O:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->L:Lcom/android/common/c/f$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    .line 439
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->O:Z

    .line 440
    iget v1, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    iget v4, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    mul-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    .line 441
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 442
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 443
    iget v5, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    iget v6, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    iget-object v9, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 444
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->e:Lcn/nubia/camera/lightpainting/a$a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/lightpainting/a$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 448
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    .line 449
    throw v1

    .line 451
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private m()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 558
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->P:Z

    .line 559
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

    .line 279
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->c:Z

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 272
    iput p1, p0, Lcn/nubia/camera/lightpainting/a;->p:F

    return-void
.end method

.method public a(Landroid/view/Surface;III)V
    .locals 1

    .line 551
    new-instance v0, Lcn/nubia/camera/au/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/camera/au/k;-><init>(Landroid/view/Surface;III)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/a;->D:Lcn/nubia/camera/au/k;

    const/4 p1, 0x0

    .line 552
    iput p1, p0, Lcn/nubia/camera/lightpainting/a;->E:I

    return-void
.end method

.method public a(Lcom/android/common/c/f$b;)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 525
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->O:Z

    .line 526
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/a;->L:Lcom/android/common/c/f$b;

    .line 527
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

    .line 287
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/a;->b:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 10

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->c:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 115
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->h()V

    .line 118
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const-string p1, "LightPaintingRenderer"

    const-string p2, "removeRenderer itself"

    .line 119
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 124
    iget v1, p0, Lcn/nubia/camera/lightpainting/a;->F:I

    iget v4, p0, Lcn/nubia/camera/lightpainting/a;->G:I

    invoke-direct {p0, p2, v1, v4}, Lcn/nubia/camera/lightpainting/a;->a(Lcom/android/common/b/g;II)V

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->j()V

    .line 126
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->k()V

    .line 129
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "LightPaintingRenderer"

    const-string v5, "updateTexImage fail!"

    .line 131
    invoke-static {v4, v5, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_2
    iget-boolean v4, p0, Lcn/nubia/camera/lightpainting/a;->J:Z

    const/4 v5, 0x0

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    if-nez v4, :cond_4

    .line 137
    iget-boolean p1, p0, Lcn/nubia/camera/lightpainting/a;->P:Z

    if-eqz p1, :cond_3

    .line 138
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a;->D:Lcn/nubia/camera/au/k;

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Lcn/nubia/camera/au/k;->a()V

    .line 140
    iput-object v5, p0, Lcn/nubia/camera/lightpainting/a;->D:Lcn/nubia/camera/au/k;

    const-string p1, "LightPaintingRenderer"

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcn/nubia/camera/lightpainting/a;->E:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " frame"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->P:Z

    .line 145
    :cond_3
    monitor-exit v1

    return v3

    .line 147
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->b:Z

    if-nez v1, :cond_6

    .line 150
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_3
    iget-boolean p1, p0, Lcn/nubia/camera/lightpainting/a;->J:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    if-eqz p1, :cond_5

    .line 152
    iput-object v5, p0, Lcn/nubia/camera/lightpainting/a;->N:Ljava/nio/ByteBuffer;

    .line 153
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a;->e:Lcn/nubia/camera/lightpainting/a$a;

    invoke-virtual {p1, v2}, Lcn/nubia/camera/lightpainting/a$a;->removeMessages(I)V

    .line 154
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a;->e:Lcn/nubia/camera/lightpainting/a$a;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/lightpainting/a$a;->sendEmptyMessage(I)Z

    .line 155
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->O:Z

    .line 156
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    .line 158
    :cond_5
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_6
    const-string v1, "LightPaintingRenderer"

    const-string v4, "onDraw"

    .line 162
    invoke-static {v1, v4}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->a:Z

    if-eqz v1, :cond_7

    .line 165
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 166
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    invoke-virtual {p2, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 167
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->b()I

    move-result v7

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->c()I

    move-result v8

    const/high16 v9, -0x1000000

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/common/b/g;->a(IIIII)V

    .line 168
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 169
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 170
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->a:Z

    .line 173
    :cond_7
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->H:Z

    if-eqz v1, :cond_a

    .line 174
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->I:Z

    if-eqz v1, :cond_9

    .line 175
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/a;->I:Z

    .line 178
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 179
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    invoke-virtual {p2, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 180
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/lightpainting/a;->d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    .line 181
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 182
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 183
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 186
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->D:Lcn/nubia/camera/au/k;

    if-eqz v1, :cond_8

    .line 187
    iget-object v3, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    iget-object v4, p0, Lcn/nubia/camera/lightpainting/a;->l:[F

    invoke-virtual {v1, p1, p2, v3, v4}, Lcn/nubia/camera/au/k;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/b/l;[F)V

    .line 188
    iget p1, p0, Lcn/nubia/camera/lightpainting/a;->E:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/nubia/camera/lightpainting/a;->E:I

    .line 191
    :cond_8
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->i()V

    .line 195
    :cond_9
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 196
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    invoke-virtual {p2, p1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 197
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 199
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->l()V

    .line 200
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 201
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 204
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 205
    invoke-virtual {p2, p1}, Lcom/android/common/b/g;->a(F)V

    .line 206
    iget-object v4, p0, Lcn/nubia/camera/lightpainting/a;->f:Lcom/android/common/b/l;

    iget-object v5, p0, Lcn/nubia/camera/lightpainting/a;->l:[F

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object v3, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 207
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    return v2

    .line 213
    :cond_a
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 214
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    invoke-virtual {p2, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 215
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/lightpainting/a;->d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    .line 216
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 218
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->l()V

    .line 219
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 220
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 222
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 223
    iget-object v4, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    iget-object v5, p0, Lcn/nubia/camera/lightpainting/a;->l:[F

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object v3, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 224
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->D:Lcn/nubia/camera/au/k;

    if-eqz v0, :cond_b

    .line 228
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a;->g:Lcom/android/common/b/l;

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/a;->l:[F

    invoke-virtual {v0, p1, p2, v1, v3}, Lcn/nubia/camera/au/k;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/b/l;[F)V

    .line 229
    iget p1, p0, Lcn/nubia/camera/lightpainting/a;->E:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/nubia/camera/lightpainting/a;->E:I

    .line 233
    :cond_b
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->i()V

    return v2

    :catchall_1
    move-exception p1

    .line 147
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 115
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/android/common/c/f$b;)V
    .locals 2

    .line 532
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->J:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 535
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    .line 536
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/a;->M:Lcom/android/common/c/f$b;

    .line 538
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->m()V

    :cond_1
    const/4 p1, 0x0

    .line 541
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/a;->O:Z

    const/4 v1, 0x0

    .line 542
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/a;->L:Lcom/android/common/c/f$b;

    .line 543
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/a;->J:Z

    .line 545
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/a;->H:Z

    .line 546
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/a;->I:Z

    .line 547
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRelease\uff1a stop\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightPaintingRenderer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->c:Z

    .line 248
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->K:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/lightpainting/a;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    .line 251
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/a;->h()V

    .line 252
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 517
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->J:Z

    const/4 v2, 0x0

    .line 518
    iput-boolean v2, p0, Lcn/nubia/camera/lightpainting/a;->b:Z

    .line 519
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/a;->a:Z

    .line 520
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
    .locals 1

    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->H:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 567
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->H:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 571
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/a;->I:Z

    return-void
.end method
