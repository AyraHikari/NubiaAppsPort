.class public Lcn/nubia/video/player/k;
.super Lcn/nubia/video/player/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/k$m;,
        Lcn/nubia/video/player/k$l;
    }
.end annotation


# instance fields
.field private o:Landroid/os/Handler;

.field private final p:Landroid/view/animation/Animation;

.field private q:I

.field private r:Lcn/nubia/video/player/k$m;

.field private s:Lcn/nubia/video/player/p;

.field private t:Lcn/nubia/video/player/c$d;

.field private u:Ljava/lang/Runnable;

.field private final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/video/player/c$d;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/q;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/nubia/video/player/k;->q:I

    .line 4
    new-instance v0, Lcn/nubia/video/player/k$c;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/k$c;-><init>(Lcn/nubia/video/player/k;)V

    iput-object v0, p0, Lcn/nubia/video/player/k;->u:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcn/nubia/video/player/k$d;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/k$d;-><init>(Lcn/nubia/video/player/k;)V

    iput-object v0, p0, Lcn/nubia/video/player/k;->v:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    .line 7
    new-instance v0, Lcn/nubia/video/player/k$m;

    invoke-direct {v0, p0, p2}, Lcn/nubia/video/player/k$m;-><init>(Lcn/nubia/video/player/k;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    .line 8
    new-instance p2, Lcn/nubia/video/player/p;

    invoke-direct {p2, p1}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/video/player/k;->s:Lcn/nubia/video/player/p;

    .line 9
    iput-object p3, p0, Lcn/nubia/video/player/k;->t:Lcn/nubia/video/player/c$d;

    .line 10
    iput-boolean p4, p0, Lcn/nubia/video/player/q;->n:Z

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    .line 12
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    const p2, 0x7f01001a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/k;->p:Landroid/view/animation/Animation;

    .line 13
    new-instance p2, Lcn/nubia/video/player/k$l;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcn/nubia/video/player/k$l;-><init>(Lcn/nubia/video/player/k;Lcn/nubia/video/player/k$c;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 14
    iget-boolean p1, p0, Lcn/nubia/video/player/q;->e:Z

    iget-boolean p2, p0, Lcn/nubia/video/player/q;->n:Z

    invoke-virtual {p0, p1, p2}, Lcn/nubia/video/player/q;->m(ZZ)V

    .line 15
    invoke-direct {p0}, Lcn/nubia/video/player/k;->z()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->e:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/video/player/q;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->h:Landroid/widget/ImageView;

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->h:Landroid/widget/ImageView;

    const v1, 0x7f0801a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/video/player/k;->n()V

    return-void
.end method

.method private B()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/nubia/video/player/k;->q:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->j:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    iput v0, p0, Lcn/nubia/video/player/k;->q:I

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->l:Landroid/widget/TextView;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/k;->q:I

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->k:Landroid/widget/TextView;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->j:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method private D(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private E(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/k;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcn/nubia/video/player/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/k;->B()V

    return-void
.end method

.method static synthetic q(Lcn/nubia/video/player/k;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/k;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/video/player/k;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/video/player/k;)Lcn/nubia/video/player/c$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/k;->t:Lcn/nubia/video/player/c$d;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/video/player/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/k;->A()V

    return-void
.end method

.method static synthetic u(Lcn/nubia/video/player/k;)Lcn/nubia/video/player/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/k;->s:Lcn/nubia/video/player/p;

    return-object p0
.end method

.method private y()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lcn/nubia/video/player/k;->D(I)V

    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->b:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/video/player/k$e;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$e;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->c:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/k$f;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$f;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->d:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/k$g;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$g;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->e:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/k$h;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$h;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->g:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/k$i;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$i;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->h:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/k$j;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$j;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->i:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/k$k;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$k;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->j:Landroid/widget/SeekBar;

    new-instance v1, Lcn/nubia/video/player/k$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$a;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->j:Landroid/widget/SeekBar;

    new-instance v1, Lcn/nubia/video/player/k$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/k$b;-><init>(Lcn/nubia/video/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->c:Landroid/widget/ImageView;

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p0}, Lcn/nubia/video/player/k;->o()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/k;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->c:Landroid/widget/ImageView;

    const v1, 0x7f080197

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public a()Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-static {v0}, Lb/a/b/d/e;->N(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-direct {p0, v1}, Lcn/nubia/video/player/k;->D(I)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
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

    invoke-direct {p0, v0}, Lcn/nubia/video/player/k;->E(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/k;->E(Landroid/view/View;)V

    .line 3
    invoke-super {p0}, Lcn/nubia/video/player/q;->i()V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-static {v0}, Lb/a/b/d/e;->P(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-boolean v1, p0, Lcn/nubia/video/player/q;->e:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p0}, Lcn/nubia/video/player/k;->y()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-direct {p0, v0}, Lcn/nubia/video/player/k;->D(I)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/video/player/k;->o()V

    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/k;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/k;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/k;->E(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/k;->E(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/k;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/k;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/k;->B()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/k;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/k;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/k;->v:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/nubia/video/player/k;->q:I

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v1, v1, Lcn/nubia/video/player/k$m;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/k;->r:Lcn/nubia/video/player/k$m;

    iget-object v0, v0, Lcn/nubia/video/player/k$m;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
