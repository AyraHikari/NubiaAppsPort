.class public Lcn/nubia/camera/bd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/bd/f$a;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private B:Lcom/android/common/b/l;

.field private C:Lcom/android/common/b/l;

.field private D:Lcom/android/common/b/l;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/c/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private F:Z

.field private G:Ljava/nio/ByteBuffer;

.field private H:Ljava/lang/Object;

.field private I:Lcn/nubia/camera/bd/f$a;

.field private J:I

.field private K:I

.field private L:Landroid/graphics/SurfaceTexture;

.field a:Z

.field private b:Ljava/nio/FloatBuffer;

.field private c:Ljava/nio/FloatBuffer;

.field private d:I

.field private e:Z

.field private f:[F

.field private g:[F

.field private h:[F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcn/nubia/camera/bd/a;

.field private o:Lcn/nubia/camera/bd/a;

.field private p:Lcn/nubia/camera/bd/a;

.field private q:Lcn/nubia/camera/bd/a;

.field private r:Lcn/nubia/camera/bd/a;

.field private s:Z

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(F)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcn/nubia/camera/bd/f;->d:I

    .line 36
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->e:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 38
    iput-object v2, p0, Lcn/nubia/camera/bd/f;->f:[F

    new-array v2, v1, [F

    .line 39
    iput-object v2, p0, Lcn/nubia/camera/bd/f;->g:[F

    new-array v1, v1, [F

    .line 40
    iput-object v1, p0, Lcn/nubia/camera/bd/f;->h:[F

    .line 41
    iput v0, p0, Lcn/nubia/camera/bd/f;->i:I

    .line 42
    iput v0, p0, Lcn/nubia/camera/bd/f;->j:I

    .line 43
    iput v0, p0, Lcn/nubia/camera/bd/f;->k:I

    .line 44
    iput v0, p0, Lcn/nubia/camera/bd/f;->l:I

    .line 45
    iput v0, p0, Lcn/nubia/camera/bd/f;->m:I

    .line 57
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->y:Z

    .line 70
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->z:Z

    const-string v1, "ZoomBlurRender"

    .line 71
    iput-object v1, p0, Lcn/nubia/camera/bd/f;->A:Ljava/lang/String;

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcn/nubia/camera/bd/f;->B:Lcom/android/common/b/l;

    .line 74
    iput-object v1, p0, Lcn/nubia/camera/bd/f;->C:Lcom/android/common/b/l;

    .line 75
    iput-object v1, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/bd/f;->E:Ljava/util/ArrayList;

    .line 78
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->F:Z

    .line 79
    iput-object v1, p0, Lcn/nubia/camera/bd/f;->G:Ljava/nio/ByteBuffer;

    .line 80
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/bd/f;->H:Ljava/lang/Object;

    .line 82
    new-instance v1, Lcn/nubia/camera/bd/f$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/bd/f$a;-><init>(Lcn/nubia/camera/bd/f;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/camera/bd/f;->I:Lcn/nubia/camera/bd/f$a;

    .line 86
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->a:Z

    .line 89
    iput p1, p0, Lcn/nubia/camera/bd/f;->x:F

    .line 90
    iget-object p1, p0, Lcn/nubia/camera/bd/f;->f:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 91
    iget-object p1, p0, Lcn/nubia/camera/bd/f;->g:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 92
    iget-object p1, p0, Lcn/nubia/camera/bd/f;->h:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 93
    new-instance p1, Lcn/nubia/camera/bd/a;

    invoke-direct {p1}, Lcn/nubia/camera/bd/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bd/f;->n:Lcn/nubia/camera/bd/a;

    .line 94
    new-instance p1, Lcn/nubia/camera/bd/a;

    invoke-direct {p1}, Lcn/nubia/camera/bd/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bd/f;->o:Lcn/nubia/camera/bd/a;

    .line 95
    new-instance p1, Lcn/nubia/camera/bd/a;

    invoke-direct {p1}, Lcn/nubia/camera/bd/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bd/f;->p:Lcn/nubia/camera/bd/a;

    .line 96
    new-instance p1, Lcn/nubia/camera/bd/a;

    invoke-direct {p1}, Lcn/nubia/camera/bd/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bd/f;->q:Lcn/nubia/camera/bd/a;

    .line 97
    new-instance p1, Lcn/nubia/camera/bd/a;

    invoke-direct {p1}, Lcn/nubia/camera/bd/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bd/f;->r:Lcn/nubia/camera/bd/a;

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/bd/f;->d()V

    .line 99
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->s:Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bd/f;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/bd/f;->H:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/bd/f;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/camera/bd/f;->G:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private a(II)V
    .locals 21

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 107
    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v2, 0x10

    new-array v9, v2, [F

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v1

    div-float v4, v5, v4

    new-array v7, v2, [F

    const/4 v11, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object v10, v7

    move v12, v3

    move v13, v4

    move v15, v3

    move/from16 v16, v4

    .line 112
    invoke-static/range {v10 .. v20}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    new-array v5, v2, [F

    neg-float v12, v3

    neg-float v14, v4

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v10, v5

    move v13, v3

    move v15, v4

    .line 114
    invoke-static/range {v10 .. v17}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    .line 115
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v2, p0

    .line 117
    iput-object v9, v2, Lcn/nubia/camera/bd/f;->h:[F

    .line 118
    invoke-direct/range {p0 .. p2}, Lcn/nubia/camera/bd/f;->b(II)V

    return-void
.end method

.method private a(IIILcn/nubia/camera/bd/a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 266
    invoke-static/range {p1 .. p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 267
    iget v2, v1, Lcn/nubia/camera/bd/a;->j:I

    iget-object v3, v0, Lcn/nubia/camera/bd/f;->g:[F

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 268
    iget v2, v1, Lcn/nubia/camera/bd/a;->c:I

    iget-object v3, v0, Lcn/nubia/camera/bd/f;->h:[F

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 269
    iget v6, v1, Lcn/nubia/camera/bd/a;->a:I

    iget-object v11, v0, Lcn/nubia/camera/bd/f;->b:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 270
    iget v12, v1, Lcn/nubia/camera/bd/a;->b:I

    iget-object v2, v0, Lcn/nubia/camera/bd/f;->c:Ljava/nio/FloatBuffer;

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 271
    iget v2, v1, Lcn/nubia/camera/bd/a;->a:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 272
    iget v1, v1, Lcn/nubia/camera/bd/a;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    .line 273
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 274
    invoke-static/range {p2 .. p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 275
    invoke-static {v1, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private a(ILcn/nubia/camera/bd/a;IIIIZ)V
    .locals 6

    .line 212
    iget-boolean v0, p0, Lcn/nubia/camera/bd/f;->s:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p7, :cond_0

    const/high16 p7, 0x40a00000    # 5.0f

    .line 218
    iget v4, p0, Lcn/nubia/camera/bd/f;->u:F

    mul-float/2addr v4, p7

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    float-to-double v3, v4

    .line 219
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p7, v3

    const/high16 v3, 0x43480000    # 200.0f

    .line 220
    iget v4, p0, Lcn/nubia/camera/bd/f;->t:F

    goto :goto_0

    .line 222
    :cond_0
    iget p7, p0, Lcn/nubia/camera/bd/f;->u:F

    mul-float/2addr p7, v3

    div-float/2addr p7, v2

    add-float/2addr p7, v3

    float-to-double v4, p7

    .line 223
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p7, v4

    sub-float v3, p7, v3

    div-float p7, v3, p7

    const/high16 v3, 0x3f000000    # 0.5f

    .line 225
    iget v4, p0, Lcn/nubia/camera/bd/f;->t:F

    :goto_0
    mul-float/2addr v4, v3

    div-float/2addr v4, v2

    add-float/2addr v4, v1

    .line 229
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 230
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 231
    iget p1, p2, Lcn/nubia/camera/bd/a;->d:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 232
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 233
    iget p1, p2, Lcn/nubia/camera/bd/a;->e:I

    int-to-float p3, p3

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 234
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 235
    iget p1, p2, Lcn/nubia/camera/bd/a;->f:I

    int-to-float p3, p4

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 236
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 237
    iget p1, p2, Lcn/nubia/camera/bd/a;->h:I

    invoke-static {p1, p7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 238
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 239
    iget p1, p2, Lcn/nubia/camera/bd/a;->g:I

    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 240
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 241
    iget p1, p2, Lcn/nubia/camera/bd/a;->i:I

    iget p3, p0, Lcn/nubia/camera/bd/f;->v:F

    iget p4, p0, Lcn/nubia/camera/bd/f;->w:F

    invoke-static {p1, p3, p4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 242
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 244
    iget p1, p2, Lcn/nubia/camera/bd/a;->j:I

    iget-object p3, p0, Lcn/nubia/camera/bd/f;->g:[F

    const/4 p4, 0x1

    const/4 p7, 0x0

    invoke-static {p1, p4, p7, p3, p7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 245
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 246
    iget p1, p2, Lcn/nubia/camera/bd/a;->c:I

    iget-object p3, p0, Lcn/nubia/camera/bd/f;->h:[F

    invoke-static {p1, p4, p7, p3, p7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 247
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 248
    iget v0, p2, Lcn/nubia/camera/bd/a;->a:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcn/nubia/camera/bd/f;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 249
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 250
    iget p1, p2, Lcn/nubia/camera/bd/a;->a:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 251
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 252
    iget v0, p2, Lcn/nubia/camera/bd/a;->b:I

    iget-object v5, p0, Lcn/nubia/camera/bd/f;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 253
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 254
    iget p1, p2, Lcn/nubia/camera/bd/a;->b:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 255
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const p1, 0x84c0

    .line 256
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 257
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 258
    invoke-static {p5, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 259
    invoke-static {}, Lcom/android/common/b/g;->d()I

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 260
    invoke-static {p1, p7, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 261
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method

.method private a(Lcom/android/common/b/g;)V
    .locals 7

    .line 330
    invoke-direct {p0}, Lcn/nubia/camera/bd/f;->e()V

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 334
    iget-boolean v0, p0, Lcn/nubia/camera/bd/f;->y:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v2, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcn/nubia/camera/bd/f;->d:I

    iget v4, p0, Lcn/nubia/camera/bd/f;->J:I

    iget v5, p0, Lcn/nubia/camera/bd/f;->K:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/camera/bd/f;->a(Lcom/android/common/b/g;Landroid/graphics/SurfaceTexture;IIIZ)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcn/nubia/camera/bd/f;->d:I

    iget v4, p0, Lcn/nubia/camera/bd/f;->J:I

    iget v5, p0, Lcn/nubia/camera/bd/f;->K:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/bd/f;->b(Lcom/android/common/b/g;Landroid/graphics/SurfaceTexture;IIIZ)V

    .line 341
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 342
    iget v2, p0, Lcn/nubia/camera/bd/f;->d:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 343
    iput v3, p0, Lcn/nubia/camera/bd/f;->d:I

    return-void
.end method

.method private a(Lcom/android/common/b/g;II)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->B:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/android/common/b/l;

    div-int/lit8 v1, p2, 0x2

    div-int/lit8 v2, p3, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/bd/f;->B:Lcom/android/common/b/l;

    .line 193
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->C:Lcom/android/common/b/l;

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Lcom/android/common/b/l;

    div-int/lit8 v1, p2, 0x2

    div-int/lit8 v2, p3, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/bd/f;->C:Lcom/android/common/b/l;

    .line 197
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    if-nez v0, :cond_2

    .line 200
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p2, p3}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    .line 201
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bd/f;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcn/nubia/camera/bd/f;->F:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/bd/f;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/bd/f;->G:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private b(II)V
    .locals 4

    int-to-float p1, p1

    int-to-float p2, p2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput p1, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v3, 0x4

    aput v2, v0, v3

    const/4 v2, 0x5

    aput p2, v0, v2

    const/4 v2, 0x6

    aput p1, v0, v2

    const/4 p1, 0x7

    aput p2, v0, p1

    const/16 p1, 0x20

    .line 140
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bd/f;->b:Ljava/nio/FloatBuffer;

    .line 141
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private b(Lcom/android/common/b/g;Landroid/graphics/SurfaceTexture;IIIZ)V
    .locals 8

    .line 385
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    invoke-virtual {v0, p4, p5}, Lcom/android/common/b/l;->c(II)V

    .line 386
    invoke-direct {p0, p4, p5}, Lcn/nubia/camera/bd/f;->a(II)V

    .line 387
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->g:[F

    invoke-virtual {p2, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 388
    invoke-virtual {p1}, Lcom/android/common/b/g;->f()V

    .line 389
    iget-object p2, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 390
    iget v1, p0, Lcn/nubia/camera/bd/f;->k:I

    iget-object v2, p0, Lcn/nubia/camera/bd/f;->p:Lcn/nubia/camera/bd/a;

    const v5, 0x8d65

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p4

    move v4, p5

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/bd/f;->a(ILcn/nubia/camera/bd/a;IIIIZ)V

    if-eqz p6, :cond_0

    .line 393
    invoke-direct {p0, p4, p5}, Lcn/nubia/camera/bd/f;->c(II)V

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/b/g;->a()V

    .line 396
    invoke-virtual {p1}, Lcom/android/common/b/g;->g()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/bd/f;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/bd/f;->E:Ljava/util/ArrayList;

    return-object p0
.end method

.method private c(II)V
    .locals 10

    .line 401
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->H:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :try_start_1
    iget-boolean v1, p0, Lcn/nubia/camera/bd/f;->F:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/bd/f;->G:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/bd/f;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    .line 403
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bd/f;->G:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 404
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 405
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    .line 406
    iget-object v9, p0, Lcn/nubia/camera/bd/f;->G:Ljava/nio/ByteBuffer;

    move v5, p1

    move v6, p2

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 407
    iget-object p1, p0, Lcn/nubia/camera/bd/f;->I:Lcn/nubia/camera/bd/f$a;

    invoke-virtual {p1, v2}, Lcn/nubia/camera/bd/f$a;->sendEmptyMessage(I)Z

    .line 409
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 411
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    .line 412
    throw p1
.end method

.method static synthetic d(Lcn/nubia/camera/bd/f;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/camera/bd/f;->J:I

    return p0
.end method

.method private d()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 145
    fill-array-data v0, :array_0

    const/16 v1, 0x20

    .line 152
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bd/f;->c:Ljava/nio/FloatBuffer;

    .line 153
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
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

.method static synthetic e(Lcn/nubia/camera/bd/f;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/camera/bd/f;->K:I

    return p0
.end method

.method private e()V
    .locals 2

    .line 157
    iget v0, p0, Lcn/nubia/camera/bd/f;->d:I

    if-nez v0, :cond_1

    .line 158
    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/bd/f;->d:I

    .line 159
    iget-boolean v0, p0, Lcn/nubia/camera/bd/f;->a:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->a:Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcn/nubia/camera/bd/f;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .line 168
    iget-boolean v0, p0, Lcn/nubia/camera/bd/f;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->n:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcn/nubia/camera/bd/f;->n:Lcn/nubia/camera/bd/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "attribute vec2 aVertex;\nattribute vec2 aTexCoor;\nvarying vec2 vTexCoor;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\n\nvoid main()\n{\n    gl_Position = uMVPMatrix * vec4(aVertex, 0.0f, 1.0f);\n    vTexCoor = (uSTMatrix * vec4(aTexCoor, 0.0f, 1.0f)).st;\n}"

    const-string v2, "#extension GL_OES_EGL_image_external: require\nprecision mediump float;\n\nvarying vec2 vTexCoor;\n\nuniform samplerExternalOES tex;\n\nvoid main()\n{\n    gl_FragColor = texture2D(tex, vTexCoor);\n}"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/bd/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/bd/f;->i:I

    .line 172
    iget-object v2, p0, Lcn/nubia/camera/bd/f;->n:Lcn/nubia/camera/bd/a;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/bd/a;->a(I)V

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->o:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcn/nubia/camera/bd/f;->o:Lcn/nubia/camera/bd/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "precision mediump float;\n\nvarying vec2 vTexCoor;\n\nuniform sampler2D tex;\n\nvoid main()\n{\n    gl_FragColor = texture2D(tex, vTexCoor);\n}"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/bd/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/bd/f;->j:I

    .line 175
    iget-object v2, p0, Lcn/nubia/camera/bd/f;->o:Lcn/nubia/camera/bd/a;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/bd/a;->a(I)V

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->p:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcn/nubia/camera/bd/f;->p:Lcn/nubia/camera/bd/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "#extension GL_OES_EGL_image_external: require\nprecision highp float;\nvarying vec2 vTexCoor;\nuniform int uSnap;\nuniform float uWidth;\nuniform float uHeight;\nuniform float uDensity;\nuniform float uScale;\nuniform vec2 uCenter;\nuniform samplerExternalOES tex;\nvoid main()\n{\n    float ratio = uHeight / uWidth;\n    float stepMin = 1.0f / uWidth;\n    float lenNowToFocus;\n    vec2 posNow = vTexCoor;\n    vec2 posBefore = vec2(0.0f, 0.0f);\n    vec2 posFocus = uCenter;\n    vec4 colorSample = vec4(0.0f);\n\n    lenNowToFocus = distance(vec2(vTexCoor.x, vTexCoor.y * ratio), \n            vec2(uCenter.x, uCenter.y * ratio));\n\n    if (lenNowToFocus >= uDensity)\n    {\n        float lengthBlur = uScale * (lenNowToFocus - uDensity);\n\n        if(posNow.x != posFocus.x)\n        {\n            float k = (posNow.y - posFocus.y) / (posNow.x - posFocus.x);\n            float signX = sign(posNow.x - posFocus.x);\n            posBefore.x = posNow.x - signX * lengthBlur / sqrt((1.0 + k * k));\n            posBefore.y = posFocus.y + k * (posBefore.x - posFocus.x);\n        }\n        else\n        {\n            float signY = sign(posNow.y - posFocus.y);\n            posBefore.y = posNow.y - signY * lengthBlur;\n            posBefore.x = posNow.x;\n        }\n\n        int sampleNums = int(lengthBlur / stepMin);\n\n        if(sampleNums < 1)\n        {\n           sampleNums = 1;\n        }\n\n        if(1 == uSnap)\n        {\n            if(sampleNums > 40)\n            {\n               sampleNums = 40;\n            }\n        }\n        else\n        {\n            if(sampleNums > 16)\n            {\n               sampleNums = 16;\n            }\n        }\n\n        vec2 step = (posNow - posBefore) / float(sampleNums);\n        vec2 posSample = posBefore;\n\n        for(int i = 0; i < sampleNums; i++)\n        {\n            colorSample += texture2D(tex, posSample);\n            posSample += step;\n        }\n\n        gl_FragColor = colorSample / float(sampleNums);\n    }\n    else\n    {\n        colorSample = texture2D(tex, vTexCoor);\n        gl_FragColor = colorSample;\n    }\n}\n"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/bd/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/bd/f;->k:I

    .line 178
    iget-object v2, p0, Lcn/nubia/camera/bd/f;->p:Lcn/nubia/camera/bd/a;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/bd/a;->b(I)V

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->q:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcn/nubia/camera/bd/f;->q:Lcn/nubia/camera/bd/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "precision highp float;\n\nvarying vec2 vTexCoor;\n\nuniform int uSnap;\nuniform float uWidth;\nuniform float uHeight;\nuniform float uDensity;\nuniform float uScale;\nuniform vec2 uCenter;\nuniform sampler2D tex;\n\nvoid main()\n{\n    float ratio = uHeight / uWidth;\n    float stepMin = 1.0f / uWidth;\n    vec2 posBefore = (vTexCoor - uCenter) / uScale + uCenter;\n\n    float lengthBlur = distance(vec2(vTexCoor.x, vTexCoor.y * ratio), \n            vec2(posBefore.x, posBefore.y * ratio));\n    int sampleNums = int(lengthBlur / stepMin);\n\n    if(sampleNums < 1)\n    {\n        sampleNums = 1;\n    }\n\n    if(1 == uSnap)\n    {\n        if(sampleNums > 250)\n        {\n           sampleNums = 150;\n        }\n        else if(sampleNums > 50)\n        {\n           sampleNums = 50 + (sampleNums - 50) / 2;\n        }\n    }\n    else\n    {\n        if(sampleNums > 150)\n        {\n           sampleNums = 100;\n        }\n        else if(sampleNums > 50)\n        {\n           sampleNums = 50 + (sampleNums - 50) / 2;\n        }\n    }\n\n    vec2 step = (vTexCoor- posBefore) / float(sampleNums);\n    vec2 posSample = posBefore;\n    vec3 color;\n    vec3 colorSum = vec3(0.0f);\n    vec3 grayCoeff = vec3(0.299f, 0.587f, 0.114f);\n    float gray;\n\n    for (int i = 0; i < sampleNums; i++)\n    {\n        color = texture2D(tex, posSample).rgb;\n        gray = dot(color, grayCoeff);\n\n        if (gray > 0.96f)\n        {\n            color += ((gray - 0.96f) * uDensity);\n        }\n\n        colorSum += color;\n        posSample += step;\n    }\n\n    vec3 colSet = colorSum / float(sampleNums);\n\n    vec3 colNow = texture2D(tex, vTexCoor).rgb;\n    vec3 colAdd = colNow + colSet + 0.0001f;\n    vec3 colBlur = (colAdd - vec3(2.0f) * colNow * colSet / colAdd);\n\n    vec3 colBefore = texture2D(tex, posBefore).rgb;\n    vec3 colBlurAddBefore =  colBefore + colBlur + 0.0001f;\n    vec3 colOverlay = (colBlurAddBefore\n            - vec3(2.0f) * colBefore * colBlur / colBlurAddBefore);\n\n    gl_FragColor = vec4(colOverlay, 1.0f);\n}"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/bd/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/bd/f;->l:I

    .line 181
    iget-object v2, p0, Lcn/nubia/camera/bd/f;->q:Lcn/nubia/camera/bd/a;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/bd/a;->b(I)V

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->r:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcn/nubia/camera/bd/f;->r:Lcn/nubia/camera/bd/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "#extension GL_OES_EGL_image_external: require\nprecision highp float;\n\nvarying vec2 vTexCoor;\n\nuniform int uSnap;\nuniform float uWidth;\nuniform float uHeight;\nuniform float uDensity;\nuniform float uScale;\nuniform vec2 uCenter;\nuniform samplerExternalOES tex;\n\nvoid main()\n{\n    float ratio = uHeight / uWidth;\n    float stepMin = 1.0f / uWidth;\n    vec2 posBefore = (vTexCoor - uCenter) / uScale + uCenter;\n\n    float lengthBlur = distance(vec2(vTexCoor.x, vTexCoor.y * ratio), \n            vec2(posBefore.x, posBefore.y * ratio));\n    int sampleNums = int(lengthBlur / stepMin);\n\n    if(sampleNums < 1)\n    {\n        sampleNums = 1;\n    }\n\n    if(1 == uSnap)\n    {\n        if(sampleNums > 250)\n        {\n           sampleNums = 150;\n        }\n        else if(sampleNums > 50)\n        {\n           sampleNums = 50 + (sampleNums - 50) / 2;\n        }\n    }\n    else\n    {\n        if(sampleNums > 150)\n        {\n           sampleNums = 100;\n        }\n        else if(sampleNums > 50)\n        {\n           sampleNums = 50 + (sampleNums - 50) / 2;\n        }\n    }\n\n    vec2 step = (vTexCoor- posBefore) / float(sampleNums);\n    vec2 posSample = posBefore;\n    vec3 color;\n    vec3 colorSum = vec3(0.0f);\n    vec3 grayCoeff = vec3(0.299f, 0.587f, 0.114f);\n    float gray;\n\n    for (int i = 0; i < sampleNums; i++)\n    {\n        color = texture2D(tex, posSample).rgb;\n        gray = dot(color, grayCoeff);\n\n        if (gray > 0.96f)\n        {\n            color += ((gray - 0.96f) * uDensity);\n        }\n\n        colorSum += color;\n        posSample += step;\n    }\n\n    vec3 colSet = colorSum / float(sampleNums);\n\n    vec3 colNow = texture2D(tex, vTexCoor).rgb;\n    vec3 colAdd = colNow + colSet + 0.0001f;\n    vec3 colBlur = (colAdd - vec3(2.0f) * colNow * colSet / colAdd);\n\n    vec3 colBefore = texture2D(tex, posBefore).rgb;\n    vec3 colBlurAddBefore =  colBefore + colBlur + 0.0001f;\n    vec3 colOverlay = (colBlurAddBefore\n            - vec3(2.0f) * colBefore * colBlur / colBlurAddBefore);\n\n    gl_FragColor = vec4(colOverlay, 1.0f);\n}"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/bd/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/bd/f;->m:I

    .line 185
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->r:Lcn/nubia/camera/bd/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/bd/a;->b(I)V

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->e:Z

    return-void
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 465
    iget-boolean v2, p0, Lcn/nubia/camera/bd/f;->a:Z

    if-nez v2, :cond_0

    .line 466
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 468
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    .line 469
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 470
    iput-object v0, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface operation error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomBlurRender"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    if-eqz v1, :cond_2

    .line 476
    invoke-virtual {v1}, Lcom/android/common/b/l;->j()V

    .line 477
    iput-object v0, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    .line 479
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->B:Lcom/android/common/b/l;

    if-eqz v1, :cond_3

    .line 480
    invoke-virtual {v1}, Lcom/android/common/b/l;->j()V

    .line 481
    iput-object v0, p0, Lcn/nubia/camera/bd/f;->B:Lcom/android/common/b/l;

    .line 483
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->C:Lcom/android/common/b/l;

    if-eqz v1, :cond_4

    .line 484
    invoke-virtual {v1}, Lcom/android/common/b/l;->j()V

    .line 485
    iput-object v0, p0, Lcn/nubia/camera/bd/f;->C:Lcom/android/common/b/l;

    .line 488
    :cond_4
    iget v0, p0, Lcn/nubia/camera/bd/f;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v0, v3, v1

    .line 489
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 490
    iput v1, p0, Lcn/nubia/camera/bd/f;->d:I

    .line 492
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->p:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/a;->a()V

    .line 493
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->q:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/a;->a()V

    .line 494
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->o:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/a;->a()V

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->n:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/a;->a()V

    .line 496
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->r:Lcn/nubia/camera/bd/a;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/a;->a()V

    .line 498
    iput v1, p0, Lcn/nubia/camera/bd/f;->k:I

    .line 499
    iput v1, p0, Lcn/nubia/camera/bd/f;->i:I

    .line 500
    iput v1, p0, Lcn/nubia/camera/bd/f;->l:I

    .line 501
    iput v1, p0, Lcn/nubia/camera/bd/f;->j:I

    .line 502
    iput v1, p0, Lcn/nubia/camera/bd/f;->m:I

    .line 504
    iput-boolean v1, p0, Lcn/nubia/camera/bd/f;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->z:Z

    return-void
.end method

.method public a(FFFF)V
    .locals 0

    .line 122
    iput p1, p0, Lcn/nubia/camera/bd/f;->u:F

    .line 123
    iput p2, p0, Lcn/nubia/camera/bd/f;->t:F

    .line 124
    iput p3, p0, Lcn/nubia/camera/bd/f;->v:F

    .line 125
    iput p4, p0, Lcn/nubia/camera/bd/f;->w:F

    return-void
.end method

.method public a(IILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 323
    iput p2, p0, Lcn/nubia/camera/bd/f;->K:I

    .line 324
    iput p1, p0, Lcn/nubia/camera/bd/f;->J:I

    .line 325
    iput-object p3, p0, Lcn/nubia/camera/bd/f;->L:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public a(Lcom/android/common/b/g;Landroid/graphics/SurfaceTexture;IIIZ)V
    .locals 8

    .line 347
    div-int/lit8 v3, p4, 0x2

    .line 348
    div-int/lit8 v4, p5, 0x2

    .line 349
    invoke-direct {p0, v3, v4}, Lcn/nubia/camera/bd/f;->a(II)V

    .line 350
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->g:[F

    invoke-virtual {p2, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 353
    iget-object p2, p0, Lcn/nubia/camera/bd/f;->B:Lcom/android/common/b/l;

    invoke-virtual {p2, v3, v4}, Lcom/android/common/b/l;->c(II)V

    .line 354
    invoke-virtual {p1}, Lcom/android/common/b/g;->f()V

    .line 355
    iget-object p2, p0, Lcn/nubia/camera/bd/f;->B:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 356
    iget p2, p0, Lcn/nubia/camera/bd/f;->i:I

    iget-object v0, p0, Lcn/nubia/camera/bd/f;->n:Lcn/nubia/camera/bd/a;

    const v1, 0x8d65

    invoke-direct {p0, p2, v1, p3, v0}, Lcn/nubia/camera/bd/f;->a(IIILcn/nubia/camera/bd/a;)V

    .line 358
    invoke-virtual {p1}, Lcom/android/common/b/g;->a()V

    .line 359
    invoke-virtual {p1}, Lcom/android/common/b/g;->g()V

    .line 361
    iget-object p2, p0, Lcn/nubia/camera/bd/f;->g:[F

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 363
    iget-object p2, p0, Lcn/nubia/camera/bd/f;->C:Lcom/android/common/b/l;

    invoke-virtual {p2, v3, v4}, Lcom/android/common/b/l;->c(II)V

    .line 364
    invoke-virtual {p1}, Lcom/android/common/b/g;->f()V

    .line 365
    iget-object p2, p0, Lcn/nubia/camera/bd/f;->C:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 366
    iget v1, p0, Lcn/nubia/camera/bd/f;->l:I

    iget-object v2, p0, Lcn/nubia/camera/bd/f;->q:Lcn/nubia/camera/bd/a;

    iget-object p2, p0, Lcn/nubia/camera/bd/f;->B:Lcom/android/common/b/l;

    .line 367
    invoke-virtual {p2}, Lcom/android/common/b/l;->a()I

    move-result v6

    iget-boolean v7, p0, Lcn/nubia/camera/bd/f;->y:Z

    const/16 v5, 0xde1

    move-object v0, p0

    .line 366
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/bd/f;->a(ILcn/nubia/camera/bd/a;IIIIZ)V

    .line 368
    invoke-virtual {p1}, Lcom/android/common/b/g;->a()V

    .line 369
    invoke-virtual {p1}, Lcom/android/common/b/g;->g()V

    .line 372
    iget-object p2, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    invoke-virtual {p2, p4, p5}, Lcom/android/common/b/l;->c(II)V

    .line 373
    invoke-direct {p0, p4, p5}, Lcn/nubia/camera/bd/f;->a(II)V

    .line 374
    invoke-virtual {p1}, Lcom/android/common/b/g;->f()V

    .line 375
    iget-object p2, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 376
    iget p2, p0, Lcn/nubia/camera/bd/f;->j:I

    iget-object p3, p0, Lcn/nubia/camera/bd/f;->C:Lcom/android/common/b/l;

    invoke-virtual {p3}, Lcom/android/common/b/l;->a()I

    move-result p3

    iget-object v0, p0, Lcn/nubia/camera/bd/f;->o:Lcn/nubia/camera/bd/a;

    const/16 v1, 0xde1

    invoke-direct {p0, p2, v1, p3, v0}, Lcn/nubia/camera/bd/f;->a(IIILcn/nubia/camera/bd/a;)V

    if-eqz p6, :cond_0

    .line 378
    invoke-direct {p0, p4, p5}, Lcn/nubia/camera/bd/f;->c(II)V

    .line 380
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/b/g;->a()V

    .line 381
    invoke-virtual {p1}, Lcom/android/common/b/g;->g()V

    return-void
.end method

.method public a(Lcom/android/common/c/f$b;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "ZoomBlurRender"

    const-string v0, "addOneShotOverlayDataListener fail! listener is null"

    .line 509
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcn/nubia/camera/bd/f;->F:Z

    .line 513
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/bd/f;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/bd/f;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcn/nubia/camera/bd/f;->s:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 9

    .line 285
    iget-boolean v0, p0, Lcn/nubia/camera/bd/f;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcn/nubia/camera/bd/f;->g()V

    .line 287
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const-string p1, "ZoomBlurRender"

    const-string p2, "Remove Render itSelf"

    .line 288
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v2, v6

    int-to-float v3, v7

    div-float/2addr v2, v3

    .line 295
    iget v3, p0, Lcn/nubia/camera/bd/f;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    return v1

    .line 298
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/bd/f;->f()V

    .line 299
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 300
    invoke-direct {p0, p2, v6, v7}, Lcn/nubia/camera/bd/f;->a(Lcom/android/common/b/g;II)V

    const/16 v2, 0x4000

    .line 302
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 303
    iget-boolean v2, p0, Lcn/nubia/camera/bd/f;->y:Z

    if-eqz v2, :cond_2

    .line 304
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v5

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/camera/bd/f;->a(Lcom/android/common/b/g;Landroid/graphics/SurfaceTexture;IIIZ)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v5

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/bd/f;->b(Lcom/android/common/b/g;Landroid/graphics/SurfaceTexture;IIIZ)V

    .line 309
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/bd/f;->g:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 310
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 311
    iget-object v3, p0, Lcn/nubia/camera/bd/f;->D:Lcom/android/common/b/l;

    iget-object v4, p0, Lcn/nubia/camera/bd/f;->g:[F

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 312
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v2, p2

    .line 311
    invoke-virtual/range {v2 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 313
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 315
    iget-boolean p1, p0, Lcn/nubia/camera/bd/f;->s:Z

    if-eqz p1, :cond_3

    .line 316
    invoke-direct {p0, p2}, Lcn/nubia/camera/bd/f;->a(Lcom/android/common/b/g;)V

    .line 317
    iput-boolean v1, p0, Lcn/nubia/camera/bd/f;->s:Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 454
    iput-boolean p1, p0, Lcn/nubia/camera/bd/f;->y:Z

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    const/high16 p1, 0x42480000    # 50.0f

    .line 456
    invoke-virtual {p0, p1, p1, v0, v0}, Lcn/nubia/camera/bd/f;->a(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41c80000    # 25.0f

    const/high16 v1, 0x41900000    # 18.0f

    .line 458
    invoke-virtual {p0, p1, v1, v0, v0}, Lcn/nubia/camera/bd/f;->a(FFFF)V

    :goto_0
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

    .line 527
    invoke-direct {p0}, Lcn/nubia/camera/bd/f;->g()V

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Lcn/nubia/camera/bd/f;->z:Z

    return-void
.end method
