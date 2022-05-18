.class public Lcn/nubia/camera/r/b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/r$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/b$a;
    }
.end annotation


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/common/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private C:[Ljava/lang/Integer;

.field private D:I

.field private E:I

.field private F:Landroid/graphics/Rect;

.field private G:[F

.field private H:[F

.field a:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private b:Z

.field private c:Z

.field private d:Lcom/android/common/b/c;

.field private e:Lcom/android/common/b/g;

.field private f:I

.field private g:Lcom/android/common/b/e;

.field private h:Lcom/android/common/b/l;

.field private i:Landroid/opengl/EGLSurface;

.field private j:Landroid/opengl/EGLSurface;

.field private k:Landroid/os/ConditionVariable;

.field private l:Lcom/android/common/b/l;

.field private m:Landroid/graphics/SurfaceTexture;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Lcn/nubia/camera/r/b$a;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/content/Context;

.field private t:Lcn/nubia/camera/r/s;

.field private u:Landroid/view/Surface;

.field private v:Lcn/nubia/camera/r/s;

.field private w:Landroid/view/Surface;

.field private x:I

.field private y:I

.field private z:Lcn/nubia/camera/r/q;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcn/nubia/camera/r/s;Lcn/nubia/camera/r/s;IILjava/util/HashMap;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcn/nubia/camera/r/s;",
            "Lcn/nubia/camera/r/s;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/n$b;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcn/nubia/camera/r/b;->b:Z

    .line 43
    iput-boolean v0, p0, Lcn/nubia/camera/r/b;->c:Z

    .line 55
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/r/b;->k:Landroid/os/ConditionVariable;

    .line 64
    iput-boolean v0, p0, Lcn/nubia/camera/r/b;->p:Z

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/r/b;->B:Ljava/util/Map;

    .line 81
    iput v0, p0, Lcn/nubia/camera/r/b;->D:I

    .line 83
    iput v0, p0, Lcn/nubia/camera/r/b;->E:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 88
    iput-object v1, p0, Lcn/nubia/camera/r/b;->G:[F

    new-array v0, v0, [F

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/r/b;->H:[F

    .line 355
    new-instance v0, Lcn/nubia/camera/r/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/b$1;-><init>(Lcn/nubia/camera/r/b;)V

    iput-object v0, p0, Lcn/nubia/camera/r/b;->a:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/r/b;->A:Ljava/util/Map;

    .line 100
    iput-object p2, p0, Lcn/nubia/camera/r/b;->t:Lcn/nubia/camera/r/s;

    .line 101
    invoke-virtual {p2}, Lcn/nubia/camera/r/s;->b()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/r/b;->u:Landroid/view/Surface;

    .line 102
    iput-object p3, p0, Lcn/nubia/camera/r/b;->v:Lcn/nubia/camera/r/s;

    .line 103
    invoke-virtual {p3}, Lcn/nubia/camera/r/s;->b()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/r/b;->w:Landroid/view/Surface;

    .line 104
    iput p4, p0, Lcn/nubia/camera/r/b;->x:I

    .line 105
    iput p5, p0, Lcn/nubia/camera/r/b;->y:I

    .line 106
    iput-object p6, p0, Lcn/nubia/camera/r/b;->r:Ljava/util/HashMap;

    .line 107
    iput-object p7, p0, Lcn/nubia/camera/r/b;->s:Landroid/content/Context;

    return-void
.end method

.method private a([D[F)V
    .locals 3

    const/4 v0, 0x0

    .line 339
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 340
    aget-wide v1, p1, v0

    double-to-float v1, v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([F)V
    .locals 4

    .line 397
    iget v0, p0, Lcn/nubia/camera/r/b;->n:I

    rem-int/lit8 v1, v0, 0x20

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    int-to-float v1, v0

    .line 398
    div-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 400
    :goto_0
    iget v0, p0, Lcn/nubia/camera/r/b;->o:I

    rem-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_1

    int-to-float v3, v0

    .line 401
    div-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v0, 0x0

    .line 403
    invoke-static {p1, v0, v1, v3, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/b;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/camera/r/b;->p:Z

    return p1
.end method

.method private b(I)[F
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 320
    fill-array-data v0, :array_0

    .line 325
    iget-object v1, p0, Lcn/nubia/camera/r/b;->r:Ljava/util/HashMap;

    if-nez v1, :cond_0

    return-object v0

    .line 328
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/r/n$b;

    if-eqz v1, :cond_1

    .line 330
    iget-object p1, v1, Lcn/nubia/camera/r/n$b;->d:[D

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/r/b;->a([D[F)V

    goto :goto_0

    .line 333
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no registration message for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EditorThread"

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c()V
    .locals 11

    .line 226
    iget v0, p0, Lcn/nubia/camera/r/b;->D:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/r/b;->b(I)[F

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcn/nubia/camera/r/b;->F:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/camera/r/b;->F:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/nubia/camera/r/b;->F:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/r/b;->F:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 229
    iget-object v1, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v1}, Lcom/android/common/b/g;->c()V

    const/16 v1, 0xbe2

    .line 231
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    .line 232
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 233
    iget-object v4, p0, Lcn/nubia/camera/r/b;->z:Lcn/nubia/camera/r/q;

    iget-object v5, p0, Lcn/nubia/camera/r/b;->l:Lcom/android/common/b/l;

    invoke-virtual {v5}, Lcom/android/common/b/l;->a()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcn/nubia/camera/r/b;->b(I)[F

    move-result-object v7

    iget v8, p0, Lcn/nubia/camera/r/b;->n:I

    iget v9, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-virtual {v4, v5, v7, v8, v9}, Lcn/nubia/camera/r/q;->a(I[FII)V

    .line 234
    iget-object v4, p0, Lcn/nubia/camera/r/b;->z:Lcn/nubia/camera/r/q;

    iget-object v5, p0, Lcn/nubia/camera/r/b;->h:Lcom/android/common/b/l;

    invoke-virtual {v5}, Lcom/android/common/b/l;->a()I

    move-result v5

    iget v7, p0, Lcn/nubia/camera/r/b;->n:I

    iget v8, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-virtual {v4, v5, v0, v7, v8}, Lcn/nubia/camera/r/q;->a(I[FII)V

    move v4, v6

    .line 237
    :goto_0
    iget-object v5, p0, Lcn/nubia/camera/r/b;->C:[Ljava/lang/Integer;

    array-length v7, v5

    if-ge v4, v7, :cond_1

    .line 238
    aget-object v5, v5, v4

    .line 239
    iget v7, p0, Lcn/nubia/camera/r/b;->D:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 240
    iget-object v7, p0, Lcn/nubia/camera/r/b;->z:Lcn/nubia/camera/r/q;

    iget-object v8, p0, Lcn/nubia/camera/r/b;->B:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/common/b/l;

    invoke-virtual {v8}, Lcom/android/common/b/l;->a()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcn/nubia/camera/r/b;->b(I)[F

    move-result-object v5

    iget v9, p0, Lcn/nubia/camera/r/b;->n:I

    iget v10, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-virtual {v7, v8, v5, v9, v10}, Lcn/nubia/camera/r/q;->a(I[FII)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 245
    iget-object v4, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v5, p0, Lcn/nubia/camera/r/b;->i:Landroid/opengl/EGLSurface;

    iget-object v7, p0, Lcn/nubia/camera/r/b;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;J)V

    .line 247
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 249
    iget-object v4, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v5, p0, Lcn/nubia/camera/r/b;->i:Landroid/opengl/EGLSurface;

    invoke-virtual {v4, v5}, Lcom/android/common/b/c;->b(Landroid/opengl/EGLSurface;)V

    .line 252
    iget-object v4, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    invoke-virtual {v4}, Lcom/android/common/b/c;->d()V

    .line 253
    iget-object v4, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v5, p0, Lcn/nubia/camera/r/b;->j:Landroid/opengl/EGLSurface;

    invoke-virtual {v4, v5}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;)Z

    .line 254
    iget-object v4, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v4}, Lcom/android/common/b/g;->c()V

    .line 256
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 257
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 258
    iget-object v2, p0, Lcn/nubia/camera/r/b;->z:Lcn/nubia/camera/r/q;

    iget-object v3, p0, Lcn/nubia/camera/r/b;->l:Lcom/android/common/b/l;

    invoke-virtual {v3}, Lcom/android/common/b/l;->a()I

    move-result v3

    invoke-direct {p0, v6}, Lcn/nubia/camera/r/b;->b(I)[F

    move-result-object v4

    iget v5, p0, Lcn/nubia/camera/r/b;->n:I

    iget v6, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/nubia/camera/r/q;->a(I[FII)V

    .line 259
    iget-object v2, p0, Lcn/nubia/camera/r/b;->z:Lcn/nubia/camera/r/q;

    iget-object v3, p0, Lcn/nubia/camera/r/b;->h:Lcom/android/common/b/l;

    invoke-virtual {v3}, Lcom/android/common/b/l;->a()I

    move-result v3

    iget v4, p0, Lcn/nubia/camera/r/b;->n:I

    iget v5, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-virtual {v2, v3, v0, v4, v5}, Lcn/nubia/camera/r/q;->a(I[FII)V

    .line 262
    iget-object v0, p0, Lcn/nubia/camera/r/b;->C:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 263
    iget-object v2, p0, Lcn/nubia/camera/r/b;->C:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    .line 264
    iget v3, p0, Lcn/nubia/camera/r/b;->D:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 265
    iget-object v3, p0, Lcn/nubia/camera/r/b;->z:Lcn/nubia/camera/r/q;

    iget-object v4, p0, Lcn/nubia/camera/r/b;->B:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/common/b/l;

    invoke-virtual {v4}, Lcom/android/common/b/l;->a()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcn/nubia/camera/r/b;->b(I)[F

    move-result-object v2

    iget v5, p0, Lcn/nubia/camera/r/b;->n:I

    iget v6, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-virtual {v3, v4, v2, v5, v6}, Lcn/nubia/camera/r/q;->a(I[FII)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 268
    :cond_3
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->j:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcn/nubia/camera/r/b;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;J)V

    .line 272
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->j:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->b(Landroid/opengl/EGLSurface;)V

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    invoke-virtual {v0}, Lcom/android/common/b/c;->d()V

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->i:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method private d()V
    .locals 8

    .line 279
    new-instance v0, Lcom/android/common/b/l;

    iget v1, p0, Lcn/nubia/camera/r/b;->n:I

    iget v2, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/r/b;->l:Lcom/android/common/b/l;

    .line 280
    iget-object v1, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0, v1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 281
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->f()V

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->l:Lcom/android/common/b/l;

    invoke-virtual {v0, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 283
    iget-object v0, p0, Lcn/nubia/camera/r/b;->H:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 284
    iget-object v0, p0, Lcn/nubia/camera/r/b;->H:[F

    invoke-direct {p0, v0}, Lcn/nubia/camera/r/b;->a([F)V

    .line 285
    iget-object v1, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    iget-object v2, p0, Lcn/nubia/camera/r/b;->g:Lcom/android/common/b/e;

    iget-object v3, p0, Lcn/nubia/camera/r/b;->H:[F

    iget v6, p0, Lcn/nubia/camera/r/b;->n:I

    iget v7, p0, Lcn/nubia/camera/r/b;->o:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 286
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->a()V

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->g()V

    return-void
.end method

.method private e()V
    .locals 8

    .line 292
    iget-object v0, p0, Lcn/nubia/camera/r/b;->h:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/android/common/b/l;

    iget v1, p0, Lcn/nubia/camera/r/b;->n:I

    iget v2, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/r/b;->h:Lcom/android/common/b/l;

    .line 294
    iget-object v1, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0, v1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->f()V

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->h:Lcom/android/common/b/l;

    invoke-virtual {v0, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/r/b;->H:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/r/b;->H:[F

    invoke-direct {p0, v0}, Lcn/nubia/camera/r/b;->a([F)V

    .line 300
    iget-object v1, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    iget-object v2, p0, Lcn/nubia/camera/r/b;->g:Lcom/android/common/b/e;

    iget-object v3, p0, Lcn/nubia/camera/r/b;->H:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcn/nubia/camera/r/b;->n:I

    iget v7, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 301
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->a()V

    .line 302
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->g()V

    return-void
.end method

.method private f()V
    .locals 5

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/r/b;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 308
    iget v0, p0, Lcn/nubia/camera/r/b;->x:I

    int-to-float v1, v0

    const v2, 0x3f70a3d7    # 0.94f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 309
    iget v3, p0, Lcn/nubia/camera/r/b;->y:I

    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v2, v4

    sub-int/2addr v0, v1

    .line 310
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v2

    .line 311
    div-int/lit8 v3, v3, 0x2

    .line 312
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    add-int/2addr v2, v3

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcn/nubia/camera/r/b;->F:Landroid/graphics/Rect;

    goto :goto_0

    .line 315
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/camera/r/b;->x:I

    iget v2, p0, Lcn/nubia/camera/r/b;->y:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/r/b;->F:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method private g()V
    .locals 6

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/r/b;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/b;->A:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcn/nubia/camera/r/b;->C:[Ljava/lang/Integer;

    .line 368
    new-instance v1, Lcn/nubia/camera/r/b$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/r/b$2;-><init>(Lcn/nubia/camera/r/b;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/r/b;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 375
    iget-object v2, p0, Lcn/nubia/camera/r/b;->A:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 376
    new-instance v3, Lcom/android/common/b/l;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/common/b/l;-><init>(II)V

    .line 377
    iget-object v4, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v3, v4}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 378
    invoke-virtual {v3}, Lcom/android/common/b/l;->f()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/common/b/l;->a()I

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    .line 379
    invoke-static {v4, v5, v2, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 380
    iget-object v2, p0, Lcn/nubia/camera/r/b;->B:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/b;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/r/b;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/b/l;

    .line 387
    invoke-virtual {v1}, Lcom/android/common/b/l;->j()V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/b;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 127
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/r/b;->b:Z

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcn/nubia/camera/r/b;->E:I

    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/nubia/camera/r/b;->m:Landroid/graphics/SurfaceTexture;

    .line 112
    iput p2, p0, Lcn/nubia/camera/r/b;->n:I

    .line 113
    iput p3, p0, Lcn/nubia/camera/r/b;->o:I

    .line 114
    iget-object p2, p0, Lcn/nubia/camera/r/b;->a:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/r/b$a;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/nubia/camera/r/b;->q:Lcn/nubia/camera/r/b$a;

    return-void
.end method

.method public b()V
    .locals 1

    .line 347
    monitor-enter p0

    const/4 v0, 0x1

    .line 348
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/r/b;->c:Z

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/r/b;->k:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 351
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object v0, p0, Lcn/nubia/camera/r/b;->k:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void

    :catchall_0
    move-exception v0

    .line 351
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .line 134
    :try_start_0
    new-instance v0, Lcom/android/common/b/c;

    invoke-direct {v0}, Lcom/android/common/b/c;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    .line 135
    new-instance v0, Lcom/android/common/b/g;

    invoke-direct {v0}, Lcom/android/common/b/g;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->u:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/r/b;->i:Landroid/opengl/EGLSurface;

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->w:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/r/b;->j:Landroid/opengl/EGLSurface;

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->i:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    :goto_1
    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/r/b;->f:I

    .line 149
    new-instance v0, Lcom/android/common/b/e;

    iget v1, p0, Lcn/nubia/camera/r/b;->f:I

    const v2, 0x8d65

    iget v3, p0, Lcn/nubia/camera/r/b;->n:I

    iget v4, p0, Lcn/nubia/camera/r/b;->o:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/common/b/e;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/r/b;->g:Lcom/android/common/b/e;

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/r/b;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/r/b;->m:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcn/nubia/camera/r/b;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 152
    new-instance v0, Lcn/nubia/camera/r/q;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0xde1

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/r/q;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcn/nubia/camera/r/b;->z:Lcn/nubia/camera/r/q;

    .line 154
    invoke-direct {p0}, Lcn/nubia/camera/r/b;->g()V

    .line 156
    invoke-direct {p0}, Lcn/nubia/camera/r/b;->f()V

    const-string v0, "EditorThread"

    const-string v1, "init"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcn/nubia/camera/r/b;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 162
    monitor-enter p0

    .line 163
    :try_start_2
    iget-boolean v0, p0, Lcn/nubia/camera/r/b;->c:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/camera/r/b;->p:Z

    if-nez v0, :cond_1

    goto :goto_3

    .line 171
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/camera/r/b;->c:Z

    .line 172
    iput-boolean v2, p0, Lcn/nubia/camera/r/b;->p:Z

    .line 173
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :try_start_3
    iget-object v0, p0, Lcn/nubia/camera/r/b;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 181
    iget v0, p0, Lcn/nubia/camera/r/b;->D:I

    if-nez v0, :cond_2

    .line 182
    invoke-direct {p0}, Lcn/nubia/camera/r/b;->d()V

    .line 185
    :cond_2
    iget v0, p0, Lcn/nubia/camera/r/b;->E:I

    if-eqz v0, :cond_3

    iget v2, p0, Lcn/nubia/camera/r/b;->D:I

    if-gt v2, v0, :cond_4

    .line 187
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/r/b;->e()V

    .line 189
    invoke-direct {p0}, Lcn/nubia/camera/r/b;->c()V

    .line 192
    iget v0, p0, Lcn/nubia/camera/r/b;->D:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/r/b;->D:I

    .line 195
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/r/b;->k:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/r/b;->t:Lcn/nubia/camera/r/s;

    invoke-virtual {v0}, Lcn/nubia/camera/r/s;->d()V

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/r/b;->v:Lcn/nubia/camera/r/s;

    invoke-virtual {v0}, Lcn/nubia/camera/r/s;->d()V

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/r/b;->q:Lcn/nubia/camera/r/b$a;

    if-eqz v0, :cond_0

    .line 200
    iget v1, p0, Lcn/nubia/camera/r/b;->D:I

    invoke-interface {v0, v1}, Lcn/nubia/camera/r/b$a;->a(I)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 165
    :cond_5
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_5
    const-string v1, "EditorThread"

    const-string v2, "wait error"

    .line 167
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :goto_4
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 173
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_6
    const-string v0, "EditorThread"

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/camera/r/b;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " frame in all"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/r/b;->q:Lcn/nubia/camera/r/b$a;

    if-eqz v0, :cond_7

    .line 206
    invoke-interface {v0}, Lcn/nubia/camera/r/b$a;->a()V

    .line 208
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/r/b;->v:Lcn/nubia/camera/r/s;

    invoke-virtual {v0}, Lcn/nubia/camera/r/s;->c()V

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/r/b;->t:Lcn/nubia/camera/r/s;

    invoke-virtual {v0}, Lcn/nubia/camera/r/s;->c()V

    const-string v0, "EditorThread"

    const-string v3, "release"

    .line 210
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lcn/nubia/camera/r/b;->h()V

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/r/b;->z:Lcn/nubia/camera/r/q;

    invoke-virtual {v0}, Lcn/nubia/camera/r/q;->a()V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/r/b;->l:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcn/nubia/camera/r/b;->l:Lcom/android/common/b/l;

    .line 215
    iget-object v3, p0, Lcn/nubia/camera/r/b;->h:Lcom/android/common/b/l;

    invoke-virtual {v3}, Lcom/android/common/b/l;->j()V

    .line 216
    iput-object v0, p0, Lcn/nubia/camera/r/b;->h:Lcom/android/common/b/l;

    new-array v3, v1, [I

    .line 217
    iget v4, p0, Lcn/nubia/camera/r/b;->f:I

    aput v4, v3, v2

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 218
    iput-object v0, p0, Lcn/nubia/camera/r/b;->g:Lcom/android/common/b/e;

    .line 219
    iget-object v0, p0, Lcn/nubia/camera/r/b;->e:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->b()V

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->i:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->c(Landroid/opengl/EGLSurface;)V

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/r/b;->j:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->c(Landroid/opengl/EGLSurface;)V

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/r/b;->d:Lcom/android/common/b/c;

    invoke-virtual {v0}, Lcom/android/common/b/c;->a()V

    return-void
.end method
