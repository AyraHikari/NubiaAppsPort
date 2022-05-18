.class public Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;
.super Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;
.source ""


# instance fields
.field private p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;-><init>()V

    iput p3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->p:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->n:Z

    sget-object p2, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->o(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->i:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/gallery3d/filtershow/utils/b;->e(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->p:I

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->i:I

    rsub-int p2, p2, 0x168

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/utils/b;->e(I)I

    move-result p3

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ApertureImageArcsoft: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->i:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->p:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AbstractApertureImage"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    const/16 v1, 0x438

    invoke-virtual {p0, p2, v1, p3}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->l(Ljava/lang/String;II)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    iput p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->b:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    iput p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->c:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AI bitmap:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  need:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->b:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->c:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->b:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->c:I

    sget v2, Lb/a/c/a;->b:I

    invoke-direct {p0, p2, p3, v1, v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->editInit(Ljava/lang/String;III)I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->s()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->b()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p2, "editinit aperture failed"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "editinit "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  failed!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)V
    .locals 18

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p5

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;-><init>()V

    const-string v12, "AbstractApertureImage"

    const-string v0, "ApertureImage create undo"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->e:I

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/utils/b;->e(I)I

    move-result v0

    iput v0, v14, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->p:I

    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->n:Z

    sget-object v0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v15, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    const/16 v2, 0x438

    invoke-virtual {v14, v0, v2, v1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->l(Ljava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->f:F

    iput v1, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    iget v1, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->g:F

    iput v1, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    iget v1, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->h:F

    iput v1, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->b:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->c:I

    iget v3, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->a:I

    iget v4, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->b:I

    iget v5, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->b:I

    iget v7, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->o:I

    iget v8, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->p:I

    iget v9, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->q:I

    iget v10, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->r:I

    iget v11, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->s:I

    iget v2, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->m:I

    iget v1, v13, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->n:F

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object/from16 v1, p2

    move/from16 v17, v2

    move-object/from16 v2, p3

    move-object v15, v12

    move/from16 v12, v17

    move-object/from16 v17, v15

    move-object v15, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->editInitSmall(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, v15, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->r:I

    if-eqz v0, :cond_0

    iget v1, v15, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->s:I

    if-eqz v1, :cond_0

    iput v0, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->d:I

    iput v1, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e:I

    goto :goto_0

    :cond_0
    iget v0, v15, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->a:I

    iput v0, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->d:I

    iget v0, v15, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->b:I

    iput v0, v14, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e:I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->s()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v1, v17

    const-string v0, "editInit aperture failed2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editInit2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to aperture failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native editInit(Ljava/lang/String;III)I
.end method

.method private native editInitSmall(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIF)I
.end method

.method public static u(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    iget p1, p0, Landroid/graphics/PointF;->x:F

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_1
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    :goto_0
    iput p0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_2
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float p1, v2, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    :goto_1
    sub-float/2addr v2, p0

    iput v2, v0, Landroid/graphics/PointF;->y:F

    :goto_2
    return-object v0
.end method

.method public static v(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    iget p1, p0, Landroid/graphics/PointF;->x:F

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    :goto_0
    iput p0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_1
    iget p1, p0, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_2
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float p1, v2, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    :goto_1
    sub-float/2addr v2, p0

    iput v2, v0, Landroid/graphics/PointF;->y:F

    :goto_2
    return-object v0
.end method


# virtual methods
.method native exit(I)V
.end method

.method j()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->p:I

    return v0
.end method

.method native saveParam(Landroid/graphics/Bitmap;FFF)V
.end method

.method native setParam(Landroid/graphics/Bitmap;FFF)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApertureImageArcsoft: aper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " needW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
