.class Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;
.super Landroid/view/View;
.source "SeekBarViewBase.java"


# static fields
.field protected static final DEFAULT_TOTAL_TIME:I = 0x1

.field private static final MIN_CLIP_BASE_WIDTH:I = 0x14

.field private static final MIN_CLIP_TIME:I = 0x7530

.field protected static final SCRUBBER_CURRENT:I = 0x1

.field protected static final SCRUBBER_END:I = 0x3

.field protected static final SCRUBBER_NONE:I = 0x0

.field protected static final SCRUBBER_START:I = 0x2


# instance fields
.field protected mBorder:I

.field protected mClipEndTime:J

.field protected mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipLeftCurrentX:I

.field protected mClipLeftDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipLeftDrawableW:I

.field protected mClipLeftX:I

.field protected mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipRightCurrentX:I

.field protected mClipRightDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipRightDrawableW:I

.field protected mClipRightX:I

.field protected mClipStartTime:J

.field protected mContext:Landroid/content/Context;

.field protected mCurrentTime:J

.field protected mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field protected mHeight:I

.field protected mIsClip:Z

.field protected mIsClipPlay:Z

.field protected mIsLongPress:Z

.field protected mIsWallPaper:Z

.field protected mLongEndTime:J

.field protected mLongPressMaxThumbWidth:I

.field protected mLongPressMaxW:I

.field protected mLongPressTime:J

.field protected mLongPressX:I

.field protected mLongStartTime:J

.field private mMinClipTime:F

.field private mMinClipVerticalW:I

.field protected mMinClipW:I

.field protected mNormalMaxThumbWidth:I

.field protected mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mPlayedCurrentX:I

.field protected mPlayedDrawableW:I

.field protected mPlayedX:I

.field protected mPrePlayedX:I

.field protected mPressedThumb:I

.field protected mScreenWidth:I

.field protected mThumbnailHeight:I

.field protected mThumbnailWidth:I

.field protected mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPressedThumb:I

    .line 47
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedDrawableW:I

    .line 48
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    .line 49
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    .line 51
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipW:I

    .line 52
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipVerticalW:I

    const/4 p3, 0x0

    .line 53
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipTime:F

    .line 57
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    .line 59
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressMaxThumbWidth:I

    .line 61
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedX:I

    .line 63
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPrePlayedX:I

    .line 65
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    .line 67
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    .line 69
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressX:I

    .line 70
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressMaxW:I

    .line 71
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedCurrentX:I

    .line 72
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftCurrentX:I

    .line 73
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightCurrentX:I

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mCurrentTime:J

    const-wide/16 v2, 0x1

    .line 76
    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    .line 77
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipStartTime:J

    .line 78
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipEndTime:J

    .line 80
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressTime:J

    .line 81
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongStartTime:J

    .line 82
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongEndTime:J

    .line 84
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    .line 85
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClipPlay:Z

    .line 86
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsLongPress:Z

    .line 87
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsWallPaper:Z

    .line 91
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mContext:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->loadDrawable()V

    .line 93
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->initDrawableWidth()V

    .line 94
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->initPixel()V

    return-void
.end method

.method private drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 5

    .line 309
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    .line 311
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v2, v3

    .line 313
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    add-int/2addr v3, v4

    .line 309
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsLongPress:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftCurrentX:I

    return-void
.end method

.method private drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 5

    .line 327
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    .line 329
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    add-int/2addr v2, v3

    .line 331
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    add-int/2addr v3, v4

    .line 327
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsLongPress:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightCurrentX:I

    return-void
.end method

.method private initDrawableWidth()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedDrawableW:I

    .line 125
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    .line 126
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    return-void
.end method

.method private initPixel()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    .line 118
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mThumbnailWidth:I

    .line 119
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070218

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mThumbnailHeight:I

    .line 120
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mBorder:I

    return-void
.end method

.method private isInClipEnd(II)Z
    .locals 2

    .line 158
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInClipStart(II)Z
    .locals 2

    .line 153
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInPlayingPosition(II)Z
    .locals 2

    .line 148
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadDrawable()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected calClipLeftTime()I
    .locals 7

    .line 193
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    mul-long/2addr v0, v2

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v5, v4

    div-long/2addr v0, v5

    .line 195
    iget-boolean v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsWallPaper:Z

    if-eqz v5, :cond_0

    int-to-long v4, v4

    .line 196
    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getMinClipWidth()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 197
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 199
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 200
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipEndTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v0, 0x3e8

    sub-long v0, v2, v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method protected calClipRightTime()I
    .locals 7

    .line 211
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    mul-long/2addr v0, v2

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v5, v4

    div-long/2addr v0, v5

    .line 213
    iget-boolean v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsWallPaper:Z

    if-eqz v5, :cond_0

    int-to-long v4, v4

    .line 214
    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getMinClipWidth()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 215
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v5, v4

    div-long/2addr v2, v5

    const-wide/16 v5, 0x1

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 217
    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 218
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipStartTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    .line 223
    :cond_0
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method protected drawClipInvisiable(Landroid/graphics/Canvas;)V
    .locals 9

    .line 339
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsLongPress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 340
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressX:I

    if-nez v0, :cond_0

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressMaxW:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mScreenWidth:I

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 342
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    add-int/2addr v0, v2

    .line 343
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mScreenWidth:I

    goto :goto_1

    .line 346
    :cond_1
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    move v0, v1

    move v3, v0

    goto :goto_2

    .line 349
    :cond_2
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    if-eq v0, v2, :cond_3

    .line 350
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v2

    .line 351
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v0

    .line 353
    :goto_0
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_4

    .line 354
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    add-int/2addr v1, v5

    .line 355
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mScreenWidth:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v3, v4

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v1

    move v1, v0

    move v0, v3

    .line 358
    :goto_2
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    .line 360
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mBorder:I

    add-int/2addr v5, v6

    .line 362
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mBorder:I

    add-int/2addr v6, v7

    iget v7, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mThumbnailHeight:I

    add-int/2addr v6, v7

    .line 358
    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 363
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 364
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v2

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mBorder:I

    add-int/2addr v2, v4

    .line 368
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mBorder:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mThumbnailHeight:I

    add-int/2addr v4, v5

    .line 364
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawClipLeft(Landroid/graphics/Canvas;)V
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected drawClipRight(Landroid/graphics/Canvas;)V
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected drawPlayedBar(Landroid/graphics/Canvas;)V
    .locals 6

    .line 373
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsLongPress:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedX:I

    .line 376
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedX:I

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedDrawableW:I

    add-int/2addr v3, v4

    .line 378
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    add-int/2addr v4, v5

    .line 374
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClipPlay:Z

    if-nez v1, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClipPlay:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsLongPress:Z

    if-eqz v0, :cond_3

    .line 380
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 381
    :cond_3
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedX:I

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedCurrentX:I

    return-void
