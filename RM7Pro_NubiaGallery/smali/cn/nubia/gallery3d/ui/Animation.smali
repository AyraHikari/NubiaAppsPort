.class public abstract Lcn/nubia/gallery3d/ui/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# static fields
.field private static final ANIMATION_START:J = -0x1L

.field private static final NO_ANIMATION:J = -0x2L


# instance fields
.field private mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x2

    .line 53
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public calculate(J)Z
    .locals 8

    .line 82
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 83
    iput-wide p1, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    .line 84
    :cond_1
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    int-to-float p2, p1

    .line 85
    iget v0, p0, Lcn/nubia/gallery3d/ui/Animation;->mDuration:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lcn/nubia/gallery3d/ui/Animation;->clamp(FFF)F

    move-result p2

    .line 86
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    .line 87
    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_2
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/ui/Animation;->onCalculate(F)V

    .line 88
    iget p2, p0, Lcn/nubia/gallery3d/ui/Animation;->mDuration:I

    if-lt p1, p2, :cond_3

    iput-wide v2, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    .line 89
    :cond_3
    iget-wide p1, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5
.end method

.method public forceStop()V
    .locals 2

    const-wide/16 v0, -0x2

    .line 78
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    return-void
.end method

.method public isActive()Z
    .locals 4

    .line 74
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

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
    iput p1, p0, Lcn/nubia/gallery3d/ui/Animation;->mDuration:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 66
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/Animation;->mStartTime:J

    return-void
.end method
