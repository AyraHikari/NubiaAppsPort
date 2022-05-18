.class abstract Lcom/zte/camera/ui/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/ui/common/b;


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Landroid/view/View;

.field c:I

.field d:Landroid/view/View;

.field e:Lcom/zte/camera/ui/common/RotateLayout;

.field private final f:I

.field private g:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 39
    iput v0, p0, Lcom/zte/camera/ui/a/c;->f:I

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/zte/camera/ui/a/c;->g:Z

    .line 48
    iput-object p1, p0, Lcom/zte/camera/ui/a/c;->a:Landroid/app/Activity;

    .line 49
    sget p1, Lcom/nubia/a/a$f;->b:I

    iput p1, p0, Lcom/zte/camera/ui/a/c;->c:I

    .line 50
    iput-object p2, p0, Lcom/zte/camera/ui/a/c;->b:Landroid/view/View;

    return-void
.end method

.method private a(I)V
    .locals 7

    .line 85
    invoke-static {}, Lcom/zte/camera/d/e;->e()I

    move-result v0

    const/high16 v1, 0x43d50000    # 426.0f

    .line 86
    invoke-static {v1}, Lcom/zte/camera/d/e;->a(F)I

    move-result v1

    .line 87
    iget-object v2, p0, Lcom/zte/camera/ui/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/zte/camera/ui/a/c;->e:Lcom/zte/camera/ui/common/RotateLayout;

    invoke-virtual {v3}, Lcom/zte/camera/ui/common/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    iget-object v4, p0, Lcom/zte/camera/ui/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nubia/a/a$c;->c:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 90
    iget-object v5, p0, Lcom/zte/camera/ui/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nubia/a/a$c;->b:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/16 v6, 0x5a

    if-ne p1, v6, :cond_0

    const p1, 0x800015

    .line 92
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sub-int/2addr v0, v1

    .line 93
    div-int/lit8 v0, v0, 0x2

    .line 94
    invoke-virtual {v3, v5, v0, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    const/16 v6, 0x10e

    if-ne p1, v6, :cond_1

    const p1, 0x800013

    .line 96
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sub-int/2addr v0, v1

    .line 97
    div-int/lit8 v0, v0, 0x2

    .line 98
    invoke-virtual {v3, v4, v0, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    const/16 p1, 0x31

    .line 100
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {v3, v5, p1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x51

    .line 103
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/zte/camera/ui/a/c;->e:Lcom/zte/camera/ui/common/RotateLayout;

    invoke-virtual {p1, v3}, Lcom/zte/camera/ui/common/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 131
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/zte/camera/ui/a/c;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/zte/camera/ui/a/c;->f()V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 139
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    new-instance v1, Lcom/zte/camera/ui/a/c$1;

    invoke-direct {v1, p0, p1}, Lcom/zte/camera/ui/a/c$1;-><init>(Lcom/zte/camera/ui/a/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private f()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 164
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    .line 168
    iput-object v0, p0, Lcom/zte/camera/ui/a/c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/zte/camera/ui/a/c;->b:Landroid/view/View;

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/zte/camera/ui/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 58
    sget v2, Lcom/nubia/a/a$f;->a:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    sget v1, Lcom/nubia/a/a$f;->a:I

    iget-object v2, p0, Lcom/zte/camera/ui/a/c;->b:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    :goto_0
    sget v1, Lcom/nubia/a/a$e;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    const/16 v1, 0x8

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateLayout;

    iput-object v0, p0, Lcom/zte/camera/ui/a/c;->e:Lcom/zte/camera/ui/common/RotateLayout;

    .line 66
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/zte/camera/ui/a/c;->c:I

    iget-object v2, p0, Lcom/zte/camera/ui/a/c;->e:Lcom/zte/camera/ui/common/RotateLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/zte/camera/ui/a/c;->e:Lcom/zte/camera/ui/common/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/zte/camera/ui/common/RotateLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->e:Lcom/zte/camera/ui/common/RotateLayout;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/zte/camera/ui/a/c;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/zte/camera/ui/common/RotateLayout;->a(IZ)V

    .line 81
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/a/c;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b()V
    .locals 2

    .line 110
    invoke-static {}, Lcom/zte/camera/d/a/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/camera/ui/a/c;->a(IZ)V

    .line 112
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/camera/ui/a/c;->e()I

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/zte/camera/ui/a/c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/camera/ui/a/c;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/zte/camera/ui/a/c;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/camera/ui/a/c;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/zte/camera/ui/a/c;->f()V

    :cond_0
    return-void
.end method

.method protected e()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/zte/camera/ui/a/c;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x8

    return v0
.end method
