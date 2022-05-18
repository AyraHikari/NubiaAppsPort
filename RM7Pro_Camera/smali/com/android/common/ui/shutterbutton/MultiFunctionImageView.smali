.class public Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$b;,
        Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

.field private c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

.field private d:Lcom/android/common/ui/shutterbutton/d;

.field private e:Lcom/android/common/ui/shutterbutton/d;

.field private f:Z

.field private g:Z

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Lcom/android/common/ui/shutterbutton/b;

.field private l:Lcom/android/common/ui/shutterbutton/b;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Lcom/android/common/ui/shutterbutton/i;

.field private r:Lcom/android/common/ui/shutterbutton/g;

.field private s:Lcom/android/common/ui/shutterbutton/e;

.field private t:Lcom/android/common/ui/shutterbutton/c;

.field private u:Lcom/android/common/ui/shutterbutton/f;

.field private v:Lcom/android/common/ui/shutterbutton/h;

.field private w:Lcom/android/common/ui/shutterbutton/a;

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "MultiFunctionImageView"

    .line 31
    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a:Ljava/lang/String;

    .line 52
    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d:Lcom/android/common/ui/shutterbutton/d;

    .line 53
    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->e:Lcom/android/common/ui/shutterbutton/d;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->f:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->g:Z

    const/4 v2, 0x0

    .line 56
    iput v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->h:F

    .line 57
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->i:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->j:Z

    .line 59
    sget-object v2, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    iput-object v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->k:Lcom/android/common/ui/shutterbutton/b;

    .line 60
    sget-object v2, Lcom/android/common/ui/shutterbutton/b;->a:Lcom/android/common/ui/shutterbutton/b;

    iput-object v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->l:Lcom/android/common/ui/shutterbutton/b;

    .line 61
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->m:Z

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->n:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->o:Z

    .line 64
    new-instance v2, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$b;-><init>(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$1;)V

    iput-object v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->p:Landroid/os/Handler;

    .line 72
    new-instance v2, Lcom/android/common/ui/shutterbutton/a;

    invoke-direct {v2}, Lcom/android/common/ui/shutterbutton/a;-><init>()V

    iput-object v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->w:Lcom/android/common/ui/shutterbutton/a;

    const/4 v2, -0x1

    .line 74
    iput v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->x:I

    .line 83
    sget-object v2, Lcom/android/common/ui/c$g;->af:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    sget p2, Lcom/android/common/ui/c$g;->ah:I

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    iget v2, v2, Lcom/android/common/ui/shutterbutton/d;->f:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 85
    invoke-static {p2}, Lcom/android/common/ui/shutterbutton/d;->a(I)Lcom/android/common/ui/shutterbutton/d;

    move-result-object p2

    .line 86
    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    if-ne p2, v2, :cond_1

    .line 90
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->g:Z

    goto :goto_1

    .line 91
    :cond_1
    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->d:Lcom/android/common/ui/shutterbutton/d;

    if-ne p2, v2, :cond_3

    .line 92
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->f:Z

    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->e:Lcom/android/common/ui/shutterbutton/d;

    .line 94
    :cond_3
    :goto_1
    sget v1, Lcom/android/common/ui/c$g;->ag:I

    sget-object v2, Lcom/android/common/ui/shutterbutton/b;->a:Lcom/android/common/ui/shutterbutton/b;

    iget v2, v2, Lcom/android/common/ui/shutterbutton/b;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 95
    invoke-static {v1}, Lcom/android/common/ui/shutterbutton/b;->a(I)Lcom/android/common/ui/shutterbutton/b;

    move-result-object v1

    .line 96
    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->k:Lcom/android/common/ui/shutterbutton/b;

    .line 97
    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    .line 98
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d()V

    .line 100
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init Function "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Color "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->k:Lcom/android/common/ui/shutterbutton/b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(J)V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 434
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVideoAnimation()Lcom/android/common/ui/shutterbutton/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/h;->a(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x19

    .line 435
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    if-eqz p1, :cond_1

    const-string p1, "MultiFunctionImageView"

    const-string v0, "onAnimationEnd"

    .line 437
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    invoke-interface {p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;->a()V

    const/4 p1, 0x0

    .line 439
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    const/4 p1, 0x0

    .line 440
    iput-boolean p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->i:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->k:Lcom/android/common/ui/shutterbutton/b;

    sget-object v1, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    if-ne v0, v1, :cond_0

    .line 463
    sget v0, Lcom/android/common/ui/c$d;->v:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setImageResource(I)V

    goto :goto_0

    .line 465
    :cond_0
    sget v0, Lcom/android/common/ui/c$d;->u:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private getCompassAnimation()Lcom/android/common/ui/shutterbutton/c;
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->t:Lcom/android/common/ui/shutterbutton/c;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiFunctionImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Lcom/android/common/ui/shutterbutton/c;

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/shutterbutton/c;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->t:Lcom/android/common/ui/shutterbutton/c;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->t:Lcom/android/common/ui/shutterbutton/c;

    return-object v0
.end method

.method private getGradienterAnimation()Lcom/android/common/ui/shutterbutton/e;
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->s:Lcom/android/common/ui/shutterbutton/e;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcom/android/common/ui/shutterbutton/e;

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/shutterbutton/e;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->s:Lcom/android/common/ui/shutterbutton/e;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->s:Lcom/android/common/ui/shutterbutton/e;

    return-object v0
.end method

.method private getPressAnimation()Lcom/android/common/ui/shutterbutton/f;
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->u:Lcom/android/common/ui/shutterbutton/f;

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Lcom/android/common/ui/shutterbutton/f;

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/shutterbutton/f;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->u:Lcom/android/common/ui/shutterbutton/f;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->u:Lcom/android/common/ui/shutterbutton/f;

    return-object v0
.end method

.method private getProgressAnimation()Lcom/android/common/ui/shutterbutton/g;
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->r:Lcom/android/common/ui/shutterbutton/g;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/android/common/ui/shutterbutton/g;

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->k:Lcom/android/common/ui/shutterbutton/b;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/shutterbutton/g;-><init>(Landroid/content/res/Resources;Lcom/android/common/ui/shutterbutton/b;)V

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->r:Lcom/android/common/ui/shutterbutton/g;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->r:Lcom/android/common/ui/shutterbutton/g;

    return-object v0
.end method

.method private getVideoAnimation()Lcom/android/common/ui/shutterbutton/h;
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->v:Lcom/android/common/ui/shutterbutton/h;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lcom/android/common/ui/shutterbutton/h;

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/shutterbutton/h;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->v:Lcom/android/common/ui/shutterbutton/h;

    .line 508
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->k:Lcom/android/common/ui/shutterbutton/b;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/h;->a(Lcom/android/common/ui/shutterbutton/b;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->v:Lcom/android/common/ui/shutterbutton/h;

    return-object v0
.end method

.method private getWaitBarAnimation()Lcom/android/common/ui/shutterbutton/i;
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->q:Lcom/android/common/ui/shutterbutton/i;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lcom/android/common/ui/shutterbutton/i;

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->l:Lcom/android/common/ui/shutterbutton/b;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/shutterbutton/i;-><init>(Landroid/content/res/Resources;Lcom/android/common/ui/shutterbutton/b;)V

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->q:Lcom/android/common/ui/shutterbutton/i;

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->q:Lcom/android/common/ui/shutterbutton/i;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(Z)V

    return-void
.end method

.method public a(F)V
    .locals 1

    const/4 v0, 0x1

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(FZ)V

    return-void
.end method

.method public a(FZ)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->f:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getGradienterAnimation()Lcom/android/common/ui/shutterbutton/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/shutterbutton/e;->a(FZ)V

    const-wide/16 p1, 0x0

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZLcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    return-void
.end method

.method public a(IZI)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZILcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    return-void
.end method

.method public a(IZILcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V
    .locals 0

    .line 190
    iput-object p4, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 191
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getProgressAnimation()Lcom/android/common/ui/shutterbutton/g;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/common/ui/shutterbutton/g;->a(IZI)V

    const-wide/16 p1, 0x0

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    return-void
.end method

.method public a(IZLcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZILcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    return-void
.end method

.method public a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V
    .locals 2

    const-string v0, "MultiFunctionImageView"

    const-string v1, "playStopRecordAnimation"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->i:Z

    .line 290
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 291
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVideoAnimation()Lcom/android/common/ui/shutterbutton/h;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/common/ui/shutterbutton/h;->a(IZ)V

    const-wide/16 v0, 0x0

    .line 292
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    return-void
.end method

.method public a(Lcom/android/common/ui/shutterbutton/d;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->e:Lcom/android/common/ui/shutterbutton/d;

    if-ne p1, v0, :cond_0

    .line 133
    sget-object p1, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->e:Lcom/android/common/ui/shutterbutton/d;

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 135
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->g:Z

    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->d:Lcom/android/common/ui/shutterbutton/d;

    if-ne p1, v0, :cond_2

    .line 137
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->f:Z

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    .line 139
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->n:Z

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "MultiFunctionImageView"

    const-string v1, "endAnimation"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "onAnimationEnd"

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    invoke-interface {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;->a()V

    .line 303
    iput-object v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->i:Z

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVideoAnimation()Lcom/android/common/ui/shutterbutton/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/h;->a()V

    .line 308
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    if-eqz v0, :cond_1

    .line 309
    invoke-interface {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;->a()V

    .line 310
    iput-object v2, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    :cond_1
    const-wide/16 v0, 0x0

    .line 312
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setDegreeOfXY(F)V

    return-void
.end method

.method public b(FZ)V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->g:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getCompassAnimation()Lcom/android/common/ui/shutterbutton/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/shutterbutton/c;->a(FZ)V

    const-wide/16 p1, 0x0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playStartRecordAnimation (hideTheRing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiFunctionImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-boolean p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->j:Z

    const/4 p1, 0x1

    .line 278
    iput-boolean p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->i:Z

    .line 279
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVideoAnimation()Lcom/android/common/ui/shutterbutton/h;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Lcom/android/common/ui/shutterbutton/h;->a(IZ)V

    const-wide/16 v0, 0x0

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "MultiFunctionImageView"

    const-string v1, "cancelAnimation"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 321
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVideoAnimation()Lcom/android/common/ui/shutterbutton/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/h;->a(IZ)V

    .line 322
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVideoAnimation()Lcom/android/common/ui/shutterbutton/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/h;->a()V

    const-wide/16 v0, 0x0

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    return-void
.end method

.method public c(F)V
    .locals 1

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0, p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(FZ)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 407
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->o:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->o:Z

    .line 409
    invoke-direct {p0, v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    .line 415
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    return-void

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->o:Z

    .line 419
    invoke-direct {p0, v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    .line 421
    :cond_1
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->m:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->m:Z

    .line 423
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getPressAnimation()Lcom/android/common/ui/shutterbutton/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/f;->a()V

    .line 424
    invoke-direct {p0, v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    goto :goto_0

    .line 425
    :cond_2
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->m:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->m:Z

    .line 427
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getPressAnimation()Lcom/android/common/ui/shutterbutton/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/f;->b()V

    .line 428
    invoke-direct {p0, v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    .line 430
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    return-void
.end method

.method public getProgress()I
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getProgressAnimation()Lcom/android/common/ui/shutterbutton/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/g;->b()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 347
    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->e:Lcom/android/common/ui/shutterbutton/d;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    const-wide/16 v2, 0x19

    if-ne v0, v1, :cond_2

    .line 350
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d:Lcom/android/common/ui/shutterbutton/d;

    .line 351
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getProgressAnimation()Lcom/android/common/ui/shutterbutton/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/g;->a(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    goto/16 :goto_1

    .line 353
    :cond_1
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getProgressAnimation()Lcom/android/common/ui/shutterbutton/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/ui/shutterbutton/g;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 354
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    invoke-interface {p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;->a()V

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    goto/16 :goto_1

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->e:Lcom/android/common/ui/shutterbutton/d;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    if-ne v0, v1, :cond_4

    .line 358
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d:Lcom/android/common/ui/shutterbutton/d;

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 361
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->w:Lcom/android/common/ui/shutterbutton/a;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/common/ui/shutterbutton/a;->a(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 362
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->i:Z

    if-eqz v0, :cond_3

    .line 363
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 365
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 367
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 369
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getWaitBarAnimation()Lcom/android/common/ui/shutterbutton/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/i;->a(Landroid/graphics/Canvas;)Z

    .line 370
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    goto/16 :goto_1

    .line 371
    :cond_4
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->g:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->h:F

    .line 372
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->h:F

    .line 373
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d:Lcom/android/common/ui/shutterbutton/d;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    if-ne v0, v1, :cond_6

    .line 374
    :cond_5
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d:Lcom/android/common/ui/shutterbutton/d;

    .line 375
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getCompassAnimation()Lcom/android/common/ui/shutterbutton/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/c;->a(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 376
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    goto :goto_1

    .line 378
    :cond_6
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->f:Z

    if-eqz v0, :cond_7

    .line 381
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->d:Lcom/android/common/ui/shutterbutton/d;

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d:Lcom/android/common/ui/shutterbutton/d;

    .line 382
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getGradienterAnimation()Lcom/android/common/ui/shutterbutton/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/e;->a(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 383
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    goto :goto_1

    .line 385
    :cond_7
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->i:Z

    if-eqz v0, :cond_8

    .line 386
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Landroid/graphics/Canvas;)V

    .line 387
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->j:Z

    if-nez v0, :cond_a

    .line 388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->w:Lcom/android/common/ui/shutterbutton/a;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/shutterbutton/a;->a(II)Landroid/graphics/Path;

    move-result-object v0

    .line 390
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 391
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 394
    :cond_8
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->m:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->n:Z

    if-eqz v0, :cond_9

    .line 395
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d:Lcom/android/common/ui/shutterbutton/d;

    .line 396
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getPressAnimation()Lcom/android/common/ui/shutterbutton/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/f;->a(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 397
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    goto :goto_1

    .line 400
    :cond_9
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d:Lcom/android/common/ui/shutterbutton/d;

    .line 401
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public setColor(Lcom/android/common/ui/shutterbutton/b;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->k:Lcom/android/common/ui/shutterbutton/b;

    if-eq v0, p1, :cond_1

    .line 148
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->k:Lcom/android/common/ui/shutterbutton/b;

    .line 149
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->d()V

    .line 150
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->v:Lcom/android/common/ui/shutterbutton/h;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/h;->a(Lcom/android/common/ui/shutterbutton/b;)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    :cond_1
    return-void
.end method

.method public setDegreeOfXY(F)V
    .locals 2

    .line 220
    iput p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->h:F

    .line 221
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->f:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getGradienterAnimation()Lcom/android/common/ui/shutterbutton/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/e;->a(F)V

    const-wide/16 v0, 0x0

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->g:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getCompassAnimation()Lcom/android/common/ui/shutterbutton/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/c;->a(F)V

    :cond_1
    return-void
.end method

.method public setFunction(Lcom/android/common/ui/shutterbutton/d;)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFunction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiFunctionImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 120
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->g:Z

    goto :goto_1

    .line 121
    :cond_1
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->d:Lcom/android/common/ui/shutterbutton/d;

    if-ne p1, v0, :cond_3

    .line 122
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->f:Z

    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->e:Lcom/android/common/ui/shutterbutton/d;

    :cond_3
    :goto_1
    const-wide/16 v0, 0x0

    .line 124
    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(J)V

    return-void
.end method

.method public setWaitBarColor(Lcom/android/common/ui/shutterbutton/b;)V
    .locals 1

    .line 335
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->l:Lcom/android/common/ui/shutterbutton/b;

    .line 336
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->q:Lcom/android/common/ui/shutterbutton/i;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/i;->a(Lcom/android/common/ui/shutterbutton/b;)V

    :cond_0
    return-void
.end method
