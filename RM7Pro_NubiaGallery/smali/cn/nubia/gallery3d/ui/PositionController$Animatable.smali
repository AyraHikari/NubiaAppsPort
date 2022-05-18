.class abstract Lcn/nubia/gallery3d/ui/PositionController$Animatable;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Animatable"
.end annotation


# instance fields
.field public mAnimationDuration:I

.field public mAnimationKind:I

.field public mAnimationStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/PositionController$1;)V
    .locals 0

    .line 1485
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController$Animatable;-><init>()V

    return-void
.end method

.method private static applyInterpolationCurve(IF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-float p0, v1, v1

    mul-float/2addr p0, v1

    mul-float/2addr p0, v1

    mul-float/2addr p0, v1

    sub-float p1, v0, p0

    goto :goto_0

    :pswitch_1
    mul-float/2addr v1, v1

    :pswitch_2
    sub-float p1, v0, v1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 8

    .line 1498
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-wide/16 v4, -0x2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 1502
    iput-wide v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1503
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->startSnapback()Z

    move-result v0

    return v0

    .line 1507
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 1510
    :cond_2
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 1511
    iget-wide v6, p0, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    sub-long/2addr v2, v6

    long-to-float v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_0
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_3

    goto :goto_1

    .line 1518
    :cond_3
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->applyInterpolationCurve(IF)F

    move-result v1

    .line 1521
    :goto_1
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->interpolate(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1524
    iput-wide v4, p0, Lcn/nubia/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract interpolate(F)Z
.end method

.method public abstract startSnapback()Z
.end method
