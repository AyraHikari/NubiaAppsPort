.class Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;
.super Lcn/nubia/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmRatio"
.end annotation


# instance fields
.field public mCurrentRatio:F

.field public mFromRatio:F

.field public mToRatio:F

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/PositionController;)V
    .locals 0

    .line 1911
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController$Animatable;-><init>(Lcn/nubia/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/PositionController;Lcn/nubia/gallery3d/ui/PositionController$1;)V
    .locals 0

    .line 1911
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcn/nubia/gallery3d/ui/PositionController;)V

    return-void
.end method

.method private doAnimation(FI)Z
    .locals 0

    .line 1925
    iput p2, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mAnimationKind:I

    .line 1926
    iget p2, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iput p2, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mFromRatio:F

    .line 1927
    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    .line 1928
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mAnimationStartTime:J

    .line 1929
    invoke-static {}, Lcn/nubia/gallery3d/ui/PositionController;->access$2400()[I

    move-result-object p1

    iget p2, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mAnimationKind:I

    aget p1, p1, p2

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mAnimationDuration:I

    .line 1930
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 1937
    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v1

    .line 1940
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mFromRatio:F

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    sub-float v3, v2, v0

    mul-float/2addr p1, v3

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    cmpl-float p1, v0, v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startSnapback()Z
    .locals 2

    .line 1918
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$1100(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->this$0:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PositionController;->access$1200(Lcn/nubia/gallery3d/ui/PositionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1919
    :goto_1
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v1, 0x2

    .line 1920
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->doAnimation(FI)Z

    move-result v0

    return v0
.end method
