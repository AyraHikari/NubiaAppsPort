.class public Lcn/nubia/camera/prosetting/ui/a;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/prosetting/ui/a$a;,
        Lcn/nubia/camera/prosetting/ui/a$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Lcn/nubia/camera/prosetting/ui/a$b;

.field private D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/camera/prosetting/ui/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/view/VelocityTracker;

.field private F:Landroid/widget/Scroller;

.field private G:F

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Lcn/nubia/camera/w/b;

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field protected a:Landroid/content/Context;

.field protected b:Landroid/util/DisplayMetrics;

.field protected c:I

.field protected d:I

.field protected e:F

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Landroid/graphics/RectF;

.field protected j:Landroid/graphics/Paint;

.field protected k:Landroid/graphics/RectF;

.field protected l:Landroid/graphics/Paint;

.field protected m:Landroid/graphics/RectF;

.field protected n:Landroid/graphics/Paint;

.field protected o:Landroid/graphics/RectF;

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:Landroid/graphics/Paint;

.field protected u:Landroid/graphics/Paint;

.field protected v:Ljava/lang/String;

.field protected w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060064

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/a;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060064

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/a;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcn/nubia/camera/prosetting/ui/a;->c:I

    .line 43
    iput p2, p0, Lcn/nubia/camera/prosetting/ui/a;->x:I

    const/16 p3, 0x20

    .line 44
    iput p3, p0, Lcn/nubia/camera/prosetting/ui/a;->d:I

    const/4 p3, 0x1

    .line 46
    iput p3, p0, Lcn/nubia/camera/prosetting/ui/a;->f:I

    const/4 p3, 0x6

    .line 47
    iput p3, p0, Lcn/nubia/camera/prosetting/ui/a;->g:I

    const/16 p4, 0xd

    .line 48
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->h:I

    const/16 p4, 0xc

    .line 49
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->y:I

    const/16 p4, 0xb

    .line 50
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->z:I

    const/16 p4, 0x8

    .line 63
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->p:I

    const/4 p4, 0x7

    .line 64
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->q:I

    .line 65
    iput p3, p0, Lcn/nubia/camera/prosetting/ui/a;->B:I

    .line 66
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->r:I

    const/16 p3, 0x24

    .line 68
    iput p3, p0, Lcn/nubia/camera/prosetting/ui/a;->s:I

    const/4 p3, 0x0

    .line 72
    iput-object p3, p0, Lcn/nubia/camera/prosetting/ui/a;->C:Lcn/nubia/camera/prosetting/ui/a$b;

    .line 73
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcn/nubia/camera/prosetting/ui/a;->D:Ljava/util/HashMap;

    .line 79
    iput-boolean p2, p0, Lcn/nubia/camera/prosetting/ui/a;->I:Z

    .line 80
    iput-boolean p2, p0, Lcn/nubia/camera/prosetting/ui/a;->J:Z

    const/4 p4, -0x1

    .line 83
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcn/nubia/camera/prosetting/ui/a;->v:Ljava/lang/String;

    const/4 p4, 0x0

    .line 269
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->L:F

    .line 270
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->M:F

    .line 271
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->N:F

    .line 272
    iput p4, p0, Lcn/nubia/camera/prosetting/ui/a;->O:F

    .line 273
    iput-boolean p2, p0, Lcn/nubia/camera/prosetting/ui/a;->w:Z

    .line 102
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/a;->a:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060064

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/a;->A:I

    .line 104
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->b()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/prosetting/ui/a;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/a;->h()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/prosetting/ui/a;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/camera/prosetting/ui/a;->I:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/prosetting/ui/a;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/camera/prosetting/ui/a;->J:Z

    return p1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/a;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/a;->q:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/a;->s:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->y:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->z:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->q:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->p:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private f()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->f:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/a;->s:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->h:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->z:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->i:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->i:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->B:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private g()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "GraduationBaseView"

    const-string v2, "countVelocityTracker"

    .line 318
    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, v0, Lcn/nubia/camera/prosetting/ui/a;->E:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    const v4, 0x453b8000    # 3000.0f

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 320
    iget-object v2, v0, Lcn/nubia/camera/prosetting/ui/a;->E:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 321
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Lcn/nubia/camera/prosetting/ui/a;->H:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    if-lez v3, :cond_3

    const-string v3, "fling"

    .line 322
    invoke-static {v1, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v8, v0, Lcn/nubia/camera/prosetting/ui/a;->F:Landroid/widget/Scroller;

    const/4 v9, 0x0

    const/4 v10, 0x0

    float-to-int v11, v2

    const/4 v12, 0x0

    const/high16 v13, -0x80000000

    const v14, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 325
    iget-object v1, v0, Lcn/nubia/camera/prosetting/ui/a;->F:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v2, v0, Lcn/nubia/camera/prosetting/ui/a;->F:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 326
    iget v2, v0, Lcn/nubia/camera/prosetting/ui/a;->g:I

    iget v3, v0, Lcn/nubia/camera/prosetting/ui/a;->f:I

    add-int/2addr v2, v3

    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 328
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    .line 330
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getIntegralPointWidth()F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_0

    .line 331
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->h()V

    goto/16 :goto_2

    .line 333
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getIntegralPointWidth()F

    move-result v2

    add-float/2addr v2, v1

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    .line 335
    iget-boolean v1, v0, Lcn/nubia/camera/prosetting/ui/a;->w:Z

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 341
    :cond_2
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v6, [F

    iget v3, v0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    aput v3, v1, v5

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 343
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 344
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    new-instance v2, Lcn/nubia/camera/prosetting/ui/a$1;

    invoke-direct {v2, v0}, Lcn/nubia/camera/prosetting/ui/a$1;-><init>(Lcn/nubia/camera/prosetting/ui/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 355
    new-instance v2, Lcn/nubia/camera/prosetting/ui/a$2;

    invoke-direct {v2, v0}, Lcn/nubia/camera/prosetting/ui/a$2;-><init>(Lcn/nubia/camera/prosetting/ui/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_2

    :cond_3
    const-string v2, "none fling"

    .line 375
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getIntegralPointWidth()F

    move-result v1

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_5

    .line 379
    iget-boolean v1, v0, Lcn/nubia/camera/prosetting/ui/a;->w:Z

    if-eqz v1, :cond_4

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    .line 382
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->getNeedSkipRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_5
    :goto_1
    cmpl-float v2, v1, v7

    if-eqz v2, :cond_6

    .line 386
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v6, [F

    iget v3, v0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    aput v3, v2, v5

    aput v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 388
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 389
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 390
    new-instance v2, Lcn/nubia/camera/prosetting/ui/a$3;

    invoke-direct {v2, v0}, Lcn/nubia/camera/prosetting/ui/a$3;-><init>(Lcn/nubia/camera/prosetting/ui/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 399
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 400
    new-instance v2, Lcn/nubia/camera/prosetting/ui/a$4;

    invoke-direct {v2, v0}, Lcn/nubia/camera/prosetting/ui/a$4;-><init>(Lcn/nubia/camera/prosetting/ui/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 424
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/a;->h()V

    :goto_2
    return-void
.end method

.method private getIntegralPointWidth()F
    .locals 3

    .line 515
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->D:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 516
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/prosetting/ui/a$a;

    .line 520
    invoke-virtual {v1}, Lcn/nubia/camera/prosetting/ui/a$a;->a()F

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prosetting/ui/a;->a(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0, v2}, Lcn/nubia/camera/prosetting/ui/a;->a(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private h()V
    .locals 7

    .line 432
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->q:I

    div-int/2addr v2, v1

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->getMaxWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->q:I

    div-int/2addr v2, v1

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->getMaxWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 437
    :goto_0
    sget-boolean v2, Lcn/nubia/camera/ba/a;->a:Z

    const-wide/16 v3, 0x12c

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    cmpl-float v2, v2, v0

    if-gtz v2, :cond_2

    :cond_1
    sget-boolean v2, Lcn/nubia/camera/ba/a;->a:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    .line 438
    :cond_2
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v1, [F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    aput v2, v1, v6

    aput v0, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 441
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 442
    new-instance v1, Lcn/nubia/camera/prosetting/ui/a$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/a$5;-><init>(Lcn/nubia/camera/prosetting/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 451
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 452
    new-instance v1, Lcn/nubia/camera/prosetting/ui/a$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/a$6;-><init>(Lcn/nubia/camera/prosetting/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 472
    :cond_3
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_5

    :cond_4
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    .line 473
    :cond_5
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v1, [F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    aput v2, v0, v6

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcn/nubia/camera/prosetting/ui/a;->q:I

    div-int/2addr v6, v1

    int-to-float v1, v6

    add-float/2addr v2, v1

    aput v2, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 475
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 476
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    new-instance v1, Lcn/nubia/camera/prosetting/ui/a$7;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/a$7;-><init>(Lcn/nubia/camera/prosetting/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 487
    new-instance v1, Lcn/nubia/camera/prosetting/ui/a$8;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/a$8;-><init>(Lcn/nubia/camera/prosetting/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 509
    :cond_6
    iput-boolean v6, p0, Lcn/nubia/camera/prosetting/ui/a;->I:Z

    .line 510
    iput-boolean v5, p0, Lcn/nubia/camera/prosetting/ui/a;->J:Z

    .line 511
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->d()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(FLjava/lang/String;)V
    .locals 1

    .line 231
    new-instance v0, Lcn/nubia/camera/prosetting/ui/a$a;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/prosetting/ui/a$a;-><init>(Lcn/nubia/camera/prosetting/ui/a;FLjava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/a;->D:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v0}, Lcn/nubia/camera/prosetting/ui/a$a;->a()F

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/a;->a(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/a;->C:Lcn/nubia/camera/prosetting/ui/a$b;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/prosetting/ui/a;->I:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {p1, p2}, Lcn/nubia/camera/prosetting/ui/a$b;->a(Ljava/lang/String;)V

    .line 236
    iput-object p2, p0, Lcn/nubia/camera/prosetting/ui/a;->v:Ljava/lang/String;

    .line 238
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/camera/prosetting/ui/a;->J:Z

    invoke-virtual {p0, p2, p1}, Lcn/nubia/camera/prosetting/ui/a;->a(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcn/nubia/camera/prosetting/ui/a;->J:Z

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected a(F)Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcn/nubia/camera/prosetting/ui/a;->f:I

    int-to-float p1, p1

    sub-float p1, v0, p1

    .line 224
    :goto_0
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 116
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    .line 117
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->x:I

    .line 119
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->p:I

    .line 120
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->B:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->B:I

    .line 121
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    .line 122
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->f:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->f:I

    .line 123
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->getIntervalWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->g:I

    .line 124
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->h:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->h:I

    .line 125
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->y:I

    .line 126
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->z:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->z:I

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->o:Landroid/graphics/RectF;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->n:Landroid/graphics/Paint;

    .line 130
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/a;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->i:Landroid/graphics/RectF;

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->k:Landroid/graphics/RectF;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->j:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 136
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->j:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->m:Landroid/graphics/RectF;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->l:Landroid/graphics/Paint;

    .line 141
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->t:Landroid/graphics/Paint;

    .line 145
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->t:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->t:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->s:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->u:Landroid/graphics/Paint;

    .line 152
    iget v2, p0, Lcn/nubia/camera/prosetting/ui/a;->A:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->u:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/a;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 159
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/a;->e()V

    .line 160
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/a;->f()V

    .line 161
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->F:Landroid/widget/Scroller;

    .line 162
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->H:I

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/a;->v:Ljava/lang/String;

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 166
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/a;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMember()Lcn/nubia/camera/w/b;
    .locals 1

    .line 261
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->K:Lcn/nubia/camera/w/b;

    return-object v0
.end method

.method protected getNeedSkipRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->c:I

    .line 192
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/a;->f()V

    .line 193
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/a;->e()V

    .line 194
    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/a;->a(Landroid/graphics/Canvas;)V

    .line 195
    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/a;->b(Landroid/graphics/Canvas;)V

    .line 196
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/a;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 279
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/a;->E:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 280
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/prosetting/ui/a;->E:Landroid/view/VelocityTracker;

    .line 282
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/a;->E:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const-string v3, "GraduationBaseView"

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    goto/16 :goto_1

    .line 295
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_MOVE mMiddleBaseX: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput-boolean v4, p0, Lcn/nubia/camera/prosetting/ui/a;->I:Z

    .line 297
    iget p1, p0, Lcn/nubia/camera/prosetting/ui/a;->G:F

    sub-float p1, v1, p1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MOVE off: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    .line 300
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->postInvalidate()V

    goto/16 :goto_1

    .line 304
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UP mMiddleBaseX: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/a;->L:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->N:F

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->M:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/a;->O:F

    .line 307
    iget p1, p0, Lcn/nubia/camera/prosetting/ui/a;->N:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a;->O:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 308
    iget p1, p0, Lcn/nubia/camera/prosetting/ui/a;->N:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/camera/prosetting/ui/a;->w:Z

    .line 310
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/a;->g()V

    goto :goto_1

    .line 286
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DOWN mMiddleBaseX: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a;->F:Landroid/widget/Scroller;

    invoke-virtual {v0, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 288
    iput-boolean v4, p0, Lcn/nubia/camera/prosetting/ui/a;->I:Z

    .line 289
    iput-boolean v2, p0, Lcn/nubia/camera/prosetting/ui/a;->J:Z

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/a;->L:F

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/a;->M:F

    .line 292
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/a;->c()V

    .line 313
    :goto_1
    iput v1, p0, Lcn/nubia/camera/prosetting/ui/a;->G:F

    return v4
.end method

.method protected setHighSettingMember(Lcn/nubia/camera/w/b;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/a;->K:Lcn/nubia/camera/w/b;

    return-void
.end method

.method public setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/a;->C:Lcn/nubia/camera/prosetting/ui/a$b;

    return-void
.end method
