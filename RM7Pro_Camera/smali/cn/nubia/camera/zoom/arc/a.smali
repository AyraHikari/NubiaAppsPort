.class public Lcn/nubia/camera/zoom/arc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/zoom/arc/a$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private C:[Landroid/widget/ImageView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Lcn/nubia/camera/zoom/arc/ArcZoomMargin;

.field private F:Lcn/nubia/camera/zoom/b;

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/zoom/arc/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/view/View;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:J

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private R:Landroid/os/Handler;

.field private S:Z

.field private a:Lcn/nubia/camera/af/a;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcn/nubia/camera/d/a;

.field private e:F

.field private f:F

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/widget/TextView;

.field private m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

.field private n:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/Rect;

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/animation/AnimatorSet;

.field private u:Landroid/animation/ObjectAnimator;

.field private v:Z

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;FLcn/nubia/camera/zoom/d;Landroid/view/ViewGroup;IIIZ)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    .line 72
    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    .line 87
    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->F:Lcn/nubia/camera/zoom/b;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->G:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->I:Z

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->L:Z

    const-wide/16 v2, -0x1

    .line 228
    iput-wide v2, p0, Lcn/nubia/camera/zoom/arc/a;->M:J

    .line 230
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->P:Z

    .line 693
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->Q:Ljava/util/ArrayList;

    .line 870
    new-instance v2, Lcn/nubia/camera/zoom/arc/a$8;

    invoke-direct {v2, p0}, Lcn/nubia/camera/zoom/arc/a$8;-><init>(Lcn/nubia/camera/zoom/arc/a;)V

    iput-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->R:Landroid/os/Handler;

    .line 909
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->S:Z

    .line 99
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->a:Lcn/nubia/camera/af/a;

    .line 100
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    .line 101
    invoke-virtual {p3}, Lcn/nubia/camera/zoom/d;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->g:Ljava/lang/String;

    .line 102
    invoke-virtual {p3}, Lcn/nubia/camera/zoom/d;->b()F

    move-result v2

    iput v2, p0, Lcn/nubia/camera/zoom/arc/a;->e:F

    .line 103
    invoke-virtual {p3}, Lcn/nubia/camera/zoom/d;->c()F

    move-result v2

    iput v2, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    .line 104
    iput-boolean p8, p0, Lcn/nubia/camera/zoom/arc/a;->c:Z

    .line 105
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p8

    iput-object p8, p0, Lcn/nubia/camera/zoom/arc/a;->d:Lcn/nubia/camera/d/a;

    .line 106
    iput p5, p0, Lcn/nubia/camera/zoom/arc/a;->h:I

    .line 107
    iput p6, p0, Lcn/nubia/camera/zoom/arc/a;->i:I

    .line 108
    iput p7, p0, Lcn/nubia/camera/zoom/arc/a;->j:I

    .line 109
    iget-object p5, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    const p6, 0x7f0c001d

    invoke-virtual {p5, p6, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcn/nubia/camera/zoom/arc/a;->H:Landroid/view/View;

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->e()V

    .line 113
    iget-object p4, p0, Lcn/nubia/camera/zoom/arc/a;->H:Landroid/view/View;

    invoke-direct {p0, p4}, Lcn/nubia/camera/zoom/arc/a;->a(Landroid/view/View;)V

    .line 114
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->g()V

    .line 116
    iput p2, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    .line 117
    invoke-direct {p0, p2, v1}, Lcn/nubia/camera/zoom/arc/a;->a(FZ)V

    .line 119
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    iget-object p4, p0, Lcn/nubia/camera/zoom/arc/a;->d:Lcn/nubia/camera/d/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Lcn/nubia/camera/d/a;Lcn/nubia/camera/af/a;)V

    .line 120
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {p3, p1}, Lcn/nubia/camera/zoom/d;->b(Lcn/nubia/camera/ad/a;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p3, p1}, Lcn/nubia/camera/zoom/d;->c(Lcn/nubia/camera/ad/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    iget p2, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    invoke-virtual {p1, p2, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FZ)V

    const/16 p1, 0x8

    .line 122
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/a;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/a;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/a;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->A:Landroid/view/View;

    return-object p1
.end method

.method private a(III)Landroid/widget/ImageView;
    .locals 4

    .line 495
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 496
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const v2, 0x7f080351

    .line 497
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    .line 498
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 499
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    .line 500
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    .line 501
    div-int/lit8 p2, p2, 0x2

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr p2, v3

    sub-int p1, p3, p1

    mul-int/2addr p1, v2

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->setMarginStart(I)V

    .line 502
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    new-instance p1, Lcn/nubia/camera/zoom/arc/a$5;

    invoke-direct {p1, p0, p3}, Lcn/nubia/camera/zoom/arc/a$5;-><init>(Lcn/nubia/camera/zoom/arc/a;I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget p1, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    if-ne p3, p1, :cond_0

    .line 521
    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->A:Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method private a(FF)V
    .locals 0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 655
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->F:Lcn/nubia/camera/zoom/b;

    if-eqz p1, :cond_0

    .line 656
    invoke-interface {p1, p2}, Lcn/nubia/camera/zoom/b;->a(F)V

    .line 659
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->q()V

    return-void
.end method

.method private a(FZ)V
    .locals 3

    .line 579
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/a;->d(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/a;->b(F)I

    move-result v0

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; zoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ArcZoomUI"

    invoke-static {v1, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget p1, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    if-eq v0, p1, :cond_0

    .line 583
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->C:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p1, v1, v0, p2}, Lcn/nubia/camera/zoom/arc/a;->a(Landroid/view/View;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2

    const-string v0, "parentvibility"

    .line 688
    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->H:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->a:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->b(ILcn/nubia/camera/af/a;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    .line 329
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/arc/a;->s:I

    const v0, 0x7f0900d5

    .line 331
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    const v0, 0x7f0903a3

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/zoom/arc/ArcZoomView;

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    const v0, 0x7f0903a2

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f09004c

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;

    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->E:Lcn/nubia/camera/zoom/arc/ArcZoomMargin;

    .line 335
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 336
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/camera/zoom/arc/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/zoom/arc/a$1;-><init>(Lcn/nubia/camera/zoom/arc/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 342
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/camera/zoom/arc/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/zoom/arc/a$2;-><init>(Lcn/nubia/camera/zoom/arc/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHapticFeedbackEnabled(Z)V

    .line 358
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    new-instance v0, Lcn/nubia/camera/zoom/arc/a$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/zoom/arc/a$3;-><init>(Lcn/nubia/camera/zoom/arc/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setListerer(Lcn/nubia/camera/zoom/arc/ArcZoomView$b;)V

    .line 381
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->E:Lcn/nubia/camera/zoom/arc/ArcZoomMargin;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setViewChangeListener(Lcn/nubia/camera/zoom/arc/ArcZoomView$c;)V

    .line 382
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->f()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;IZ)V
    .locals 5

    .line 604
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 605
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 608
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 609
    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    .line 612
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    .line 613
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    sget-boolean v2, Lcn/nubia/camera/ba/a;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    sub-int/2addr v4, p3

    mul-int/2addr v2, v4

    iget v4, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez p4, :cond_3

    int-to-float p4, v1

    .line 616
    invoke-virtual {p2, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 617
    iget-object p2, p0, Lcn/nubia/camera/zoom/arc/a;->A:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->A:Landroid/view/View;

    const/16 p2, 0x8

    .line 619
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iput p3, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    goto :goto_1

    .line 622
    :cond_3
    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float v0, v0

    aput v0, v4, v2

    int-to-float v0, v1

    aput v0, v4, v3

    invoke-static {p2, p4, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    .line 623
    new-instance p4, Lcn/nubia/camera/zoom/arc/a$7;

    invoke-direct {p4, p0, p1, p3}, Lcn/nubia/camera/zoom/arc/a$7;-><init>(Lcn/nubia/camera/zoom/arc/a;Landroid/view/View;I)V

    invoke-virtual {p2, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 647
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 648
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 649
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/a;FF)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/zoom/arc/a;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/a;FZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/zoom/arc/a;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/a;Landroid/view/View;Landroid/view/View;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/zoom/arc/a;->a(Landroid/view/View;Landroid/view/View;IZ)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/d/a;)Z
    .locals 6

    .line 887
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    .line 888
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_1

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->g:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 890
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v4, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-eq v1, v4, :cond_4

    .line 891
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v4, Lcn/nubia/camera/d/c;->g:Lcn/nubia/camera/d/c;

    if-ne v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v3

    .line 892
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v4

    sget-object v5, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-eq v4, v5, :cond_5

    .line 893
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v4

    sget-object v5, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-eq v4, v5, :cond_5

    .line 894
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v4

    sget-object v5, Lcn/nubia/camera/d/e;->h:Lcn/nubia/camera/d/e;

    if-eq v4, v5, :cond_5

    .line 895
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p0

    sget-object v4, Lcn/nubia/camera/d/e;->g:Lcn/nubia/camera/d/e;

    if-eq p0, v4, :cond_5

    move p0, v3

    goto :goto_3

    :cond_5
    move p0, v2

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/arc/a;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->m()Z

    move-result p0

    return p0
.end method

.method private b(F)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 588
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 589
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-lez v1, :cond_1

    .line 591
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_3

    return v0

    .line 597
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_4

    .line 598
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/arc/a;F)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/a;->d(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 731
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const-string v0, "ArcZoomUI"

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_3

    .line 735
    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getZoom()F

    move-result v3

    invoke-direct {p0, v3, v1}, Lcn/nubia/camera/zoom/arc/a;->a(FZ)V

    .line 736
    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    const-string p1, "setVisibility to GONE, and ArcZoom is hidden!"

    .line 737
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 742
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->p()V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_8

    .line 746
    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 750
    :cond_4
    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 754
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTranslationY(F)V

    .line 756
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 757
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 758
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 759
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 761
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 762
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_2

    :cond_6
    :goto_0
    const-string p1, "setVisibility to VISIBLE, and ArcZoom is showed!"

    .line 751
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_1
    const-string p1, "setVisibility to VISIBLE, and ArcZoom is showing!"

    .line 747
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 765
    :cond_8
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 768
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    if-ne p1, v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x1

    :goto_3
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->a:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/ba/f;->b(ILcn/nubia/camera/af/a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/arc/a;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/zoom/arc/a;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    return p0
.end method

.method private c(F)Z
    .locals 4

    .line 807
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 812
    invoke-direct {p0, v2}, Lcn/nubia/camera/zoom/arc/a;->b(I)V

    .line 813
    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/zoom/arc/a;->a(FZ)V

    goto :goto_0

    .line 815
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->R:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 816
    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/zoom/arc/a;->a(FZ)V

    .line 817
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->g()V

    .line 818
    iput-boolean v3, p0, Lcn/nubia/camera/zoom/arc/a;->v:Z

    .line 819
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->reverse()V

    :goto_0
    return v3

    :cond_2
    :goto_1
    return v1
.end method

.method static synthetic c(Lcn/nubia/camera/zoom/arc/a;F)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/a;->c(F)Z

    move-result p0

    return p0
.end method

.method private d(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float v1, p1, v0

    rem-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    const-string v1, "X"

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcn/nubia/camera/zoom/arc/a;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/zoom/arc/a;)F
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    return p0
.end method

.method private e()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->a:Lcn/nubia/camera/af/a;

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 149
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    if-eq v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->a:Lcn/nubia/camera/af/a;

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->g:Ljava/lang/String;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->e:F

    iget v4, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    invoke-static {v0, v1, v4}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;FF)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->e:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    :cond_3
    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_4
    :goto_2
    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_5
    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 387
    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->h:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    .line 388
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 391
    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->h:I

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    .line 392
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 395
    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->h:I

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    .line 396
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->E:Lcn/nubia/camera/zoom/arc/ArcZoomMargin;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 399
    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->i:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 400
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->E:Lcn/nubia/camera/zoom/arc/ArcZoomMargin;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomMargin;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->h:I

    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->i:I

    if-ne v0, v1, :cond_0

    .line 403
    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->j:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->s:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/camera/zoom/arc/a;->k:I

    goto :goto_0

    .line 405
    :cond_0
    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->j:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/zoom/arc/a;->s:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/camera/zoom/arc/a;->k:I

    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 410
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->i()V

    .line 411
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->c:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->j()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/zoom/arc/a;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->o()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/af/a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->a:Lcn/nubia/camera/af/a;

    return-object p0
.end method

.method private h()V
    .locals 12

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    iget v6, p0, Lcn/nubia/camera/zoom/arc/a;->k:I

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v3, v7

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v5, v6, v4

    iget v5, p0, Lcn/nubia/camera/zoom/arc/a;->k:I

    int-to-float v5, v5

    aput v5, v6, v7

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 420
    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 421
    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x0

    .line 423
    iget-boolean v8, p0, Lcn/nubia/camera/zoom/arc/a;->c:Z

    const-wide/16 v9, 0x64

    if-eqz v8, :cond_0

    .line 424
    iget-object v6, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v2, [F

    fill-array-data v11, :array_2

    invoke-static {v6, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 425
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 427
    :cond_0
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 428
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 430
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eqz v6, :cond_1

    const/4 v11, 0x5

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v0, v11, v4

    aput-object v1, v11, v7

    aput-object v3, v11, v2

    aput-object v5, v11, v9

    aput-object v6, v11, v10

    .line 432
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v1, v6, v7

    aput-object v3, v6, v2

    aput-object v5, v6, v9

    .line 434
    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 436
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/camera/zoom/arc/a$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/zoom/arc/a$4;-><init>(Lcn/nubia/camera/zoom/arc/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private i()V
    .locals 6

    .line 476
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    goto :goto_0

    .line 479
    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 480
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v3, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->C:[Landroid/widget/ImageView;

    .line 484
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/16 v2, 0x438

    const/4 v3, 0x0

    .line 486
    :goto_1
    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 487
    invoke-direct {p0, v0, v2, v3}, Lcn/nubia/camera/zoom/arc/a;->a(III)Landroid/widget/ImageView;

    move-result-object v4

    .line 488
    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/a;->C:[Landroid/widget/ImageView;

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 490
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->A:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-boolean v3, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    iget v3, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    sub-int/2addr v0, v3

    mul-int/2addr v1, v0

    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    mul-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTranslationX(F)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/zoom/arc/a;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->p()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/zoom/arc/a;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method private j()V
    .locals 9

    .line 527
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 530
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    .line 531
    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v3, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    mul-int/2addr v0, v3

    rsub-int v0, v0, 0x438

    add-int/lit8 v0, v0, -0x64

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v0, v3

    const/16 v3, 0x32

    if-le v0, v3, :cond_1

    move v0, v3

    .line 541
    :cond_1
    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    mul-int/2addr v3, v4

    rsub-int v3, v3, 0x438

    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 542
    :goto_1
    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 543
    iget-object v4, p0, Lcn/nubia/camera/zoom/arc/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 544
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcn/nubia/camera/zoom/arc/a;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f080350

    .line 545
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v6

    const-string v7, "X"

    if-gez v6, :cond_2

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 549
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/high16 v6, 0x41400000    # 12.0f

    .line 551
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 552
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    .line 553
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 554
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcn/nubia/camera/zoom/arc/a;->q:I

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v2, :cond_3

    .line 556
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3

    .line 558
    :cond_3
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 560
    :goto_3
    iget-object v7, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    new-instance v6, Lcn/nubia/camera/zoom/arc/a$6;

    invoke-direct {v6, p0, v4}, Lcn/nubia/camera/zoom/arc/a$6;-><init>(Lcn/nubia/camera/zoom/arc/a;F)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 5

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]"

    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcn/nubia/camera/zoom/arc/a;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/camera/zoom/arc/a;->v:Z

    return p0
.end method

.method static synthetic l(Lcn/nubia/camera/zoom/arc/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->D:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private l()V
    .locals 9

    .line 772
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->C:[Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 779
    iget v3, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 780
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    goto :goto_0

    .line 782
    :cond_1
    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 784
    :goto_0
    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->y:I

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a;->C:[Landroid/widget/ImageView;

    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v0, v5, :cond_2

    .line 785
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    goto :goto_1

    .line 787
    :cond_2
    array-length v0, v3

    sub-int/2addr v0, v6

    aget-object v0, v3, v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 789
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    aget v3, v2, v6

    iget v5, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    sub-int/2addr v3, v5

    .line 792
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v5

    aget v7, v1, v6

    iget-object v8, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    .line 793
    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    add-int/2addr v7, v8

    invoke-direct {v0, v4, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->o:Landroid/graphics/Rect;

    .line 794
    new-instance v0, Landroid/graphics/Rect;

    aget v2, v2, v6

    iget v3, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    sub-int/2addr v2, v3

    .line 797
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v3

    aget v1, v1, v6

    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    .line 798
    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, p0, Lcn/nubia/camera/zoom/arc/a;->r:I

    add-int/2addr v1, v5

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->p:Landroid/graphics/Rect;

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentZoomTouchRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mDisableSwitchMemberRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArcZoomUI"

    invoke-static {v1, v0}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 773
    :cond_3
    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->o:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/zoom/arc/a;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method private m()Z
    .locals 4

    .line 825
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->K:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 828
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 832
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->h()V

    .line 833
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->v:Z

    .line 834
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 835
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FZ)V

    .line 836
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->f()V

    .line 837
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->R:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->R:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic n(Lcn/nubia/camera/zoom/arc/a;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private n()Z
    .locals 1

    .line 843
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->d:Lcn/nubia/camera/d/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic o(Lcn/nubia/camera/zoom/arc/a;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->A:Landroid/view/View;

    return-object p0
.end method

.method private o()V
    .locals 2

    .line 847
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/zoom/arc/a$a;

    if-eqz v1, :cond_0

    .line 849
    invoke-interface {v1}, Lcn/nubia/camera/zoom/arc/a$a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/zoom/arc/a$a;

    if-eqz v1, :cond_0

    .line 857
    invoke-interface {v1}, Lcn/nubia/camera/zoom/arc/a$a;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/zoom/arc/a;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/camera/zoom/arc/a;->P:Z

    return p0
.end method

.method static synthetic q(Lcn/nubia/camera/zoom/arc/a;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/zoom/arc/a;->R:Landroid/os/Handler;

    return-object p0
.end method

.method private q()V
    .locals 3

    .line 911
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 914
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->S:Z

    .line 915
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "zoom_type"

    const-string v2, "ui"

    .line 916
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {v0}, Lcn/nubia/camera/ba/g;->e(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->I:Z

    .line 194
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setClickable(Z)V

    return-void
.end method

.method public a(F)V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 672
    iput v1, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    .line 673
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FZ)V

    .line 674
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    iget p1, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(FZ)V

    goto :goto_1

    .line 675
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/a;->c(F)Z

    :goto_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 702
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 703
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 704
    invoke-direct {p0, v0}, Lcn/nubia/camera/zoom/arc/a;->b(I)V

    goto :goto_0

    .line 707
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 708
    invoke-direct {p0, v0}, Lcn/nubia/camera/zoom/arc/a;->b(I)V

    .line 710
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 711
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArcZoomUI"

    invoke-static {p2, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/zoom/d;F)V
    .locals 2

    .line 126
    invoke-virtual {p0, p2, p1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/d;Lcn/nubia/camera/ad/a;)V

    .line 127
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->J:Z

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcn/nubia/camera/zoom/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->e:F

    invoke-virtual {p2}, Lcn/nubia/camera/zoom/d;->b()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    invoke-virtual {p2}, Lcn/nubia/camera/zoom/d;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0, p3}, Lcn/nubia/camera/zoom/arc/a;->a(F)V

    return-void

    .line 134
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/camera/zoom/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->g:Ljava/lang/String;

    .line 135
    invoke-virtual {p2}, Lcn/nubia/camera/zoom/d;->b()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/arc/a;->e:F

    .line 136
    invoke-virtual {p2}, Lcn/nubia/camera/zoom/d;->c()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/arc/a;->f:F

    .line 137
    iput p3, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    .line 138
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->e()V

    .line 139
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->g()V

    .line 140
    iget p3, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcn/nubia/camera/zoom/arc/a;->a(FZ)V

    .line 141
    iget-object p3, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/zoom/d;->b(Lcn/nubia/camera/ad/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, p1}, Lcn/nubia/camera/zoom/d;->c(Lcn/nubia/camera/ad/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 142
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    iget p2, p0, Lcn/nubia/camera/zoom/arc/a;->z:F

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FZ)V

    .line 143
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/arc/a;->d()V

    return-void
.end method

.method public a(Lcn/nubia/camera/zoom/arc/a$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/zoom/b;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->F:Lcn/nubia/camera/zoom/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/zoom/d;Lcn/nubia/camera/ad/a;)V
    .locals 3

    .line 682
    invoke-virtual {p1}, Lcn/nubia/camera/zoom/d;->c()F

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/d;->b()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->J:Z

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p1, p2}, Lcn/nubia/camera/zoom/d;->i(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->K:Z

    .line 684
    iget-boolean p1, p0, Lcn/nubia/camera/zoom/arc/a;->J:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-direct {p0, v2}, Lcn/nubia/camera/zoom/arc/a;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 667
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/arc/a;->I:Z

    .line 668
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setClickable(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->H:Landroid/view/View;

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->l:Landroid/widget/TextView;

    .line 219
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->d:Lcn/nubia/camera/d/a;

    .line 220
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->d:Lcn/nubia/camera/d/a;

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->h:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_2

    .line 221
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->l()V

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->p:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getZoom()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/zoom/arc/a;->c(F)Z

    return-void
.end method

.method public b(Lcn/nubia/camera/zoom/arc/a$a;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 232
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return v1

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 237
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->L:Z

    .line 238
    iput-wide v2, p0, Lcn/nubia/camera/zoom/arc/a;->M:J

    .line 241
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->P:Z

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->d()Z

    move-result v0

    const/4 v5, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->R:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 246
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->R:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->R:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->n()Z

    move-result v0

    const-string v6, "ArcZoomUI"

    if-nez v0, :cond_6

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArcZoomUI click has disable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->I:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; FunctionState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->d:Lcn/nubia/camera/d/a;

    .line 254
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; UIState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->d:Lcn/nubia/camera/d/a;

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; DeviceState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->d:Lcn/nubia/camera/d/a;

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {v6, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 258
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->o:Landroid/graphics/Rect;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    .line 259
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 260
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    .line 270
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_8

    goto :goto_1

    :cond_8
    move v1, v0

    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->P:Z

    return v0

    .line 276
    :cond_a
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_f

    if-eq v0, v4, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    goto/16 :goto_4

    .line 291
    :cond_b
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/arc/a;->L:Z

    if-eqz v0, :cond_10

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const-wide/16 v2, 0x0

    .line 295
    iget-object v5, p0, Lcn/nubia/camera/zoom/arc/a;->o:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p1, v5

    if-lez v5, :cond_c

    .line 296
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->L:Z

    goto :goto_2

    .line 299
    :cond_c
    iget v2, p0, Lcn/nubia/camera/zoom/arc/a;->N:I

    sub-int v3, v0, v2

    sub-int/2addr v0, v2

    mul-int/2addr v3, v0

    iget v0, p0, Lcn/nubia/camera/zoom/arc/a;->O:I

    sub-int v2, p1, v0

    sub-int/2addr p1, v0

    mul-int/2addr v2, p1

    add-int/2addr v3, v2

    int-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 302
    :goto_2
    iget-boolean p1, p0, Lcn/nubia/camera/zoom/arc/a;->L:Z

    if-eqz p1, :cond_d

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    cmpl-double p1, v2, v5

    if-ltz p1, :cond_d

    goto :goto_3

    :cond_d
    move v4, v1

    :goto_3
    if-eqz v4, :cond_10

    .line 305
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->m()Z

    .line 306
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->L:Z

    goto :goto_4

    .line 311
    :cond_e
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/arc/a;->L:Z

    .line 312
    iput-wide v2, p0, Lcn/nubia/camera/zoom/arc/a;->M:J

    goto :goto_4

    .line 279
    :cond_f
    invoke-direct {p0}, Lcn/nubia/camera/zoom/arc/a;->l()V

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->o:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 281
    iput-boolean v4, p0, Lcn/nubia/camera/zoom/arc/a;->L:Z

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/camera/zoom/arc/a;->M:J

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/zoom/arc/a;->N:I

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/camera/zoom/arc/a;->O:I

    :cond_10
    :goto_4
    return v1

    .line 261
    :cond_11
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArcZoomUI touch has disable. mCurrentZoomTouchRect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->o:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mArcZoomView.isAniming(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    .line 262
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {v6, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_12

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArcZoomUI touch has disable. mZoomButtonsAnim.isStarted(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mZoomButtonsAnim.isRunning(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    .line 265
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-static {v6, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return v1
.end method

.method public c()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 212
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 324
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getZoom()F

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/arc/a;->c(F)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    .line 803
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a;->m:Lcn/nubia/camera/zoom/arc/ArcZoomView;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getZoom()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/zoom/arc/a;->c(F)Z

    return-void
.end method
