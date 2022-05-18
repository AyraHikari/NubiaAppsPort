.class public Landroid/support/v7/widget/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/s;


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field k:Landroid/view/Window$Callback;

.field l:Z

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .line 1
    sget v0, La/b/d/a/h;->a:I

    sget v1, La/b/d/a/e;->l:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/s0;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 3
    iput p4, p0, Landroid/support/v7/widget/s0;->m:I

    .line 4
    iput-object p1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    .line 5
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s0;->h:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s0;->i:Ljava/lang/CharSequence;

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/s0;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/s0;->g:Z

    .line 8
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s0;->f:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, La/b/d/a/j;->a:[I

    sget v2, La/b/d/a/a;->c:I

    invoke-static {p1, v0, v1, v2, p4}, Landroid/support/v7/widget/r0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/r0;

    move-result-object p1

    .line 10
    sget v0, La/b/d/a/j;->j:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s0;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_c

    .line 11
    sget p2, La/b/d/a/j;->p:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->n(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/s0;->n(Ljava/lang/CharSequence;)V

    .line 14
    :cond_1
    sget p2, La/b/d/a/j;->n:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->n(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/s0;->m(Ljava/lang/CharSequence;)V

    .line 17
    :cond_2
    sget p2, La/b/d/a/j;->l:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/s0;->i(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_3
    sget p2, La/b/d/a/j;->k:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/s0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_4
    iget-object p2, p0, Landroid/support/v7/widget/s0;->f:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Landroid/support/v7/widget/s0;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/s0;->l(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_5
    sget p2, La/b/d/a/j;->h:I

    invoke-virtual {p1, p2, p4}, Landroid/support/v7/widget/r0;->i(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/s0;->h(I)V

    .line 24
    sget p2, La/b/d/a/j;->g:I

    invoke-virtual {p1, p2, p4}, Landroid/support/v7/widget/r0;->l(II)I

    move-result p2

    if-eqz p2, :cond_6

    .line 25
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p2, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/s0;->f(Landroid/view/View;)V

    .line 26
    iget p2, p0, Landroid/support/v7/widget/s0;->b:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/s0;->h(I)V

    .line 27
    :cond_6
    sget p2, La/b/d/a/j;->i:I

    invoke-virtual {p1, p2, p4}, Landroid/support/v7/widget/r0;->k(II)I

    move-result p2

    if-lez p2, :cond_7

    .line 28
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 29
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    iget-object p2, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    :cond_7
    sget p2, La/b/d/a/j;->f:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/r0;->d(II)I

    move-result p2

    .line 32
    sget v1, La/b/d/a/j;->e:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/r0;->d(II)I

    move-result v0

    if-gez p2, :cond_8

    if-ltz v0, :cond_9

    .line 33
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 34
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 35
    invoke-virtual {v1, p2, v0}, Landroid/support/v7/widget/Toolbar;->B(II)V

    .line 36
    :cond_9
    sget p2, La/b/d/a/j;->q:I

    invoke-virtual {p1, p2, p4}, Landroid/support/v7/widget/r0;->l(II)I

    move-result p2

    if-eqz p2, :cond_a

    .line 37
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/Toolbar;->D(Landroid/content/Context;I)V

    .line 38
    :cond_a
    sget p2, La/b/d/a/j;->o:I

    invoke-virtual {p1, p2, p4}, Landroid/support/v7/widget/r0;->l(II)I

    move-result p2

    if-eqz p2, :cond_b

    .line 39
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/Toolbar;->C(Landroid/content/Context;I)V

    .line 40
    :cond_b
    sget p2, La/b/d/a/j;->m:I

    invoke-virtual {p1, p2, p4}, Landroid/support/v7/widget/r0;->l(II)I

    move-result p2

    if-eqz p2, :cond_d

    .line 41
    iget-object p4, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p4, p2}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_1

    .line 42
    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/s0;->d()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/s0;->b:I

    .line 43
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/r0;->t()V

    .line 44
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/s0;->g(I)V

    .line 45
    iget-object p1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/s0;->j:Ljava/lang/CharSequence;

    .line 46
    iget-object p1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    new-instance p2, Landroid/support/v7/widget/s0$a;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/s0$a;-><init>(Landroid/support/v7/widget/s0;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/s0;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    return v0
.end method

.method private o(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/s0;->h:Ljava/lang/CharSequence;

    .line 2
    iget v0, p0, Landroid/support/v7/widget/s0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/s0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/s0;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/s0;->m:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/s0;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/s0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/s0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/s0;->n:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/s0;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/s0;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s0;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s0;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/s0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/b/d/b/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s0;->i(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/s0;->g:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/s0;->o(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/s0;->k:Landroid/view/Window$Callback;

    return-void
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/s0;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/s0;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/s0;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    iget v0, p0, Landroid/support/v7/widget/s0;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/s0;->m:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/s0;->m:I

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Landroid/support/v7/widget/s0;->m:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s0;->j(I)V

    :cond_1
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/s0;->b:I

    xor-int/2addr v0, p1

    .line 2
    iput p1, p0, Landroid/support/v7/widget/s0;->b:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/support/v7/widget/s0;->p()V

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/s0;->q()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0}, Landroid/support/v7/widget/s0;->r()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/s0;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/s0;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Landroid/support/v7/widget/s0;->c:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/s0;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/s0;->r()V

    return-void
.end method

.method public j(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/s0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s0;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/s0;->j:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/s0;->p()V

    return-void
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/s0;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/s0;->q()V

    return-void
.end method

.method public m(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/s0;->i:Ljava/lang/CharSequence;

    .line 2
    iget v0, p0, Landroid/support/v7/widget/s0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/widget/s0;->g:Z

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/s0;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/s0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/b/d/b/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/support/v7/widget/s0;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-direct {p0}, Landroid/support/v7/widget/s0;->r()V

    return-void
.end method
