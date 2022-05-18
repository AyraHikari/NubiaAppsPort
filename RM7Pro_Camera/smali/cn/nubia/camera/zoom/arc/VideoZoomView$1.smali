.class Lcn/nubia/camera/zoom/arc/VideoZoomView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/zoom/arc/VideoZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/zoom/arc/VideoZoomView;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/VideoZoomView;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 409
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 410
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 437
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->i(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 439
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->k(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->k(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 440
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->l(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result v2

    goto :goto_2

    .line 441
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    const v0, 0x3eb33333    # 0.35f

    const v3, -0x414ccccd    # -0.35f

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v4}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->m(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_3

    .line 442
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->n(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    :goto_1
    mul-float v2, v0, p1

    goto :goto_2

    .line 443
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v4}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->j(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v4}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->o(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_5

    .line 444
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p1, :cond_4

    move v0, v3

    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->n(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    goto :goto_1

    .line 448
    :cond_5
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 449
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->p(Lcn/nubia/camera/zoom/arc/VideoZoomView;)V

    .line 450
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1, v2}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)V

    .line 452
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1, v1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b(Lcn/nubia/camera/zoom/arc/VideoZoomView;Z)Z

    goto/16 :goto_4

    .line 412
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b(Lcn/nubia/camera/zoom/arc/VideoZoomView;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-nez p1, :cond_8

    goto/16 :goto_4

    .line 416
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b(Lcn/nubia/camera/zoom/arc/VideoZoomView;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c(Lcn/nubia/camera/zoom/arc/VideoZoomView;)J

    move-result-wide v8

    cmp-long p1, v4, v8

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez p1, :cond_9

    .line 417
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v5}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b(Lcn/nubia/camera/zoom/arc/VideoZoomView;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v5, v8

    iget-object v8, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v8}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c(Lcn/nubia/camera/zoom/arc/VideoZoomView;)J

    move-result-wide v8

    long-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {p1, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_3

    :cond_9
    move p1, v4

    .line 421
    :goto_3
    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {v5}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->e(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result v8

    sub-float/2addr v4, p1

    mul-float/2addr v8, v4

    invoke-static {v5, v8}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)F

    move-result p1

    invoke-static {v5, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)F

    .line 422
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->f(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result v4

    invoke-static {p1, v4}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->c(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)V

    .line 423
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->invalidate()V

    .line 424
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->f(Lcn/nubia/camera/zoom/arc/VideoZoomView;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_a

    .line 425
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->g(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 427
    :cond_a
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->g(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->g(Lcn/nubia/camera/zoom/arc/VideoZoomView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1, v1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a(Lcn/nubia/camera/zoom/arc/VideoZoomView;Z)Z

    .line 430
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1, v2}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->d(Lcn/nubia/camera/zoom/arc/VideoZoomView;F)F

    .line 431
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1, v6, v7}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->a(Lcn/nubia/camera/zoom/arc/VideoZoomView;J)J

    .line 432
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1, v1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->b(Lcn/nubia/camera/zoom/arc/VideoZoomView;Z)Z

    .line 433
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/VideoZoomView$1;->a:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->h(Lcn/nubia/camera/zoom/arc/VideoZoomView;)V

    :cond_b
    :goto_4
    return-void
.end method
