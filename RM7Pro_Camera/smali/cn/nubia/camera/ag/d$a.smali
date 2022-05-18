.class Lcn/nubia/camera/ag/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ag/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ag/d;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ag/d;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V
    .locals 0

    .line 660
    invoke-direct {p0, p1}, Lcn/nubia/camera/ag/d$a;-><init>(Lcn/nubia/camera/ag/d;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 663
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x4d2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 665
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-virtual {p1}, Lcn/nubia/camera/ag/d;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 668
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/ag/d;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 669
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->b(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ag/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 672
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->b(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ag/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz p1, :cond_5

    .line 673
    array-length v0, p1

    if-lez v0, :cond_5

    .line 674
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 675
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->c(Lcn/nubia/camera/ag/d;)Landroid/graphics/Matrix;

    move-result-object p1

    if-nez p1, :cond_3

    .line 676
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->d(Lcn/nubia/camera/ag/d;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/ag/d;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 679
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->c(Lcn/nubia/camera/ag/d;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 681
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v1}, Lcn/nubia/camera/ag/d;->e(Lcn/nubia/camera/ag/d;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_4

    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    .line 682
    invoke-static {v1}, Lcn/nubia/camera/ag/d;->e(Lcn/nubia/camera/ag/d;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_4

    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    .line 683
    invoke-static {v1}, Lcn/nubia/camera/ag/d;->e(Lcn/nubia/camera/ag/d;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_4

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    .line 684
    invoke-static {v1}, Lcn/nubia/camera/ag/d;->e(Lcn/nubia/camera/ag/d;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_6

    .line 685
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->e(Lcn/nubia/camera/ag/d;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 686
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    .line 687
    invoke-static {v2}, Lcn/nubia/camera/ag/d;->f(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v2}, Lcn/nubia/camera/ag/d;->f(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v2}, Lcn/nubia/camera/ag/d;->g(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v2}, Lcn/nubia/camera/ag/d;->g(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    .line 688
    invoke-static {v4}, Lcn/nubia/camera/ag/d;->f(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->f(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->g(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->g(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 686
    invoke-static {p1, v1, v2}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/ag/d;FF)V

    goto :goto_0

    .line 692
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->g(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/ag/d;F)F

    .line 693
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->g(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ag/d;->b(Lcn/nubia/camera/ag/d;F)F

    .line 694
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->h(Lcn/nubia/camera/ag/d;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v1}, Lcn/nubia/camera/ag/d;->i(Lcn/nubia/camera/ag/d;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/ag/d;II)V

    .line 695
    iget-object p1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {p1}, Lcn/nubia/camera/ag/d;->h(Lcn/nubia/camera/ag/d;)F

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/ag/d$a;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v1}, Lcn/nubia/camera/ag/d;->i(Lcn/nubia/camera/ag/d;)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ag/d;->b(Lcn/nubia/camera/ag/d;FF)V

    :cond_6
    :goto_0
    return-void
.end method
