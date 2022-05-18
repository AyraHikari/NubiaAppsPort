.class public Lcn/nubia/camera/q/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/animation/ObjectAnimator;

.field protected b:Landroid/animation/ObjectAnimator;

.field private c:Lcn/nubia/camera/q/a;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/q/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/camera/q/a;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    .line 28
    iput-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    .line 34
    iput-object p1, p0, Lcn/nubia/camera/q/f;->c:Lcn/nubia/camera/q/a;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/q/f;->d:Ljava/util/ArrayList;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/q/f;->e:Ljava/util/ArrayList;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/q/f;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/f;)Landroid/view/View;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/camera/q/f;->d()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/f;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    .line 180
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/camera/q/f$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/f$1;-><init>(Lcn/nubia/camera/q/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private c()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/f;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    .line 216
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/camera/q/f$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/f$2;-><init>(Lcn/nubia/camera/q/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private d()Landroid/view/View;
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/q/f;->c:Lcn/nubia/camera/q/a;

    invoke-virtual {v0}, Lcn/nubia/camera/q/a;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 162
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_1

    .line 166
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(JJ)V
    .locals 2

    .line 241
    invoke-direct {p0}, Lcn/nubia/camera/q/f;->c()V

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 248
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 252
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 253
    iget-object p1, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public a(Lcn/nubia/camera/q/g;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/camera/q/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/q/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v6, p1

    .line 56
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/camera/q/f;->a(ZJJLjava/lang/String;)V

    return-void
.end method

.method public a(ZJJLjava/lang/String;)V
    .locals 7

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/q/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FragmentUIChangeHelper"

    if-nez v0, :cond_0

    const-string p1, "Current tag not call hide action, so can\'t hide the UIs use this tag"

    .line 78
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object p6, p0, Lcn/nubia/camera/q/f;->e:Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_1

    const-string p1, "Still left other hide tags, so can\'t show the UIs"

    .line 83
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_1
    iget-object p6, p0, Lcn/nubia/camera/q/f;->d:Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_2
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/nubia/camera/q/g;

    if-eqz v1, :cond_2

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 90
    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/q/g;->b(ZJJ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(JJ)V
    .locals 2

    .line 257
    invoke-direct {p0}, Lcn/nubia/camera/q/f;->b()V

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/f;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 264
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 268
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 269
    iget-object p1, p0, Lcn/nubia/camera/q/f;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public b(Lcn/nubia/camera/q/g;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/q/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v6, p1

    .line 65
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/camera/q/f;->b(ZJJLjava/lang/String;)V

    return-void
.end method

.method public b(ZJJLjava/lang/String;)V
    .locals 7

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/q/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/q/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    iget-object p6, p0, Lcn/nubia/camera/q/f;->d:Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_1
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/nubia/camera/q/g;

    if-eqz v1, :cond_1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 109
    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/q/g;->a(ZJJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/q/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FragmentUIChangeHelper"

    if-nez v0, :cond_0

    const-string p1, "Current tag not call disable action, so can\'t enable the UIs use this tag"

    .line 121
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/q/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Still left other disable tags, so can\'t enable the UIs"

    .line 126
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/f;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/g;

    if-eqz v0, :cond_2

    .line 132
    invoke-interface {v0}, Lcn/nubia/camera/q/g;->i()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/q/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/q/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/f;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/g;

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Lcn/nubia/camera/q/g;->j()V

    goto :goto_0

    :cond_2
    return-void
.end method
