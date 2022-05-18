.class public Lcn/nubia/camera/three_a/ui/c;
.super Lcn/nubia/camera/three_a/ui/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;
.implements Lcn/nubia/camera/k/b;
.implements Lcn/nubia/camera/three_a/ui/FocusView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/ui/c$a;
    }
.end annotation


# instance fields
.field private A:I

.field private i:Z

.field private j:Lcn/nubia/camera/three_a/ui/g;

.field private k:Lcn/nubia/camera/three_a/ui/FocusView;

.field private l:Lcn/nubia/camera/three_a/ui/FocusAreaView;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:F

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/three_a/ui/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Z

.field private w:Ljava/lang/Runnable;

.field private x:Ljava/lang/Runnable;

.field private y:I

.field private z:Lcn/nubia/camera/al/a$a;


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

    .line 69
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/three_a/ui/a;-><init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/c;->m:Z

    .line 53
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/c;->n:Z

    .line 54
    iput v0, v8, Lcn/nubia/camera/three_a/ui/c;->o:I

    .line 55
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/c;->p:Z

    .line 56
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/c;->q:Z

    .line 57
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/c;->r:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 59
    iput v1, v8, Lcn/nubia/camera/three_a/ui/c;->s:F

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lcn/nubia/camera/three_a/ui/c;->t:Ljava/util/ArrayList;

    const/4 v1, 0x4

    .line 456
    iput v1, v8, Lcn/nubia/camera/three_a/ui/c;->u:I

    .line 457
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/c;->v:Z

    .line 459
    new-instance v1, Lcn/nubia/camera/three_a/ui/c$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/three_a/ui/c$1;-><init>(Lcn/nubia/camera/three_a/ui/c;)V

    iput-object v1, v8, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    .line 473
    new-instance v1, Lcn/nubia/camera/three_a/ui/c$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/three_a/ui/c$2;-><init>(Lcn/nubia/camera/three_a/ui/c;)V

    iput-object v1, v8, Lcn/nubia/camera/three_a/ui/c;->x:Ljava/lang/Runnable;

    .line 512
    iput v0, v8, Lcn/nubia/camera/three_a/ui/c;->y:I

    .line 513
    new-instance v1, Lcn/nubia/camera/three_a/ui/c$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/three_a/ui/c$3;-><init>(Lcn/nubia/camera/three_a/ui/c;)V

    iput-object v1, v8, Lcn/nubia/camera/three_a/ui/c;->z:Lcn/nubia/camera/al/a$a;

    .line 572
    iput v0, v8, Lcn/nubia/camera/three_a/ui/c;->A:I

    .line 70
    invoke-virtual {p4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->f(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/c;->i:Z

    .line 71
    invoke-virtual {p4}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/c;->q:Z

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->t()V

    return-void
.end method

.method private H()V
    .locals 2

    const/4 v0, 0x0

    .line 552
    iput v0, p0, Lcn/nubia/camera/three_a/ui/c;->y:I

    .line 553
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->z:Lcn/nubia/camera/al/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/a;->a(Lcn/nubia/camera/al/a$a;)V

    return-void
.end method

.method private I()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-static {v0, v1}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/d/b;Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FocusViewManager"

    const-string v1, "Reset focus to CONTINUOUS_PICTURE"

    .line 558
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 559
    iput v0, p0, Lcn/nubia/camera/three_a/ui/c;->u:I

    .line 560
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v1

    .line 561
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    .line 563
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/h$g;->a()V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 4

    const-string v0, "FocusViewManager"

    const-string v1, "auto focus"

    .line 574
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/three_a/ui/c;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/three_a/ui/h$g;->a(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    .line 576
    iput v0, p0, Lcn/nubia/camera/three_a/ui/c;->u:I

    .line 577
    iput v0, p0, Lcn/nubia/camera/three_a/ui/c;->A:I

    const/4 v1, 0x0

    .line 578
    iput-boolean v1, p0, Lcn/nubia/camera/three_a/ui/c;->v:Z

    .line 579
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v1, v2, :cond_0

    .line 580
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->r:Z

    .line 583
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/three_a/ui/c;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcn/nubia/camera/three_a/ui/c;->A:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/three_a/ui/c;)Ljava/lang/Runnable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/three_a/ui/c;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/three_a/ui/c;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/c;->v:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/three_a/ui/c;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcn/nubia/camera/three_a/ui/c;->y:I

    return p1
.end method

.method private b(ZZ)V
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 297
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    .line 298
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/c;->f(Z)V

    if-eqz p2, :cond_1

    .line 300
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/g;->d()V

    .line 302
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/h$g;->a(ZZ)V

    .line 303
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    invoke-virtual {p1, p2}, Lcn/nubia/camera/three_a/ui/FocusView;->a(Z)V

    .line 304
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/c;->i(Z)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/three_a/ui/c;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/camera/three_a/ui/c;->r:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/three_a/ui/c;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/c;->I()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/three_a/ui/c;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/c;->H()V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/three_a/ui/c;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/camera/three_a/ui/c;->u:I

    return p0
.end method

.method private e(I)V
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->i:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/three_a/ui/c;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/camera/three_a/ui/c;->A:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/three_a/ui/c;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/camera/three_a/ui/c;->v:Z

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/three_a/ui/c;)I
    .locals 2

    .line 40
    iget v0, p0, Lcn/nubia/camera/three_a/ui/c;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/three_a/ui/c;->y:I

    return v0
.end method

.method static synthetic i(Lcn/nubia/camera/three_a/ui/c;)I
    .locals 2

    .line 40
    iget v0, p0, Lcn/nubia/camera/three_a/ui/c;->y:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/camera/three_a/ui/c;->y:I

    return v0
.end method

.method private i(Z)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/three_a/ui/h$b;

    .line 310
    invoke-interface {v1, p1}, Lcn/nubia/camera/three_a/ui/h$b;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/three_a/ui/c;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/camera/three_a/ui/c;->y:I

    return p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 271
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

.method public B()I
    .locals 1

    .line 323
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/FocusView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public C()I
    .locals 1

    .line 328
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public D()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/FocusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/FocusView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    .line 340
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->f(Z)V

    .line 341
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcn/nubia/camera/three_a/ui/h$g;->a(ZZ)V

    .line 342
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/three_a/ui/FocusView;->a(Z)V

    .line 343
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->i(Z)V

    :cond_1
    return-void
.end method

.method public E()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 350
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public F()V
    .locals 4

    .line 388
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->q:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 390
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->d(I)V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->r:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->o()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->n()Z

    move-result p1

    if-nez p1, :cond_0

    .line 443
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/FocusView;->setVisibility(I)V

    .line 444
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->f(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/c;->i:Z

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->l()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/c;->q:Z

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->t()V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 427
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    .line 428
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->f:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 431
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->b([I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :catch_0
    :cond_0
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    iput p1, p0, Lcn/nubia/camera/three_a/ui/c;->s:F

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$b;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Focus State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FocusViewManager"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/three_a/ui/c;->b(ZZ)V

    return-void
.end method

.method public a([I)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->l:Lcn/nubia/camera/three_a/ui/FocusAreaView;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->setMultiPointFocusInfo([I)V

    .line 377
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->l:Lcn/nubia/camera/three_a/ui/FocusAreaView;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->invalidate()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->g(Z)V

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v1}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 105
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v1}, Lcn/nubia/camera/three_a/ui/g;->c()V

    .line 106
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/three_a/ui/FocusView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-static {v1, v2}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/d/b;Lcn/nubia/camera/ad/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0, v0, v0}, Lcn/nubia/camera/three_a/ui/c;->a(ZZ)V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->i()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->j()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/c;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1, v2, v3}, Lcn/nubia/camera/three_a/ui/c;->a(Landroid/graphics/Point;IILandroid/graphics/Rect;)V

    .line 114
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x118

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/c;->h:Lcn/nubia/camera/three_a/ui/a$a;

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 119
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 120
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/c;->J()V

    const/4 p1, 0x1

    return p1

    .line 123
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0

    .line 100
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 5

    .line 132
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->x()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->n:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 135
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->n:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    .line 136
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/g;)[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/camera/three_a/ui/c;->a([III)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->n:Z

    .line 140
    iget v2, p0, Lcn/nubia/camera/three_a/ui/c;->o:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/camera/three_a/ui/c;->o:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 142
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/three_a/ui/FocusView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v2}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 145
    :cond_4
    iget v2, p0, Lcn/nubia/camera/three_a/ui/c;->o:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_7

    .line 146
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->g(Z)V

    .line 147
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 148
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 150
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 151
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 153
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->i()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->j()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/c;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v2, v3, v4}, Lcn/nubia/camera/three_a/ui/c;->a(Landroid/graphics/Point;IILandroid/graphics/Rect;)V

    .line 154
    iget-object p3, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-interface {p3, v2, p2}, Lcn/nubia/camera/three_a/ui/g;->a(FF)V

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 158
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/c;->J()V

    .line 160
    iput-boolean v1, p0, Lcn/nubia/camera/three_a/ui/c;->n:Z

    .line 161
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/g;->a()V

    .line 162
    iput v1, p0, Lcn/nubia/camera/three_a/ui/c;->o:I

    .line 163
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {p1, v0, v0}, Lcn/nubia/camera/three_a/ui/h$g;->d(ZZ)V

    :cond_7
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method b()V
    .locals 1

    .line 317
    invoke-super {p0}, Lcn/nubia/camera/three_a/ui/a;->b()V

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/g;->a()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/c;->e(I)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 590
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->n()Z

    move-result v0

    .line 591
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->o()Z

    move-result v1

    .line 592
    invoke-super {p0, p1}, Lcn/nubia/camera/three_a/ui/a;->b(Z)V

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->n()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcn/nubia/camera/three_a/ui/c;->A:I

    if-nez p1, :cond_0

    .line 594
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->x:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b([I)V
    .locals 4

    .line 453
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/camera/three_a/ui/c$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/three_a/ui/c$a;-><init>(Lcn/nubia/camera/three_a/ui/c;[I)V

    const-class p1, Lcn/nubia/camera/three_a/ui/c$a;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->a(IZ)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->l:Lcn/nubia/camera/three_a/ui/FocusAreaView;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/ui/c;->q:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->l:Lcn/nubia/camera/three_a/ui/FocusAreaView;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->a(II)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 190
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/c;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 191
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/FocusView;->setVisibility(I)V

    .line 193
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/three_a/ui/c;->b(ZZ)V

    :cond_3
    return-void
.end method

.method public i()I
    .locals 2

    .line 402
    iget v0, p0, Lcn/nubia/camera/three_a/ui/c;->s:F

    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 403
    invoke-super {p0}, Lcn/nubia/camera/three_a/ui/a;->i()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fa147ae    # 1.26f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 405
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/three_a/ui/a;->i()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .line 411
    iget v0, p0, Lcn/nubia/camera/three_a/ui/c;->s:F

    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 412
    invoke-super {p0}, Lcn/nubia/camera/three_a/ui/a;->j()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fa147ae    # 1.26f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 414
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/three_a/ui/a;->j()I

    move-result v0

    return v0
.end method

.method public n_()V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->m:Z

    .line 289
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->e(Z)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/FocusView;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/g;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f090155

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/FocusAreaView;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->l:Lcn/nubia/camera/three_a/ui/FocusAreaView;

    .line 88
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, v1}, Lcn/nubia/camera/three_a/ui/c;->e(I)V

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/three_a/ui/FocusView;->setFocusViewStateChangeListener(Lcn/nubia/camera/three_a/ui/FocusView$a;)V

    .line 93
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/camera/three_a/ui/c;->d(I)V

    return-void
.end method

.method public u()Z
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->m()V

    .line 176
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/three_a/ui/c;->b(ZZ)V

    .line 179
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/c;->J()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    return v0
.end method

.method public w()Z
    .locals 2

    .line 220
    iget v0, p0, Lcn/nubia/camera/three_a/ui/c;->o:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->m:Z

    return v0
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcn/nubia/camera/three_a/ui/c;->o:I

    .line 231
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->n:Z

    .line 232
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->m:Z

    .line 233
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->e(Z)V

    return-void
.end method

.method public z()V
    .locals 4

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    .line 239
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v1, v0, v0}, Lcn/nubia/camera/three_a/ui/h$g;->a(ZZ)V

    .line 240
    iget-boolean v1, p0, Lcn/nubia/camera/three_a/ui/c;->p:Z

    invoke-direct {p0, v1}, Lcn/nubia/camera/three_a/ui/c;->i(Z)V

    .line 241
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/three_a/ui/FocusView;->a(Z)V

    .line 242
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->k:Lcn/nubia/camera/three_a/ui/FocusView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/camera/three_a/ui/FocusView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->j:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 245
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->l:Lcn/nubia/camera/three_a/ui/FocusAreaView;

    if-eqz v1, :cond_0

    const/16 v3, 0x8

    .line 246
    invoke-virtual {v1, v3}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->setVisibility(I)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/c;->z:Lcn/nubia/camera/al/a$a;

    invoke-virtual {v1, v3}, Lcn/nubia/camera/al/a;->b(Lcn/nubia/camera/al/a$a;)V

    .line 251
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->f(Z)V

    .line 252
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->g(Z)V

    .line 253
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/c;->e(Z)V

    .line 254
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/c;->r:Z

    .line 256
    iput v0, p0, Lcn/nubia/camera/three_a/ui/c;->A:I

    .line 257
    iput v2, p0, Lcn/nubia/camera/three_a/ui/c;->u:I

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/h$g;->a()V

    .line 262
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    const-class v1, Lcn/nubia/camera/three_a/ui/c$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
