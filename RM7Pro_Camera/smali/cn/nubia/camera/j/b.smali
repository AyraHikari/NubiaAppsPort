.class public Lcn/nubia/camera/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcn/nubia/camera/j/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/j/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/nubia/camera/j/c;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/ViewGroup;

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcn/nubia/camera/j/b;->h:Z

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/j/b;->i:Z

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lcn/nubia/camera/j/b;->j:J

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/j/b;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/j/b;J)J
    .locals 0

    .line 27
    iput-wide p1, p0, Lcn/nubia/camera/j/b;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/j/b;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/j/b;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/j/b;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcn/nubia/camera/j/b;->j:J

    return-wide v0
.end method

.method static synthetic c(Lcn/nubia/camera/j/b;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/j/b;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/j/b;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->n()V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/j/b;)Lcn/nubia/camera/j/c;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/j/b;->e:Lcn/nubia/camera/j/c;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/j/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 140
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->g()V

    .line 142
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->k()J

    move-result-wide v0

    .line 144
    iget-object v2, p0, Lcn/nubia/camera/j/b;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/j/b;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0045

    const/4 v2, 0x0

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/j/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0900d2

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcn/nubia/camera/j/b;->g:Landroid/view/ViewGroup;

    const v1, 0x7f0900d3

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/j/b;->f:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/j/b;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->m()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/j/b;->c:Lcn/nubia/camera/j/a;

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v0, Lcn/nubia/camera/j/a;

    iget-object v1, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    invoke-direct {v0, v1}, Lcn/nubia/camera/j/a;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/j/b;->c:Lcn/nubia/camera/j/a;

    .line 166
    new-instance v1, Lcn/nubia/camera/j/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/j/b$1;-><init>(Lcn/nubia/camera/j/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a$b;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/j/b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/j/b;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private j()V
    .locals 0

    return-void
.end method

.method private k()J
    .locals 4

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    .line 227
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f01c4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_camera_delay_shoot_key"

    .line 226
    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 231
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private l()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcn/nubia/camera/j/b;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x320

    .line 265
    iget-object v1, p0, Lcn/nubia/camera/j/b;->f:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/j/b;->k:Landroid/animation/ObjectAnimator;

    .line 266
    new-instance v2, Lcn/nubia/camera/j/e;

    int-to-float v0, v0

    invoke-direct {v2, v0}, Lcn/nubia/camera/j/e;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/j/b;->k:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private m()V
    .locals 1

    .line 271
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->o()V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcn/nubia/camera/j/b;->k:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private n()V
    .locals 1

    .line 276
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->l()V

    .line 277
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->o()V

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/j/b;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private o()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/j/b;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcn/nubia/camera/j/b;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/j/b;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/j/b;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/j/b;->c:Lcn/nubia/camera/j/a;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcn/nubia/camera/j/a;->a()Z

    .line 110
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->m()V

    const-wide/16 v0, -0x1

    .line 111
    iput-wide v0, p0, Lcn/nubia/camera/j/b;->j:J

    return-void

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal call, please check if you have init the timershot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IIII)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/j/b;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr p3, p1

    .line 249
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr p4, p2

    .line 250
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 p2, 0x0

    .line 251
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 253
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 254
    iget-object p1, p0, Lcn/nubia/camera/j/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    .line 55
    iput-object p2, p0, Lcn/nubia/camera/j/b;->b:Landroid/view/ViewGroup;

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->g()V

    return-void
.end method

.method public a(Lcn/nubia/camera/j/c;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/j/b;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcn/nubia/camera/j/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/j/b;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/j/b;->e:Lcn/nubia/camera/j/c;

    .line 97
    iget-object p1, p0, Lcn/nubia/camera/j/b;->c:Lcn/nubia/camera/j/a;

    invoke-direct {p0}, Lcn/nubia/camera/j/b;->k()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/j/a;->a(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    :cond_2
    return-void

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal call, please check if you have init the timershot"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcn/nubia/camera/j/d;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/j/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/j/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/j/b;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelayShot"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-boolean p1, p0, Lcn/nubia/camera/j/b;->i:Z

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->f()V

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->h()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->i()V

    .line 80
    invoke-direct {p0}, Lcn/nubia/camera/j/b;->j()V

    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal call, please check if you have init the timershot"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcn/nubia/camera/j/d;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/j/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcn/nubia/camera/j/b;->h:Z

    return-void
.end method

.method public b()Z
    .locals 4

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/j/b;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 122
    iget-boolean v0, p0, Lcn/nubia/camera/j/b;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/j/b;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/j/b;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal call, please check if you have init the timershot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 4

    .line 130
    iget-boolean v0, p0, Lcn/nubia/camera/j/b;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/j/b;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/camera/j/b;->a(Z)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 6

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/j/b;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/j/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    .line 238
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    .line 239
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 240
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/j/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
