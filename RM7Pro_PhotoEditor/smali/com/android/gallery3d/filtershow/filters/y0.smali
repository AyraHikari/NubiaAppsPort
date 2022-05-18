.class public abstract Lcom/android/gallery3d/filtershow/filters/y0;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# static fields
.field public static f:Z = false


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:J

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/y0;->a:Z

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/y0;->b:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/y0;->c:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/y0;->e:Z

    return-void
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/y0;->e:Z

    return v0
.end method

.method private p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/y0;->e:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "ImageFilterRS"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/e;->h()Lcom/android/gallery3d/filtershow/pipeline/i;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/y0;->a:Z
    :try_end_0
    .catch Landroid/renderscript/RSIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " in pipeline "

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/pipeline/i;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/pipeline/i;->b()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v5

    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/y0;->b:I

    if-ne v5, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v5

    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/y0;->c:I

    if-eq v5, v7, :cond_3

    :cond_2
    move v4, v6

    :cond_3
    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/i;->e(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->freeResources()V

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/gallery3d/filtershow/filters/y0;->f(Landroid/content/res/Resources;FI)V

    invoke-direct {p0, v6}, Lcom/android/gallery3d/filtershow/filters/y0;->p(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/y0;->b:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/y0;->c:I

    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->d()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->o()V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/y0;->q(Landroid/graphics/Bitmap;)V

    iget-boolean p2, p0, Lcom/android/gallery3d/filtershow/filters/y0;->a:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DONE apply filter "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/pipeline/i;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/renderscript/RSIllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->displayLowMemoryToast()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not enough memory for filter "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RS runtime exception ? "

    goto :goto_0

    :catch_2
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal argument? "

    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-object p1
.end method

.method public apply(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-boolean v3, Lcom/android/gallery3d/filtershow/filters/y0;->f:Z

    const-string v4, "ImageFilterRS"

    const/4 v5, 0x3

    const-string v6, "%s; image size %dx%d; "

    const v7, 0x49742400    # 1000000.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    iget-wide v14, v0, Lcom/android/gallery3d/filtershow/filters/y0;->d:J

    sub-long v14, v1, v14

    div-long/2addr v14, v9

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v12

    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v13

    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v11

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v11, [Ljava/lang/Object;

    long-to-float v10, v14

    div-float v14, v10, v8

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v12

    div-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v13

    const-string v10, "called after %.2f ms (%.2f FPS); "

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide v1, v0, Lcom/android/gallery3d/filtershow/filters/y0;->d:J

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/filters/y0;->e:Z

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/pipeline/e;->h()Lcom/android/gallery3d/filtershow/pipeline/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/filtershow/pipeline/i;->b()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/pipeline/e;->j()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/pipeline/e;->i()I

    move-result v10

    move-object/from16 v14, p1

    invoke-virtual {v0, v3, v9, v10, v14}, Lcom/android/gallery3d/filtershow/filters/y0;->g(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V

    iput-boolean v13, v0, Lcom/android/gallery3d/filtershow/filters/y0;->e:Z

    goto :goto_0

    :cond_1
    move-object/from16 v14, p1

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/filtershow/filters/y0;->e(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual/range {p0 .. p2}, Lcom/android/gallery3d/filtershow/filters/y0;->n(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    sget-boolean v3, Lcom/android/gallery3d/filtershow/filters/y0;->f:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/y0;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v12

    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v13

    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-long v19, v19, v1

    const-wide/16 v1, 0x3e8

    div-long v5, v19, v1

    sub-long v17, v17, v9

    div-long v1, v17, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v11, [Ljava/lang/Object;

    long-to-float v5, v5

    div-float v6, v5, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v12

    div-float v5, v7, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v13

    const-string v5, "over all %.2f ms (%.2f FPS); "

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v11, [Ljava/lang/Object;

    long-to-float v1, v1

    div-float v2, v1, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v12

    div-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v13

    const-string v1, "run filter %.2f ms (%.2f FPS)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected abstract d()V
.end method

.method protected e(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    return-void
.end method

.method protected abstract f(Landroid/content/res/Resources;FI)V
.end method

.method public freeResources()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->l()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/y0;->b:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/y0;->c:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/y0;->p(Z)V

    return-void
.end method

.method protected g(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V
    .locals 0

    return-void
.end method

.method protected h()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->h()Lcom/android/gallery3d/filtershow/pipeline/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/pipeline/i;->c()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method protected i()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->h()Lcom/android/gallery3d/filtershow/pipeline/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/pipeline/i;->a()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method protected j()Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->h()Lcom/android/gallery3d/filtershow/pipeline/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/pipeline/i;->d()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method protected abstract l()V
.end method

.method public abstract m()V
.end method

.method protected n(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    return-void
.end method

.method protected abstract o()V
.end method

.method protected q(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->i()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method
