.class public Lcn/nubia/camera/three_a/ui/b;
.super Lcn/nubia/camera/three_a/ui/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/three_a/ui/ExposureView$a;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcn/nubia/camera/three_a/ui/EvView;

.field private n:Lcn/nubia/camera/three_a/ui/ExposureView;

.field private o:Lcom/android/common/ui/RotateLayout;

.field private p:Lcn/nubia/camera/three_a/ui/g;

.field private q:Landroid/graphics/Point;

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/three_a/ui/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcn/nubia/camera/three_a/ui/h$f;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 60
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/three_a/ui/a;-><init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v8, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/b;->r:Z

    .line 44
    iput v0, v8, Lcn/nubia/camera/three_a/ui/b;->s:I

    .line 45
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/b;->t:Z

    .line 46
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/b;->u:Z

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lcn/nubia/camera/three_a/ui/b;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 48
    iput-object v1, v8, Lcn/nubia/camera/three_a/ui/b;->w:Lcn/nubia/camera/three_a/ui/h$f;

    .line 50
    iput v0, v8, Lcn/nubia/camera/three_a/ui/b;->x:I

    .line 51
    iput v0, v8, Lcn/nubia/camera/three_a/ui/b;->y:I

    .line 52
    iput v0, v8, Lcn/nubia/camera/three_a/ui/b;->z:I

    .line 53
    iput v0, v8, Lcn/nubia/camera/three_a/ui/b;->A:I

    .line 55
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/b;->C:Z

    .line 61
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object v2, p3

    invoke-virtual {p3, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/b;->i:Z

    .line 62
    invoke-virtual {p4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->f(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/b;->j:Z

    .line 64
    iget-object v0, v8, Lcn/nubia/camera/three_a/ui/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v8, Lcn/nubia/camera/three_a/ui/b;->k:I

    .line 65
    iget-object v0, v8, Lcn/nubia/camera/three_a/ui/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v8, Lcn/nubia/camera/three_a/ui/b;->l:I

    .line 67
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->t()V

    return-void
.end method

.method private D()Z
    .locals 2

    .line 384
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 385
    sget-object v1, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private E()Z
    .locals 2

    .line 484
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private F()Z
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    .line 490
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    .line 491
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->j:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 497
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 506
    :cond_1
    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->z:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcn/nubia/camera/three_a/ui/b;->A:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 507
    iput-boolean v1, p0, Lcn/nubia/camera/three_a/ui/b;->C:Z

    goto :goto_0

    .line 500
    :cond_2
    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->A:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcn/nubia/camera/three_a/ui/b;->z:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 501
    iput-boolean v1, p0, Lcn/nubia/camera/three_a/ui/b;->C:Z

    .line 511
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->C:Z

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private G()Z
    .locals 2

    .line 617
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    .line 618
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    .line 619
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    .line 620
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(II)V
    .locals 4

    .line 515
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->e()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->f()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->h()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 516
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    invoke-virtual {v1}, Lcn/nubia/camera/three_a/ui/EvView;->getMax()I

    move-result v1

    .line 518
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/al/c;->d()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_1

    const/16 p2, 0x10e

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p1, v1

    .line 532
    div-int/2addr p1, v0

    .line 533
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->B:I

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcn/nubia/camera/three_a/ui/EvView;->setDragProgress(I)V

    goto :goto_0

    :cond_1
    mul-int/2addr p2, v1

    .line 528
    div-int/2addr p2, v0

    .line 529
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->B:I

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/EvView;->setDragProgress(I)V

    goto :goto_0

    :cond_2
    mul-int/2addr p1, v1

    .line 524
    div-int/2addr p1, v0

    .line 525
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->B:I

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcn/nubia/camera/three_a/ui/EvView;->setDragProgress(I)V

    goto :goto_0

    :cond_3
    mul-int/2addr p2, v1

    .line 520
    div-int/2addr p2, v0

    .line 521
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->B:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/EvView;->setDragProgress(I)V

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Point;)V
    .locals 2

    .line 408
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/b;->b(Landroid/graphics/Point;)V

    .line 409
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800ff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/EvView;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/EvView;->d()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->v:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/h$a;

    .line 222
    iget-boolean v1, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    invoke-interface {v0, v1}, Lcn/nubia/camera/three_a/ui/h$a;->c(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Point;)V
    .locals 5

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 418
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->d()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_5

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_3

    const/16 v3, 0x10e

    if-eq v1, v3, :cond_0

    move p1, v2

    move v1, p1

    goto/16 :goto_5

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->h()I

    move-result v1

    .line 461
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->e()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->c()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-le v3, v1, :cond_1

    .line 462
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->e()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->c()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 464
    :cond_1
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->c()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->e()I

    move-result v4

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_2

    .line 465
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 466
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    goto :goto_0

    .line 468
    :cond_2
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 469
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    .line 471
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->E()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 472
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->d()I

    move-result v3

    sub-int/2addr v3, v1

    iget v1, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    goto/16 :goto_4

    .line 448
    :cond_3
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    if-lez v1, :cond_4

    .line 449
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 450
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 452
    :cond_4
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 453
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    div-int/lit8 v3, v3, 0x2

    :goto_1
    sub-int/2addr p1, v3

    .line 455
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->E()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 456
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->d()I

    move-result v3

    sub-int/2addr v3, v1

    iget v1, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    goto/16 :goto_4

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->f()I

    move-result v1

    .line 433
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->c()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_6

    .line 434
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->c()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 436
    :cond_6
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->j()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->c()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    if-le v3, v1, :cond_7

    .line 437
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 438
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->j()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    goto :goto_2

    .line 440
    :cond_7
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 441
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->j()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    .line 443
    :goto_2
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->E()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 444
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->d()I

    move-result v3

    sub-int/2addr v3, v1

    iget v1, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    goto :goto_4

    .line 420
    :cond_8
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->d()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 421
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 422
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    div-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 424
    :cond_9
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 425
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    div-int/lit8 v3, v3, 0x2

    :goto_3
    sub-int/2addr p1, v3

    .line 427
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->E()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 428
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->d()I

    move-result v3

    sub-int/2addr v3, v1

    iget v1, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    :goto_4
    sub-int v1, v3, v1

    .line 476
    :cond_a
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 477
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 478
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 479
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 480
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateLayout;->requestLayout()V

    return-void
.end method

.method private b(ZZ)V
    .locals 1

    .line 201
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    .line 202
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/b;->f(Z)V

    if-eqz p2, :cond_0

    .line 204
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/g;->d()V

    .line 206
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/h$g;->b(ZZ)V

    .line 208
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {p1, v0, v0}, Lcn/nubia/camera/three_a/ui/h$g;->d(ZZ)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->o()Z

    move-result p1

    if-nez p1, :cond_2

    .line 213
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/h$g;->d(ZZ)V

    .line 215
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    invoke-virtual {p1, p2}, Lcn/nubia/camera/three_a/ui/ExposureView;->a(Z)V

    .line 216
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(Z)V

    return-void
.end method

.method private d(I)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 369
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->i:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 375
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->j:Z

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private e(I)V
    .locals 2

    .line 394
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->i:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 395
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/ExposureView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 398
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/ExposureView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/ExposureView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 590
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/EvView;->d()V

    .line 592
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 593
    iput-boolean v1, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    .line 594
    invoke-virtual {p0, v1}, Lcn/nubia/camera/three_a/ui/b;->f(Z)V

    .line 595
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/nubia/camera/three_a/ui/h$g;->b(ZZ)V

    .line 596
    invoke-direct {p0, v1}, Lcn/nubia/camera/three_a/ui/b;->a(Z)V

    .line 597
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/ExposureView;->a(Z)V

    .line 600
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->w:Lcn/nubia/camera/three_a/ui/h$f;

    if-eqz v0, :cond_3

    .line 601
    invoke-interface {v0, v1}, Lcn/nubia/camera/three_a/ui/h$f;->e(Z)V

    :cond_3
    return-void
.end method

.method public B()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 608
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public C()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->u:Z

    return v0
.end method

.method a()V
    .locals 2

    .line 540
    invoke-super {p0}, Lcn/nubia/camera/three_a/ui/a;->a()V

    .line 541
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/ExposureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    .line 542
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 569
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/EvView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 571
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->o()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->n()Z

    move-result p1

    if-nez p1, :cond_1

    .line 572
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/ExposureView;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 575
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    .line 72
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/b;->i:Z

    .line 73
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->l()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->f(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/b;->j:Z

    .line 75
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/three_a/ui/b;->k:I

    .line 76
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700be

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/three_a/ui/b;->l:I

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->t()V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$a;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$f;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->w:Lcn/nubia/camera/three_a/ui/h$f;

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 257
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/three_a/ui/b;->b(ZZ)V

    return-void
.end method

.method public a(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->g(Z)V

    .line 118
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    .line 119
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v1, v0, v2}, Lcn/nubia/camera/three_a/ui/h$g;->d(ZZ)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 128
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 130
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v1}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 131
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v1}, Lcn/nubia/camera/three_a/ui/g;->c()V

    .line 133
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/three_a/ui/ExposureView;->setVisibility(I)V

    .line 136
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->j()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/b;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0, v1, v3}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/graphics/Point;IILandroid/graphics/Rect;)V

    .line 138
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->h:Lcn/nubia/camera/three_a/ui/a$a;

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 142
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/graphics/Point;)V

    .line 143
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/nubia/camera/three_a/ui/h$g;->b(Landroid/graphics/RectF;)V

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/EvView;->c()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 333
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/EvView;->a()V

    .line 335
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->z()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    return v3

    .line 338
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_5

    goto :goto_1

    .line 347
    :cond_4
    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->x:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->y:I

    if-eqz v0, :cond_7

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcn/nubia/camera/three_a/ui/b;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/three_a/ui/b;->z:I

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->y:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/three_a/ui/b;->A:I

    .line 350
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->F()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 351
    iget p1, p0, Lcn/nubia/camera/three_a/ui/b;->z:I

    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->A:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/three_a/ui/b;->a(II)V

    goto :goto_1

    .line 357
    :cond_5
    iput-boolean v3, p0, Lcn/nubia/camera/three_a/ui/b;->C:Z

    .line 358
    iput v3, p0, Lcn/nubia/camera/three_a/ui/b;->x:I

    .line 359
    iput v3, p0, Lcn/nubia/camera/three_a/ui/b;->y:I

    goto :goto_1

    .line 340
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/three_a/ui/b;->x:I

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/camera/three_a/ui/b;->y:I

    .line 342
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/EvView;->getProgress()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/three_a/ui/b;->B:I

    .line 343
    iput v3, p0, Lcn/nubia/camera/three_a/ui/b;->z:I

    .line 344
    iput v3, p0, Lcn/nubia/camera/three_a/ui/b;->A:I

    .line 362
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/b;->C:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->z()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    return v2
.end method

