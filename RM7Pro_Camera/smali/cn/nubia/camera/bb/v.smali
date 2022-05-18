.class public Lcn/nubia/camera/bb/v;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/a$a;
.implements Lcn/nubia/camera/bb/f$a;
.implements Lcn/nubia/camera/bb/z;
.implements Lcn/nubia/camera/n/b$e;
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/q/m$b;


# instance fields
.field private A:Lcn/nubia/camera/bb/s;

.field private B:Lcn/nubia/camera/pretty/a;

.field private C:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

.field private D:Lcn/nubia/camera/bb/ab;

.field private E:Lcn/nubia/camera/bb/l;

.field private F:Landroid/os/Handler;

.field private G:Lcn/nubia/camera/zoom/arc/VideoZoomView;

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:Lcn/nubia/camera/aj/a;

.field a:Lcn/nubia/camera/s/a$d;

.field private b:Lcn/nubia/camera/bb/aa;

.field private c:Lcn/nubia/camera/bb/ac;

.field private i:Lcn/nubia/camera/s/a;

.field private j:Lcn/nubia/camera/s/a$b;

.field private k:Lcom/android/common/ui/a/b;

.field private l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private n:Landroid/view/View;

.field private o:Lcom/android/common/ui/RotateImageView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/view/View;

.field private r:Lcn/nubia/camera/n/b;

.field private s:Z

.field private t:Lcom/android/common/ui/RotateImageView;

.field private u:Lcom/android/common/ui/RotateImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Lcn/nubia/camera/q/c;

