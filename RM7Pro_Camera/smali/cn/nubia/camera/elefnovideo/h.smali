.class public Lcn/nubia/camera/elefnovideo/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/elefnovideo/h$a;
    }
.end annotation


# static fields
.field private static final l:[F


# instance fields
.field a:J

.field b:J

.field private c:Landroid/content/Context;

.field private d:[F

.field private e:Lcom/android/common/b/l;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/elefnovideo/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/elefnovideo/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:Lcn/nubia/camera/elefnovideo/b;

.field private k:J

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/elefnovideo/h;->l:[F

    return-void

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

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/elefnovideo/a$a;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 24
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->d:[F

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/h;->i:Z

    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lcn/nubia/camera/elefnovideo/h;->k:J

    .line 46
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/h;->m:Z

    .line 47
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/h;->n:Z

    .line 50
    iput v0, p0, Lcn/nubia/camera/elefnovideo/h;->o:I

    .line 52
    iput v0, p0, Lcn/nubia/camera/elefnovideo/h;->p:I

    .line 84
    iput-wide v1, p0, Lcn/nubia/camera/elefnovideo/h;->a:J

    .line 86
    iput-wide v1, p0, Lcn/nubia/camera/elefnovideo/h;->b:J

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/h;->c:Landroid/content/Context;

    .line 59
    iput p2, p0, Lcn/nubia/camera/elefnovideo/h;->h:I

    .line 60
    iput-object p3, p0, Lcn/nubia/camera/elefnovideo/h;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/android/common/b/g;II)V
    .locals 3

    .line 247
    iget-boolean v0, p0, Lcn/nubia/camera/elefnovideo/h;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/h;->m:Z

    const-string v0, "EleFnoVideoRender"

    const-string v1, "init"

    .line 251
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcn/nubia/camera/elefnovideo/b;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/elefnovideo/h;->h:I

    invoke-direct {v0, v1, p2, p3, v2}, Lcn/nubia/camera/elefnovideo/b;-><init>(Landroid/content/res/Resources;III)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    .line 255
    iget-boolean v1, p0, Lcn/nubia/camera/elefnovideo/h;->i:Z

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/b;->a(Z)V

    .line 257
    :cond_1
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p2, p3}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    .line 258
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 262
    iget-boolean v0, p0, Lcn/nubia/camera/elefnovideo/h;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/h;->m:Z

    const-string v0, "EleFnoVideoRender"

    const-string v1, "unInit"

    .line 266
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/elefnovideo/h$a;

    .line 269
    iget-object v1, v1, Lcn/nubia/camera/elefnovideo/h$a;->b:Lcom/android/common/b/a;

    invoke-virtual {v1}, Lcom/android/common/b/a;->j()V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/b;->b()V

    .line 275
    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    .line 277
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 279
    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    :cond_3
    return-void
.end method

.method private d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 4

    .line 211
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    invoke-virtual {p2, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 216
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/h;->d:[F

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/h;->d:[F

    invoke-static {v0, v2, p1, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    const/high16 p1, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 218
    invoke-static {v0, v2, p1, p1, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 219
    invoke-static {v0, v2, p1, p1, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 p1, -0x41000000    # -0.5f

    .line 220
    invoke-static {v0, v2, p1, p1, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 222
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/elefnovideo/b;->a([F)V

    .line 223
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 224
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/h;->n:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 70
    iput p1, p0, Lcn/nubia/camera/elefnovideo/h;->h:I

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcn/nubia/camera/elefnovideo/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 77
    iput-boolean p1, p0, Lcn/nubia/camera/elefnovideo/h;->i:Z

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcn/nubia/camera/elefnovideo/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    .line 90
    iget-boolean v2, v1, Lcn/nubia/camera/elefnovideo/h;->n:Z

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    .line 92
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/elefnovideo/h;->d()V

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v10

    .line 96
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    .line 100
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v1, v9, v3, v4}, Lcn/nubia/camera/elefnovideo/h;->a(Lcom/android/common/b/g;II)V

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v11

    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-nez v3, :cond_2

    .line 105
    iget v2, v1, Lcn/nubia/camera/elefnovideo/h;->p:I

    if-lez v2, :cond_1

    .line 106
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    invoke-virtual {v0, v2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    :cond_1
    return v10

    .line 111
    :cond_2
    iget-object v3, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v13, 0x1

    if-lez v3, :cond_4

    iget-object v3, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/elefnovideo/h$a;

    iget-wide v3, v3, Lcn/nubia/camera/elefnovideo/h$a;->a:J

    cmp-long v3, v3, v11

    if-nez v3, :cond_4

    .line 113
    iget v2, v1, Lcn/nubia/camera/elefnovideo/h;->p:I

    if-lez v2, :cond_3

    .line 114
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    invoke-virtual {v0, v2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    :cond_3
    return v10

    :cond_4
    const-string v3, "EleFnoVideoRender"

    const-string v4, "onDraw E"

    .line 118
    invoke-static {v3, v4}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v3

    .line 124
    :goto_0
    new-instance v8, Lcom/android/common/b/l;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v8, v4, v5}, Lcom/android/common/b/l;-><init>(II)V

    .line 125
    invoke-virtual {v8, v9}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 127
    invoke-virtual {v9, v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iget-object v5, v1, Lcn/nubia/camera/elefnovideo/h;->d:[F

    invoke-virtual {v4, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 129
    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->d:[F

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    invoke-static {v4, v10, v6, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 130
    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->d:[F

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v10, v7, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 131
    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->d:[F

    const/high16 v5, -0x41000000    # -0.5f

    invoke-static {v4, v10, v6, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 132
    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->d:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v16

    move-object/from16 v2, p2

    move-object v10, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 133
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->a()V

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 136
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    new-instance v3, Lcn/nubia/camera/elefnovideo/h$a;

    invoke-direct {v3, v11, v12, v10}, Lcn/nubia/camera/elefnovideo/h$a;-><init>(JLcom/android/common/b/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "EleFnoVideoRender"

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "EleFnoVideoRender"

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "texture queue length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v13, :cond_6

    .line 155
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/elefnovideo/h$a;

    iget-object v2, v2, Lcn/nubia/camera/elefnovideo/h$a;->b:Lcom/android/common/b/a;

    .line 156
    sget-object v3, Lcn/nubia/camera/elefnovideo/h;->l:[F

    .line 157
    iput-wide v11, v1, Lcn/nubia/camera/elefnovideo/h;->k:J

    const-string v4, "EleFnoVideoRender"

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overly frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    const/4 v5, 0x0

    iput v5, v4, Lcn/nubia/camera/elefnovideo/b;->a:I

    .line 160
    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    invoke-virtual {v2}, Lcom/android/common/b/a;->a()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Lcn/nubia/camera/elefnovideo/b;->a(I[F)V

    .line 161
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    invoke-virtual {v2}, Lcn/nubia/camera/elefnovideo/b;->c()V

    .line 162
    iget v2, v1, Lcn/nubia/camera/elefnovideo/h;->p:I

    add-int/2addr v2, v13

    iput v2, v1, Lcn/nubia/camera/elefnovideo/h;->p:I

    goto/16 :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 166
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->g:Ljava/util/ArrayList;

    monitor-enter v2

    move v3, v5

    .line 167
    :goto_1
    :try_start_0
    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 168
    iget-wide v6, v1, Lcn/nubia/camera/elefnovideo/h;->k:J

    iget-object v4, v1, Lcn/nubia/camera/elefnovideo/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/elefnovideo/a$a;

    iget-wide v10, v4, Lcn/nubia/camera/elefnovideo/a$a;->a:J

    cmp-long v4, v6, v10

    if-nez v4, :cond_9

    move v4, v5

    .line 169
    :goto_2
    iget-object v6, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 170
    iget-object v6, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/elefnovideo/h$a;

    iget-wide v6, v6, Lcn/nubia/camera/elefnovideo/h$a;->a:J

    iget-object v8, v1, Lcn/nubia/camera/elefnovideo/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/camera/elefnovideo/a$a;

    iget-wide v10, v8, Lcn/nubia/camera/elefnovideo/a$a;->b:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_8

    .line 171
    iget-object v6, v1, Lcn/nubia/camera/elefnovideo/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/elefnovideo/a$a;

    iget-object v6, v6, Lcn/nubia/camera/elefnovideo/a$a;->c:[F

    .line 172
    iget-object v7, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/camera/elefnovideo/h$a;

    iget-object v7, v7, Lcn/nubia/camera/elefnovideo/h$a;->b:Lcom/android/common/b/a;

    .line 173
    iget-object v8, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/camera/elefnovideo/h$a;

    iget-wide v10, v8, Lcn/nubia/camera/elefnovideo/h$a;->a:J

    iput-wide v10, v1, Lcn/nubia/camera/elefnovideo/h;->k:J

    const-string v8, "EleFnoVideoRender"

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "overly frame "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcn/nubia/camera/elefnovideo/h;->k:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v8, v1, Lcn/nubia/camera/elefnovideo/h;->p:I

    const/16 v10, 0x1e

    if-le v8, v10, :cond_7

    .line 176
    iget-object v8, v1, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    iput v13, v8, Lcn/nubia/camera/elefnovideo/b;->a:I

    .line 178
    :cond_7
    iget-object v8, v1, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    invoke-virtual {v7}, Lcom/android/common/b/a;->a()I

    move-result v7

    invoke-virtual {v8, v7, v6}, Lcn/nubia/camera/elefnovideo/b;->a(I[F)V

    .line 179
    iget-object v6, v1, Lcn/nubia/camera/elefnovideo/h;->j:Lcn/nubia/camera/elefnovideo/b;

    invoke-virtual {v6}, Lcn/nubia/camera/elefnovideo/b;->c()V

    .line 180
    iget v6, v1, Lcn/nubia/camera/elefnovideo/h;->p:I

    add-int/2addr v6, v13

    iput v6, v1, Lcn/nubia/camera/elefnovideo/h;->p:I

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 185
    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v5

    .line 187
    :goto_3
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_c

    .line 188
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/elefnovideo/h$a;

    iget-wide v2, v2, Lcn/nubia/camera/elefnovideo/h$a;->a:J

    iget-wide v4, v1, Lcn/nubia/camera/elefnovideo/h;->k:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    .line 189
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/elefnovideo/h$a;

    .line 190
    iget-object v2, v2, Lcn/nubia/camera/elefnovideo/h$a;->b:Lcom/android/common/b/a;

    invoke-virtual {v2}, Lcom/android/common/b/a;->j()V

    goto :goto_3

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 198
    :cond_c
    :goto_4
    invoke-direct/range {p0 .. p2}, Lcn/nubia/camera/elefnovideo/h;->d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    .line 199
    iget-object v2, v1, Lcn/nubia/camera/elefnovideo/h;->e:Lcom/android/common/b/l;

    invoke-virtual {v0, v2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 202
    iget-wide v4, v1, Lcn/nubia/camera/elefnovideo/h;->a:J

    sub-long/2addr v2, v14

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcn/nubia/camera/elefnovideo/h;->a:J

    .line 203
    iget-wide v2, v1, Lcn/nubia/camera/elefnovideo/h;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcn/nubia/camera/elefnovideo/h;->b:J

    const-string v0, "EleFnoVideoRender"

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcn/nubia/camera/elefnovideo/h;->a:J

    iget-wide v5, v1, Lcn/nubia/camera/elefnovideo/h;->b:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :catchall_0
    move-exception v0

    .line 185
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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

    const/16 v0, 0x9

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/h;->d()V

    return-void
.end method