.method public a(Landroid/view/MotionEvent;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 5

    .line 149
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->C()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->r:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 152
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    .line 153
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->a(Lcn/nubia/camera/three_a/ui/g;)[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/camera/three_a/ui/b;->a([III)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->r:Z

    .line 157
    iget v2, p0, Lcn/nubia/camera/three_a/ui/b;->s:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/camera/three_a/ui/b;->s:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 159
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v2}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 161
    :cond_4
    iget v2, p0, Lcn/nubia/camera/three_a/ui/b;->s:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_a

    .line 162
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 165
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    .line 166
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 168
    :cond_6
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    iget v4, p2, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 169
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, v2, Landroid/graphics/Point;->y:I

    .line 170
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->i()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->j()I

    move-result v2

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/b;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, p2, v2, v4}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/graphics/Point;IILandroid/graphics/Rect;)V

    .line 171
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    iget-object p3, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-interface {p2, p3, v2}, Lcn/nubia/camera/three_a/ui/g;->a(FF)V

    .line 172
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {p2, v1}, Lcn/nubia/camera/three_a/ui/ExposureView;->setVisibility(I)V

    .line 173
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->G()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 174
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p2, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 176
    :cond_7
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    invoke-direct {p0, p2}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/graphics/Point;)V

    .line 177
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->g(Z)V

    .line 178
    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    if-eqz p2, :cond_8

    .line 179
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {p2, v1, v0}, Lcn/nubia/camera/three_a/ui/h$g;->b(ZZ)V

    .line 180
    invoke-direct {p0, v1}, Lcn/nubia/camera/three_a/ui/b;->a(Z)V

    .line 182
    :cond_8
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-object p3, p0, Lcn/nubia/camera/three_a/ui/b;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p3

    invoke-interface {p2, p3}, Lcn/nubia/camera/three_a/ui/h$g;->b(Landroid/graphics/RectF;)V

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_a

    .line 184
    iget p1, p0, Lcn/nubia/camera/three_a/ui/b;->s:I

    if-le p1, v3, :cond_9

    .line 185
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/g;->a()V

    .line 187
    :cond_9
    iput-boolean v1, p0, Lcn/nubia/camera/three_a/ui/b;->r:Z

    .line 188
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    invoke-interface {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/h$g;->b(ZZ)V

    .line 189
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {p1, v0, v0}, Lcn/nubia/camera/three_a/ui/h$g;->d(ZZ)V

    .line 190
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(Z)V

    .line 191
    iput v1, p0, Lcn/nubia/camera/three_a/ui/b;->s:I

    :cond_a
    return v0

    :cond_b
    :goto_1
    return v1
.end method

.method b()V
    .locals 2

    .line 550
    invoke-super {p0}, Lcn/nubia/camera/three_a/ui/a;->b()V

    .line 551
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/g;->a()V

    .line 552
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->w:Lcn/nubia/camera/three_a/ui/h$f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 553
    invoke-interface {v0, v1}, Lcn/nubia/camera/three_a/ui/h$f;->e(Z)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/b;->d(I)V

    .line 245
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/b;->e(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->a(IZ)V

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->a(IZ)V

    .line 252
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b;->q:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/b;->b(Landroid/graphics/Point;)V

    return-void
.end method

.method public m_()V
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->u:Z

    .line 308
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->e(Z)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/EvView;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    .line 84
    new-instance v1, Lcn/nubia/camera/three_a/ui/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/three_a/ui/b$1;-><init>(Lcn/nubia/camera/three_a/ui/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/EvView;->setOnVerticalSeekBarChangedListener(Lcn/nubia/camera/three_a/ui/i$a;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/EvView;->a(Lcn/nubia/camera/ad/a;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/ExposureView;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/g;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    .line 108
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->d(I)V

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/three_a/ui/ExposureView;->setExposureViewStateChangeListener(Lcn/nubia/camera/three_a/ui/ExposureView$a;)V

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/b;->m()V

    .line 231
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/three_a/ui/b;->b(ZZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    return v0
.end method

.method public w()Z
    .locals 2

    .line 267
    iget v0, p0, Lcn/nubia/camera/three_a/ui/b;->s:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcn/nubia/camera/three_a/ui/b;->s:I

    .line 273
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->r:Z

    .line 274
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->u:Z

    .line 275
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->e(Z)V

    return-void
.end method

.method public y()V
    .locals 3

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->t:Z

    .line 282
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v1, v0, v0}, Lcn/nubia/camera/three_a/ui/h$g;->b(ZZ)V

    .line 283
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v1, v0, v0}, Lcn/nubia/camera/three_a/ui/h$g;->d(ZZ)V

    .line 284
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    .line 285
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->c:Lcn/nubia/camera/ad/a;

    .line 286
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-eq v1, v2, :cond_0

    .line 287
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v1, v0}, Lcn/nubia/camera/three_a/ui/h$g;->a(I)V

    .line 289
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->a(Z)V

    .line 290
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/three_a/ui/ExposureView;->a(Z)V

    .line 291
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/camera/three_a/ui/ExposureView;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 294
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 295
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/b;->m:Lcn/nubia/camera/three_a/ui/EvView;

    invoke-virtual {v1}, Lcn/nubia/camera/three_a/ui/EvView;->b()V

    .line 297
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->f(Z)V

    .line 298
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->g(Z)V

    .line 299
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/b;->e(Z)V

    .line 301
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/b;->r:Z

    return-void
.end method

.method public z()Z
    .locals 2

    .line 323
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->n:Lcn/nubia/camera/three_a/ui/ExposureView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/ExposureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->p:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    .line 325
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b;->o:Lcom/android/common/ui/RotateLayout;

    .line 326
    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
