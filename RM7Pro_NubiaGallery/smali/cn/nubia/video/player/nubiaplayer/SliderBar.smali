.class public Lcn/nubia/video/player/nubiaplayer/SliderBar;
.super Landroid/view/View;
.source "SliderBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;
    }
.end annotation


# instance fields
.field private final SCRUBBER_END:I

.field private final SCRUBBER_NONE:I

.field private final SCRUBBER_START:I

.field private TAG:Ljava/lang/String;

.field private mBGColor:I

.field private mBGPaint:Landroid/graphics/Paint;

.field private mBGRect:Landroid/graphics/Rect;

.field private mColumnColor:I

.field private mColumnPaint:Landroid/graphics/Paint;

.field private mColumnRect:Landroid/graphics/Rect;

.field private mColumnWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mDiffer:I

.field private mDisabledBGColor:I

.field private mDisabledColor:I

.field private mDuration:J

.field private mEnabled:Z

.field private mEndPadding:I

.field private mEndRect:Landroid/graphics/Rect;

.field private mEndTime:J

.field private mExpandRegin:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mIsFirstDrawLongPress:Z

.field private mIsLongPress:Z

.field private mLastPressedThumb:I

.field private mListener:Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;

.field private mLongPressBGRect:Landroid/graphics/Rect;

.field private mLongPressEndRect:Landroid/graphics/Rect;

.field private mLongPressStartRect:Landroid/graphics/Rect;

.field private mLongPressTime:I

.field private mNormalIntervalWidth:I

.field private mOnGestrueListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPressedThumb:I

.field private mSliderColor:I

.field private mSliderPaint:Landroid/graphics/Paint;

.field private mSliderWidth:I

.field private mStartPadding:I

.field private mStartRect:Landroid/graphics/Rect;

.field private mStartTime:J

.field private mWideColumnRect:Landroid/graphics/Rect;

.field private mWideColumnWidth:I

.field private mWideIntervalWidth:I

