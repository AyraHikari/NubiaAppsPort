.class Landroidx/appcompat/view/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/CharSequence;

.field private D:Ljava/lang/CharSequence;

.field private E:Landroid/content/res/ColorStateList;

.field private F:Landroid/graphics/PorterDuff$Mode;

.field a:Landroidx/core/f/b;

.field final synthetic b:Landroidx/appcompat/view/g;

.field private c:Landroid/view/Menu;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:I

.field private p:C

.field private q:I

.field private r:C

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/g;Landroid/view/Menu;)V
    .locals 0

    .line 349
    iput-object p1, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    .line 338
    iput-object p1, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    .line 350
    iput-object p2, p0, Landroidx/appcompat/view/g$b;->c:Landroid/view/Menu;

    .line 352
    invoke-virtual {p0}, Landroidx/appcompat/view/g$b;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 462
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 549
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v1, v1, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 550
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 551
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 552
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 554
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 5

    .line 467
    iget-boolean v0, p0, Landroidx/appcompat/view/g$b;->u:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/g$b;->v:Z

    .line 468
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/g$b;->w:Z

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/g$b;->t:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 470
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/g$b;->n:Ljava/lang/CharSequence;

    .line 471
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/g$b;->o:I

    .line 472
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    iget v0, p0, Landroidx/appcompat/view/g$b;->x:I

    if-ltz v0, :cond_1

    .line 475
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 478
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    new-instance v0, Landroidx/appcompat/view/g$a;

    iget-object v1, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    .line 484
    invoke-virtual {v1}, Landroidx/appcompat/view/g;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroidx/appcompat/view/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 480
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_3
    :goto_1
    iget v0, p0, Landroidx/appcompat/view/g$b;->t:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 488
    instance-of v0, p1, Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_4

    .line 489
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/i;->a(Z)V

    goto :goto_2

    .line 490
    :cond_4
    instance-of v0, p1, Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_5

    .line 491
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/j;->a(Z)V

    .line 496
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 497
    sget-object v1, Landroidx/appcompat/view/g;->a:[Ljava/lang/Class;

    iget-object v2, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v2, v2, Landroidx/appcompat/view/g;->c:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 499
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    .line 502
    :cond_6
    iget v0, p0, Landroidx/appcompat/view/g$b;->y:I

    if-lez v0, :cond_8

    if-nez v2, :cond_7

    .line 504
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_7
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_8
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->a:Landroidx/core/f/b;

    if-eqz v0, :cond_9

    .line 512
    invoke-static {p1, v0}, Landroidx/core/f/h;->a(Landroid/view/MenuItem;Landroidx/core/f/b;)Landroid/view/MenuItem;

    .line 515
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->C:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/f/h;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->D:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/f/h;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 517
    iget-char v0, p0, Landroidx/appcompat/view/g$b;->p:C

    iget v1, p0, Landroidx/appcompat/view/g$b;->q:I

    invoke-static {p1, v0, v1}, Landroidx/core/f/h;->b(Landroid/view/MenuItem;CI)V

    .line 519
    iget-char v0, p0, Landroidx/appcompat/view/g$b;->r:C

    iget v1, p0, Landroidx/appcompat/view/g$b;->s:I

    invoke-static {p1, v0, v1}, Landroidx/core/f/h;->a(Landroid/view/MenuItem;CI)V

    .line 521
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_a

    .line 522
    invoke-static {p1, v0}, Landroidx/core/f/h;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 524
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_b

    .line 525
    invoke-static {p1, v0}, Landroidx/core/f/h;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Landroidx/appcompat/view/g$b;->d:I

    .line 357
    iput v0, p0, Landroidx/appcompat/view/g$b;->e:I

    .line 358
    iput v0, p0, Landroidx/appcompat/view/g$b;->f:I

    .line 359
    iput v0, p0, Landroidx/appcompat/view/g$b;->g:I

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->h:Z

    .line 361
    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->i:Z

    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 368
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->br:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 370
    sget v0, Landroidx/appcompat/a$j;->bt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->d:I

    .line 371
    sget v0, Landroidx/appcompat/a$j;->bv:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->e:I

    .line 373
    sget v0, Landroidx/appcompat/a$j;->bw:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->f:I

    .line 374
    sget v0, Landroidx/appcompat/a$j;->bx:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->g:I

    .line 376
    sget v0, Landroidx/appcompat/a$j;->bu:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->h:Z

    .line 377
    sget v0, Landroidx/appcompat/a$j;->bs:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->i:Z

    .line 379
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->j:Z

    .line 531
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->c:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/g$b;->d:I

    iget v2, p0, Landroidx/appcompat/view/g$b;->k:I

    iget v3, p0, Landroidx/appcompat/view/g$b;->l:I

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g$b;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method public b(Landroid/util/AttributeSet;)V
    .locals 6

    .line 386
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->by:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ax;

    move-result-object p1

    .line 390
    sget v0, Landroidx/appcompat/a$j;->bB:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->k:I

    .line 391
    sget v0, Landroidx/appcompat/a$j;->bE:I

    iget v2, p0, Landroidx/appcompat/view/g$b;->e:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v0

    .line 392
    sget v2, Landroidx/appcompat/a$j;->bF:I

    iget v3, p0, Landroidx/appcompat/view/g$b;->f:I

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 393
    iput v0, p0, Landroidx/appcompat/view/g$b;->l:I

    .line 395
    sget v0, Landroidx/appcompat/a$j;->bG:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    .line 396
    sget v0, Landroidx/appcompat/a$j;->bH:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->n:Ljava/lang/CharSequence;

    .line 397
    sget v0, Landroidx/appcompat/a$j;->bz:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->o:I

    .line 398
    sget v0, Landroidx/appcompat/a$j;->bI:I

    .line 399
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/g$b;->p:C

    .line 400
    sget v0, Landroidx/appcompat/a$j;->bP:I

    const/16 v2, 0x1000

    .line 401
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->q:I

    .line 402
    sget v0, Landroidx/appcompat/a$j;->bJ:I

    .line 403
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/g$b;->r:C

    .line 404
    sget v0, Landroidx/appcompat/a$j;->bT:I

    .line 405
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->s:I

    .line 406
    sget v0, Landroidx/appcompat/a$j;->bK:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    sget v0, Landroidx/appcompat/a$j;->bK:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->t:I

    goto :goto_0

    .line 412
    :cond_0
    iget v0, p0, Landroidx/appcompat/view/g$b;->g:I

    iput v0, p0, Landroidx/appcompat/view/g$b;->t:I

    .line 414
    :goto_0
    sget v0, Landroidx/appcompat/a$j;->bC:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->u:Z

    .line 415
    sget v0, Landroidx/appcompat/a$j;->bD:I

    iget-boolean v2, p0, Landroidx/appcompat/view/g$b;->h:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->v:Z

    .line 416
    sget v0, Landroidx/appcompat/a$j;->bA:I

    iget-boolean v2, p0, Landroidx/appcompat/view/g$b;->i:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->w:Z

    .line 417
    sget v0, Landroidx/appcompat/a$j;->bU:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->x:I

    .line 418
    sget v0, Landroidx/appcompat/a$j;->bL:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    .line 419
    sget v0, Landroidx/appcompat/a$j;->bM:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->y:I

    .line 420
    sget v0, Landroidx/appcompat/a$j;->bO:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    .line 421
    sget v0, Landroidx/appcompat/a$j;->bN:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 424
    iget v5, p0, Landroidx/appcompat/view/g$b;->y:I

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 425
    sget-object v3, Landroidx/appcompat/view/g;->b:[Ljava/lang/Class;

    iget-object v5, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v5, v5, Landroidx/appcompat/view/g;->d:[Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v5}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/b;

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->a:Landroidx/core/f/b;

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v3, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 430
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_3
    iput-object v4, p0, Landroidx/appcompat/view/g$b;->a:Landroidx/core/f/b;

    .line 436
    :goto_2
    sget v0, Landroidx/appcompat/a$j;->bQ:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->C:Ljava/lang/CharSequence;

    .line 437
    sget v0, Landroidx/appcompat/a$j;->bV:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->D:Ljava/lang/CharSequence;

    .line 438
    sget v0, Landroidx/appcompat/a$j;->bS:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    sget v0, Landroidx/appcompat/a$j;->bS:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/appcompat/widget/af;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 444
    :cond_4
    iput-object v4, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    .line 446
    :goto_3
    sget v0, Landroidx/appcompat/a$j;->bR:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    sget v0, Landroidx/appcompat/a$j;->bR:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ax;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    goto :goto_4

    .line 450
    :cond_5
    iput-object v4, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    .line 453
    :goto_4
    invoke-virtual {p1}, Landroidx/appcompat/widget/ax;->b()V

    .line 455
    iput-boolean v1, p0, Landroidx/appcompat/view/g$b;->j:Z

    return-void
.end method

.method public c()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->j:Z

    .line 536
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->c:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/g$b;->d:I

    iget v2, p0, Landroidx/appcompat/view/g$b;->k:I

    iget v3, p0, Landroidx/appcompat/view/g$b;->l:I

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/appcompat/view/g$b;->a(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Landroidx/appcompat/view/g$b;->j:Z

    return v0
.end method
