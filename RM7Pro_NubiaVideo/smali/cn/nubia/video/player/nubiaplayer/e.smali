.class Lcn/nubia/video/player/nubiaplayer/e;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/player/nubiaplayer/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPressedThumb:I

    .line 3
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    .line 4
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    .line 5
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    .line 6
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    .line 7
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipVerticalW:I

    const/4 p3, 0x0

    .line 8
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipTime:F

    .line 9
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    .line 10
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxThumbWidth:I

    .line 11
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 12
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPrePlayedX:I

    .line 13
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 14
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 15
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressX:I

    .line 16
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxW:I

    .line 17
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedCurrentX:I

    .line 18
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftCurrentX:I

    .line 19
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightCurrentX:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    const-wide/16 v2, 0x1

    .line 21
    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    .line 22
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    .line 23
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    .line 24
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    .line 25
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongStartTime:J

    .line 26
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongEndTime:J

    .line 27
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    .line 28
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClipPlay:Z

    .line 29
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    .line 30
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/e;->loadDrawable()V

    .line 32
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/e;->initDrawableWidth()V

    .line 33
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/e;->initPixel()V

    return-void
.end method

.method private drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 5

    .line 4
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

    add-int/2addr v3, v4

    .line 7
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftCurrentX:I

    return-void
.end method

.method private drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 5

    .line 4
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    add-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

    add-int/2addr v3, v4

    .line 7
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightCurrentX:I

    return-void
.end method

.method private initDrawableWidth()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    return-void
.end method

.method private initPixel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailHeight:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    return-void
.end method

.method private isInClipEnd(II)Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

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

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

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

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

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

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected calClipLeftTime()I
    .locals 5

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    mul-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method protected calClipRightTime()I
    .locals 6

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    mul-long/2addr v0, v2

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    long-to-int v0, v2

    return v0
.end method

.method protected drawClipInvisiable(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressX:I

    if-nez v0, :cond_0

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxW:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mScreenWidth:I

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    add-int/2addr v0, v2

    .line 4
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mScreenWidth:I

    goto :goto_1

    .line 5
    :cond_1
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    move v0, v1

    move v3, v0

    goto :goto_2

    .line 6
    :cond_2
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    if-eq v0, v2, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v0, v2

    .line 8
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v0

    .line 9
    :goto_0
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_4

    .line 10
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    add-int/2addr v1, v5

    .line 11
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

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

    .line 12
    :goto_2
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    add-int/2addr v5, v6

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    add-int/2addr v6, v7

    iget v7, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailHeight:I

    add-int/2addr v6, v7

    .line 15
    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    add-int/2addr v2, v4

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailHeight:I

    add-int/2addr v4, v5

    .line 20
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawClipLeft(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected drawClipRight(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected drawPlayedBar(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    add-int/2addr v3, v4

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

    add-int/2addr v4, v5

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClipPlay:Z

    if-nez v1, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClipPlay:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    :cond_3
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedCurrentX:I

    return-void
.end method

.method protected drawRect(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xac

    const/16 v1, 0x33

    const/16 v2, 0xff

    .line 3
    invoke-virtual {v5, v2, v2, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 4
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-nez v0, :cond_1

    .line 8
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 9
    :cond_1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxW:I

    .line 10
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressX:I

    :goto_1
    int-to-float v2, v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int/2addr v1, v0

    int-to-float v4, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v6, v0

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getMinClipWidth()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    mul-int/lit16 v2, v2, 0x3e8

    long-to-int v0, v0

    div-int/2addr v2, v0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->isScreenPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipVerticalW:I

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/c;->c(Landroid/content/Context;)I

    move-result v0

    .line 6
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipVerticalW:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    mul-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipTime:F

    .line 8
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getPosition(J)J
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected getTime(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method protected initPosition()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    invoke-virtual {p0, v1, v2}, Lcn/nubia/video/player/nubiaplayer/e;->getPosition(J)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressX:I

    return-void
.end method

.method protected initThumbnailsMaxWidth()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mScreenWidth:I

    .line 6
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxThumbWidth:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxW:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    .line 9
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipVerticalW:I

    return-void
.end method

.method protected isInClipArea(II)Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftCurrentX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightCurrentX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mHeight:I

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

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mContext:Landroid/content/Context;

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

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->initThumbnailsMaxWidth()V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->initPosition()V

    .line 3
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz p1, :cond_5

    .line 4
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    const-wide/16 p3, 0x0

    if-eq p1, p2, :cond_2

    .line 5
    iget-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    goto :goto_0

    .line 7
    :cond_0
    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long p3, p3

    mul-long/2addr p1, p3

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    div-long/2addr p1, p3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 9
    :goto_0
    iget-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    goto/16 :goto_2

    .line 11
    :cond_1
    iget p5, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long v0, p5

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    .line 14
    iget-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    cmp-long p3, p1, p3

    if-nez p3, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 16
    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    goto :goto_1

    .line 17
    :cond_3
    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long p3, p3

    mul-long/2addr p1, p3

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    div-long/2addr p1, p3

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 19
    :goto_1
    iget-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    cmp-long p5, p1, p3

    if-nez p5, :cond_4

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 21
    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    goto :goto_2

    .line 22
    :cond_4
    iget p5, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long v0, p5

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 24
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    goto :goto_3

    .line 25
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 27
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    :cond_6
    :goto_3
    return-void
.end method

.method protected resumeOriginal()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPrePlayedX:I

    .line 2
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedCurrentX:I

    .line 3
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftCurrentX:I

    .line 4
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightCurrentX:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    .line 6
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    .line 7
    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClipPlay:Z

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 12
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->initPosition()V

    .line 13
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->initThumbnailsMaxWidth()V

    return-void
.end method

.method protected whichScrubber(II)I
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/e;->isInPlayingPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/e;->isInPlayingPosition(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClipPlay:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/e;->isInClipStart(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    return p1

    .line 4
    :cond_3
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/e;->isInClipEnd(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
