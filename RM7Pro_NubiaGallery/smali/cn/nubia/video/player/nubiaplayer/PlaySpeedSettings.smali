.class public Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;
.super Ljava/lang/Object;
.source "PlaySpeedSettings.java"


# instance fields
.field private final PLAYSPEED_NORMAL:I

.field private final PLAYSPEED_QUARTER:I

.field private mLastPlaySpeed:I

.field private mVideoView:Lcn/nubia/video/player/VideoView;

.field private mbSupportPlaySpeedShift:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mbSupportPlaySpeedShift:Z

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->PLAYSPEED_NORMAL:I

    .line 13
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->PLAYSPEED_QUARTER:I

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mLastPlaySpeed:I

    .line 19
    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->getVideoView()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mVideoView:Lcn/nubia/video/player/VideoView;

    .line 20
    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->supportPlaySpeedShift()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mbSupportPlaySpeedShift:Z

    return-void
.end method

.method private setPlaySpeedShift(I)V
    .locals 2

    .line 32
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mLastPlaySpeed:I

    if-ne p1, v0, :cond_0

    return-void

    .line 34
    :cond_0
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mLastPlaySpeed:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    .line 39
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/VideoView;->setPlaySpeed(F)Z

    return-void
.end method


# virtual methods
.method public getSlomoVideoType()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getSlomoVideoType()I

    move-result v0

    return v0
.end method

.method public setTime(III)V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mbSupportPlaySpeedShift:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lt p1, p2, :cond_1

    if-gt p1, p3, :cond_1

    const/4 p1, 0x1

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->setPlaySpeedShift(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->setPlaySpeedShift(I)V

    :goto_0
    return-void
.end method

.method public supportPlaySpeedShift()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->mbSupportPlaySpeedShift:Z

    return v0
.end method
