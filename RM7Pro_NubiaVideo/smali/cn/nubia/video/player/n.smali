.class public Lcn/nubia/video/player/n;
.super Lcn/nubia/video/player/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/n$h;,
        Lcn/nubia/video/player/n$g;
    }
.end annotation


# instance fields
.field private o:Landroid/os/Handler;

.field private final p:Landroid/view/animation/Animation;

.field private q:I

.field private r:Lcn/nubia/video/player/n$h;

.field private s:Lcn/nubia/video/player/c$e;

.field private t:Ljava/lang/Runnable;

.field private final u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/video/player/c$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/q;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/nubia/video/player/n;->q:I

    .line 4
    new-instance v0, Lcn/nubia/video/player/n$e;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/n$e;-><init>(Lcn/nubia/video/player/n;)V

    iput-object v0, p0, Lcn/nubia/video/player/n;->t:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcn/nubia/video/player/n$f;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/n$f;-><init>(Lcn/nubia/video/player/n;)V

    iput-object v0, p0, Lcn/nubia/video/player/n;->u:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    .line 7
    iput-object p3, p0, Lcn/nubia/video/player/n;->s:Lcn/nubia/video/player/c$e;

    .line 8
    new-instance p1, Lcn/nubia/video/player/n$h;

    invoke-direct {p1, p0, p2}, Lcn/nubia/video/player/n$h;-><init>(Lcn/nubia/video/player/n;Landroid/view/View;)V

    iput-object p1, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    const p2, 0x7f01001a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/n;->p:Landroid/view/animation/Animation;

    .line 11
    new-instance p2, Lcn/nubia/video/player/n$g;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcn/nubia/video/player/n$g;-><init>(Lcn/nubia/video/player/n;Lcn/nubia/video/player/n$a;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 12
    invoke-direct {p0}, Lcn/nubia/video/player/n;->v()V

    return-void
.end method

.method static synthetic p(Lcn/nubia/video/player/n;)Lcn/nubia/video/player/c$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/n;->s:Lcn/nubia/video/player/c$e;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/video/player/n;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/n;->u:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/video/player/n;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    return-object p0
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->b:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/video/player/n$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/n$a;-><init>(Lcn/nubia/video/player/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->c:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/video/player/n$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/n$b;-><init>(Lcn/nubia/video/player/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->e:Landroid/widget/SeekBar;

    new-instance v1, Lcn/nubia/video/player/n$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/n$c;-><init>(Lcn/nubia/video/player/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->e:Landroid/widget/SeekBar;

    new-instance v1, Lcn/nubia/video/player/n$d;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/n$d;-><init>(Lcn/nubia/video/player/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private z(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/n;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->c:Landroid/widget/ImageView;

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p0}, Lcn/nubia/video/player/n;->o()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/n;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->c:Landroid/widget/ImageView;

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
    iget-object v1, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v1, v1, Lcn/nubia/video/player/n$h;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v1, v1, Lcn/nubia/video/player/n$h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0}, Lcn/nubia/video/player/n;->y(I)V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-static {v0}, Lb/a/b/d/e;->N(Landroid/app/Activity;)V

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

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/n;->z(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/n;->z(Landroid/view/View;)V

    .line 3
    invoke-super {p0}, Lcn/nubia/video/player/q;->i()V

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-direct {p0, v0}, Lcn/nubia/video/player/n;->y(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-static {v0}, Lb/a/b/d/e;->P(Landroid/app/Activity;)V

    .line 6
    invoke-virtual {p0}, Lcn/nubia/video/player/n;->o()V

    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/n;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/n;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/n;->z(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/n;->z(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/n;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/n;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/player/n;->w()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/n;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/n;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public w()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/nubia/video/player/n;->q:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v1, v1, Lcn/nubia/video/player/n$h;->e:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    iput v0, p0, Lcn/nubia/video/player/n;->q:I

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v1, v1, Lcn/nubia/video/player/n$h;->g:Landroid/widget/TextView;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/n;->q:I

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v1, v1, Lcn/nubia/video/player/n$h;->f:Landroid/widget/TextView;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v1, v1, Lcn/nubia/video/player/n$h;->e:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/n;->r:Lcn/nubia/video/player/n$h;

    iget-object v0, v0, Lcn/nubia/video/player/n$h;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