.field private mbDrawCalledLongPress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "whb"

    .line 26
    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->TAG:Ljava/lang/String;

    const p2, 0x33ffffff

    .line 27
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGColor:I

    const/4 p2, 0x5

    .line 31
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mNormalIntervalWidth:I

    const/16 p2, 0xa

    .line 32
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideIntervalWidth:I

    const/4 p3, 0x1

    .line 35
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnWidth:I

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnColor:I

    .line 40
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnWidth:I

    .line 43
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    .line 45
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderColor:I

    .line 52
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    const-wide/16 v0, 0x32

    .line 54
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartTime:J

    const-wide/16 v0, 0x96

    .line 55
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndTime:J

    const-wide/16 v0, 0xc8

    .line 56
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDuration:J

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->SCRUBBER_NONE:I

    .line 63
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->SCRUBBER_START:I

    const/4 v0, 0x2

    .line 64
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->SCRUBBER_END:I

    const/16 v0, 0x14

    .line 65
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    .line 66
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mPressedThumb:I

    .line 67
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLastPressedThumb:I

    .line 71
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsLongPress:Z

    .line 72
    iput-boolean p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsFirstDrawLongPress:Z

    .line 74
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mbDrawCalledLongPress:Z

    .line 75
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressTime:I

    .line 77
    iput-boolean p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEnabled:Z

    const p2, 0x55ffffff    # 3.518437E13f

    .line 78
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDisabledColor:I

    const p2, 0x11ffffff

    .line 79
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDisabledBGColor:I

    .line 406
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;-><init>(Lcn/nubia/video/player/nubiaplayer/SliderBar;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mOnGestrueListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 94
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mContext:Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->init()V

    return-void
.end method

.method private TimeToX(J)J
    .locals 2

    .line 390
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsLongPress:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getWidth()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDuration:J

    div-long/2addr p1, v0

    return-wide p1

    .line 393
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndPadding:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDuration:J

    div-long/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartPadding:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private XToTime(J)J
    .locals 2

    .line 398
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsLongPress:Z

    if-eqz v0, :cond_0

    .line 399
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDuration:J

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getWidth()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    long-to-int p1, p1

    .line 401
    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartPadding:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 402
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDuration:J

    int-to-long p1, p1

    mul-long/2addr v0, p1

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartPadding:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndPadding:I

    sub-int/2addr p1, p2

    int-to-long p1, p1

    div-long/2addr v0, p1

    return-wide v0
.end method

.method static synthetic access$000(Lcn/nubia/video/player/nubiaplayer/SliderBar;II)I
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->whichScrubber(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/video/player/nubiaplayer/SliderBar;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsLongPress:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/video/player/nubiaplayer/SliderBar;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcn/nubia/video/player/nubiaplayer/SliderBar;)Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mListener:Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndTime:J

    return-wide v0
.end method

.method private drawLongPress(Landroid/graphics/Canvas;)V
    .locals 5

    .line 210
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mNormalIntervalWidth:I

    shl-int/lit8 v0, v0, 0x2

    .line 211
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideIntervalWidth:I

    shl-int/lit8 v1, v1, 0x2

    .line 212
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 213
    :goto_0
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_2

    .line 214
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 215
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnWidth:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 216
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_1

    .line 217
    :cond_0
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 220
    :cond_1
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 224
    :goto_1
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v0, v2, :cond_4

    .line 225
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 226
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 228
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt v0, v2, :cond_3

    .line 229
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 231
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private drawNormal(Landroid/graphics/Canvas;)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 237
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_2

    .line 238
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 239
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 240
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_1

    .line 241
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mNormalIntervalWidth:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 248
    :goto_1
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_4

    .line 249
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 250
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 252
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_3

    .line 253
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 255
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideIntervalWidth:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private init()V
    .locals 3

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGPaint:Landroid/graphics/Paint;

    .line 101
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnPaint:Landroid/graphics/Paint;

    .line 106
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    .line 112
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressBGRect:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 122
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    .line 123
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mNormalIntervalWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mNormalIntervalWidth:I

    .line 124
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideIntervalWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideIntervalWidth:I

    .line 125
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnWidth:I

    .line 126
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    .line 127
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    .line 128
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnWidth:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnWidth:I

    .line 130
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndPadding:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartPadding:I

    .line 135
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mOnGestrueListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mGesture:Landroid/view/GestureDetector;

    return-void
.end method

.method private isInEndScrubber(II)Z
    .locals 2

    .line 314
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInStartScrubber(II)Z
    .locals 2

    .line 309
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mExpandRegin:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onDrawCalledLongPress(Landroid/graphics/Canvas;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressBGRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setParam(Landroid/graphics/Rect;)V

    .line 286
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressBGRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 287
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setCalledLongPressScrubberParam()V

    .line 288
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->drawLongPress(Landroid/graphics/Canvas;)V

    .line 289
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 290
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private onDrawMyLongPress(Landroid/graphics/Canvas;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressBGRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setParam(Landroid/graphics/Rect;)V

    .line 261
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressBGRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 262
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setLongPressScrubberParam()V

    .line 263
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->drawLongPress(Landroid/graphics/Canvas;)V

    .line 264
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 265
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private onDrawNormal(Landroid/graphics/Canvas;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setParam(Landroid/graphics/Rect;)V

    .line 270
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 271
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->drawNormal(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 273
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private setCalledLongPressScrubberParam()V
    .locals 4

    .line 277
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressTime:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->TimeToX(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 278
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 279
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 280
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 281
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private setLongPressScrubberParam()V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsFirstDrawLongPress:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mPressedThumb:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 200
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsFirstDrawLongPress:Z

    if-eqz v0, :cond_3

    .line 201
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsFirstDrawLongPress:Z

    .line 202
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 203
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 192
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsFirstDrawLongPress:Z

    if-eqz v0, :cond_3

    .line 193
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsFirstDrawLongPress:Z

    .line 194
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 195
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_0
    return-void
.end method

.method private setParam(Landroid/graphics/Rect;)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 170
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mWideColumnRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 174
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 175
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->TimeToX(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 176
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 178
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 179
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->TimeToX(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 180
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private whichScrubber(II)I
    .locals 3

    .line 320
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLastPressedThumb:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 329
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->isInStartScrubber(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->isInEndScrubber(II)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->isInEndScrubber(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 324
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->isInStartScrubber(II)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 384
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 385
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public enabled(Z)V
    .locals 1

    .line 466
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEnabled:Z

    if-eqz p1, :cond_0

    .line 468
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDisabledBGColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mSliderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDisabledColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 474
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mColumnPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDisabledColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->invalidate()V

    return-void
.end method

.method public getEndTime()I
    .locals 2

    .line 462
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getStartTime()I
    .locals 2

    .line 458
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartTime:J

    long-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 296
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 297
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsLongPress:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->onDrawMyLongPress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mbDrawCalledLongPress:Z

    if-eqz v0, :cond_1

    .line 301
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->onDrawCalledLongPress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->onDrawNormal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mBGRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getPaddingLeft()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p4, p2

    .line 145
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p5, p3

    .line 146
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getPaddingBottom()I

    move-result p3

    sub-int p3, p5, p3

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    .line 143
    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressBGRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 149
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getPaddingTop()I

    move-result p3

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 151
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDiffer:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    .line 148
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 342
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    return v2

    .line 353
    :cond_1
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mPressedThumb:I

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v2, v0

    .line 361
    invoke-direct {p0, v2, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->XToTime(J)J

    move-result-wide v2

    .line 362
    iget-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDuration:J

    iget-wide v6, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartTime:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndTime:J

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mCurrentTime:J

    .line 363
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mListener:Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;->onMove(I)V

    .line 364
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->invalidate()V

    goto :goto_0

    :cond_3
    int-to-long v2, v0

    .line 355
    invoke-direct {p0, v2, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->XToTime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 356
    iget-wide v6, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndTime:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartTime:J

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mCurrentTime:J

    .line 357
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mListener:Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;->onMove(I)V

    .line 358
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->invalidate()V

    :goto_0
    return v1

    .line 370
    :cond_4
    iput v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mPressedThumb:I

    .line 371
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsLongPress:Z

    if-eqz p1, :cond_5

    .line 372
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mListener:Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mCurrentTime:J

    long-to-int v0, v3

    invoke-interface {p1, v1, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;->onLongPress(II)V

    .line 373
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsLongPress:Z

    .line 375
    :cond_5
    iput-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsFirstDrawLongPress:Z

    .line 376
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->invalidate()V

    return v1

    .line 348
    :cond_6
    iput-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mIsFirstDrawLongPress:Z

    .line 349
    invoke-direct {p0, v0, v2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->whichScrubber(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mPressedThumb:I

    .line 350
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLastPressedThumb:I

    return v1
.end method

.method public setListener(Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mListener:Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;

    return-void
.end method

.method public setLongPress(II)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 450
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mbDrawCalledLongPress:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 445
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mbDrawCalledLongPress:Z

    .line 446
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressStartRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 447
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressEndRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 453
    :goto_0
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLongPressTime:I

    .line 454
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->invalidate()V

    return-void
.end method

.method public setTimes(III)V
    .locals 2

    int-to-long v0, p1

    .line 431
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mStartTime:J

    int-to-long v0, p2

    .line 432
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mEndTime:J

    int-to-long v0, p3

    .line 433
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mDuration:J

    if-ne p1, p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 435
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLastPressedThumb:I

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    .line 437
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->mLastPressedThumb:I

    .line 439
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->invalidate()V

    return-void
.end method
