.class Lcn/nubia/gallery3d/ui/PositionController$Platform;
.super Lcn/nubia/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Platform"
.end annotation


# instance fields
.field public mCurrentX:I

.field public mCurrentY:I

.field public mDefaultX:I

.field public mDefaultY:I

.field public mFlingOffset:I

.field public mFromX:I

.field public mFromY:I

.field public mToX:I

.field public mToY:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/PositionController;)V
    .locals 0

    .line 1557
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController$Animatable;-><init>(Lcn/nubia/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/PositionController;Lcn/nubia/gallery3d/ui/PositionController$1;)V
    .locals 0

    .line 1557
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;-><init>(Lcn/nubia/gallery3d/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/PositionController$Platform;III)Z
    .locals 0

    .line 1557
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result p0

    return p0
.end method

.method private doAnimation(III)Z
    .locals 2

    .line 1628
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-ne v0, p2, :cond_0

    return v1

    .line 1629
    :cond_0
    iput p3, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    .line 1630
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1631
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFromY:I

    .line 1632
    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1633
    iput p2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToY:I

    .line 1634
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    .line 1635
    invoke-static {}, Lcn/nubia/gallery3d/ui/PositionController;->access$2400()[I

    move-result-object p1

    aget p1, p1, p3

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationDuration:I

    .line 1636
    iput v1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1637
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    const/4 p1, 0x1

    return p1
.end method

.method private interpolateFlingFilm(F)Z
    .locals 3

    .line 1653
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PositionController;->access$2500(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1654
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PositionController;->access$2500(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result p1

    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1657
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ge p1, v0, :cond_0

    .line 1658
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PositionController;->access$2600(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    .line 1662
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PositionController;->access$2700(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eq p1, v2, :cond_2

    .line 1670
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PositionController;->access$2500(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1671
    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1673
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PositionController;->access$2500(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    return p1
.end method

.method private interpolateFlingPage(F)Z
    .locals 6

    .line 1677
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$2800(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/FlingScroller;->computeScrollOffset(F)V

    .line 1678
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$900(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/util/RangeArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1679
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v2, v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$2900(Lcn/nubia/gallery3d/ui/PositionController;F)V

    .line 1681
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1682
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$2800(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/FlingScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/FlingScroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1685
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$1700(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    if-le v0, v2, :cond_0

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/PositionController;->access$1700(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 1686
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$2800(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 1687
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$700(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/PositionController$Listener;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v0, v4}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    .line 1688
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$1800(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$1800(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1689
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$2800(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 1690
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$700(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/PositionController$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private interpolateLinear(F)Z
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 1699
    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1700
    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToY:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    return v1

    .line 1703
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 1704
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/CaptureAnimation;->calculateSlide(F)F

    move-result p1

    .line 1706
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFromX:I

    int-to-float v3, v0

    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1707
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFromY:I

    int-to-float v3, v0

    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToY:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 1708
    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    return v0

    .line 1711
    :cond_2
    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToY:I

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    return v1
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 2

    .line 1643
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1644
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->interpolateFlingPage(F)Z

    move-result p1

    return p1

    .line 1645
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1646
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->interpolateFlingFilm(F)Z

    move-result p1

    return p1

    .line 1648
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->interpolateLinear(F)Z

    move-result p1

    return p1
.end method

.method public startSnapback()Z
    .locals 7

    .line 1564
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1565
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    .line 1566
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$700(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/PositionController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1567
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$800(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1569
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$900(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1570
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$1000(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_3
    iget v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 1572
    :goto_0
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PositionController;->access$1000(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v4

    goto :goto_1

    :cond_4
    iget v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 1574
    :goto_1
    iget v4, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v4, v2, v3}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 1575
    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1576
    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    .line 1577
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/PositionController;->access$1100(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/PositionController;->access$1200(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 1583
    :cond_5
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {}, Lcn/nubia/gallery3d/ui/PositionController;->access$1300()I

    move-result v6

    invoke-static {v5, v2, v6}, Lcn/nubia/gallery3d/ui/PositionController;->access$1400(Lcn/nubia/gallery3d/ui/PositionController;FI)V

    .line 1593
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v5, v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$1500(Lcn/nubia/gallery3d/ui/PositionController;F)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1594
    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    sub-float/2addr v0, v2

    .line 1595
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$1600(Lcn/nubia/gallery3d/ui/PositionController;)F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v0, v2

    add-int/2addr v3, v0

    .line 1597
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$1700(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$1800(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v2

    invoke-static {v3, v0, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    goto :goto_3

    .line 1581
    :cond_7
    :goto_2
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1599
    :goto_3
    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v2, v0, :cond_9

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-eq v2, v4, :cond_8

    goto :goto_4

    :cond_8
    return v1

    :cond_9
    :goto_4
    const/4 v1, 0x2

    .line 1600
    invoke-direct {p0, v0, v4, v1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method public updateDefaultXY()V
    .locals 3

    .line 1613
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$1900(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$2000(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1614
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$2000(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PositionController;->access$2100(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1615
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$1100(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$1200(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    .line 1616
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$2000(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PositionController;->access$2200(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    :cond_1
    :goto_0
    iput v1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    goto :goto_1

    .line 1618
    :cond_2
    iput v1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1619
    iput v1, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    .line 1620
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$1200(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1621
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$2300(Lcn/nubia/gallery3d/ui/PositionController;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    :cond_3
    :goto_1
    return-void
.end method
