.class public Lcom/zte/camera/ui/common/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/ui/common/b;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/widget/FrameLayout;

.field c:Lcom/zte/camera/ui/common/RotateLinearLayout;

.field d:Landroid/widget/TextView;

.field e:Landroid/os/Handler;

.field f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;IZI)V
    .locals 8

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/zte/camera/ui/common/a/a;->f:Z

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/zte/camera/ui/common/a/a;->g:I

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/zte/camera/ui/common/a/a;->h:I

    .line 51
    iput-boolean v0, p0, Lcom/zte/camera/ui/common/a/a;->i:Z

    const/high16 v0, 0x41000000    # 8.0f

    .line 52
    invoke-static {v0}, Lcom/zte/camera/d/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/common/a/a;->j:I

    .line 105
    new-instance v0, Lcom/zte/camera/ui/common/a/a$1;

    invoke-direct {v0, p0}, Lcom/zte/camera/ui/common/a/a$1;-><init>(Lcom/zte/camera/ui/common/a/a;)V

    iput-object v0, p0, Lcom/zte/camera/ui/common/a/a;->k:Ljava/lang/Runnable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 65
    invoke-direct/range {v1 .. v7}, Lcom/zte/camera/ui/common/a/a;->a(Landroid/app/Activity;IZILandroid/view/ViewGroup;I)V

    .line 66
    iget-object p1, p0, Lcom/zte/camera/ui/common/a/a;->d:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/app/Activity;IZILandroid/view/ViewGroup;I)V
    .locals 0

    .line 75
    iput-boolean p3, p0, Lcom/zte/camera/ui/common/a/a;->i:Z

    .line 76
    iput p4, p0, Lcom/zte/camera/ui/common/a/a;->h:I

    .line 77
    iput-object p5, p0, Lcom/zte/camera/ui/common/a/a;->a:Landroid/view/ViewGroup;

    if-nez p5, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/zte/camera/ui/common/a/a;->a:Landroid/view/ViewGroup;

    .line 81
    :cond_0
    iget-object p4, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    if-nez p4, :cond_2

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 84
    sget p3, Lcom/nubia/a/a$f;->c:I

    iget-object p4, p0, Lcom/zte/camera/ui/common/a/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 85
    sget p3, Lcom/nubia/a/a$e;->m:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zte/camera/ui/common/RotateLinearLayout;

    .line 86
    sget p3, Lcom/nubia/a/a$e;->j:I

    invoke-virtual {p1, p3}, Lcom/zte/camera/ui/common/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/zte/camera/ui/common/a/a;->b:Landroid/widget/FrameLayout;

    .line 87
    sget p3, Lcom/nubia/a/a$e;->m:I

    invoke-virtual {p1, p3}, Lcom/zte/camera/ui/common/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zte/camera/ui/common/RotateLinearLayout;

    iput-object p1, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    goto :goto_0

    .line 89
    :cond_1
    sget p3, Lcom/nubia/a/a$f;->d:I

    iget-object p4, p0, Lcom/zte/camera/ui/common/a/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 90
    sget p3, Lcom/nubia/a/a$e;->n:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zte/camera/ui/common/RotateLinearLayout;

    .line 91
    sget p3, Lcom/nubia/a/a$e;->j:I

    invoke-virtual {p1, p3}, Lcom/zte/camera/ui/common/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/zte/camera/ui/common/a/a;->b:Landroid/widget/FrameLayout;

    .line 92
    sget p3, Lcom/nubia/a/a$e;->n:I

    invoke-virtual {p1, p3}, Lcom/zte/camera/ui/common/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zte/camera/ui/common/RotateLinearLayout;

    iput-object p1, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    :cond_2
    :goto_0
    const/4 p1, -0x2

    .line 96
    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/a/a;->a(I)V

    .line 97
    iget-object p1, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    sget p3, Lcom/nubia/a/a$e;->i:I

    invoke-virtual {p1, p3}, Lcom/zte/camera/ui/common/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zte/camera/ui/common/a/a;->d:Landroid/widget/TextView;

    if-eqz p6, :cond_3

    .line 99
    iput p6, p0, Lcom/zte/camera/ui/common/a/a;->j:I

    :cond_3
    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p2, p1}, Lcom/zte/camera/ui/common/a/a;->a(IZ)V

    .line 102
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zte/camera/ui/common/a/a;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x12c

    .line 252
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v3, v4, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/a/a;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/a/a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/camera/ui/common/a/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateLinearLayout;->setVisibility(I)V

    .line 146
    iget v0, p0, Lcom/zte/camera/ui/common/a/a;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/zte/camera/ui/common/a/a;->a(IZ)V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/zte/camera/ui/common/a/a;->f:Z

    .line 148
    iget v1, p0, Lcom/zte/camera/ui/common/a/a;->h:I

    if-ne v1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/camera/ui/common/a/a;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    iget-object p1, p0, Lcom/zte/camera/ui/common/a/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 180
    rem-int/lit16 p1, p1, 0x168

    .line 181
    iget p2, p0, Lcom/zte/camera/ui/common/a/a;->g:I

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    if-nez p2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iput p1, p0, Lcom/zte/camera/ui/common/a/a;->g:I

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p2, p1, v0}, Lcom/zte/camera/ui/common/RotateLinearLayout;->a(IZ)V

    .line 187
    iget p1, p0, Lcom/zte/camera/ui/common/a/a;->g:I

    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/a/a;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 169
    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateLinearLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/camera/ui/common/a/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/zte/camera/ui/common/a/a;->f:Z

    .line 172
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    invoke-direct {p0, v0}, Lcom/zte/camera/ui/common/a/a;->a(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 8

    .line 195
    invoke-static {}, Lcom/zte/camera/d/e;->f()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/zte/camera/ui/common/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    const/16 v3, 0x31

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    const/16 v5, 0x5a

    const/16 v6, 0x13

    const/16 v7, 0x15

    if-eq p1, v5, :cond_4

    const/16 v5, 0xb4

    if-eq p1, v5, :cond_2

    const/16 v2, 0x10e

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-boolean p1, p0, Lcom/zte/camera/ui/common/a/a;->i:Z

    if-eqz p1, :cond_1

    .line 230
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 231
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 233
    :cond_1
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 234
    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 208
    :cond_2
    iget-boolean p1, p0, Lcom/zte/camera/ui/common/a/a;->i:Z

    if-eqz p1, :cond_3

    .line 209
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 210
    invoke-static {}, Lcom/zte/camera/d/e;->d()I

    move-result p1

    iget v0, p0, Lcom/zte/camera/ui/common/a/a;->j:I

    add-int/2addr p1, v0

    invoke-virtual {v1, v4, v4, v4, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 212
    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 213
    invoke-static {}, Lcom/zte/camera/d/e;->c()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {v1, v4, p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 218
    :cond_4
    iget-boolean p1, p0, Lcom/zte/camera/ui/common/a/a;->i:Z

    if-eqz p1, :cond_5

    .line 219
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 222
    :cond_5
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 199
    :cond_6
    iget-boolean p1, p0, Lcom/zte/camera/ui/common/a/a;->i:Z

    if-eqz p1, :cond_7

    .line 200
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    iget p1, p0, Lcom/zte/camera/ui/common/a/a;->j:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 203
    :cond_7
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 204
    invoke-static {}, Lcom/zte/camera/d/e;->c()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {v1, v4, p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 241
    :goto_0
    iget-object p1, p0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