.field private z:Lcn/nubia/camera/af/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    .line 88
    sget-object v0, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->j:Lcn/nubia/camera/s/a$b;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 95
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->p:Landroid/widget/RelativeLayout;

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->q:Landroid/view/View;

    .line 97
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcn/nubia/camera/bb/v;->s:Z

    .line 99
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    .line 100
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->u:Lcom/android/common/ui/RotateImageView;

    .line 101
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->v:Landroid/widget/TextView;

    .line 102
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    .line 103
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->x:Landroid/widget/TextView;

    .line 342
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    .line 451
    new-instance v1, Lcn/nubia/camera/bb/v$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/v$6;-><init>(Lcn/nubia/camera/bb/v;)V

    iput-object v1, p0, Lcn/nubia/camera/bb/v;->C:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 1018
    new-instance v1, Lcn/nubia/camera/bb/v$9;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/v$9;-><init>(Lcn/nubia/camera/bb/v;)V

    iput-object v1, p0, Lcn/nubia/camera/bb/v;->a:Lcn/nubia/camera/s/a$d;

    .line 1083
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->E:Lcn/nubia/camera/bb/l;

    .line 1131
    new-instance v1, Lcn/nubia/camera/bb/v$11;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/v$11;-><init>(Lcn/nubia/camera/bb/v;)V

    iput-object v1, p0, Lcn/nubia/camera/bb/v;->F:Landroid/os/Handler;

    .line 1290
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->G:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    const/4 v0, 0x0

    .line 1291
    iput v0, p0, Lcn/nubia/camera/bb/v;->H:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 1292
    iput v0, p0, Lcn/nubia/camera/bb/v;->I:F

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/bb/ab;Lcn/nubia/camera/bb/aa;Lcn/nubia/camera/bb/ac;Lcom/android/common/ui/RotateImageView;)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    .line 88
    sget-object p1, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    iput-object p1, p0, Lcn/nubia/camera/bb/v;->j:Lcn/nubia/camera/s/a$b;

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->p:Landroid/widget/RelativeLayout;

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->q:Landroid/view/View;

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcn/nubia/camera/bb/v;->s:Z

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->u:Lcom/android/common/ui/RotateImageView;

    .line 101
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->v:Landroid/widget/TextView;

    .line 102
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    .line 103
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->x:Landroid/widget/TextView;

    .line 342
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    .line 451
    new-instance v0, Lcn/nubia/camera/bb/v$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/v$6;-><init>(Lcn/nubia/camera/bb/v;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->C:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 1018
    new-instance v0, Lcn/nubia/camera/bb/v$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/v$9;-><init>(Lcn/nubia/camera/bb/v;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->a:Lcn/nubia/camera/s/a$d;

    .line 1083
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->E:Lcn/nubia/camera/bb/l;

    .line 1131
    new-instance v0, Lcn/nubia/camera/bb/v$11;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/v$11;-><init>(Lcn/nubia/camera/bb/v;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->F:Landroid/os/Handler;

    .line 1290
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->G:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    const/4 p1, 0x0

    .line 1291
    iput p1, p0, Lcn/nubia/camera/bb/v;->H:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 1292
    iput p1, p0, Lcn/nubia/camera/bb/v;->I:F

    .line 114
    iput-object p2, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    .line 115
    iput-object p3, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    .line 116
    iput-object p4, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    .line 117
    iput-object p5, p0, Lcn/nubia/camera/bb/v;->u:Lcom/android/common/ui/RotateImageView;

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/bb/v;)F
    .locals 0

    .line 71
    iget p0, p0, Lcn/nubia/camera/bb/v;->I:F

    return p0
.end method

.method static synthetic B(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/camera/bb/v;)F
    .locals 0

    .line 71
    iget p0, p0, Lcn/nubia/camera/bb/v;->H:F

    return p0
.end method

.method static synthetic D(Lcn/nubia/camera/bb/v;)F
    .locals 0

    .line 71
    iget p0, p0, Lcn/nubia/camera/bb/v;->J:F

    return p0
.end method

.method static synthetic E(Lcn/nubia/camera/bb/v;)F
    .locals 0

    .line 71
    iget p0, p0, Lcn/nubia/camera/bb/v;->K:F

    return p0
.end method

.method static synthetic F(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic G(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/zoom/arc/VideoZoomView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->G:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    return-object p0
.end method

.method static synthetic H(Lcn/nubia/camera/bb/v;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->F:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic I(Lcn/nubia/camera/bb/v;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic J(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ag()V

    return-void
.end method

.method private O()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c()V

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a()V

    .line 387
    invoke-direct {p0, v1}, Lcn/nubia/camera/bb/v;->f(I)V

    .line 388
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    const v2, 0x7f080338

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 394
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/ui/a/b;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/a/b;->b(Ljava/lang/String;)V

    .line 399
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    const-string v2, "00:00:00"

    invoke-virtual {v0, v2}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->b()V

    .line 401
    invoke-direct {p0, v1}, Lcn/nubia/camera/bb/v;->h(I)V

    return-void
.end method

.method private P()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->d()V

    const/16 v0, 0x8

    .line 406
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->f(I)V

    .line 407
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->p:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->b()V

    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->f(I)V

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->p:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f080338

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method private R()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 423
    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 424
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 425
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 428
    invoke-direct {p0, v1}, Lcn/nubia/camera/bb/v;->f(I)V

    .line 429
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->af()V

    .line 432
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->M()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->M()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/zoom/arc/a;->a(F)V

    .line 435
    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/camera/bb/v;->h(I)V

    return-void
.end method

.method private S()Ljava/lang/String;
    .locals 5

    .line 717
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    const-string v2, "30:00"

    if-ne v0, v1, :cond_0

    return-object v2

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->g()Z

    move-result v0

    .line 722
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 724
    :cond_1
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->o()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0f02c0

    .line 725
    invoke-virtual {p0, v3}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "10:00"

    if-eqz v3, :cond_2

    return-object v4

    :cond_2
    const v3, 0x7f0f02bf

    .line 728
    invoke-virtual {p0, v3}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v4

    :cond_3
    const v3, 0x7f0f02be

    .line 731
    invoke-virtual {p0, v3}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "20:00"

    return-object v0

    :cond_4
    const v3, 0x7f0f02c2

    .line 734
    invoke-virtual {p0, v3}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v2

    :cond_5
    return-object v1
.end method

.method private T()V
    .locals 2

    .line 812
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 813
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(I)V

    :cond_0
    return-void
.end method

.method private U()V
    .locals 4

    .line 818
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f028b

    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_pretty_switch_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    .line 822
    invoke-virtual {v0}, Lcn/nubia/camera/bb/aa;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(I)V

    :cond_0
    return-void
.end method

.method private V()V
    .locals 4

    .line 829
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->T()V

    goto :goto_0

    .line 832
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->U()V

    :goto_0
    return-void
.end method

.method private W()V
    .locals 1

    const-string v0, "ui_change_effect"

    .line 860
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->c(Ljava/lang/String;)V

    return-void
.end method

.method private X()V
    .locals 7

    .line 908
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->D()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 911
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->Y()Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 913
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 914
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v3

    if-eqz v1, :cond_2

    .line 915
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->p()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    .line 916
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method private Y()Lcom/android/preference/ListPreference;
    .locals 3

    .line 923
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_normal_effect_key"

    goto :goto_0

    .line 930
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 931
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->j:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v1}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v1

    const-string v2, "pref_gender_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    .line 932
    sget-object v1, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v0, v1, :cond_2

    const-string v0, "pref_female_effect_key"

    goto :goto_0

    :cond_2
    const-string v0, "pref_male_effect_key"

    goto :goto_0

    :cond_3
    const-string v0, "pref_pretty_effect_key"

    .line 943
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method private Z()Z
    .locals 2

    .line 962
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_slimming"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_smooth"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 964
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_toning"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;F)F
    .locals 0

    .line 71
    iput p1, p0, Lcn/nubia/camera/bb/v;->I:F

    return p1
.end method

.method public static a(Lcn/nubia/camera/bb/ab;Lcn/nubia/camera/bb/aa;Lcn/nubia/camera/bb/ac;Lcom/android/common/ui/RotateImageView;)Lcn/nubia/camera/bb/v;
    .locals 7

    .line 904
    new-instance v6, Lcn/nubia/camera/bb/v;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/bb/v;-><init>(ILcn/nubia/camera/bb/ab;Lcn/nubia/camera/bb/aa;Lcn/nubia/camera/bb/ac;Lcom/android/common/ui/RotateImageView;)V

    return-object v6
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b;
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;Lcn/nubia/camera/s/a$b;)Lcn/nubia/camera/s/a$b;
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/bb/v;->j:Lcn/nubia/camera/s/a$b;

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1013
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->j:Lcn/nubia/camera/s/a$b;

    .line 1014
    invoke-virtual {v0}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v0

    const-string v1, "pref_gender_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1015
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ab()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->g(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->h(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/v;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/v;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcn/nubia/camera/bb/v;->s:Z

    return p1
.end method

.method private aa()Z
    .locals 2

    .line 971
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->G()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 973
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ab()V
    .locals 3

    .line 980
    iget-boolean v0, p0, Lcn/nubia/camera/bb/v;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    if-nez v0, :cond_2

    .line 982
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->aa()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 984
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_2

    .line 985
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_gender_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/bb/v;->j:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v2}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->j:Lcn/nubia/camera/s/a$b;

    return-void

    :cond_1
    const-string v0, "VideoFragment"

    const-string v1, "initGenderEffectControl"

    .line 994
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance v0, Lcn/nubia/camera/s/a;

    invoke-direct {v0}, Lcn/nubia/camera/s/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    .line 996
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/ad/a;)V

    .line 997
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->a(Ljava/lang/Object;)V

    .line 998
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    .line 999
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->a:Lcn/nubia/camera/s/a$d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/s/a$d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private ac()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    if-eqz v0, :cond_0

    const-string v0, "VideoFragment"

    const-string v1, "releaseGenderEffectControl"

    .line 1004
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    .line 1006
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    invoke-virtual {v0}, Lcn/nubia/camera/s/a;->a()V

    .line 1007
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1008
    iput-object v0, p0, Lcn/nubia/camera/bb/v;->i:Lcn/nubia/camera/s/a;

    :cond_0
    return-void
.end method

.method private ad()Lcn/nubia/camera/bb/l;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->E:Lcn/nubia/camera/bb/l;

    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Lcn/nubia/camera/bb/v$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/v$10;-><init>(Lcn/nubia/camera/bb/v;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->E:Lcn/nubia/camera/bb/l;

    .line 1125
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->E:Lcn/nubia/camera/bb/l;

    return-object v0
.end method

.method private ae()V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private af()V
    .locals 7

    .line 1174
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 1175
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0f03b4

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1178
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v5

    invoke-static {v0, v1, v4, v5}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    .line 1179
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1190
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_0
    const v4, 0x7f0f03d9

    const v5, 0x7f0f02c3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1182
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 1184
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1186
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1193
    :goto_2
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    iget-object v1, p0, Lcn/nubia/camera/bb/v;->z:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/ba/f;->d(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method private ag()V
    .locals 4

    .line 1358
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1359
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1360
    iput v0, p0, Lcn/nubia/camera/bb/v;->J:F

    .line 1361
    iput v1, p0, Lcn/nubia/camera/bb/v;->K:F

    goto :goto_0

    .line 1362
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1363
    iput v0, p0, Lcn/nubia/camera/bb/v;->J:F

    .line 1364
    iput v2, p0, Lcn/nubia/camera/bb/v;->K:F

    goto :goto_0

    .line 1365
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1366
    iput v0, p0, Lcn/nubia/camera/bb/v;->J:F

    .line 1367
    iput v2, p0, Lcn/nubia/camera/bb/v;->K:F

    goto :goto_0

    .line 1368
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1369
    iput v1, p0, Lcn/nubia/camera/bb/v;->J:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 1370
    iput v0, p0, Lcn/nubia/camera/bb/v;->K:F

    goto :goto_0

    .line 1373
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->f()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/bb/v;->J:F

    .line 1374
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->e()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/bb/v;->K:F

    :cond_4
    :goto_0
    return-void
.end method

.method private ah()V
    .locals 4

    .line 1380
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aR()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1382
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 1384
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Lcn/nubia/camera/aj/a;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/aj/a;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/zoom/c;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->L:Lcn/nubia/camera/aj/a;

    .line 1386
    invoke-virtual {v0, p0}, Lcn/nubia/camera/aj/a;->a(Lcn/nubia/camera/aj/a$a;)V

    :cond_0
    return-void
.end method

.method private ai()V
    .locals 1

    .line 1391
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->L:Lcn/nubia/camera/aj/a;

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {v0, p0}, Lcn/nubia/camera/aj/a;->b(Lcn/nubia/camera/aj/a$a;)V

    :cond_0
    return-void
.end method

.method private aj()V
    .locals 1

    .line 1397
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->L:Lcn/nubia/camera/aj/a;

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {v0}, Lcn/nubia/camera/aj/a;->a()V

    :cond_0
    return-void
.end method

.method private ak()V
    .locals 1

    .line 1403
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->L:Lcn/nubia/camera/aj/a;

    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {v0}, Lcn/nubia/camera/aj/a;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/bb/v;F)F
    .locals 0

    .line 71
    iput p1, p0, Lcn/nubia/camera/bb/v;->H:F

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/bb/v;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/v;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, ":"

    const/4 v1, 0x0

    .line 643
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    .line 645
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 646
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 645
    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    .line 649
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr v2, p2

    .line 650
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    .line 651
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p2, p1

    if-lt v2, p2, :cond_0

    return v4

    :cond_0
    return v1

    :catch_0
    move-exception p1

    const-string p2, "VideoFragment"

    const-string v0, "run isMax() failed."

    .line 658
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic c(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/bb/v;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/v;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/bb/ac;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .line 262
    new-instance v0, Lcom/android/common/ui/a/b;

    invoke-direct {v0, p1}, Lcom/android/common/ui/a/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    const v0, 0x7f09036c

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f090077

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->q:Landroid/view/View;

    const v0, 0x7f09036e

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const v0, 0x7f09036f

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f0902fd

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->n:Landroid/view/View;

    const v0, 0x7f09024a

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f0902d7

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->v:Landroid/widget/TextView;

    const v0, 0x7f090260

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    const v0, 0x7f09020e

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->x:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->n:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/ab;->f()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/ab;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/ab;->e()Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->o:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->a(Ljava/lang/Object;)V

    .line 281
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->f(Landroid/view/View;)V

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->A:Lcn/nubia/camera/bb/s;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcn/nubia/camera/bb/s;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->a(Landroid/view/View;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->a(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->a(Landroid/view/View;)V

    const v0, 0x7f09025d

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->g(Landroid/view/View;)V

    .line 289
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->i(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->i()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    const v0, 0x7f090234

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    const v0, 0x7f090203

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f080149

    .line 299
    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 300
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    new-instance v0, Lcn/nubia/camera/bb/v$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/v$4;-><init>(Lcn/nubia/camera/bb/v;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/v;->a(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 314
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 315
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 316
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 317
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 318
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/bb/v;)Lcom/android/preference/c;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private f(I)V
    .locals 2

    .line 440
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    .line 441
    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    .line 442
    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->f()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    .line 443
    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0xf00

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    .line 444
    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0x870

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 445
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->n:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 8

    .line 336
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcn/nubia/camera/bb/s;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    .line 338
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->z()Lcn/nubia/camera/q/f;

    move-result-object v6

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/bb/s;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/bb/ac;Lcn/nubia/camera/q/f;Lcn/nubia/camera/three_a/ui/h;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/v;->A:Lcn/nubia/camera/bb/s;

    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->t:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 326
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 328
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private g(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0134

    goto :goto_0

    :cond_1
    const p1, 0x7f0f03e8

    goto :goto_0

    :cond_2
    const p1, 0x7f0f03e9

    goto :goto_0

    :cond_3
    const p1, 0x7f0f0320

    goto :goto_0

    :cond_4
    const p1, 0x7f0f03e6

    goto :goto_0

    :cond_5
    const p1, 0x7f0f0133

    :goto_0
    if-eqz p1, :cond_6

    .line 689
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->D()Z

    move-result v0

    if-nez v0, :cond_6

    .line 690
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 4

    .line 344
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 350
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_camera_pretty_slimming"

    invoke-virtual {v1, v2, v0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 351
    new-instance v1, Lcn/nubia/camera/pretty/c;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcn/nubia/camera/pretty/c;-><init>(Lcn/nubia/camera/ad/a;Lcom/android/preference/c;I)V

    iput-object v1, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    .line 352
    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {v1, p1}, Lcn/nubia/camera/pretty/a;->a(Landroid/view/ViewGroup;)V

    .line 353
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    new-instance v0, Lcn/nubia/camera/bb/v$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/v$5;-><init>(Lcn/nubia/camera/bb/v;)V

    invoke-interface {p1, v0}, Lcn/nubia/camera/pretty/a;->a(Lcn/nubia/camera/pretty/a$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "debug_video"

    .line 380
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/bb/v;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->Z()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/bb/v;)Lcom/android/preference/c;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private h(I)V
    .locals 4

    .line 1327
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->G:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1331
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->setCenterText(F)V

    .line 1333
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->G:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    const/16 v3, 0x8

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->setVisibility(I)V

    if-ne p1, v3, :cond_3

    const/high16 p1, -0x40800000    # -1.0f

    .line 1335
    iput p1, p0, Lcn/nubia/camera/bb/v;->I:F

    const/4 p1, 0x0

    .line 1336
    iput p1, p0, Lcn/nubia/camera/bb/v;->H:F

    .line 1337
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->F:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 9

    .line 753
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->u:Lcom/android/common/ui/RotateImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->Y()Lcom/android/preference/ListPreference;

    move-result-object v0

    .line 757
    invoke-static {v0}, Lcn/nubia/camera/ao/d;->a(Lcom/android/preference/ListPreference;)V

    .line 758
    new-instance v8, Lcn/nubia/camera/n/b;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    const v6, 0x7f090160

    iget-object v7, p0, Lcn/nubia/camera/bb/v;->u:Lcom/android/common/ui/RotateImageView;

    move-object v1, v8

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/n/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcom/android/preference/ListPreference;Landroid/view/View;ILandroid/view/View;)V

    iput-object v8, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    .line 760
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/n/b;)V

    .line 761
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$e;)V

    .line 762
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    new-instance v1, Lcn/nubia/camera/bb/v$7;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/v$7;-><init>(Lcn/nubia/camera/bb/v;)V

    invoke-virtual {p1, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$c;)V

    .line 780
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    new-instance v1, Lcn/nubia/camera/bb/v$8;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/bb/v$8;-><init>(Lcn/nubia/camera/bb/v;Lcom/android/preference/ListPreference;)V

    invoke-virtual {p1, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$a;)V

    .line 797
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    invoke-virtual {p1}, Lcn/nubia/camera/n/b;->b()V

    const/4 p1, 0x1

    .line 798
    iput-boolean p1, p0, Lcn/nubia/camera/bb/v;->s:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 1

    .line 1295
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f090280

    .line 1298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/zoom/arc/VideoZoomView;

    iput-object p1, p0, Lcn/nubia/camera/bb/v;->G:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    .line 1299
    new-instance v0, Lcn/nubia/camera/bb/v$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/v$3;-><init>(Lcn/nubia/camera/bb/v;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->setRatioChangeListener(Lcn/nubia/camera/zoom/arc/VideoZoomView$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ac()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private j(Landroid/view/View;)V
    .locals 3

    .line 1420
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 1421
    new-instance v0, Lcn/nubia/camera/q/l;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/q/i;

    invoke-virtual {v2}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/q/l;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/three_a/ui/h;)V

    .line 1422
    invoke-virtual {v0, p1, p0}, Lcn/nubia/camera/q/l;->a(Landroid/view/View;Lcn/nubia/camera/q/a;)V

    const/4 p1, 0x0

    .line 1423
    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/l;->a(I)V

    const/4 p1, 0x1

    .line 1424
    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/l;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->R()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->U()V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/bb/v;)Lcom/android/preference/c;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/bb/v;)Lcom/android/preference/c;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/s/a$b;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->j:Lcn/nubia/camera/s/a$b;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/n/b;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/camera/bb/v;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcn/nubia/camera/bb/v;->s:Z

    return p0
.end method

.method static synthetic u(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/pretty/a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/bb/v;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/bb/v;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public J()V
    .locals 4

    .line 1202
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->F:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1203
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->F:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public K()V
    .locals 2

    .line 1207
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1209
    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public L()V
    .locals 2

    .line 1229
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_0

    .line 1230
    invoke-interface {v0}, Lcn/nubia/camera/pretty/a;->a()V

    .line 1231
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    invoke-interface {v0}, Lcn/nubia/camera/pretty/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1232
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public M()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 1282
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method public N()Lcn/nubia/camera/zoom/c;
    .locals 1

    .line 1286
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(IZ)V
    .locals 1

    .line 697
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 698
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/n/b;->a(IZ)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->A:Lcn/nubia/camera/bb/s;

    if-eqz v0, :cond_1

    .line 702
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/bb/s;->a(IZ)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    .line 196
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    .line 197
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    new-instance p2, Lcn/nubia/camera/bb/v$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/bb/v$1;-><init>(Lcn/nubia/camera/bb/v;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/ab/a$a;)V
    .locals 1

    .line 865
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/ab/a$a;)V

    .line 866
    sget-object v0, Lcn/nubia/camera/ab/a$a;->b:Lcn/nubia/camera/ab/a$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/ab/a$a;->a:Lcn/nubia/camera/ab/a$a;

    if-ne p1, v0, :cond_1

    .line 867
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    if-eqz p1, :cond_1

    const-string p1, "VideoFragment"

    const-string v0, "onStorageStateChange... stop video"

    .line 868
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/bb/ab;->b(Z)V

    :cond_1
    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 8

    .line 708
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->a(F)V

    .line 711
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/bb/v;->A:Lcn/nubia/camera/bb/s;

    if-eqz v2, :cond_1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 712
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/bb/s;->a(Lcn/nubia/camera/an/a;IIII)V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/bb/w;)V
    .locals 1

    const-string v0, "onVideoFileSaved"

    .line 586
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->g(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ui_change_recording"

    .line 588
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->d(Ljava/lang/String;)V

    .line 589
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->R()V

    .line 590
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->A:Lcn/nubia/camera/bb/s;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/bb/s;->a(Lcn/nubia/camera/bb/w;)V

    const/16 p1, 0x8

    .line 591
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->h(I)V

    .line 592
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->M()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->M()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(F)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_back_video_quality_key"

    .line 947
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_front_video_quality_key"

    .line 948
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_encoder_key"

    .line 949
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 950
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->X()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1414
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1415
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 876
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->q:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 879
    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/camera/bb/v;->f(Z)V

    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 613
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {p1, p3}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    .line 614
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {p1}, Lcom/android/common/ui/a/b;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 616
    invoke-direct {p0, p1, p3}, Lcn/nubia/camera/bb/v;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VideoFragment"

    const-string p2, "onUpdateTime... stop video"

    .line 617
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/camera/bb/ab;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(F)Z
    .locals 2

    .line 1342
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->G:Lcn/nubia/camera/zoom/arc/VideoZoomView;

    if-eqz v0, :cond_0

    .line 1343
    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/VideoZoomView;->setCenterText(F)V

    .line 1345
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1346
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    if-eqz p1, :cond_1

    .line 1347
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/c;->a(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/bb/ac;->a(F)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1350
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->L:Lcn/nubia/camera/aj/a;

    if-eqz v0, :cond_3

    .line 1351
    invoke-virtual {v0, p1}, Lcn/nubia/camera/aj/a;->a(F)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStartEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoFragment"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->g(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "ui_change_recording"

    .line 524
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/v;->c(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->R()V

    .line 526
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->U()V

    .line 528
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->c(Z)V

    return-void

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 532
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->J()V

    .line 533
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->g(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 577
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->P()V

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 580
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->Q()V

    :goto_0
    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    .line 884
    iget-object p1, p0, Lcn/nubia/camera/bb/v;->q:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 885
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 887
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->f(Z)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStopEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->g(Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    .line 563
    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_2

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 569
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->g(I)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1214
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/camera/ba/a;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lockAFWhenTaking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->g(Z)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->A:Lcn/nubia/camera/bb/s;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcn/nubia/camera/bb/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    const-string v0, "VideoFragment"

    const-string v1, "onVideoStartBegin"

    .line 505
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ab;->i()V

    const-string v0, "ui_change_recording"

    .line 508
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->d(Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->O()V

    .line 510
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->T()V

    .line 511
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->A:Lcn/nubia/camera/bb/s;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/s;->b()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ad()Lcn/nubia/camera/bb/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/aa;->a(Lcn/nubia/camera/bb/l;)V

    .line 515
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ae()V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->g(Ljava/lang/String;)V

    .line 606
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->g(I)V

    const/4 p1, 0x0

    .line 607
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/v;->c(Z)V

    return-void
.end method

.method public d_()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    const-string v0, "onVideoStopStart"

    .line 538
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->g(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b()V

    const-string v0, "ui_change_recording"

    .line 541
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->c(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->R()V

    .line 543
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->U()V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b()V

    .line 546
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iget-object v1, p0, Lcn/nubia/camera/bb/v;->C:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 547
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 549
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->p:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->e()V

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->c(Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1222
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->af()V

    if-nez p1, :cond_0

    .line 1224
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->V()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method protected i_()V
    .locals 1

    .line 742
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 748
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/v;->h(Landroid/view/View;)V

    .line 749
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->X()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 6

    .line 467
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/aa;->l()I

    move-result v0

    const-string v1, "super high speed slomo is running"

    const/4 v2, 0x1

    const-string v3, "VideoFragment"

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    .line 484
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 490
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 473
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ab;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onBackPressed... stop video"

    .line 474
    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/ab;->b(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "Record time too short!"

    .line 477
    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_3
    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public l()V
    .locals 4

    const-string v0, "ui_change_recording"

    .line 632
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->f(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcn/nubia/camera/d/d;

    sget-object v2, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1239
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->K()V

    const/4 v0, 0x1

    .line 1240
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->c(Z)V

    .line 1242
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->l()V

    .line 1243
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->x:Landroid/widget/TextView;

    const v1, 0x7f0f0145

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1244
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1249
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->J()V

    const/4 v0, 0x0

    .line 1250
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->c(Z)V

    .line 1252
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->r_()V

    .line 1253
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1259
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/bb/v$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/v$2;-><init>(Lcn/nubia/camera/bb/v;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 128
    iget-boolean p3, p0, Lcn/nubia/camera/bb/v;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p3, "VideoFragment"

    const-string v0, "onCreateView"

    .line 129
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/camera/bb/v;->z:Lcn/nubia/camera/af/a;

    const p3, 0x7f0c00c8

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->d(Landroid/view/View;)V

    .line 133
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->e(Landroid/view/View;)V

    .line 134
    iget-object p2, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    invoke-virtual {p2, p0}, Lcn/nubia/camera/bb/aa;->a(Lcn/nubia/camera/bb/z;)V

    .line 135
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne p2, p3, :cond_1

    .line 136
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, p3, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/bb/v;->y:Lcn/nubia/camera/q/c;

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    sget-object p2, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    .line 141
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ah()V

    .line 142
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/v;->j(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcn/nubia/camera/bb/v;->d:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcn/nubia/camera/bb/aa;->g()V

    .line 258
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcn/nubia/camera/bb/v;->d:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    return-void

    .line 244
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->y:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    .line 246
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ai()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcn/nubia/camera/bb/v;->d:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    :cond_0
    const-string v0, "VideoFragment"

    const-string v1, "onPause"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lcn/nubia/camera/bb/aa;->f()V

    .line 219
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ab;->d()V

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b()V

    .line 221
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ui_change_recording"

    .line 222
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->c(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->R()V

    .line 225
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ac()V

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcn/nubia/camera/bb/v;->s:Z

    if-eqz v1, :cond_3

    .line 227
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->c()V

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcn/nubia/camera/bb/v;->s:Z

    .line 230
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->F:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {v0}, Lcn/nubia/camera/bb/aa;->k()V

    .line 234
    :cond_4
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 235
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ak()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 154
    iget-boolean v0, p0, Lcn/nubia/camera/bb/v;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->b:Lcn/nubia/camera/bb/aa;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Lcn/nubia/camera/bb/aa;->d()V

    :cond_1
    const-string v0, "VideoFragment"

    const-string v1, "onResume"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->p:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->D:Lcn/nubia/camera/bb/ab;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ab;->a()V

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/nubia/camera/bb/v;->s:Z

    if-nez v1, :cond_2

    .line 164
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->b()V

    .line 165
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->W()V

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcn/nubia/camera/bb/v;->s:Z

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/bb/v;->A:Lcn/nubia/camera/bb/s;

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {v0}, Lcn/nubia/camera/bb/s;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->c:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->t()V

    .line 172
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->X()V

    .line 173
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->ab()V

    .line 174
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->af()V

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->B:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_4

    .line 176
    invoke-interface {v0}, Lcn/nubia/camera/pretty/a;->a()V

    .line 178
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->V()V

    .line 179
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->aj()V

    return-void
.end method

.method public p()Z
    .locals 6

    .line 838
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_back_video_quality_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_front_video_quality_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 845
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->o()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0f02c0

    .line 846
    invoke-virtual {p0, v2}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f02bf

    .line 847
    invoke-virtual {p0, v3}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f02c1

    .line 848
    invoke-virtual {p0, v4}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f02c3

    .line 849
    invoke-virtual {p0, v5}, Lcn/nubia/camera/bb/v;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 850
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public q()Z
    .locals 1

    .line 955
    iget-object v0, p0, Lcn/nubia/camera/bb/v;->r:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q_()V
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public r()V
    .locals 0

    .line 808
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->T()V

    return-void
.end method

.method public r_()V
    .locals 1

    const-string v0, "ui_change_recording"

    .line 626
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/v;->e(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcn/nubia/camera/bb/v;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method

.method public s()V
    .locals 0

    .line 803
    invoke-direct {p0}, Lcn/nubia/camera/bb/v;->U()V

    return-void
.end method
