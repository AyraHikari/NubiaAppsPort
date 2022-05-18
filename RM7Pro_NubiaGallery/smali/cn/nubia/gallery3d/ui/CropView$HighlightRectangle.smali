.class Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightRectangle"
.end annotation


# instance fields
.field private mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mHighlightRect:Landroid/graphics/RectF;

.field private mMovingEdges:I

.field private mReferenceX:F

.field private mReferenceY:F

.field private mTempPoint:Landroid/graphics/PointF;

.field private mTempRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/CropView;)V
    .locals 3

    .line 437
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    .line 427
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    .line 428
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    .line 429
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 438
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/CropView;->access$700(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080068

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;
    .locals 0

    .line 426
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private drawHighlightRectangle(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;)V
    .locals 17

    move-object/from16 v0, p2

    const/16 v1, 0xb90

    .line 639
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0xff

    .line 640
    invoke-static {v2}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const/16 v2, 0x400

    .line 641
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    .line 642
    invoke-static {v2, v2, v3}, Landroid/opengl/GLES20;->glStencilOp(III)V

    const/16 v3, 0x207

    const/4 v4, 0x1

    .line 643
    invoke-static {v3, v4, v4}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    .line 645
    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v10}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 646
    iget v12, v0, Landroid/graphics/RectF;->left:F

    iget v13, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$1000(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/glrenderer/GLPaint;

    move-result-object v16

    move-object/from16 v11, p1

    invoke-interface/range {v11 .. v16}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    const/16 v3, 0x205

    .line 648
    invoke-static {v3, v4, v4}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    .line 649
    invoke-static {v2, v2, v2}, Landroid/opengl/GLES20;->glStencilOp(III)V

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x60000000

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v8}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 653
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method private moveEdges(Landroid/view/MotionEvent;)V
    .locals 9

    .line 467
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->getScale()F

    move-result v0

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    .line 472
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    .line 474
    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    .line 475
    iget p1, v0, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v3, v4, v3

    invoke-static {v1, p1, v3}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    .line 476
    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v3

    invoke-static {v2, v1, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    .line 477
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 478
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 479
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 480
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 482
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    .line 483
    iget v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 484
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->inverseMapPoint(Landroid/graphics/PointF;)V

    .line 485
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float v2, v3, v2

    add-float/2addr p1, v2

    .line 486
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    sub-float/2addr v2, v5

    .line 487
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v6}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    add-float/2addr v5, v6

    .line 488
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v7}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    sub-float/2addr v6, v3

    .line 489
    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 490
    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3, p1, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 492
    :cond_1
    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    .line 493
    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v7, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 495
    :cond_2
    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 496
    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v7, v6}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 498
    :cond_3
    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 499
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v5, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 501
    :cond_4
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/CropView;->access$800(Lcn/nubia/gallery3d/ui/CropView;)F

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_b

    .line 502
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/CropView;->access$800(Lcn/nubia/gallery3d/ui/CropView;)F

    move-result v1

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 503
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v3, v8

    cmpl-float v3, v3, v1

    if-lez v3, :cond_6

    .line 504
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    .line 505
    iget v8, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_5

    .line 506
    iget v8, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v3

    invoke-static {v8, v5, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 508
    :cond_5
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v3

    invoke-static {v8, v7, v6}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 511
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    .line 512
    iget v8, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 513
    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v3

    invoke-static {v8, v7, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 515
    :cond_7
    iget v8, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v3

    invoke-static {v8, p1, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 518
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v3, v8

    cmpl-float v3, v3, v1

    if-lez v3, :cond_9

    .line 519
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    .line 520
    iget v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    .line 521
    iget p1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v3

    invoke-static {p1, v7, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 523
    :cond_8
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    invoke-static {v1, p1, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 526
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v1

    .line 527
    iget v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_a

    .line 528
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    invoke-static {v1, v5, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 530
    :cond_a
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p1

    invoke-static {v1, v7, v6}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 535
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    return-void
.end method

.method private setMovingEdges(Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p0

    .line 539
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 543
    iget v4, v1, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x41f00000    # 30.0f

    add-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    iget v4, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/16 v1, 0x10

    .line 545
    iput v1, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    return-void

    .line 549
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v3

    const/4 v7, 0x1

    if-gtz v4, :cond_1

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 551
    :goto_0
    iget v8, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v5

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_2

    iget v8, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v5

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    const/16 v10, 0x8

    const/4 v11, 0x4

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x2

    if-eqz v4, :cond_a

    .line 555
    iget v14, v1, Landroid/graphics/RectF;->left:F

    sub-float v14, v2, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v14, v14, v5

    if-gtz v14, :cond_3

    move v14, v7

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 556
    :goto_2
    iget v15, v1, Landroid/graphics/RectF;->right:F

    sub-float v15, v2, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v15, v15, v5

    if-gtz v15, :cond_4

    move v15, v7

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_6

    if-eqz v15, :cond_6

    .line 558
    iget v14, v1, Landroid/graphics/RectF;->left:F

    sub-float v14, v2, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v15, v1, Landroid/graphics/RectF;->right:F

    sub-float v15, v2, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_5

    move v14, v7

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    xor-int/lit8 v15, v14, 0x1

    :cond_6
    if-eqz v14, :cond_7

    .line 561
    iget v14, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/2addr v14, v7

    iput v14, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_7
    if-eqz v15, :cond_8

    .line 562
    iget v14, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/2addr v14, v11

    iput v14, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 563
    :cond_8
    iget-object v14, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v14}, Lcn/nubia/gallery3d/ui/CropView;->access$800(Lcn/nubia/gallery3d/ui/CropView;)F

    move-result v14

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_a

    if-eqz v8, :cond_a

    .line 564
    iget v14, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    iget v15, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v15, v6

    div-float/2addr v15, v9

    cmpl-float v6, v3, v15

    if-lez v6, :cond_9

    move v6, v10

    goto :goto_5

    :cond_9
    move v6, v13

    :goto_5
    or-int/2addr v6, v14

    iput v6, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_a
    if-eqz v8, :cond_12

    .line 569
    iget v6, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_b

    move v6, v7

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    .line 570
    :goto_6
    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v5, v8, v5

    if-gtz v5, :cond_c

    move v5, v7

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    .line 572
    iget v5, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_d

    move v6, v7

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    xor-int/lit8 v5, v6, 0x1

    :cond_e
    if-eqz v6, :cond_f

    .line 575
    iget v3, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/2addr v3, v13

    iput v3, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_f
    if-eqz v5, :cond_10

    .line 576
    iget v3, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/2addr v3, v10

    iput v3, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 577
    :cond_10
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$800(Lcn/nubia/gallery3d/ui/CropView;)F

    move-result v3

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_12

    if-eqz v4, :cond_12

    .line 578
    iget v3, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    div-float/2addr v4, v9

    cmpl-float v1, v2, v4

    if-lez v1, :cond_11

    move v7, v11

    :cond_11
    or-int v1, v3, v7

    iput v1, v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    :cond_12
    return-void
.end method


# virtual methods
.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 595
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->moveEdges(Landroid/view/MotionEvent;)V

    :goto_0
    return v1

    :cond_1
    const/4 p1, 0x0

    .line 599
    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 600
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->startParkingAnimation(Landroid/graphics/RectF;)V

    .line 601
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    return v1

    .line 588
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    .line 590
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setMovingEdges(Landroid/view/MotionEvent;)V

    .line 591
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    return v1
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 8

    .line 610
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 611
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->drawHighlightRectangle(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;)V

    .line 613
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 614
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    .line 615
    iget v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    if-eqz v5, :cond_2

    .line 617
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 618
    invoke-virtual {v7}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 619
    invoke-virtual {v7}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 617
    invoke-virtual {v2, p1, v6, v7}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 621
    :cond_2
    iget v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/2addr v2, v4

    if-nez v2, :cond_3

    if-eqz v5, :cond_4

    .line 622
    :cond_3
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 623
    invoke-virtual {v6}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 624
    invoke-virtual {v6}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 622
    invoke-virtual {v2, p1, v4, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 626
    :cond_4
    iget v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    if-eqz v5, :cond_6

    .line 627
    :cond_5
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 628
    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 629
    invoke-virtual {v6}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 627
    invoke-virtual {v1, p1, v2, v4}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 631
    :cond_6
    iget v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_7

    if-eqz v5, :cond_8

    .line 632
    :cond_7
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 633
    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 634
    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 632
    invoke-virtual {v1, p1, v2, v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_8
    return-void
.end method

.method public setInitRectangle()V
    .locals 6

    .line 443
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$800(Lcn/nubia/gallery3d/ui/CropView;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 445
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$800(Lcn/nubia/gallery3d/ui/CropView;)F

    move-result v0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 448
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$900(Lcn/nubia/gallery3d/ui/CropView;)Z

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_1

    move v2, v4

    move v3, v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    div-float v3, v2, v0

    goto :goto_2

    :cond_2
    mul-float v2, v3, v0

    .line 457
    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    sub-float v1, v4, v2

    sub-float v5, v4, v3

    add-float/2addr v2, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setRectangle(Landroid/graphics/RectF;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 462
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->startParkingAnimation(Landroid/graphics/RectF;)V

    .line 463
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    return-void
.end method
