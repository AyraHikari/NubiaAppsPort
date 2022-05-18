.class public Lcn/nubia/camera/ah/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ah/e$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lcn/nubia/camera/ah/e$a;

.field private C:Z

.field private D:Z

.field private E:Z

.field private final F:[F

.field private final G:[F

.field private a:I

.field private b:I

.field private c:Ljava/nio/FloatBuffer;

.field private d:Ljava/nio/FloatBuffer;

.field private e:I

.field private f:Lcn/nubia/camera/ah/f;

.field private g:Landroid/graphics/SurfaceTexture;

.field private h:F

.field private i:I

.field private j:I

.field private k:[F

.field private l:[F

.field private m:Lcom/android/common/b/l;

.field private n:Lcom/android/common/b/l;

.field private o:Lcom/android/common/b/l;

.field private p:Lcom/android/common/b/l;

.field private q:Lcn/nubia/camera/ah/a$b;

.field private final r:Ljava/lang/String;

.field private s:Landroid/graphics/Rect;

.field private volatile t:Z

.field private u:Z

.field private final v:I

.field private final w:I

.field private x:Ljava/lang/Object;

.field private y:Ljava/nio/ByteBuffer;

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/c/f$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcn/nubia/camera/ah/e;->e:I

    .line 42
    iput v0, p0, Lcn/nubia/camera/ah/e;->i:I

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 44
    iput-object v2, p0, Lcn/nubia/camera/ah/e;->k:[F

    new-array v1, v1, [F

    .line 45
    iput-object v1, p0, Lcn/nubia/camera/ah/e;->l:[F

    const-string v1, "MultiExposureRender"

    .line 52
    iput-object v1, p0, Lcn/nubia/camera/ah/e;->r:Ljava/lang/String;

    .line 54
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->t:Z

    .line 55
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->u:Z

    .line 56
    iput v0, p0, Lcn/nubia/camera/ah/e;->v:I

    const/4 v1, 0x1

    .line 57
    iput v1, p0, Lcn/nubia/camera/ah/e;->w:I

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ah/e;->x:Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ah/e;->z:Ljava/util/ArrayList;

    .line 61
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->A:Z

    .line 62
    new-instance v1, Lcn/nubia/camera/ah/e$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/ah/e$a;-><init>(Lcn/nubia/camera/ah/e;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/camera/ah/e;->B:Lcn/nubia/camera/ah/e$a;

    .line 63
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->C:Z

    .line 64
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->D:Z

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 153
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcn/nubia/camera/ah/e;->F:[F

    new-array v1, v1, [F

    .line 159
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcn/nubia/camera/ah/e;->G:[F

    .line 77
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/ah/e;->a(II)V

    .line 78
    iput v0, p0, Lcn/nubia/camera/ah/e;->i:I

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

.method static synthetic a(Lcn/nubia/camera/ah/e;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/ah/e;->x:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/ah/e;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/ah/e;->y:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private a(IILandroid/graphics/Rect;I)V
    .locals 7

    const/16 v0, 0x4100

    .line 253
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 254
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {v0, v1, v2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 255
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/16 p3, 0xbd0

    .line 256
    invoke-static {p3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 257
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/16 p3, 0xb71

    .line 258
    invoke-static {p3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 259
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 260
    invoke-static {p3, p3, p3, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 261
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 262
    iget-object p3, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p3, p3, Lcn/nubia/camera/ah/f;->a:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 263
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 264
    iget-object p3, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p3, p3, Lcn/nubia/camera/ah/f;->h:I

    iget v0, p0, Lcn/nubia/camera/ah/e;->j:I

    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 265
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 266
    iget-object p3, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p3, p3, Lcn/nubia/camera/ah/f;->k:I

    iget-boolean v0, p0, Lcn/nubia/camera/ah/e;->E:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 267
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 268
    iget-object p3, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p3, p3, Lcn/nubia/camera/ah/f;->g:I

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 269
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 270
    iget-object p3, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p3, p3, Lcn/nubia/camera/ah/f;->f:I

    iget p4, p0, Lcn/nubia/camera/ah/e;->h:F

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 271
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 272
    iget-object p3, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p3, p3, Lcn/nubia/camera/ah/f;->c:I

    iget-object p4, p0, Lcn/nubia/camera/ah/e;->l:[F

    const/4 v0, 0x0

    invoke-static {p3, v1, v0, p4, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 273
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 274
    iget-object p3, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p3, p3, Lcn/nubia/camera/ah/f;->b:I

    iget-object p4, p0, Lcn/nubia/camera/ah/e;->k:[F

    invoke-static {p3, v1, v0, p4, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 275
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const p3, 0x84c0

    .line 276
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 277
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const p3, 0x8d65

    .line 278
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 279
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 280
    iget-object p2, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p2, p2, Lcn/nubia/camera/ah/f;->i:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 281
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const p2, 0x84c1

    .line 282
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 283
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/16 p2, 0xde1

    .line 284
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 285
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 286
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p1, p1, Lcn/nubia/camera/ah/f;->j:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 287
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 289
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget v1, p1, Lcn/nubia/camera/ah/f;->d:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcn/nubia/camera/ah/e;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 290
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 291
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p1, p1, Lcn/nubia/camera/ah/f;->d:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 292
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 294
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget v1, p1, Lcn/nubia/camera/ah/f;->e:I

    iget-object v6, p0, Lcn/nubia/camera/ah/e;->d:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 295
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 296
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    iget p1, p1, Lcn/nubia/camera/ah/f;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 297
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 298
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 299
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method private a(IILcom/android/common/b/g;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->m:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p1, p2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/ah/e;->m:Lcom/android/common/b/l;

    .line 104
    invoke-virtual {v0, p3}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->n:Lcom/android/common/b/l;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p1, p2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/ah/e;->n:Lcom/android/common/b/l;

    .line 108
    invoke-virtual {v0, p3}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 110
    :cond_1
    iget p1, p0, Lcn/nubia/camera/ah/e;->i:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 111
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->n:Lcom/android/common/b/l;

    iput-object p1, p0, Lcn/nubia/camera/ah/e;->o:Lcom/android/common/b/l;

    .line 112
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->m:Lcom/android/common/b/l;

    iput-object p1, p0, Lcn/nubia/camera/ah/e;->p:Lcom/android/common/b/l;

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->m:Lcom/android/common/b/l;

    iput-object p1, p0, Lcn/nubia/camera/ah/e;->o:Lcom/android/common/b/l;

    .line 115
    iget-object p1, p0, Lcn/nubia/camera/ah/e;->n:Lcom/android/common/b/l;

    iput-object p1, p0, Lcn/nubia/camera/ah/e;->p:Lcom/android/common/b/l;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ah/e;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcn/nubia/camera/ah/e;->A:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ah/e;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/ah/e;->y:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/ah/e;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/ah/e;->z:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/ah/e;)I
    .locals 0

    .line 32
    iget p0, p0, Lcn/nubia/camera/ah/e;->a:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/ah/e;)I
    .locals 0

    .line 32
    iget p0, p0, Lcn/nubia/camera/ah/e;->b:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/ah/e;)Lcn/nubia/camera/ah/a$b;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/ah/e;->q:Lcn/nubia/camera/ah/a$b;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->F:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    .line 167
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ah/e;->c:Ljava/nio/FloatBuffer;

    .line 169
    iget-object v1, p0, Lcn/nubia/camera/ah/e;->F:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->G:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    .line 172
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 173
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ah/e;->d:Ljava/nio/FloatBuffer;

    .line 174
    iget-object v2, p0, Lcn/nubia/camera/ah/e;->G:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private k()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->g:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 307
    iput-object v1, p0, Lcn/nubia/camera/ah/e;->g:Landroid/graphics/SurfaceTexture;

    .line 309
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ah/e;->l()V

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v0}, Lcn/nubia/camera/ah/f;->a()V

    .line 312
    iput-object v1, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->o:Lcom/android/common/b/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    iput-object v1, p0, Lcn/nubia/camera/ah/e;->o:Lcom/android/common/b/l;

    .line 320
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->p:Lcom/android/common/b/l;

    if-eqz v0, :cond_1

    .line 321
    iput-object v1, p0, Lcn/nubia/camera/ah/e;->p:Lcom/android/common/b/l;

    .line 323
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->m:Lcom/android/common/b/l;

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 325
    iput-object v1, p0, Lcn/nubia/camera/ah/e;->m:Lcom/android/common/b/l;

    .line 327
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->n:Lcom/android/common/b/l;

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 329
    iput-object v1, p0, Lcn/nubia/camera/ah/e;->n:Lcom/android/common/b/l;

    :cond_3
    return-void
.end method

.method private m()Z
    .locals 9

    .line 355
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/ah/e;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ah/e;->y:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ah/e;->z:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MultiExposureRender"

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataFromGPU! dataWidth X dataHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/ah/e;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/ah/e;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget v0, p0, Lcn/nubia/camera/ah/e;->a:I

    iget v2, p0, Lcn/nubia/camera/ah/e;->b:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ah/e;->y:Ljava/nio/ByteBuffer;

    .line 360
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 362
    iget v4, p0, Lcn/nubia/camera/ah/e;->a:I

    iget v5, p0, Lcn/nubia/camera/ah/e;->b:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    iget-object v8, p0, Lcn/nubia/camera/ah/e;->y:Ljava/nio/ByteBuffer;

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 363
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->B:Lcn/nubia/camera/ah/e$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ah/e$a;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->C:Z

    .line 365
    iput-boolean v1, p0, Lcn/nubia/camera/ah/e;->D:Z

    .line 366
    iput v1, p0, Lcn/nubia/camera/ah/e;->i:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 370
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    .line 371
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->D:Z

    .line 89
    iput v0, p0, Lcn/nubia/camera/ah/e;->i:I

    return-void
.end method

.method public a(FZ)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPictureNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/ah/e;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiExposureRender"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput p1, p0, Lcn/nubia/camera/ah/e;->h:F

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcn/nubia/camera/ah/e;->t:Z

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 143
    iput p1, p0, Lcn/nubia/camera/ah/e;->a:I

    .line 144
    iput p2, p0, Lcn/nubia/camera/ah/e;->b:I

    return-void
.end method

.method public a(ILjava/lang/String;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 82
    iput p1, p0, Lcn/nubia/camera/ah/e;->j:I

    .line 83
    invoke-static {p2}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/ah/e;->E:Z

    .line 84
    iput-object p3, p0, Lcn/nubia/camera/ah/e;->g:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public a(Lcn/nubia/camera/ah/a$b;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/ah/e;->q:Lcn/nubia/camera/ah/a$b;

    return-void
.end method

.method public a(Lcom/android/common/c/f$b;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "MultiExposureRender"

    const-string v0, "addOneShotOverlayDataListener fail! listener is null"

    .line 335
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ah/e;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    iget-object v1, p0, Lcn/nubia/camera/ah/e;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
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

    .line 120
    iput-boolean p1, p0, Lcn/nubia/camera/ah/e;->t:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 7

    .line 192
    iget-boolean v0, p0, Lcn/nubia/camera/ah/e;->u:Z

    const-string v1, "MultiExposureRender"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    .line 194
    invoke-direct {p0}, Lcn/nubia/camera/ah/e;->k()V

    const-string p1, "removeRenderer itself"

    .line 195
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/ah/e;->D:Z

    if-nez v0, :cond_1

    .line 199
    invoke-direct {p0}, Lcn/nubia/camera/ah/e;->l()V

    return v2

    .line 202
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    if-nez v0, :cond_2

    .line 203
    new-instance v0, Lcn/nubia/camera/ah/f;

    invoke-direct {v0}, Lcn/nubia/camera/ah/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ah/e;->f:Lcn/nubia/camera/ah/f;

    .line 204
    invoke-virtual {p0}, Lcn/nubia/camera/ah/e;->f()V

    .line 205
    invoke-virtual {p0}, Lcn/nubia/camera/ah/e;->g()V

    .line 206
    invoke-direct {p0}, Lcn/nubia/camera/ah/e;->j()V

    .line 209
    :cond_2
    iget v0, p0, Lcn/nubia/camera/ah/e;->i:I

    .line 210
    iget v3, p0, Lcn/nubia/camera/ah/e;->a:I

    iget v4, p0, Lcn/nubia/camera/ah/e;->b:I

    invoke-direct {p0, v3, v4, p2}, Lcn/nubia/camera/ah/e;->a(IILcom/android/common/b/g;)V

    .line 211
    iget-boolean v3, p0, Lcn/nubia/camera/ah/e;->t:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcn/nubia/camera/ah/e;->i:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 214
    iget-object v3, p0, Lcn/nubia/camera/ah/e;->o:Lcom/android/common/b/l;

    invoke-virtual {p2, v3}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 215
    iget-object v3, p0, Lcn/nubia/camera/ah/e;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_3

    .line 216
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 218
    :cond_3
    iget-object v3, p0, Lcn/nubia/camera/ah/e;->l:[F

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 219
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/camera/ah/e;->a:I

    iget v6, p0, Lcn/nubia/camera/ah/e;->b:I

    invoke-direct {v3, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcn/nubia/camera/ah/e;->s:Landroid/graphics/Rect;

    .line 220
    iget-object v3, p0, Lcn/nubia/camera/ah/e;->p:Lcom/android/common/b/l;

    invoke-virtual {v3}, Lcom/android/common/b/l;->a()I

    move-result v3

    iget v5, p0, Lcn/nubia/camera/ah/e;->e:I

    iget-object v6, p0, Lcn/nubia/camera/ah/e;->s:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v5, v6, v0}, Lcn/nubia/camera/ah/e;->a(IILandroid/graphics/Rect;I)V

    .line 222
    iget-object v3, p0, Lcn/nubia/camera/ah/e;->q:Lcn/nubia/camera/ah/a$b;

    if-eqz v3, :cond_4

    .line 223
    invoke-interface {v3}, Lcn/nubia/camera/ah/a$b;->a()V

    .line 225
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/ah/e;->m()Z

    move-result v3

    .line 226
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 227
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 229
    iput-boolean v2, p0, Lcn/nubia/camera/ah/e;->t:Z

    if-nez v3, :cond_5

    .line 232
    iget-object v2, p0, Lcn/nubia/camera/ah/e;->B:Lcn/nubia/camera/ah/e$a;

    invoke-virtual {v2, v4}, Lcn/nubia/camera/ah/e$a;->sendEmptyMessage(I)Z

    .line 237
    :cond_5
    iget-boolean v2, p0, Lcn/nubia/camera/ah/e;->C:Z

    if-eqz v2, :cond_6

    const-string p1, "isDataCopied!!  return true"

    .line 238
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    if-lez v0, :cond_7

    .line 242
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 243
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ah/e;->s:Landroid/graphics/Rect;

    .line 244
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/ah/e;->l:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 245
    iget-object v1, p0, Lcn/nubia/camera/ah/e;->o:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result p1

    iget-object v2, p0, Lcn/nubia/camera/ah/e;->s:Landroid/graphics/Rect;

    add-int/2addr v0, v4

    invoke-direct {p0, v1, p1, v2, v0}, Lcn/nubia/camera/ah/e;->a(IILandroid/graphics/Rect;I)V

    .line 246
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    :cond_7
    return v4
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

    .line 425
    invoke-direct {p0}, Lcn/nubia/camera/ah/e;->k()V

    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lcn/nubia/camera/ah/e;->u:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->u:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcn/nubia/camera/ah/e;->D:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 125
    iput-boolean v1, p0, Lcn/nubia/camera/ah/e;->D:Z

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->C:Z

    .line 128
    :cond_0
    iget v0, p0, Lcn/nubia/camera/ah/e;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/ah/e;->i:I

    return-void
.end method

.method public f()V
    .locals 2

    .line 148
    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ah/e;->e:I

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->g:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcn/nubia/camera/ah/e;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    return-void
.end method

.method public g()V
    .locals 13

    const/16 v0, 0x10

    new-array v12, v0, [F

    new-array v0, v0, [F

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

    move-object v1, v12

    .line 180
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40c00000    # 6.0f

    move-object v1, v0

    .line 181
    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 182
    iget-object v1, p0, Lcn/nubia/camera/ah/e;->k:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/ah/e;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ah/e;->z:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 350
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcn/nubia/camera/ah/e;->A:Z

    return-void
.end method
