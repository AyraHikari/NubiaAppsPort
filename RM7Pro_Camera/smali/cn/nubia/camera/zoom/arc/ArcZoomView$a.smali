.class Lcn/nubia/camera/zoom/arc/ArcZoomView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/zoom/arc/ArcZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field final synthetic b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

.field private c:F

.field private d:I

.field private e:F

.field private f:Z


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/ArcZoomView;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 624
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->f:Z

    .line 679
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void
.end method

.method constructor <init>(Lcn/nubia/camera/zoom/arc/ArcZoomView;FIF)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 624
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->f:Z

    .line 679
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 627
    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    .line 628
    iput p3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    .line 629
    iput p4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    return-void
.end method

.method constructor <init>(Lcn/nubia/camera/zoom/arc/ArcZoomView;Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 624
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->f:Z

    .line 679
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 633
    iget p1, p2, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    .line 634
    iget p1, p2, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    .line 635
    iget p1, p2, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;F)F
    .locals 0

    .line 620
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)I
    .locals 0

    .line 620
    iget p0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;I)I
    .locals 0

    .line 620
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;Z)Z
    .locals 0

    .line 620
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->f:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)F
    .locals 0

    .line 620
    iget p0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;F)F
    .locals 0

    .line 620
    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)Z
    .locals 0

    .line 620
    iget-boolean p0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->f:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/zoom/arc/ArcZoomView$a;)F
    .locals 0

    .line 620
    iget p0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    return p0
.end method


# virtual methods
.method a()F
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 656
    :cond_0
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    return v0
.end method

.method a(DZ)Z
    .locals 10

    .line 682
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    const-string v1, "ArcZoomView"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Z

    move-result v0

    if-nez v0, :cond_0

    cmpg-double v0, p1, v3

    if-ltz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Z

    move-result v0

    if-eqz v0, :cond_1

    cmpl-double v0, p1, v3

    if-gtz v0, :cond_3

    :cond_1
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    iget-object v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    .line 683
    invoke-static {v6}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double v0, p1, v3

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Z

    move-result v0

    if-eqz v0, :cond_4

    cmpg-double v0, p1, v3

    if-gez v0, :cond_4

    .line 684
    :cond_3
    iput v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    goto/16 :goto_2

    .line 686
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c(Lcn/nubia/camera/zoom/arc/ArcZoomView;)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    iget p3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 v0, 0x3fc00000    # 1.5f

    cmpg-float p3, p3, v0

    if-gez p3, :cond_5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpg-double p3, v6, v8

    if-gez p3, :cond_5

    iget-object p3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    invoke-static {p3, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;F)Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v5

    goto :goto_0

    :cond_5
    move p3, v4

    :goto_0
    if-eqz p3, :cond_6

    .line 689
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 690
    iget-object v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v6}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c(Lcn/nubia/camera/zoom/arc/ArcZoomView;)F

    move-result v6

    sub-float/2addr v3, v6

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c(Lcn/nubia/camera/zoom/arc/ArcZoomView;)F

    move-result v0

    add-float/2addr v3, v0

    .line 692
    :cond_6
    sget-object v0, Lcn/nubia/camera/zoom/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCenterAngleOffset: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "distance "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "; mCenterZoomIndex: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "; needSlowDown"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "; slowDownRatio: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_7
    iget p3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    float-to-double v6, p3

    float-to-double v8, v3

    div-double/2addr p1, v8

    add-double/2addr v6, p1

    double-to-float p1, v6

    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    .line 698
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {p2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getScaleStep()F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    if-eqz p1, :cond_a

    .line 700
    iget p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    add-int p3, p2, p1

    if-gez p3, :cond_8

    .line 701
    iput v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    .line 702
    iput v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    goto :goto_1

    :cond_8
    add-int/2addr p2, p1

    .line 703
    iget-object p3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {p3}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v5

    if-lt p2, p3, :cond_9

    .line 704
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    .line 705
    iput v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    goto :goto_1

    .line 707
    :cond_9
    iget p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    int-to-float p3, p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getScaleStep()F

    move-result v0

    mul-float/2addr p3, v0

    sub-float/2addr p2, p3

    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    .line 708
    iget p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    add-int/2addr p2, p1

    iput p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    .line 711
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    .line 714
    :cond_a
    :goto_2
    sget-object p1, Lcn/nubia/camera/zoom/e;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isKeyZoom(mCenterZoom): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    iget p3, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    invoke-static {p2, p3}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;F)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mCenterAngleOffset: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return v5
.end method

.method b()F
    .locals 6

    .line 662
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->f:Z

    if-eqz v0, :cond_0

    .line 663
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    return v0

    .line 665
    :cond_0
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    .line 666
    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    cmpl-float v2, v1, v4

    if-ltz v2, :cond_1

    .line 667
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getScaleStep()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v4}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_0
    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_1

    .line 668
    :cond_1
    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    if-lez v1, :cond_2

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    cmpg-float v2, v1, v4

    if-gtz v2, :cond_2

    .line 669
    iget v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getScaleStep()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v4}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_0

    .line 671
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 672
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2

    .line 673
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 674
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->b:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/zoom/arc/ArcZoomView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_4
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CenterZoom{mCenterZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCenterZoomIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCenterAngleOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeep= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/zoom/arc/ArcZoomView$a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
