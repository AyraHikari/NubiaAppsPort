.class Landroidx/appcompat/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/av;

.field private c:Landroidx/appcompat/widget/av;

.field private d:Landroidx/appcompat/widget/av;

.field private e:Landroidx/appcompat/widget/av;

.field private f:Landroidx/appcompat/widget/av;

.field private g:Landroidx/appcompat/widget/av;

.field private h:Landroidx/appcompat/widget/av;

.field private final i:Landroidx/appcompat/widget/ab;

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Landroidx/appcompat/widget/z;->j:I

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Landroidx/appcompat/widget/z;->k:I

    .line 76
    iput-object p1, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    .line 77
    new-instance v0, Landroidx/appcompat/widget/ab;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ab;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/appcompat/widget/k;I)Landroidx/appcompat/widget/av;
    .locals 0

    .line 520
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/k;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 522
    new-instance p1, Landroidx/appcompat/widget/av;

    invoke-direct {p1}, Landroidx/appcompat/widget/av;-><init>()V

    const/4 p2, 0x1

    .line 523
    iput-boolean p2, p1, Landroidx/appcompat/widget/av;->d:Z

    .line 524
    iput-object p0, p1, Landroidx/appcompat/widget/av;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroidx/appcompat/widget/ax;)V
    .locals 9

    .line 339
    sget v0, Landroidx/appcompat/a$j;->cM:I

    iget v1, p0, Landroidx/appcompat/widget/z;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z;->j:I

    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    .line 342
    sget v0, Landroidx/appcompat/a$j;->cR:I

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z;->k:I

    if-eq v0, v3, :cond_0

    .line 345
    iget v0, p0, Landroidx/appcompat/widget/z;->j:I

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    iput v0, p0, Landroidx/appcompat/widget/z;->j:I

    .line 349
    :cond_0
    sget v0, Landroidx/appcompat/a$j;->cQ:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_6

    sget v0, Landroidx/appcompat/a$j;->cS:I

    .line 350
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 412
    :cond_1
    sget p1, Landroidx/appcompat/a$j;->cL:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 414
    iput-boolean v4, p0, Landroidx/appcompat/widget/z;->m:Z

    .line 415
    sget p1, Landroidx/appcompat/a$j;->cL:I

    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result p1

    if-eq p1, v5, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 426
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 422
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 418
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    .line 352
    sget v0, Landroidx/appcompat/a$j;->cS:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 353
    sget v0, Landroidx/appcompat/a$j;->cS:I

    goto :goto_2

    .line 354
    :cond_7
    sget v0, Landroidx/appcompat/a$j;->cQ:I

    .line 355
    :goto_2
    iget v6, p0, Landroidx/appcompat/widget/z;->k:I

    .line 356
    iget v7, p0, Landroidx/appcompat/widget/z;->j:I

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    .line 358
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-direct {p1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 359
    new-instance v8, Landroidx/appcompat/widget/z$1;

    invoke-direct {v8, p0, v6, v7, p1}, Landroidx/appcompat/widget/z$1;-><init>(Landroidx/appcompat/widget/z;IILjava/lang/ref/WeakReference;)V

    .line 378
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/z;->j:I

    invoke-virtual {p2, v0, p1, v8}, Landroidx/appcompat/widget/ax;->a(IILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 380
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_9

    iget v6, p0, Landroidx/appcompat/widget/z;->k:I

    if-eq v6, v3, :cond_9

    .line 383
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v6, p0, Landroidx/appcompat/widget/z;->k:I

    iget v7, p0, Landroidx/appcompat/widget/z;->j:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_3

    :cond_8
    move v7, v4

    .line 382
    :goto_3
    invoke-static {p1, v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    goto :goto_4

    .line 386
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    .line 390
    :cond_a
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v5

    goto :goto_5

    :cond_b
    move p1, v4

    :goto_5
    iput-boolean p1, p0, Landroidx/appcompat/widget/z;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    .line 397
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 399
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_e

    iget p2, p0, Landroidx/appcompat/widget/z;->k:I

    if-eq p2, v3, :cond_e

    .line 402
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/z;->k:I

    iget v0, p0, Landroidx/appcompat/widget/z;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    move v4, v5

    .line 401
    :cond_d
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    goto :goto_6

    .line 405
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/z;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    :cond_f
    :goto_6
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 644
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_5

    if-nez p5, :cond_0

    if-eqz p6, :cond_5

    .line 645
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 646
    iget-object p3, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_1

    goto :goto_0

    .line 647
    :cond_1
    aget-object p5, p1, v5

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 648
    :cond_2
    aget-object p2, p1, v3

    :goto_1
    if-eqz p6, :cond_3

    goto :goto_2

    .line 649
    :cond_3
    aget-object p6, p1, v4

    :goto_2
    if-eqz p4, :cond_4

    goto :goto_3

    .line 650
    :cond_4
    aget-object p4, p1, v2

    .line 646
    :goto_3
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_f

    .line 655
    :cond_6
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p5, v1, :cond_a

    .line 656
    iget-object p5, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 657
    aget-object p6, p5, v5

    if-nez p6, :cond_7

    aget-object p6, p5, v4

    if-eqz p6, :cond_a

    .line 658
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    aget-object p3, p5, v5

    if-eqz p2, :cond_8

    goto :goto_4

    .line 660
    :cond_8
    aget-object p2, p5, v3

    :goto_4
    aget-object p6, p5, v4

    if-eqz p4, :cond_9

    goto :goto_5

    .line 662
    :cond_9
    aget-object p4, p5, v2

    .line 658
    :goto_5
    invoke-virtual {p1, p3, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 668
    :cond_a
    iget-object p5, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 669
    iget-object p6, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    goto :goto_6

    .line 670
    :cond_b
    aget-object p1, p5, v5

    :goto_6
    if-eqz p2, :cond_c

    goto :goto_7

    .line 671
    :cond_c
    aget-object p2, p5, v3

    :goto_7
    if-eqz p3, :cond_d

    goto :goto_8

    .line 672
    :cond_d
    aget-object p3, p5, v4

    :goto_8
    if-eqz p4, :cond_e

    goto :goto_9

    .line 673
    :cond_e
    aget-object p4, p5, v2

    .line 669
    :goto_9
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_a
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/av;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 514
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/av;[I)V

    :cond_0
    return-void
.end method

.method private b(IF)V
    .locals 1

    .line 561
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->a(IF)V

    return-void
.end method

.method private l()V
    .locals 1

    .line 632
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    iput-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/av;

    .line 633
    iput-object v0, p0, Landroidx/appcompat/widget/z;->c:Landroidx/appcompat/widget/av;

    .line 634
    iput-object v0, p0, Landroidx/appcompat/widget/z;->d:Landroidx/appcompat/widget/av;

    .line 635
    iput-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroidx/appcompat/widget/av;

    .line 636
    iput-object v0, p0, Landroidx/appcompat/widget/z;->f:Landroidx/appcompat/widget/av;

    .line 637
    iput-object v0, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/av;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .line 491
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->b()V

    return-void
.end method

.method a(I)V
    .locals 1

    .line 565
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->a(I)V

    return-void
.end method

.method a(IF)V
    .locals 1

    .line 541
    sget-boolean v0, Landroidx/core/widget/b;->d:Z

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/z;->b(IF)V

    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1

    .line 573
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ab;->a(IIII)V

    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 3

    .line 444
    sget-object v0, Landroidx/appcompat/a$j;->cJ:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/ax;

    move-result-object p2

    .line 446
    sget v0, Landroidx/appcompat/a$j;->cU:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 451
    sget v0, Landroidx/appcompat/a$j;->cU:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/z;->a(Z)V

    .line 453
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    sget v0, Landroidx/appcompat/a$j;->cN:I

    .line 454
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    sget v0, Landroidx/appcompat/a$j;->cN:I

    .line 458
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v2, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 464
    :cond_1
    sget v0, Landroidx/appcompat/a$j;->cK:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    sget v0, Landroidx/appcompat/a$j;->cK:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/ax;->e(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 470
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/ax;)V

    .line 472
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    sget p1, Landroidx/appcompat/a$j;->cT:I

    .line 473
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 474
    sget p1, Landroidx/appcompat/a$j;->cT:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 477
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 480
    :cond_3
    invoke-virtual {p2}, Landroidx/appcompat/widget/ax;->b()V

    .line 481
    iget-object p1, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_4

    .line 482
    iget-object p2, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/z;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 609
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Landroidx/appcompat/widget/av;

    invoke-direct {v0}, Landroidx/appcompat/widget/av;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    .line 612
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    iput-object p1, v0, Landroidx/appcompat/widget/av;->a:Landroid/content/res/ColorStateList;

    .line 613
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/av;->d:Z

    .line 614
    invoke-direct {p0}, Landroidx/appcompat/widget/z;->l()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Landroidx/appcompat/widget/av;

    invoke-direct {v0}, Landroidx/appcompat/widget/av;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    .line 626
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    iput-object p1, v0, Landroidx/appcompat/widget/av;->b:Landroid/graphics/PorterDuff$Mode;

    .line 627
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/av;->c:Z

    .line 628
    invoke-direct {p0}, Landroidx/appcompat/widget/z;->l()V

    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 82
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 83
    invoke-static {}, Landroidx/appcompat/widget/k;->b()Landroidx/appcompat/widget/k;

    move-result-object v11

    .line 86
    sget-object v0, Landroidx/appcompat/a$j;->aa:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ax;

    move-result-object v13

    .line 88
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/a$j;->aa:[I

    .line 89
    invoke-virtual {v13}, Landroidx/appcompat/widget/ax;->a()Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 88
    invoke-static/range {v0 .. v6}, Landroidx/core/f/u;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 92
    sget v0, Landroidx/appcompat/a$j;->ab:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    .line 94
    sget v1, Landroidx/appcompat/a$j;->ae:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget v1, Landroidx/appcompat/a$j;->ae:I

    .line 96
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v1

    .line 95
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/k;I)Landroidx/appcompat/widget/av;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/av;

    .line 98
    :cond_0
    sget v1, Landroidx/appcompat/a$j;->ac:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    sget v1, Landroidx/appcompat/a$j;->ac:I

    .line 100
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v1

    .line 99
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/k;I)Landroidx/appcompat/widget/av;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/z;->c:Landroidx/appcompat/widget/av;

    .line 102
    :cond_1
    sget v1, Landroidx/appcompat/a$j;->af:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    sget v1, Landroidx/appcompat/a$j;->af:I

    .line 104
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v1

    .line 103
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/k;I)Landroidx/appcompat/widget/av;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/z;->d:Landroidx/appcompat/widget/av;

    .line 106
    :cond_2
    sget v1, Landroidx/appcompat/a$j;->ad:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    sget v1, Landroidx/appcompat/a$j;->ad:I

    .line 108
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v1

    .line 107
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/k;I)Landroidx/appcompat/widget/av;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/z;->e:Landroidx/appcompat/widget/av;

    .line 111
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    .line 112
    sget v1, Landroidx/appcompat/a$j;->ag:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    sget v1, Landroidx/appcompat/a$j;->ag:I

    .line 114
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v1

    .line 113
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/k;I)Landroidx/appcompat/widget/av;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/z;->f:Landroidx/appcompat/widget/av;

    .line 116
    :cond_4
    sget v1, Landroidx/appcompat/a$j;->ah:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    sget v1, Landroidx/appcompat/a$j;->ah:I

    .line 118
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v1

    .line 117
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/k;I)Landroidx/appcompat/widget/av;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/av;

    .line 122
    :cond_5
    invoke-virtual {v13}, Landroidx/appcompat/widget/ax;->b()V

    .line 127
    iget-object v1, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    .line 128
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/16 v2, 0x1a

    const/16 v4, 0x17

    if-eq v0, v14, :cond_d

    .line 139
    sget-object v5, Landroidx/appcompat/a$j;->cJ:[I

    invoke-static {v10, v0, v5}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/ax;

    move-result-object v0

    if-nez v1, :cond_6

    .line 140
    sget v5, Landroidx/appcompat/a$j;->cU:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 142
    sget v5, Landroidx/appcompat/a$j;->cU:I

    invoke-virtual {v0, v5, v12}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v5

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    move v5, v12

    move v6, v5

    .line 145
    :goto_0
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/ax;)V

    .line 146
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v4, :cond_a

    .line 149
    sget v15, Landroidx/appcompat/a$j;->cN:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 150
    sget v15, Landroidx/appcompat/a$j;->cN:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    .line 152
    :goto_1
    sget v3, Landroidx/appcompat/a$j;->cO:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 153
    sget v3, Landroidx/appcompat/a$j;->cO:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 156
    :goto_2
    sget v13, Landroidx/appcompat/a$j;->cP:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 157
    sget v13, Landroidx/appcompat/a$j;->cP:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 161
    :goto_3
    sget v14, Landroidx/appcompat/a$j;->cV:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 162
    sget v14, Landroidx/appcompat/a$j;->cV:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_b
    const/4 v14, 0x0

    .line 164
    :goto_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_c

    sget v4, Landroidx/appcompat/a$j;->cT:I

    .line 165
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 166
    sget v4, Landroidx/appcompat/a$j;->cT:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    .line 168
    :goto_5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ax;->b()V

    goto :goto_6

    :cond_d
    move v5, v12

    move v6, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 172
    :goto_6
    sget-object v0, Landroidx/appcompat/a$j;->cJ:[I

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ax;

    move-result-object v0

    if-nez v1, :cond_e

    .line 174
    sget v2, Landroidx/appcompat/a$j;->cU:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 176
    sget v2, Landroidx/appcompat/a$j;->cU:I

    invoke-virtual {v0, v2, v12}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v5

    const/16 v16, 0x1

    goto :goto_7

    :cond_e
    move/from16 v16, v6

    .line 178
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v2, v6, :cond_11

    .line 181
    sget v2, Landroidx/appcompat/a$j;->cN:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 182
    sget v2, Landroidx/appcompat/a$j;->cN:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 184
    :cond_f
    sget v2, Landroidx/appcompat/a$j;->cO:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 185
    sget v2, Landroidx/appcompat/a$j;->cO:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 188
    :cond_10
    sget v2, Landroidx/appcompat/a$j;->cP:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 189
    sget v2, Landroidx/appcompat/a$j;->cP:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 193
    :cond_11
    sget v2, Landroidx/appcompat/a$j;->cV:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 194
    sget v2, Landroidx/appcompat/a$j;->cV:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v14

    .line 197
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v2, v6, :cond_13

    sget v2, Landroidx/appcompat/a$j;->cT:I

    .line 198
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 199
    sget v2, Landroidx/appcompat/a$j;->cT:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    :cond_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v2, v6, :cond_14

    sget v2, Landroidx/appcompat/a$j;->cK:I

    .line 203
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 204
    sget v2, Landroidx/appcompat/a$j;->cK:I

    const/4 v6, -0x1

    invoke-virtual {v0, v2, v6}, Landroidx/appcompat/widget/ax;->e(II)I

    move-result v2

    if-nez v2, :cond_14

    .line 205
    iget-object v2, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    :cond_14
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroidx/appcompat/widget/ax;)V

    .line 210
    invoke-virtual {v0}, Landroidx/appcompat/widget/ax;->b()V

    if-eqz v15, :cond_15

    .line 213
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_15
    if-eqz v3, :cond_16

    .line 216
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    if-eqz v13, :cond_17

    .line 219
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17
    if-nez v1, :cond_18

    if-eqz v16, :cond_18

    .line 222
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/z;->a(Z)V

    .line 224
    :cond_18
    iget-object v0, v7, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1a

    .line 225
    iget v1, v7, Landroidx/appcompat/widget/z;->k:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 226
    iget-object v1, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    iget v2, v7, Landroidx/appcompat/widget/z;->j:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_8

    .line 228
    :cond_19
    iget-object v1, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1a
    :goto_8
    if-eqz v4, :cond_1b

    .line 232
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_1b
    if-eqz v14, :cond_1d

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1c

    .line 236
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_9

    .line 237
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1d

    const/16 v0, 0x2c

    .line 239
    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v14, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 244
    :cond_1d
    :goto_9
    iget-object v0, v7, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/ab;->a(Landroid/util/AttributeSet;I)V

    .line 246
    sget-boolean v0, Landroidx/core/widget/b;->d:Z

    if-eqz v0, :cond_1f

    .line 248
    iget-object v0, v7, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->a()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 250
    iget-object v0, v7, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    .line 251
    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->e()[I

    move-result-object v0

    .line 252
    array-length v1, v0

    if-lez v1, :cond_1f

    .line 253
    iget-object v1, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    .line 256
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    iget-object v1, v7, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    .line 257
    invoke-virtual {v1}, Landroidx/appcompat/widget/ab;->c()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    .line 258
    invoke-virtual {v2}, Landroidx/appcompat/widget/ab;->d()I

    move-result v2

    iget-object v3, v7, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    .line 259
    invoke-virtual {v3}, Landroidx/appcompat/widget/ab;->b()I

    move-result v3

    .line 256
    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_a

    .line 262
    :cond_1e
    iget-object v1, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 270
    :cond_1f
    :goto_a
    sget-object v0, Landroidx/appcompat/a$j;->ai:[I

    invoke-static {v10, v8, v0}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ax;

    move-result-object v8

    .line 275
    sget v0, Landroidx/appcompat/a$j;->aq:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_20

    .line 278
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/k;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_b

    :cond_20
    const/4 v2, 0x0

    .line 280
    :goto_b
    sget v0, Landroidx/appcompat/a$j;->av:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 283
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/k;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    goto :goto_c

    :cond_21
    const/4 v3, 0x0

    .line 285
    :goto_c
    sget v0, Landroidx/appcompat/a$j;->ar:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_22

    .line 288
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/k;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_d

    :cond_22
    const/4 v4, 0x0

    .line 290
    :goto_d
    sget v0, Landroidx/appcompat/a$j;->ao:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_23

    .line 293
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/k;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_e

    :cond_23
    const/4 v5, 0x0

    .line 295
    :goto_e
    sget v0, Landroidx/appcompat/a$j;->as:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_24

    .line 298
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/k;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_f

    :cond_24
    const/4 v6, 0x0

    .line 300
    :goto_f
    sget v0, Landroidx/appcompat/a$j;->ap:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_25

    .line 303
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/k;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_10

    :cond_25
    const/4 v9, 0x0

    :goto_10
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    .line 305
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/z;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 308
    sget v0, Landroidx/appcompat/a$j;->at:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 309
    sget v0, Landroidx/appcompat/a$j;->at:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 311
    iget-object v1, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 313
    :cond_26
    sget v0, Landroidx/appcompat/a$j;->au:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 314
    sget v0, Landroidx/appcompat/a$j;->au:I

    const/4 v1, -0x1

    .line 315
    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v0

    const/4 v2, 0x0

    .line 314
    invoke-static {v0, v2}, Landroidx/appcompat/widget/af;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 316
    iget-object v2, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_11

    :cond_27
    const/4 v1, -0x1

    .line 319
    :goto_11
    sget v0, Landroidx/appcompat/a$j;->aw:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ax;->e(II)I

    move-result v0

    .line 321
    sget v2, Landroidx/appcompat/a$j;->ax:I

    invoke-virtual {v8, v2, v1}, Landroidx/appcompat/widget/ax;->e(II)I

    move-result v2

    .line 323
    sget v3, Landroidx/appcompat/a$j;->ay:I

    invoke-virtual {v8, v3, v1}, Landroidx/appcompat/widget/ax;->e(II)I

    move-result v3

    .line 326
    invoke-virtual {v8}, Landroidx/appcompat/widget/ax;->b()V

    if-eq v0, v1, :cond_28

    .line 328
    iget-object v4, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    :cond_28
    if-eq v2, v1, :cond_29

    .line 331
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;I)V

    :cond_29
    if-eq v3, v1, :cond_2a

    .line 334
    iget-object v0, v7, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/core/widget/i;->c(Landroid/widget/TextView;I)V

    :cond_2a
    return-void
.end method

.method a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 434
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->m:Z

    if-eqz v0, :cond_0

    .line 435
    iput-object p2, p0, Landroidx/appcompat/widget/z;->l:Landroid/graphics/Typeface;

    .line 436
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 438
    iget v0, p0, Landroidx/appcompat/widget/z;->j:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .line 487
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method a(ZIIII)V
    .locals 0

    .line 533
    sget-boolean p1, Landroidx/core/widget/b;->d:Z

    if-nez p1, :cond_0

    .line 534
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->c()V

    :cond_0
    return-void
.end method

.method a([II)V
    .locals 1

    .line 579
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->a([II)V

    return-void
.end method

.method b()V
    .locals 5

    .line 495
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/av;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/z;->c:Landroidx/appcompat/widget/av;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/z;->d:Landroidx/appcompat/widget/av;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroidx/appcompat/widget/av;

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 498
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/av;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/z;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/av;)V

    const/4 v3, 0x1

    .line 499
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/z;->c:Landroidx/appcompat/widget/av;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/z;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/av;)V

    .line 500
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/z;->d:Landroidx/appcompat/widget/av;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/z;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/av;)V

    const/4 v3, 0x3

    .line 501
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/z;->e:Landroidx/appcompat/widget/av;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/z;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/av;)V

    .line 503
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 504
    iget-object v0, p0, Landroidx/appcompat/widget/z;->f:Landroidx/appcompat/widget/av;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/av;

    if-eqz v0, :cond_3

    .line 505
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/z;->f:Landroidx/appcompat/widget/av;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/z;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/av;)V

    .line 507
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/av;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/z;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/av;)V

    :cond_3
    return-void
.end method

.method c()V
    .locals 1

    .line 551
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->f()V

    return-void
.end method

.method d()Z
    .locals 1

    .line 557
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->g()Z

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    .line 584
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->a()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .line 588
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->b()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .line 592
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->c()I

    move-result v0

    return v0
.end method

.method h()I
    .locals 1

    .line 596
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->d()I

    move-result v0

    return v0
.end method

.method i()[I
    .locals 1

    .line 600
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->e()[I

    move-result-object v0

    return-object v0
.end method

.method j()Landroid/content/res/ColorStateList;
    .locals 1

    .line 605
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/av;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method k()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 619
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Landroidx/appcompat/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/av;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
