.class Lcn/nubia/gallery3d/ui/EdgeAnimation;
.super Ljava/lang/Object;
.source "Paper.java"


# static fields
.field private static final ABSORB_TIME:I = 0xc8

.field private static final RELEASE_TIME:I = 0x1f4

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_RELEASE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeAnimation"

.field private static final VELOCITY_FACTOR:F = 0.1f


# instance fields
.field private mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mState:I

.field private mValue:F

.field private mValueFinish:F

.field private mValueStart:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    return-void
.end method

.method private now()J
    .locals 2

    .line 193
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private startAnimation(FFJI)V
    .locals 0

    .line 136
    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValueStart:F

    .line 137
    iput p2, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValueFinish:F

    .line 138
    iput-wide p3, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mDuration:J

    .line 139
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->now()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mStartTime:J

    .line 140
    iput p5, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .line 189
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValue:F

    return v0
.end method

.method public onAbsorb(F)V
    .locals 8

    .line 158
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValue:F

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v4

    .line 160
    iget v3, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValue:F

    const-wide/16 v5, 0xc8

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    return-void
.end method

.method public onPull(F)V
    .locals 2

    .line 147
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValue:F

    add-float/2addr v0, p1

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValue:F

    const/4 p1, 0x1

    .line 149
    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    return-void
.end method

.method public onRelease()V
    .locals 8

    .line 153
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget v3, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValue:F

    const/4 v4, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public update()Z
    .locals 14

    .line 164
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    .line 167
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->now()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget-wide v3, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mDuration:J

    long-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v4}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    .line 169
    iget v3, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 170
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 172
    :goto_0
    iget v6, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValueStart:F

    iget v7, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValueFinish:F

    sub-float/2addr v7, v6

    mul-float/2addr v7, v3

    add-float v9, v6, v7

    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mValue:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_5

    .line 175
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    if-eq v0, v5, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 180
    :cond_3
    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeAnimation;->mState:I

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    const-wide/16 v11, 0x1f4

    const/4 v13, 0x3

    move-object v8, p0

    .line 177
    invoke-direct/range {v8 .. v13}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    :cond_5
    :goto_1
    return v2
.end method
