.class public Lcn/nubia/camera/aimoon/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/camera/q/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aimoon/k$b;,
        Lcn/nubia/camera/aimoon/k$a;
    }
.end annotation


# static fields
.field public static c:I = 0x7d0


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/RelativeLayout;

.field private final d:Lcn/nubia/camera/ad/a;

.field private final e:Landroid/view/ViewGroup;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:Landroid/os/Handler;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/android/common/ui/RotateImageView;

.field private p:Landroid/widget/VideoView;

.field private q:Landroid/widget/VideoView;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/animation/AnimatorSet;

.field private v:Landroid/animation/AnimatorSet;

.field private w:Lcn/nubia/camera/aimoon/k$a;

.field private x:Lcn/nubia/camera/aimoon/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f08014c

    .line 39
    iput v0, p0, Lcn/nubia/camera/aimoon/k;->f:I

    const v0, 0x7f08014e

    .line 40
    iput v0, p0, Lcn/nubia/camera/aimoon/k;->g:I

    const v0, 0x7f08014b

    .line 41
    iput v0, p0, Lcn/nubia/camera/aimoon/k;->h:I

    const v0, 0x7f08014d

    .line 42
    iput v0, p0, Lcn/nubia/camera/aimoon/k;->i:I

    const v0, 0x7f0f0258

    .line 43
    iput v0, p0, Lcn/nubia/camera/aimoon/k;->j:I

    const v0, 0x7f0f0259

    .line 44
    iput v0, p0, Lcn/nubia/camera/aimoon/k;->k:I

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->r:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->s:Z

    .line 55
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->t:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    .line 86
    iput-object p2, p0, Lcn/nubia/camera/aimoon/k;->e:Landroid/view/ViewGroup;

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/aimoon/k;->l:Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->e()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/k;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method private a(J)Z
    .locals 3

    .line 295
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->r:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->s:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    new-instance v0, Lcn/nubia/camera/aimoon/k$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/k$2;-><init>(Lcn/nubia/camera/aimoon/k;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 313
    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/k;J)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aimoon/k;->a(J)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/k;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/k;->s:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/aimoon/k;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_moon_type_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->n()V

    .line 394
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k;->x:Lcn/nubia/camera/aimoon/k$b;

    if-eqz p1, :cond_0

    .line 395
    invoke-interface {p1}, Lcn/nubia/camera/aimoon/k$b;->a()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aimoon/k;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/k;->r:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/aimoon/k;)Landroid/widget/VideoView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    return-object p0
.end method

.method private c(I)V
    .locals 0

    .line 421
    sput p1, Lcn/nubia/camera/aimoon/k;->c:I

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/aimoon/k;)Landroid/widget/VideoView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/aimoon/k;)Lcn/nubia/camera/aimoon/k$a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/aimoon/k;->w:Lcn/nubia/camera/aimoon/k$a;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006b

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->a:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->b:Landroid/widget/RelativeLayout;

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const v2, 0x7f090202

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0258

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0f0259

    .line 108
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 117
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->n()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/aimoon/k;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/camera/aimoon/k;->t:Z

    return p0
.end method

.method private g()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/aimoon/k;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->m()V

    return-void
.end method

.method private h()V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->r:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->m()V

    .line 232
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->k()V

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/aimoon/k;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->l()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/aimoon/k;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private k()V
    .locals 7

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->u:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->u:Landroid/animation/AnimatorSet;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    .line 244
    iget-object v2, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v1, 0x1

    const/4 v6, 0x0

    aput v6, v5, v1

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 245
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    iget-object v5, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 249
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->u:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/camera/aimoon/k$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/k$1;-><init>(Lcn/nubia/camera/aimoon/k;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private l()V
    .locals 8

    .line 321
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    .line 328
    iget-object v2, p0, Lcn/nubia/camera/aimoon/k;->n:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 329
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    .line 330
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 332
    iget-object v5, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 333
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 334
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 336
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/camera/aimoon/k$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/k$3;-><init>(Lcn/nubia/camera/aimoon/k;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private m()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->u:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 383
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 384
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 387
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    return-void
.end method

.method private n()V
    .locals 6

    .line 400
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v0

    const v1, 0x7f08014d

    const v2, 0x7f08014b

    const v3, 0x7f0801f1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    const v5, 0x7f08014c

    invoke-virtual {v0, v5}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 402
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 403
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    iget-object v3, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->o:Lcom/android/common/ui/RotateImageView;

    const v5, 0x7f08014e

    invoke-virtual {v0, v5}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 412
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    iget-object v3, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->t:Z

    .line 122
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->r:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->f()V

    .line 124
    sget v0, Lcn/nubia/camera/aimoon/k;->c:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/aimoon/k;->a(J)Z

    const/16 v0, 0x7d0

    .line 125
    invoke-direct {p0, v0}, Lcn/nubia/camera/aimoon/k;->c(I)V

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->g()V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k;->l:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_0
    sget p1, Lcn/nubia/camera/aimoon/k;->c:I

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/aimoon/k;->a(J)Z

    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/aimoon/k$a;)V
    .locals 1

    .line 206
    iput-object p1, p0, Lcn/nubia/camera/aimoon/k;->w:Lcn/nubia/camera/aimoon/k$a;

    .line 207
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->r:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {p1}, Lcn/nubia/camera/aimoon/k$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/aimoon/k$b;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcn/nubia/camera/aimoon/k;->x:Lcn/nubia/camera/aimoon/k$b;

    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->t:Z

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->r:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->p:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 140
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->m()V

    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k;->m:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 144
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/aimoon/k;->a(J)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/k;->r:Z

    return v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 173
    :sswitch_0
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    .line 174
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->m()V

    .line 175
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k;->l:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    invoke-direct {p0, v3}, Lcn/nubia/camera/aimoon/k;->b(I)V

    .line 178
    :cond_1
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/aimoon/k;->a(J)Z

    goto :goto_0

    .line 165
    :sswitch_1
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->m()V

    .line 167
    iget-object p1, p0, Lcn/nubia/camera/aimoon/k;->l:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 168
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/k;->b(I)V

    .line 170
    :cond_2
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/aimoon/k;->a(J)Z

    goto :goto_0

    .line 162
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/k;->h()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09016f -> :sswitch_2
        0x7f0901fc -> :sswitch_1
        0x7f0901fd -> :sswitch_0
    .end sparse-switch
.end method
