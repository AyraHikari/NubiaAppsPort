.class Lcn/nubia/gallery3d/ui/CropView$AnimationController;
.super Lcn/nubia/gallery3d/anim/Animation;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationController"
.end annotation


# instance fields
.field private mCurrentScale:F

.field private mCurrentX:I

.field private mCurrentY:I

.field private mStartScale:F

.field private mStartX:I

.field private mStartY:I

.field private mTargetScale:F

.field private mTargetX:I

.field private mTargetY:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/CropView;)V
    .locals 1

    .line 303
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/Animation;-><init>()V

    const/16 p1, 0x4e2

    .line 304
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->setDuration(I)V

    .line 305
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private calculateTarget(Landroid/graphics/RectF;)V
    .locals 7

    .line 389
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 390
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/CropView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 392
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 393
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    .line 395
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float v4, v0, v4

    .line 396
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v6}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float v5, v1, v5

    .line 394
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v4, v2, v3}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 397
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 398
    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 397
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 399
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 400
    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    mul-float/2addr v3, v5

    mul-float/2addr v3, v4

    .line 399
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 402
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v3, :cond_0

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    .line 403
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 404
    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v6

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 405
    invoke-static {v6}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    div-float/2addr v3, v5

    .line 404
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 406
    iget-object v6, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v6}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v3, v0, v6}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 410
    :goto_0
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    mul-float/2addr v1, v4

    div-float/2addr v1, v2

    .line 411
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 412
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p1

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 413
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    div-float/2addr v3, v5

    .line 412
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 414
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {p1, v1, v3}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    goto :goto_1

    .line 416
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 418
    :goto_1
    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    .line 419
    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    .line 420
    iput v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    :cond_2
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .line 377
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .line 381
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 385
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    return v0
.end method

.method public initialize()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 310
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 311
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 312
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 313
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/CropView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 311
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    return-void
.end method

.method public inverseMapPoint(Landroid/graphics/PointF;)V
    .locals 6

    .line 345
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 346
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/CropView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 347
    invoke-static {v2}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 346
    invoke-static {v1, v2, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 348
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/ui/CropView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v1, v5

    div-float/2addr v1, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 349
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 348
    invoke-static {v1, v2, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 9

    .line 353
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 354
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/CropView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 355
    iget v1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 356
    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 357
    iget v4, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 358
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 359
    invoke-static {v6}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v1, v1

    sub-float/2addr v5, v1

    mul-float/2addr v5, v4

    add-float/2addr v5, v0

    iget v6, p1, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 360
    invoke-static {v7}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v3, v3

    sub-float/2addr v6, v3

    mul-float/2addr v6, v4

    add-float/2addr v6, v2

    iget v7, p1, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 361
    invoke-static {v8}, Lcn/nubia/gallery3d/ui/CropView;->access$500(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v7, v1

    mul-float/2addr v7, v4

    add-float/2addr v0, v7

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 362
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/CropView;->access$600(Lcn/nubia/gallery3d/ui/CropView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    sub-float/2addr p1, v3

    mul-float/2addr p1, v4

    add-float/2addr v2, p1

    .line 358
    invoke-virtual {p2, v5, v6, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method protected onCalculate(F)V
    .locals 4

    .line 368
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartX:I

    int-to-float v1, v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 369
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartY:I

    int-to-float v1, v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 370
    iget v1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    iget v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    sub-float v3, v2, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    iput v1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 372
    iget p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    if-ne p1, v3, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    if-ne v0, p1, :cond_0

    cmpl-float p1, v1, v2

    if-nez p1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->forceStop()V

    :cond_0
    return-void
.end method

.method public parkNow(Landroid/graphics/RectF;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->calculateTarget(Landroid/graphics/RectF;)V

    .line 338
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->forceStop()V

    .line 339
    iget p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartX:I

    .line 340
    iget p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartY:I

    .line 341
    iget p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    return-void
.end method

.method public startParkingAnimation(Landroid/graphics/RectF;)V
    .locals 7

    .line 317
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/CropView;->getWidth()I

    move-result v1

    .line 319
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/CropView;->getHeight()I

    move-result v2

    .line 321
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 322
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_0

    const v6, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    cmpl-float v3, v4, v5

    if-ltz v3, :cond_0

    cmpg-float v3, v4, v6

    if-gez v3, :cond_0

    .line 324
    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x42800000    # 64.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-int/lit8 v1, v1, -0x40

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v2, v2, -0x40

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartX:I

    .line 330
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartY:I

    .line 331
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    .line 332
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->calculateTarget(Landroid/graphics/RectF;)V

    .line 333
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->start()V

    return-void
.end method