.end method

.method protected drawRect(Landroid/graphics/Canvas;)V
    .locals 7

    .line 280
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 281
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xac

    const/16 v1, 0x33

    const/16 v2, 0xff

    .line 282
    invoke-virtual {v5, v2, v2, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 284
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mBorder:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 288
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsLongPress:Z

    if-nez v0, :cond_1

    .line 289
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 293
    :cond_1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressMaxW:I

    .line 294
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressX:I

    :goto_1
    int-to-float v2, v1

    .line 296
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mBorder:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int/2addr v1, v0

    int-to-float v4, v1

    .line 297
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mBorder:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v6, v0

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    .line 296
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getMinClipWidth()I
    .locals 5

    .line 401
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 402
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    mul-int/lit16 v2, v2, 0x3e8

    long-to-int v0, v0

    div-int/2addr v2, v0

    return v2

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->isScreenPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipVerticalW:I

    return v0

    .line 408
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/video/player/common/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 409
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipVerticalW:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    mul-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 410
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedDrawableW:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipTime:F

    .line 412
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getPosition(J)J
    .locals 2

    .line 185
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected getTime(J)J
    .locals 4

    .line 181
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method protected initPosition()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mCurrentTime:J

    invoke-virtual {p0, v1, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPosition(J)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedX:I

    .line 131
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressX:I

    return-void
.end method

.method protected initThumbnailsMaxWidth()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 137
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mScreenWidth:I

    .line 141
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressMaxThumbWidth:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mLongPressMaxW:I

    .line 142
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 143
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedDrawableW:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    .line 144
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipVerticalW:I

    return-void
.end method

.method protected isInClipArea(II)Z
    .locals 2

    .line 175
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftCurrentX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightCurrentX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isScreenPortrait()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_6

    .line 231
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->initThumbnailsMaxWidth()V

    .line 232
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->initPosition()V

    .line 233
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    if-eqz p1, :cond_5

    .line 234
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipW:I

    const-wide/16 p3, 0x0

    if-eq p1, p2, :cond_2

    .line 235
    iget-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipStartTime:J

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    .line 236
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    goto :goto_0

    .line 238
    :cond_0
    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long p3, p3

    mul-long/2addr p1, p3

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    div-long/2addr p1, p3

    .line 239
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    .line 241
    :goto_0
    iget-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipEndTime:J

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    .line 242
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    goto/16 :goto_2

    .line 245
    :cond_1
    iget p5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v0, p5

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    .line 246
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    goto :goto_2

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipW:I

    .line 251
    iget-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipStartTime:J

    cmp-long p3, p1, p3

    if-nez p3, :cond_3

    .line 252
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    .line 253
    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipW:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    goto :goto_1

    .line 255
    :cond_3
    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long p3, p3

    mul-long/2addr p1, p3

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    div-long/2addr p1, p3

    .line 256
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    .line 258
    :goto_1
    iget-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipEndTime:J

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    cmp-long p5, p1, p3

    if-nez p5, :cond_4

    .line 259
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    .line 261
    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipW:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    goto :goto_2

    .line 263
    :cond_4
    iget p5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v0, p5

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    .line 264
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftDrawableW:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    .line 268
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipW:I

    goto :goto_3

    .line 270
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    .line 271
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    .line 272
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mMinClipW:I

    :cond_6
    :goto_3
    return-void
.end method

.method protected resumeOriginal()V
    .locals 3

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPrePlayedX:I

    .line 386
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mPlayedCurrentX:I

    .line 387
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftCurrentX:I

    .line 388
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightCurrentX:I

    const-wide/16 v1, 0x0

    .line 389
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mCurrentTime:J

    .line 390
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipStartTime:J

    .line 391
    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mTotalTime:J

    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipEndTime:J

    .line 392
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    .line 393
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClipPlay:Z

    .line 394
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipLeftX:I

    .line 395
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mClipRightX:I

    .line 396
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->initPosition()V

    .line 397
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->initThumbnailsMaxWidth()V

    return-void
.end method

.method protected whichScrubber(II)I
    .locals 1

    .line 163
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->isInPlayingPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->isInPlayingPosition(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->mIsClipPlay:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 166
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->isInClipStart(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    return p1

    .line 168
    :cond_3
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->isInClipEnd(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
