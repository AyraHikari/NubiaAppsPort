.class public abstract Lcn/nubia/videogenerator/slidemake/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# static fields
.field protected static final ANIMATION_START:J = -0x1L

.field protected static final NO_ANIMATION:J = -0x2L


# instance fields
.field private TOTALCOUNTS:I

.field private mDuration:I

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field protected mStartTime:J

.field private renderCounts:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x2

    .line 51
    iput-wide v0, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mStartTime:J

    const/16 v0, 0x1e

    .line 53
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/Animation;->TOTALCOUNTS:I

    return-void
.end method


# virtual methods
.method public calculate(J)Z
    .locals 5

    .line 84
    iget-wide p1, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mStartTime:J

    const-wide/16 v0, -0x2

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 87
    :cond_0
    iget p1, p0, Lcn/nubia/videogenerator/slidemake/Animation;->renderCounts:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcn/nubia/videogenerator/slidemake/Animation;->renderCounts:I

    int-to-float p1, p1

    .line 88
    iget v3, p0, Lcn/nubia/videogenerator/slidemake/Animation;->TOTALCOUNTS:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v3, v4}, Lcn/nubia/videogenerator/slidemake/Animation;->clamp(FFF)F

    move-result p1

    .line 89
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    .line 90
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/Animation;->onCalculate(F)V

    .line 91
    iget p1, p0, Lcn/nubia/videogenerator/slidemake/Animation;->renderCounts:I

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/Animation;->TOTALCOUNTS:I

    if-lt p1, v3, :cond_2

    .line 92
    iput-wide v0, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mStartTime:J

    .line 93
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/Animation;->renderCounts:I

    .line 95
    :cond_2
    iget-wide v3, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mStartTime:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_3

    move p2, v2

    :cond_3
    return p2
.end method

.method protected clamp(FFF)F
    .locals 1

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    return p3

    :cond_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public forceStop()V
    .locals 2

    const-wide/16 v0, -0x2

    .line 80
    iput-wide v0, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mStartTime:J

    return-void
.end method

.method public isActive()Z
    .locals 4

    .line 76
    iget-wide v0, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onCalculate(F)V
.end method

.method public setDuration(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mDuration:I

    mul-int/lit8 p1, p1, 0x1e

    .line 63
    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcn/nubia/videogenerator/slidemake/Animation;->TOTALCOUNTS:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mStartTime:J

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 67
    iput-wide v0, p0, Lcn/nubia/videogenerator/slidemake/Animation;->mStartTime:J

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/Animation;->renderCounts:I

    return-void
.end method
