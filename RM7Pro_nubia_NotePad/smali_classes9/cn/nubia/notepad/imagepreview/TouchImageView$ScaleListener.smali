.class Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/imagepreview/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;
    .param p2, "x1"    # Lcn/nubia/notepad/imagepreview/TouchImageView$1;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;-><init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 13
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 444
    const v4, 0x3f733333    # 0.95f

    .line 445
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    .line 444
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 446
    .local v0, "mScaleFactor":F
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v1, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 447
    .local v1, "origScale":F
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v5, v0

    iput v5, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 448
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 449
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    iput v5, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 450
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    div-float v0, v4, v1

    .line 455
    :cond_0
    :goto_0
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    iget-object v6, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v6, v6, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v6, v6, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v6, v6, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantXSpace:F

    mul-float/2addr v6, v9

    iget-object v7, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v7, v7, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    .line 457
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    iget-object v6, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v6, v6, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v6, v6, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v6, v6, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantYSpace:F

    mul-float/2addr v6, v9

    iget-object v7, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v7, v7, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    .line 459
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->origWidth:F

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->origHeight:F

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_7

    .line 461
    :cond_1
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    div-float/2addr v5, v9

    iget-object v6, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v6, v6, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    div-float/2addr v6, v9

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 463
    cmpg-float v4, v0, v10

    if-gez v4, :cond_2

    .line 464
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 465
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    aget v2, v4, v11

    .line 466
    .local v2, "x":F
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    aget v3, v4, v12

    .line 467
    .local v3, "y":F
    cmpg-float v4, v0, v10

    if-gez v4, :cond_2

    .line 468
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->origWidth:F

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 469
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    neg-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    .line 470
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    add-float/2addr v5, v3

    neg-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 498
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 451
    :cond_3
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 452
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    iput v5, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 453
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    div-float v0, v4, v1

    goto/16 :goto_0

    .line 471
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_4
    cmpl-float v4, v3, v8

    if-lez v4, :cond_2

    .line 472
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v3

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 474
    :cond_5
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_6

    .line 475
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    add-float/2addr v5, v2

    neg-float v5, v5

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 476
    :cond_6
    cmpl-float v4, v2, v8

    if-lez v4, :cond_2

    .line 477
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 482
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_7
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 483
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    .line 482
    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 484
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 485
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    aget v2, v4, v11

    .line 486
    .restart local v2    # "x":F
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    aget v3, v4, v12

    .line 487
    .restart local v3    # "y":F
    cmpg-float v4, v0, v10

    if-gez v4, :cond_2

    .line 488
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_9

    .line 489
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    add-float/2addr v5, v2

    neg-float v5, v5

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 492
    :cond_8
    :goto_2
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    neg-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_a

    .line 493
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget v5, v5, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    add-float/2addr v5, v3

    neg-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 490
    :cond_9
    cmpl-float v4, v2, v8

    if-lez v4, :cond_8

    .line 491
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 494
    :cond_a
    cmpl-float v4, v3, v8

    if-lez v4, :cond_2

    .line 495
    iget-object v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    iget-object v4, v4, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v3

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 438
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    const/4 v1, 0x2

    iput v1, v0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    .line 439
    const/4 v0, 0x1

    return v0
.end method
