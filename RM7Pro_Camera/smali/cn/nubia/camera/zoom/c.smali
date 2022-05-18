.class public Lcn/nubia/camera/zoom/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/zoom/a;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/zoom/d;

.field private d:F

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/zoom/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/nubia/camera/zoom/arc/a;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/view/View;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    .line 245
    new-instance v0, Lcn/nubia/camera/zoom/c$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/zoom/c$4;-><init>(Lcn/nubia/camera/zoom/c;)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/c;->g:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcn/nubia/camera/zoom/e;->a()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/zoom/c;->e:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    .line 39
    new-instance v0, Lcn/nubia/camera/zoom/d;

    invoke-direct {v0, p1}, Lcn/nubia/camera/zoom/d;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    .line 40
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->f()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 41
    iput v1, p0, Lcn/nubia/camera/zoom/c;->d:F

    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x40800000    # 4.0f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->f()F

    move-result p1

    :goto_0
    iput p1, p0, Lcn/nubia/camera/zoom/c;->d:F

    .line 45
    :goto_1
    invoke-direct {p0}, Lcn/nubia/camera/zoom/c;->l()V

    .line 46
    invoke-direct {p0, p2}, Lcn/nubia/camera/zoom/c;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/c;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/camera/zoom/c;->d:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/zoom/arc/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 12

    .line 174
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v0, v1

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 177
    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    const/4 v9, 0x0

    const v1, 0x7f0903a5

    .line 189
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    new-instance v11, Lcn/nubia/camera/zoom/arc/a;

    iget-object v3, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    iget v4, p0, Lcn/nubia/camera/zoom/c;->d:F

    iget-object v5, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    add-int v7, v8, v0

    const/4 v10, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcn/nubia/camera/zoom/arc/a;-><init>(Lcn/nubia/camera/ad/a;FLcn/nubia/camera/zoom/d;Landroid/view/ViewGroup;IIIZ)V

    iput-object v11, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    .line 192
    iget-object p1, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v11, p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/d;Lcn/nubia/camera/ad/a;)V

    .line 193
    iget-object p1, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    new-instance v0, Lcn/nubia/camera/zoom/c$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/zoom/c$2;-><init>(Lcn/nubia/camera/zoom/c;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a$a;)V

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    new-instance v0, Lcn/nubia/camera/zoom/c$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/zoom/c$3;-><init>(Lcn/nubia/camera/zoom/c;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/b;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private b(F)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/zoom/b;

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v1, p1}, Lcn/nubia/camera/zoom/b;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/zoom/c;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/c;->b(F)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/zoom/c;)F
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/camera/zoom/c;->d:F

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/zoom/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/zoom/d;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    return-object p0
.end method

.method private l()V
    .locals 5

    .line 159
    new-instance v0, Lcn/nubia/camera/zoom/a;

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->f()F

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->e()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v3

    iget v4, p0, Lcn/nubia/camera/zoom/c;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/camera/zoom/a;-><init>(FFLcn/nubia/camera/d/a;F)V

    iput-object v0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    .line 160
    new-instance v1, Lcn/nubia/camera/zoom/c$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/zoom/c$1;-><init>(Lcn/nubia/camera/zoom/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/a;->a(Lcn/nubia/camera/zoom/b;)V

    return-void
.end method

.method private m()V
    .locals 8

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/a;->c()V

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-string v7, "zoomUI"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .locals 2

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    iget v1, p0, Lcn/nubia/camera/zoom/c;->d:F

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/zoom/d;->a(FLjava/lang/String;)F

    move-result p1

    return p1
.end method

.method public a()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/a;->a(F)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/a;->a(F)V

    .line 155
    :cond_1
    iput p1, p0, Lcn/nubia/camera/zoom/c;->d:F

    return-void
.end method

.method public a(Lcn/nubia/camera/zoom/b;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/a;->b(Z)V

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/a;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcn/nubia/camera/k/ah;)Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    iget-object v1, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1, p2, p1}, Lcn/nubia/camera/zoom/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    iget-object v1, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/d;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    iget-object v1, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/d;->i(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 62
    iget v0, p0, Lcn/nubia/camera/zoom/c;->d:F

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->f()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->f()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/c;->d:F

    goto/16 :goto_2

    .line 64
    :cond_1
    iget v0, p0, Lcn/nubia/camera/zoom/c;->d:F

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->e()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->e()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/c;->d:F

    goto/16 :goto_2

    .line 68
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v2}, Lcn/nubia/camera/zoom/d;->b()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v3}, Lcn/nubia/camera/zoom/d;->c()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;FF)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    if-nez v2, :cond_3

    .line 70
    iget v3, p0, Lcn/nubia/camera/zoom/c;->d:F

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcn/nubia/camera/zoom/c;->d:F

    goto :goto_1

    :cond_3
    if-lt v2, v1, :cond_4

    .line 73
    iget v3, p0, Lcn/nubia/camera/zoom/c;->d:F

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_4

    iget v3, p0, Lcn/nubia/camera/zoom/c;->d:F

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcn/nubia/camera/zoom/c;->d:F

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_5
    :goto_1
    iget v2, p0, Lcn/nubia/camera/zoom/c;->d:F

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/zoom/c;->d:F

    .line 82
    :cond_6
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-ne v0, v2, :cond_7

    const/high16 v0, 0x40800000    # 4.0f

    .line 83
    iput v0, p0, Lcn/nubia/camera/zoom/c;->d:F

    .line 85
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->f()F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->e()F

    move-result v3

    iget v4, p0, Lcn/nubia/camera/zoom/c;->d:F

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/camera/zoom/a;->a(FFF)V

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(Lcn/nubia/camera/zoom/b;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/a;->a(Z)V

    return-void
.end method

.method public c()F
    .locals 1

    .line 114
    iget v0, p0, Lcn/nubia/camera/zoom/c;->d:F

    return v0
.end method

.method public d()Lcn/nubia/camera/zoom/d;
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    return-object v0
.end method

.method public e()F
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d;->c()F

    move-result v0

    return v0
.end method

.method public f()F
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d;->b()F

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->a:Lcn/nubia/camera/zoom/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/a;->b(Z)V

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Z)V

    .line 136
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->j()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/c;->k()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    invoke-direct {p0}, Lcn/nubia/camera/zoom/c;->m()V

    return-void
.end method

.method public j()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/a;->a()V

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    iget-object v1, p0, Lcn/nubia/camera/zoom/c;->c:Lcn/nubia/camera/zoom/d;

    iget-object v2, p0, Lcn/nubia/camera/zoom/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/d;Lcn/nubia/camera/ad/a;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/zoom/c;->f:Lcn/nubia/camera/zoom/arc/a;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/a;->b()V

    :cond_0
    return-void
.end method
