.class public Lcn/nubia/deskclock/ui/WorldTimeClockView;
.super Lcn/nubia/deskclock/ui/ClockView;
.source "WorldTimeClockView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->loadImageResource(Z)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->loadImageResource(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected loadImageResource(Z)V
    .locals 2
    .param p1, "isworldclock"    # Z

    .prologue
    .line 26
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mSecBasePointDistance:F

    .line 28
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mMinBasePointDistance:F

    .line 30
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHourBasePointDistance:F

    .line 32
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcn/nubia/deskclock/ui/ClockView;->loadImageResource(Z)V

    .line 33
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 74
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    :cond_4
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 82
    :cond_5
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 83
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    :cond_6
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 90
    :cond_7
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 91
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 94
    :cond_8
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WorldTimeClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    :cond_9
    return-void
.end method

.method public startCloseAnimation()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcn/nubia/deskclock/ui/ClockView;->startCloseAnimation()V

    .line 54
    return-void
.end method

.method public startEnterAnimation(IIIZ)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "isDelay"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/deskclock/ui/ClockView;->startEnterAnimation(IIIZ)V

    .line 44
    return-void
.end method

.method public startUpdateTime()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcn/nubia/deskclock/ui/ClockView;->startUpdateTime()V

    .line 49
    return-void
.end method
