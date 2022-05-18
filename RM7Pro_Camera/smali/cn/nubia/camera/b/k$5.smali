.class Lcn/nubia/camera/b/k$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/b/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/b/k;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-static {}, Lcn/nubia/camera/b/k;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 436
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    .line 437
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a([Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x2

    .line 445
    aget-object v1, p1, v0

    const-string v2, "fireworks"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0f0021

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    aget-object v1, p1, v0

    const-string v5, "night_sky"

    .line 446
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, p1, v0

    const-string v5, "night_scene"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 450
    :cond_0
    aget-object v1, p1, v0

    const-string v5, "face"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->q(Lcn/nubia/camera/b/k;)Landroid/widget/ImageView;

    move-result-object v1

    const v5, 0x7f08021d

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v3}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0f01ae

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 453
    iget-object v2, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v2}, Lcn/nubia/camera/b/k;->r(Lcn/nubia/camera/b/k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 454
    :cond_1
    aget-object v1, p1, v0

    const-string v5, "waterfall"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->q(Lcn/nubia/camera/b/k;)Landroid/widget/ImageView;

    move-result-object v1

    const v5, 0x7f080211

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v3}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0f00ad

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v2}, Lcn/nubia/camera/b/k;->r(Lcn/nubia/camera/b/k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 458
    :cond_2
    aget-object v1, p1, v0

    const-string v5, "microspur"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->q(Lcn/nubia/camera/b/k;)Landroid/widget/ImageView;

    move-result-object v1

    const v5, 0x7f080218

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v3}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0f0135

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 461
    iget-object v2, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v2}, Lcn/nubia/camera/b/k;->r(Lcn/nubia/camera/b/k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->q(Lcn/nubia/camera/b/k;)Landroid/widget/ImageView;

    move-result-object v1

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->r(Lcn/nubia/camera/b/k;)Landroid/widget/TextView;

    move-result-object v1

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 447
    :cond_4
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->q(Lcn/nubia/camera/b/k;)Landroid/widget/ImageView;

    move-result-object v1

    const v5, 0x7f08021b

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v3}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0f0159

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 449
    iget-object v2, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v2}, Lcn/nubia/camera/b/k;->r(Lcn/nubia/camera/b/k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->l(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/extendedUI/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 467
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v0, p1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 333
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "face"

    const-string v2, "microspur"

    const/4 v3, 0x3

    const-string v4, ""

    const/16 v5, 0x8

    if-eqz v0, :cond_10

    const/4 v6, 0x1

    if-eq v0, v6, :cond_e

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 420
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->p(Lcn/nubia/camera/b/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 421
    sget-object p1, Lcn/nubia/camera/b/i;->d:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcn/nubia/camera/b/k$5;->a([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 423
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 424
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->l(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/extendedUI/c;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 425
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1, v4}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 373
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_3

    return-void

    .line 374
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 375
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 376
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->m(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/zoom/c;

    move-result-object v1

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->m(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/zoom/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v8

    .line 377
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    .line 378
    invoke-static {v9}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v9

    iget-object v11, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v11}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    cmpg-float v1, v1, v8

    if-ltz v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    .line 379
    invoke-static {v1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move v6, v10

    :cond_7
    :goto_1
    if-eqz v6, :cond_8

    .line 381
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->n(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/aj/j;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aj/j;->a()V

    .line 382
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 383
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->l(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/extendedUI/c;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 384
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1, v4}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 386
    :cond_8
    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    .line 387
    invoke-static {v1}, Lcn/nubia/camera/b/k;->o(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xfa0

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    .line 389
    invoke-static {v0}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    .line 390
    invoke-static {v0}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_disable_auto_microspur_key"

    invoke-virtual {v0, v1, v10}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    .line 392
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    .line 393
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 394
    :goto_2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 396
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_a

    .line 397
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v7, :cond_a

    .line 398
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_b

    .line 399
    :cond_a
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->n(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/aj/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aj/j;->a(F)V

    .line 404
    :cond_b
    sget-object p1, Lcn/nubia/camera/b/i;->c:[Ljava/lang/Object;

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_c

    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->n(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/aj/j;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/b/i;->c:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aj/j;->b(F)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 405
    sget-object p1, Lcn/nubia/camera/b/i;->c:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcn/nubia/camera/b/k$5;->a([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 407
    :cond_c
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 408
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->l(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/extendedUI/c;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 409
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1, v4}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 413
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NormalAIControl"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 416
    :cond_d
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->n(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/aj/j;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aj/j;->a()V

    goto/16 :goto_3

    .line 366
    :cond_e
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->e(Lcn/nubia/camera/b/k;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_3

    .line 369
    :cond_f
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->l(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/extendedUI/c;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 370
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1, v4}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 335
    :cond_10
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->e(Lcn/nubia/camera/b/k;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_3

    .line 338
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 339
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->j(Lcn/nubia/camera/b/k;)J

    move-result-wide v8

    sub-long v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long p1, v8, v10

    if-gez p1, :cond_12

    return-void

    .line 343
    :cond_12
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->k(Lcn/nubia/camera/b/k;)Ljava/util/ArrayList;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    invoke-direct {p0, v0}, Lcn/nubia/camera/b/k$5;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    aget-object v9, v9, v3

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 348
    iget-object v10, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v10}, Lcn/nubia/camera/b/k;->d(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/b/j;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcn/nubia/camera/b/j;->a(I)F

    move-result v10

    cmpl-float v9, v10, v9

    if-lez v9, :cond_14

    .line 350
    iget-object v9, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v9}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {v9}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 352
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcn/nubia/camera/b/k$5;->a([Ljava/lang/Object;)V

    .line 353
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1, v6, v7}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;J)J

    return-void

    .line 359
    :cond_15
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 361
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->l(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/extendedUI/c;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 362
    iget-object p1, p0, Lcn/nubia/camera/b/k$5;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1, v4}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Ljava/lang/String;)V

    :cond_16
    :goto_3
    return-void
.end method
