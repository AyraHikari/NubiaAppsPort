.class Lcn/nubia/video/player/PIPPlayer$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/PIPPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/SurfaceView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/SeekBar;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field final synthetic m:Lcn/nubia/video/player/PIPPlayer;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->k:Z

    .line 3
    new-instance v0, Lcn/nubia/video/player/PIPPlayer$f$f;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/PIPPlayer$f$f;-><init>(Lcn/nubia/video/player/PIPPlayer$f;)V

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->l:Ljava/lang/Runnable;

    const v0, 0x7f0c0053

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    const v1, 0x7f090141

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->b:Landroid/view/SurfaceView;

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/player/PIPPlayer$f$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/PIPPlayer$f$a;-><init>(Lcn/nubia/video/player/PIPPlayer$f;Lcn/nubia/video/player/PIPPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/player/PIPPlayer$f$b;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/PIPPlayer$f$b;-><init>(Lcn/nubia/video/player/PIPPlayer$f;Lcn/nubia/video/player/PIPPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->d:Landroid/view/View;

    const v1, 0x7f090030

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->e:Landroid/widget/ImageView;

    .line 11
    new-instance v1, Lcn/nubia/video/player/PIPPlayer$f$c;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/PIPPlayer$f$c;-><init>(Lcn/nubia/video/player/PIPPlayer$f;Lcn/nubia/video/player/PIPPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->f:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->i:Landroid/widget/SeekBar;

    .line 14
    new-instance v1, Lcn/nubia/video/player/PIPPlayer$f$d;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/PIPPlayer$f$d;-><init>(Lcn/nubia/video/player/PIPPlayer$f;Lcn/nubia/video/player/PIPPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 15
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->f:Landroid/view/View;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->g:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->f:Landroid/view/View;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->h:Landroid/widget/TextView;

    .line 17
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->j:Landroid/widget/ImageView;

    .line 18
    new-instance v1, Lcn/nubia/video/player/PIPPlayer$f$e;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/PIPPlayer$f$e;-><init>(Lcn/nubia/video/player/PIPPlayer$f;Lcn/nubia/video/player/PIPPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer$f;->j()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/SurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer$f;->b:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/video/player/PIPPlayer$f;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic d(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer$f;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/video/player/PIPPlayer$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer$f;->n()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/video/player/PIPPlayer$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer$f;->j()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer$f;->i:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer$f;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer$f;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->c(Lcn/nubia/video/player/PIPPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->k:Z

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->q(Lcn/nubia/video/player/PIPPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->c(Lcn/nubia/video/player/PIPPlayer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer$f;->n()V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/video/player/PIPPlayer$f;->k:Z

    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->q(Lcn/nubia/video/player/PIPPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->q(Lcn/nubia/video/player/PIPPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$f;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->q(Lcn/nubia/video/player/PIPPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->q(Lcn/nubia/video/player/PIPPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->p(Lcn/nubia/video/player/PIPPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer$f;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer$f;->l()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer$f;->j()V

    :goto_0
    return-void
.end method
