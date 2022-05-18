.class public Lcn/nubia/video/commonui/app/f;
.super Lcn/nubia/video/commonui/app/b;
.source "SourceFile"


# instance fields
.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/text/NumberFormat;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Ljava/lang/CharSequence;

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/commonui/app/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/nubia/video/commonui/app/f;->i:I

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/commonui/app/b;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcn/nubia/video/commonui/app/f;->i:I

    .line 6
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->s()V

    return-void
.end method

.method static synthetic l(Lcn/nubia/video/commonui/app/f;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/video/commonui/app/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/f;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/video/commonui/app/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/f;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/video/commonui/app/f;)Ljava/text/NumberFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/f;->m:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/video/commonui/app/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/f;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private s()V
    .locals 2

    const-string v0, "%1d/%2d"

    .line 1
    iput-object v0, p0, Lcn/nubia/video/commonui/app/f;->k:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/commonui/app/f;->m:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->x:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/commonui/app/f;->i:I

    return-void
.end method

.method public B(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->t()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcn/nubia/video/commonui/app/f;->p:I

    :goto_0
    return-void
.end method

.method public j(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-super {p0, p1}, Lcn/nubia/video/commonui/app/b;->j(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/f;->u:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget v1, p0, Lcn/nubia/video/commonui/app/f;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    new-instance v1, Lcn/nubia/video/commonui/app/f$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/commonui/app/f$a;-><init>(Lcn/nubia/video/commonui/app/f;)V

    iput-object v1, p0, Lcn/nubia/video/commonui/app/f;->x:Landroid/os/Handler;

    .line 4
    sget v1, Lb/a/b/a/f;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    sget v1, Lb/a/b/a/e;->C:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    .line 6
    sget v1, Lb/a/b/a/e;->D:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/video/commonui/app/f;->j:Landroid/widget/TextView;

    .line 7
    sget v1, Lb/a/b/a/e;->E:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/video/commonui/app/f;->l:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/b;->k(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_0
    sget v1, Lb/a/b/a/f;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 10
    sget v1, Lb/a/b/a/e;->C:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    .line 11
    sget v1, Lb/a/b/a/e;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/video/commonui/app/f;->h:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/b;->k(Landroid/view/View;)V

    .line 13
    :goto_0
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->n:I

    if-lez v0, :cond_1

    .line 14
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->w(I)V

    .line 15
    :cond_1
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->o:I

    if-lez v0, :cond_2

    .line 16
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->x(I)V

    .line 17
    :cond_2
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->p:I

    if-lez v0, :cond_3

    .line 18
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->B(I)V

    .line 19
    :cond_3
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->q:I

    if-lez v0, :cond_4

    .line 20
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->q(I)V

    .line 21
    :cond_4
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->r:I

    if-lez v0, :cond_5

    .line 22
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->r(I)V

    .line 23
    :cond_5
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->y(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_6
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->v(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_7
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->u:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->j(Ljava/lang/CharSequence;)V

    .line 29
    :cond_8
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/f;->v:Z

    invoke-virtual {p0, v0}, Lcn/nubia/video/commonui/app/f;->u(Z)V

    .line 30
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->t()V

    .line 31
    invoke-super {p0, p1}, Lcn/nubia/video/commonui/app/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/f;->w:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/f;->w:Z

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->t()V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/commonui/app/f;->q:I

    :goto_0
    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->t()V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcn/nubia/video/commonui/app/f;->r:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/commonui/app/f;->r:I

    :goto_0
    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/f;->v:Z

    :goto_0
    return-void
.end method

.method public v(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/nubia/video/commonui/app/f;->t:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public w(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->t()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcn/nubia/video/commonui/app/f;->n:I

    :goto_0
    return-void
.end method

.method public x(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/f;->w:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->t()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcn/nubia/video/commonui/app/f;->o:I

    :goto_0
    return-void
.end method

.method public y(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/nubia/video/commonui/app/f;->s:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/f;->k:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/f;->t()V

    return-void
.end method
