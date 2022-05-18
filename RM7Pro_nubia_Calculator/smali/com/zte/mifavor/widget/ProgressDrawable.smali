.class public Lcom/zte/mifavor/widget/ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;,
        Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;,
        Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;
    }
.end annotation


# static fields
.field private static final CIRCLE_DISTANCE:F = 360.0f

.field private static final CIRCLE_INTERVAL:I = 0xa0

.field private static final CIRCLE_NUMBER:I = 0x6

.field private static final CIRCLE_PERIOD:I = 0x5dc

.field private static final CIRCLE_PRE:I = 0x28

.field private static final CIRCLE_START_END:I = 0x28

.field private static final CIRCLE_TOTAL_TIME:I = 0x8fc

.field private static final PROGRESS_SPEED:I = 0x78

.field private static final TAG:Ljava/lang/String; = "ProgressDrawable"


# instance fields
.field private curEndX:I

.field private curEndY:I

.field private curStartEndRadius:I

.field private mCircleRadiusDelay:I

.field private mCircleRadiusRun:I

.field private mCircles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaBall:Lcom/zte/mifavor/widget/MetaBall;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressPoint:F

.field private mProgressRadius:I

.field private mProgressX:I

.field private mProgressY:I

.field private mRect:Landroid/graphics/RectF;

.field private mStarted:Z

.field private mTimeAnimator:Landroid/animation/TimeAnimator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curEndX:I

    .line 35
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curEndY:I

    .line 36
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curStartEndRadius:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircles:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mStarted:Z

    .line 51
    new-instance v1, Lcom/zte/mifavor/widget/MetaBall;

    invoke-direct {v1}, Lcom/zte/mifavor/widget/MetaBall;-><init>()V

    iput-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mMetaBall:Lcom/zte/mifavor/widget/MetaBall;

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircles:Ljava/util/ArrayList;

    new-instance v2, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;

    invoke-direct {v2, p0, v0}, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;-><init>(Lcom/zte/mifavor/widget/ProgressDrawable;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ProgressDrawable;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressPoint:F

    return p0
.end method

.method static synthetic access$002(Lcom/zte/mifavor/widget/ProgressDrawable;F)F
    .locals 0

    .line 24
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressPoint:F

    return p1
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ProgressDrawable;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ProgressDrawable;->updateCircle(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/widget/ProgressDrawable;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curStartEndRadius:I

    return p0
.end method

.method static synthetic access$1002(Lcom/zte/mifavor/widget/ProgressDrawable;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curStartEndRadius:I

    return p1
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/widget/ProgressDrawable;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircleRadiusDelay:I

    return p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ProgressDrawable;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressX:I

    return p0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressRadius:I

    return p0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/ProgressDrawable;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressY:I

    return p0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/ProgressDrawable;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircleRadiusRun:I

    return p0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/ProgressDrawable;)Lcom/zte/mifavor/widget/MetaBall;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mMetaBall:Lcom/zte/mifavor/widget/MetaBall;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/ProgressDrawable;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curEndX:I

    return p0
.end method

.method static synthetic access$802(Lcom/zte/mifavor/widget/ProgressDrawable;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curEndX:I

    return p1
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/ProgressDrawable;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curEndY:I

    return p0
.end method

.method static synthetic access$902(Lcom/zte/mifavor/widget/ProgressDrawable;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->curEndY:I

    return p1
.end method

.method private clipSquare(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 134
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 137
    div-int/lit8 p0, p0, 0x2

    .line 138
    new-instance v1, Landroid/graphics/RectF;

    sub-int v2, v0, p0

    int-to-float v2, v2

    sub-int v3, p1, p0

    int-to-float v3, v3

    add-int/2addr v0, p0

    int-to-float v0, v0

    add-int/2addr p1, p0

    int-to-float p0, p1

    invoke-direct {v1, v2, v3, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private generateTimeAnimtor()V
    .locals 2

    .line 147
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/zte/mifavor/widget/ProgressDrawable$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ProgressDrawable$1;-><init>(Lcom/zte/mifavor/widget/ProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method private updateCircle(F)V
    .locals 2

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;

    invoke-virtual {v1, p1}, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->updateCircle(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    const/4 v1, 0x0

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;

    invoke-virtual {v2, p1}, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const-string v0, "ProgressDrawable"

    const-string v1, "onBoundsChange"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->stop()V

    .line 98
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ProgressDrawable;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mRect:Landroid/graphics/RectF;

    .line 99
    iget-object p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressX:I

    .line 100
    iget-object p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressY:I

    .line 101
    iget-object p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressRadius:I

    .line 102
    iget p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressRadius:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircleRadiusRun:I

    .line 103
    iget p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mProgressRadius:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mCircleRadiusDelay:I

    .line 104
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->generateTimeAnimtor()V

    .line 105
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mStarted:Z

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->start()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 79
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mStarted:Z

    .line 113
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mStarted:Z

    .line 121
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->end()V

    :cond_0
    return-void
.end method
