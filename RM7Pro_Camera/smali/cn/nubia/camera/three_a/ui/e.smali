.class public Lcn/nubia/camera/three_a/ui/e;
.super Lcn/nubia/camera/three_a/ui/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;


# instance fields
.field private i:Z

.field private j:Z

.field private k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

.field private l:Lcn/nubia/camera/three_a/ui/g;

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/three_a/ui/h$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 46
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/three_a/ui/a;-><init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 37
    iput v0, v8, Lcn/nubia/camera/three_a/ui/e;->n:I

    .line 38
    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/e;->o:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcn/nubia/camera/three_a/ui/e;->p:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcn/nubia/b/b;

    move-object v1, p3

    invoke-direct {v0, p3}, Lcn/nubia/b/b;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v0}, Lcn/nubia/b/b;->l()Z

    move-result v0

    iput-boolean v0, v8, Lcn/nubia/camera/three_a/ui/e;->j:Z

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->t()V

    return-void
.end method

.method private D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private E()Z
    .locals 3

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_manual_cct"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private b(ZZ)V
    .locals 1

    .line 241
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    .line 242
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/e;->f(Z)V

    if-eqz p2, :cond_0

    .line 244
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/g;->d()V

    .line 246
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/h$g;->c(ZZ)V

    .line 247
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    invoke-virtual {p1, p2}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->a(Z)V

    .line 249
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 250
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/e;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcn/nubia/camera/three_a/ui/e;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/nubia/camera/three_a/ui/h$g;->c(Landroid/graphics/RectF;)V

    .line 252
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/e;->h(Z)V

    return-void
.end method

.method private d(I)V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->j:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private h(Z)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/three_a/ui/h$c;

    .line 258
    invoke-interface {v1, p1}, Lcn/nubia/camera/three_a/ui/h$c;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    .line 288
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->f(Z)V

    .line 289
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcn/nubia/camera/three_a/ui/h$g;->c(ZZ)V

    .line 290
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    iget-boolean v2, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    invoke-virtual {v1, v2}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->a(Z)V

    .line 291
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->h(Z)V

    :cond_1
    return-void
.end method

.method public B()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 298
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/e;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->j:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public C()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->i:Z

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->o()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->n()Z

    move-result p1

    if-nez p1, :cond_0

    .line 317
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    .line 54
    new-instance v0, Lcn/nubia/b/b;

    invoke-direct {v0, p1}, Lcn/nubia/b/b;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v0}, Lcn/nubia/b/b;->l()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/e;->j:Z

    .line 56
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->t()V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$c;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/e;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 147
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/e;->j:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/e;->E()Z

    move-result p1

    if-nez p1, :cond_2

    .line 148
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 165
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/three_a/ui/e;->b(ZZ)V

    .line 167
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {p1, p2, p2}, Lcn/nubia/camera/three_a/ui/h$g;->d(ZZ)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->o()Z

    move-result p1

    if-nez p1, :cond_1

    .line 172
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcn/nubia/camera/three_a/ui/h$g;->d(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 3

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->g(Z)V

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/e;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/e;->E()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v1}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v1}, Lcn/nubia/camera/three_a/ui/g;->c()V

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->i()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->j()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/e;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcn/nubia/camera/three_a/ui/e;->a(Landroid/graphics/Point;IILandroid/graphics/Rect;)V

    .line 82
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/e;->h:Lcn/nubia/camera/three_a/ui/a$a;

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 86
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    if-nez p1, :cond_1

    .line 87
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/e;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcn/nubia/camera/three_a/ui/e;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/nubia/camera/three_a/ui/h$g;->c(Landroid/graphics/RectF;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public a(Landroid/view/MotionEvent;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 5

    .line 94
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/e;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_a

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/e;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->C()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->m:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 97
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->m:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    .line 98
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->a(Lcn/nubia/camera/three_a/ui/g;)[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/camera/three_a/ui/e;->a([III)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->m:Z

    .line 102
    iget v2, p0, Lcn/nubia/camera/three_a/ui/e;->n:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/camera/three_a/ui/e;->n:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 104
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v2}, Lcn/nubia/camera/three_a/ui/g;->b()V

    .line 106
    :cond_4
    iget v2, p0, Lcn/nubia/camera/three_a/ui/e;->n:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_8

    .line 107
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->g(Z)V

    .line 108
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 109
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 111
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 112
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 114
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->i()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->j()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/e;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v2, v3, v4}, Lcn/nubia/camera/three_a/ui/e;->a(Landroid/graphics/Point;IILandroid/graphics/Rect;)V

    .line 115
    iget-object p3, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-interface {p3, v2, p2}, Lcn/nubia/camera/three_a/ui/g;->a(FF)V

    .line 116
    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    if-eqz p2, :cond_7

    .line 117
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {p2, v1, v0}, Lcn/nubia/camera/three_a/ui/h$g;->c(ZZ)V

    .line 118
    invoke-direct {p0, v1}, Lcn/nubia/camera/three_a/ui/e;->h(Z)V

    .line 120
    :cond_7
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-object p3, p0, Lcn/nubia/camera/three_a/ui/e;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Lcn/nubia/camera/three_a/ui/e;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p3

    invoke-interface {p2, p3}, Lcn/nubia/camera/three_a/ui/h$g;->c(Landroid/graphics/RectF;)V

    .line 122
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_9

    .line 123
    iput-boolean v1, p0, Lcn/nubia/camera/three_a/ui/e;->m:Z

    .line 124
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/g;->a()V

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    iget-boolean p2, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    invoke-interface {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/h$g;->c(ZZ)V

    .line 126
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/e;->h(Z)V

    .line 127
    iput v1, p0, Lcn/nubia/camera/three_a/ui/e;->n:I

    :cond_9
    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method b()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcn/nubia/camera/three_a/ui/a;->b()V

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/g;->a()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/e;->d(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->a(IZ)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f09039c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/three_a/ui/g;

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->d(I)V

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->setWhiteBanlanceViewStateChangeListener(Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;)V

    return-void
.end method

.method public u()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->m()V

    .line 138
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/three_a/ui/e;->b(ZZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    return v0
.end method

.method public w()Z
    .locals 2

    .line 183
    iget v0, p0, Lcn/nubia/camera/three_a/ui/e;->n:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcn/nubia/camera/three_a/ui/e;->n:I

    .line 189
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->m:Z

    .line 190
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->i:Z

    .line 191
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->e(Z)V

    return-void
.end method

.method public y()V
    .locals 3

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    .line 198
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v1, v0, v0}, Lcn/nubia/camera/three_a/ui/h$g;->c(ZZ)V

    .line 199
    iget-boolean v1, p0, Lcn/nubia/camera/three_a/ui/e;->o:Z

    invoke-direct {p0, v1}, Lcn/nubia/camera/three_a/ui/e;->h(Z)V

    .line 200
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->a(Z)V

    .line 201
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->k:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/e;->l:Lcn/nubia/camera/three_a/ui/g;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 204
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->f(Z)V

    .line 205
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->g(Z)V

    .line 206
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->e(Z)V

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public z()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/e;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/e;->i:Z

    .line 228
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/e;->e(Z)V

    :cond_0
    return-void
.end method
