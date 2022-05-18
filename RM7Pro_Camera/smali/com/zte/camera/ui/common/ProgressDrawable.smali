.class public Lcom/zte/camera/ui/common/ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/common/ProgressDrawable$b;,
        Lcom/zte/camera/ui/common/ProgressDrawable$c;,
        Lcom/zte/camera/ui/common/ProgressDrawable$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/animation/TimeAnimator;

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Paint;

.field private l:Lcom/zte/camera/ui/common/a;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zte/camera/ui/common/ProgressDrawable$c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/RectF;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->a:I

    .line 36
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->b:I

    .line 37
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->c:I

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->k:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Lcom/zte/camera/ui/common/a;

    invoke-direct {v0}, Lcom/zte/camera/ui/common/a;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->l:Lcom/zte/camera/ui/common/a;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->o:Z

    .line 52
    iget-object v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->k:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->k:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->m:Ljava/util/ArrayList;

    new-instance v2, Lcom/zte/camera/ui/common/ProgressDrawable$c;

    invoke-direct {v2, p0, v0}, Lcom/zte/camera/ui/common/ProgressDrawable$c;-><init>(Lcom/zte/camera/ui/common/ProgressDrawable;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/ProgressDrawable;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->g:F

    return p0
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/ProgressDrawable;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->g:F

    return p1
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/ProgressDrawable;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->a:I

    return p1
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 5

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 137
    div-int/lit8 v0, v0, 0x2

    .line 138
    new-instance v2, Landroid/graphics/RectF;

    sub-int v3, v1, v0

    int-to-float v3, v3

    sub-int v4, p1, v0

    int-to-float v4, v4

    add-int/2addr v1, v0

    int-to-float v1, v1

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-direct {v2, v3, v4, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method private a()V
    .locals 2

    .line 142
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->d:Landroid/animation/TimeAnimator;

    .line 143
    new-instance v1, Lcom/zte/camera/ui/common/ProgressDrawable$1;

    invoke-direct {v1, p0}, Lcom/zte/camera/ui/common/ProgressDrawable$1;-><init>(Lcom/zte/camera/ui/common/ProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method private a(F)V
    .locals 2

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/camera/ui/common/ProgressDrawable$c;

    invoke-virtual {v1, p1}, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/ProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method static synthetic b(Lcom/zte/camera/ui/common/ProgressDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->i:I

    return p0
.end method

.method static synthetic b(Lcom/zte/camera/ui/common/ProgressDrawable;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->b:I

    return p1
.end method

.method static synthetic b(Lcom/zte/camera/ui/common/ProgressDrawable;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(F)V

    return-void
.end method

.method static synthetic c(Lcom/zte/camera/ui/common/ProgressDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->j:I

    return p0
.end method

.method static synthetic c(Lcom/zte/camera/ui/common/ProgressDrawable;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->c:I

    return p1
.end method

.method static synthetic d(Lcom/zte/camera/ui/common/ProgressDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->e:I

    return p0
.end method

.method static synthetic e(Lcom/zte/camera/ui/common/ProgressDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->h:I

    return p0
.end method

.method static synthetic f(Lcom/zte/camera/ui/common/ProgressDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->f:I

    return p0
.end method

.method static synthetic g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->k:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic h(Lcom/zte/camera/ui/common/ProgressDrawable;)Lcom/zte/camera/ui/common/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->l:Lcom/zte/camera/ui/common/a;

    return-object p0
.end method

.method static synthetic i(Lcom/zte/camera/ui/common/ProgressDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->a:I

    return p0
.end method

.method static synthetic j(Lcom/zte/camera/ui/common/ProgressDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->b:I

    return p0
.end method

.method static synthetic k(Lcom/zte/camera/ui/common/ProgressDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->c:I

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->n:Landroid/graphics/RectF;

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    const/4 v1, 0x0

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/camera/ui/common/ProgressDrawable$c;

    invoke-virtual {v2, p1}, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->d:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const-string v0, "ProgressDrawable"

    const-string v1, "onBoundsChange"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/ProgressDrawable;->stop()V

    .line 98
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->n:Landroid/graphics/RectF;

    .line 99
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->e:I

    .line 100
    iget-object p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->f:I

    .line 101
    iget-object p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->h:I

    int-to-float v2, p1

    mul-float/2addr v2, v1

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 102
    iput v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->i:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 103
    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->j:I

    .line 104
    invoke-direct {p0}, Lcom/zte/camera/ui/common/ProgressDrawable;->a()V

    .line 105
    iget-boolean p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->o:Z

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/ProgressDrawable;->start()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 78
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->o:Z

    .line 113
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->d:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/ProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->d:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->o:Z

    .line 121
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->d:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/ProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable;->d:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    :cond_0
    return-void
.end method
