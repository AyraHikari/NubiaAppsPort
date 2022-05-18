.class public Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "AlarmAlertTranslateAnimation.java"


# instance fields
.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "fromYDelta"    # F
    .param p4, "toYDelta"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 7
    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXType:I

    .line 8
    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXType:I

    .line 10
    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYType:I

    .line 11
    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYType:I

    .line 13
    iput v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXValue:F

    .line 14
    iput v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXValue:F

    .line 16
    iput v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYValue:F

    .line 17
    iput v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYValue:F

    .line 26
    iput p1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXValue:F

    .line 27
    iput p2, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXValue:F

    .line 28
    iput p3, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYValue:F

    .line 29
    iput p4, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYValue:F

    .line 31
    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXType:I

    .line 32
    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXType:I

    .line 33
    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYType:I

    .line 34
    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYType:I

    .line 35
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 40
    iget v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXDelta:F

    .line 41
    .local v0, "dx":F
    iget v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYDelta:F

    .line 42
    .local v1, "dy":F
    iget v2, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXDelta:F

    iget v3, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 43
    iget v2, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXDelta:F

    iget v3, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXDelta:F

    iget v4, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 45
    :cond_0
    iget v2, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYDelta:F

    iget v3, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 46
    iget v2, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYDelta:F

    iget v3, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYDelta:F

    iget v4, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 48
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 49
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 59
    iget v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXType:I

    iget v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromXDelta:F

    .line 60
    iget v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXType:I

    iget v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToXDelta:F

    .line 61
    iget v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYType:I

    iget v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mFromYDelta:F

    .line 62
    iget v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYType:I

    iget v1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYDelta:F

    .line 63
    return-void
.end method

.method public setToYValue(F)V
    .locals 0
    .param p1, "toYDelta"    # F

    .prologue
    .line 52
    iput p1, p0, Lcn/nubia/deskclock/ui/AlarmAlertTranslateAnimation;->mToYDelta:F

    .line 53
    return-void
.end method
