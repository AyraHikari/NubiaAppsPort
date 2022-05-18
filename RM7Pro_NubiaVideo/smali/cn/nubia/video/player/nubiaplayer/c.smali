.class public Lcn/nubia/video/player/nubiaplayer/c;
.super Lcn/nubia/video/player/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/nubiaplayer/c$p;,
        Lcn/nubia/video/player/nubiaplayer/c$o;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/lang/Runnable;

.field private final F:Ljava/lang/Runnable;

.field private o:Landroid/os/Handler;

.field private final p:Landroid/view/animation/Animation;

.field private q:I

.field private r:Lcn/nubia/video/player/nubiaplayer/c$p;

.field private s:Lcn/nubia/video/player/c$c;

.field private t:Lcn/nubia/video/player/p;

.field private u:Lcn/nubia/video/player/nubiaplayer/d;

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/view/View;Lcn/nubia/video/player/c$c;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/q;-><init>()V

    .line 2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->v:I

    .line 5
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->w:I

    .line 6
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->x:I

    .line 7
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->y:Z

    .line 8
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->z:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->A:Z

    .line 10
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->B:Z

    .line 11
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->D:Z

    .line 12
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/c$d;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/c$d;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->E:Ljava/lang/Runnable;

    .line 13
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/c$e;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/c$e;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->F:Ljava/lang/Runnable;

    .line 14
    iput-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    .line 15
    iput-object p4, p0, Lcn/nubia/video/player/nubiaplayer/c;->s:Lcn/nubia/video/player/c$c;

    .line 16
    iput-boolean p5, p0, Lcn/nubia/video/player/q;->n:Z

    .line 17
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/c$p;

    invoke-direct {p2, p0, p3}, Lcn/nubia/video/player/nubiaplayer/c$p;-><init>(Lcn/nubia/video/player/nubiaplayer/c;Landroid/view/View;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    .line 18
    new-instance p2, Lcn/nubia/video/player/p;

    invoke-direct {p2, p1}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c;->t:Lcn/nubia/video/player/p;

    .line 19
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    const p2, 0x7f01001a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->p:Landroid/view/animation/Animation;

    .line 20
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/c$o;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcn/nubia/video/player/nubiaplayer/c$o;-><init>(Lcn/nubia/video/player/nubiaplayer/c;Lcn/nubia/video/player/nubiaplayer/c$f;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 21
    iget-boolean p1, p0, Lcn/nubia/video/player/q;->e:Z

    iget-boolean p2, p0, Lcn/nubia/video/player/q;->n:Z

    invoke-virtual {p0, p1, p2}, Lcn/nubia/video/player/q;->m(ZZ)V

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->G0()V

    return-void
.end method

.method static synthetic A(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic B(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private B0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-boolean v1, p0, Lcn/nubia/video/player/q;->e:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->F0()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->N0(I)V

    .line 7
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->z:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->R0(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic C(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->H0()V

    return-void
.end method

.method static synthetic E(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic F(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private F0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->N0(I)V

    return-void
.end method

.method static synthetic G(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->k:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$f;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$f;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->l:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$g;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$g;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->b:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$h;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$h;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->c:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$i;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$i;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->p:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$j;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$j;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->q:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$k;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$k;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->h:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$l;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$l;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->i:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$m;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$m;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->j:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$n;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$n;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$a;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$b;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setListener(Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;)V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/c$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/c$c;-><init>(Lcn/nubia/video/player/nubiaplayer/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setListener(Lcn/nubia/video/player/nubiaplayer/SliderBar$b;)V

    return-void
.end method

.method static synthetic H(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private H0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->e:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/video/player/q;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->l:Landroid/widget/ImageView;

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->l:Landroid/widget/ImageView;

    const v1, 0x7f0801a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/c;->n()V

    return-void
.end method

.method static synthetic I(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private I0()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setMax(I)V

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->K0()V

    .line 6
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->u:Lcn/nubia/video/player/nubiaplayer/d;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/d;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->u:Lcn/nubia/video/player/nubiaplayer/d;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v2, v2, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v3, v3, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/video/player/nubiaplayer/d;->c(III)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setProgress(I)V

    return-void
.end method

.method static synthetic J(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->B0()V

    return-void
.end method

.method private J0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic K(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private K0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getPlaySpeedChangeStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->v:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->v:I

    .line 5
    :goto_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->w:I

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getPlaySpeedChangeEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->w:I

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->w:I

    .line 8
    :goto_1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->v:I

    if-ltz v0, :cond_2

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->w:I

    if-ltz v1, :cond_2

    .line 9
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->v:I

    .line 10
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->w:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->w:I

    .line 11
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/c;->v:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u(III)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    div-int/lit8 v2, v1, 0x4

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u(III)V

    .line 13
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->v:I

    .line 14
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->w:I

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic L(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic M(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private M0(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->A:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic N(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private N0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic O(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->t:Lcn/nubia/video/player/p;

    return-object p0
.end method

.method static synthetic P(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private P0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic Q(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->I0()V

    return-void
.end method

.method static synthetic R(Lcn/nubia/video/player/nubiaplayer/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->D:Z

    return p0
.end method

.method static synthetic S(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic T(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic U(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic V(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic W(Lcn/nubia/video/player/nubiaplayer/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic X(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic Y(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Z(Lcn/nubia/video/player/nubiaplayer/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/q;->e:Z

    return p0
.end method

.method static synthetic a0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c0(Lcn/nubia/video/player/nubiaplayer/c;Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p1
.end method

.method static synthetic d0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic h0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/q;->j:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic j0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k0(Lcn/nubia/video/player/nubiaplayer/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/q;->e:Z

    return p0
.end method

.method static synthetic l0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/q;->k:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic m0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic n0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic o0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/q;->h:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic p(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->s:Lcn/nubia/video/player/c$c;

    return-object p0
.end method

.method static synthetic p0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    return-object p0
.end method

.method static synthetic q0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic r(Lcn/nubia/video/player/nubiaplayer/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->y:Z

    return p0
.end method

.method static synthetic r0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/video/player/nubiaplayer/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->y:Z

    return p1
.end method

.method static synthetic s0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/video/player/nubiaplayer/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    return p0
.end method

.method static synthetic t0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/video/player/nubiaplayer/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->z:Z

    return p0
.end method

.method static synthetic u0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/video/player/nubiaplayer/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->z:Z

    return p1
.end method

.method static synthetic v0(Lcn/nubia/video/player/nubiaplayer/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/q;->n:Z

    return p0
.end method

.method static synthetic w(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic w0(Lcn/nubia/video/player/nubiaplayer/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->A:Z

    return p1
.end method

.method static synthetic x(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->K0()V

    return-void
.end method

.method static synthetic x0(Lcn/nubia/video/player/nubiaplayer/c;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/nubia/video/player/q;->m(ZZ)V

    return-void
.end method

.method static synthetic y(Lcn/nubia/video/player/nubiaplayer/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->x:I

    return p0
.end method

.method static synthetic y0(Lcn/nubia/video/player/nubiaplayer/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/nubiaplayer/c;->B:Z

    return p0
.end method

.method static synthetic z(Lcn/nubia/video/player/nubiaplayer/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->x:I

    return p1
.end method

.method static synthetic z0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public A0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->y:Z

    return v0
.end method

.method public C0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->P0(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->P0(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public D0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->I0()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->F:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public E0()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->q:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->u:Lcn/nubia/video/player/nubiaplayer/d;

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/c;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->u:Lcn/nubia/video/player/nubiaplayer/d;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcn/nubia/video/player/nubiaplayer/d;

    iget-object v4, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcn/nubia/video/player/nubiaplayer/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->u:Lcn/nubia/video/player/nubiaplayer/d;

    .line 8
    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->u:Lcn/nubia/video/player/nubiaplayer/d;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/d;->a()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 9
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->J0(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, v2}, Lcn/nubia/video/player/nubiaplayer/c;->J0(I)V

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v1}, Lcn/nubia/video/player/PlayerActivity;->n()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/b/d/e;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->C:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    :cond_2
    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->C:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setMediaPath(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->C:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "/"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRIM_"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iput-boolean v3, p0, Lcn/nubia/video/player/nubiaplayer/c;->D:Z

    :cond_3
    return-void
.end method

.method public L0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public O0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->B:Z

    const/16 p1, 0x8

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->B:Z

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Q0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->h:Landroid/widget/ImageView;

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/c;->o()V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setClipIsPlay(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/c;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->h:Landroid/widget/ImageView;

    const v2, 0x7f080197

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setClipIsPlay(Z)V

    :goto_0
    return-void
.end method

.method protected R0(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->o:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0, v1}, Lcn/nubia/video/player/nubiaplayer/c;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->n:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->M0(I)V

    :goto_0
    return-void
.end method

.method public a()Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/c$p;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method protected c()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipRightTime()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method protected d()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-static {v0}, Lb/a/b/d/e;->N(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-direct {p0, v1}, Lcn/nubia/video/player/nubiaplayer/c;->N0(I)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->e:Z

    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->P0(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/c;->P0(Landroid/view/View;)V

    .line 3
    invoke-super {p0}, Lcn/nubia/video/player/q;->i()V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->r:Lcn/nubia/video/player/nubiaplayer/c$p;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-static {v0}, Lb/a/b/d/e;->P(Landroid/app/Activity;)V

    .line 6
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/c;->B0()V

    .line 7
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/c;->o()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c;->E:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
