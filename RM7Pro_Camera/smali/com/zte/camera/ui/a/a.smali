.class Lcom/zte/camera/ui/a/a;
.super Lcom/zte/camera/ui/a/c;
.source "SourceFile"


# instance fields
.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/a/c;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 35
    sget p1, Lcom/nubia/a/a$f;->b:I

    iput p1, p0, Lcom/zte/camera/ui/a/a;->c:I

    .line 36
    invoke-virtual {p0}, Lcom/zte/camera/ui/a/a;->a()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/zte/camera/ui/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/zte/camera/ui/a/a;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nubia/a/a$c;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 84
    iget-object v1, p0, Lcom/zte/camera/ui/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nubia/a/a$c;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 85
    iget-object v2, p0, Lcom/zte/camera/ui/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nubia/a/a$c;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/camera/ui/a/a;->n:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 87
    iget-object v3, p0, Lcom/zte/camera/ui/a/a;->i:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    int-to-float v0, v0

    .line 91
    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 96
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    int-to-float v0, v1

    .line 97
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 102
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 103
    iget p2, p0, Lcom/zte/camera/ui/a/a;->n:I

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    new-instance p2, Lcom/zte/camera/ui/a/-$$Lambda$a$K62wzrOaLhy_zzJmF0uZIVw7Bkc;

    invoke-direct {p2, p0, p4}, Lcom/zte/camera/ui/a/-$$Lambda$a$K62wzrOaLhy_zzJmF0uZIVw7Bkc;-><init>(Lcom/zte/camera/ui/a/a;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->h:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/camera/ui/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    if-eqz p5, :cond_0

    .line 122
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 123
    iget p2, p0, Lcom/zte/camera/ui/a/a;->n:I

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->l:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->l:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->l:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/zte/camera/ui/a/a;->l:Landroid/widget/TextView;

    new-instance p2, Lcom/zte/camera/ui/a/-$$Lambda$a$8jiBZGVI9xKfRxp-krOz8AhZ5X0;

    invoke-direct {p2, p0, p6}, Lcom/zte/camera/ui/a/-$$Lambda$a$8jiBZGVI9xKfRxp-krOz8AhZ5X0;-><init>(Lcom/zte/camera/ui/a/a;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/zte/camera/ui/a/a;->c()V

    return-void
.end method

.method public static synthetic lambda$8jiBZGVI9xKfRxp-krOz8AhZ5X0(Lcom/zte/camera/ui/a/a;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/a/a;->a(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$K62wzrOaLhy_zzJmF0uZIVw7Bkc(Lcom/zte/camera/ui/a/a;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/a/a;->b(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/zte/camera/ui/a/c;->a()V

    .line 62
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->d:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->q:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/a/a;->f:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->d:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/camera/ui/a/a;->i:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->d:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/a/a;->g:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->d:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/camera/ui/a/a;->j:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->d:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/a/a;->h:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->d:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->d:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/camera/ui/a/a;->l:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/zte/camera/ui/a/a;->m:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nubia/a/a$i;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 76
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nubia/a/a$i;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 77
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nubia/a/a$i;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    iget-object v0, p0, Lcom/zte/camera/ui/a/a;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/camera/ui/a/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nubia/a/a$i;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Lcom/zte/camera/ui/a/c;->a(IZ)V

    return-void
.end method
