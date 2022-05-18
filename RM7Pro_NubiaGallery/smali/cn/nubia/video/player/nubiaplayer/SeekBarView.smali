.class public Lcn/nubia/video/player/nubiaplayer/SeekBarView;
.super Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;
.source "SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_LONGPRESS:I = 0x5

.field private static final MSG_UPDATE_NORMAL:I = 0x4


# instance fields
.field private final LongPressRunnable:Ljava/lang/Runnable;

.field private final landscapeRunnable:Ljava/lang/Runnable;

.field private mGesture:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mIsUserChanged:Z

.field private mLandscapeItem:Lcn/nubia/video/editor/VideoItem;

.field private mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

.field private mLongItem:Lcn/nubia/video/editor/VideoItem;

.field private mLongPressItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLongPressNumberOfThumb:I

.field private mMediaPath:Ljava/lang/String;

.field private mNormalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNormalNumberOfThumb:I

.field private mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

.field private mPortraitItem:Lcn/nubia/video/editor/VideoItem;

.field private final portraitRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 44
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 45
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    .line 51
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    .line 52
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    .line 55
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsUserChanged:Z

    .line 101
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

    .line 414
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->portraitRunnable:Ljava/lang/Runnable;

    .line 457
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$4;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$4;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->landscapeRunnable:Ljava/lang/Runnable;

    .line 500
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mGesture:Landroid/view/GestureDetector;

    .line 67
    new-instance p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView$1;

    invoke-direct {p1, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$1;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private LongPressCancel()V
    .locals 4

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    .line 399
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    .line 400
    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    invoke-virtual {p0, v1, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPosition(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 401
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    .line 402
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onLongPress(ZI)V

    .line 403
    :cond_0
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPrePlayedX:I

    const-wide/16 v1, 0x0

    .line 404
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    .line 405
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    .line 406
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    .line 407
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressX:I

    .line 408
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mScreenWidth:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxThumbWidth:I

    .line 409
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongItem:Lcn/nubia/video/editor/VideoItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->cancel()V

    .line 410
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 411
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMediaPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/editor/VideoItem;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/editor/VideoItem;)Lcn/nubia/video/editor/VideoItem;
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/editor/VideoItem;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/editor/VideoItem;

    return-object p0
.end method

.method static synthetic access$602(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/editor/VideoItem;)Lcn/nubia/video/editor/VideoItem;
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/editor/VideoItem;

    return-object p1
.end method

.method static synthetic access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongItem:Lcn/nubia/video/editor/VideoItem;

    return-object p0
.end method

.method static synthetic access$702(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/editor/VideoItem;)Lcn/nubia/video/editor/VideoItem;
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongItem:Lcn/nubia/video/editor/VideoItem;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->calLongPressTime()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    return p0
.end method

.method private calLongPressTime()V
    .locals 6

    .line 652
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    if-nez v0, :cond_1

    .line 653
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 654
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    .line 655
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    iget-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    .line 656
    :cond_0
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    .line 657
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    goto :goto_0

    .line 659
    :cond_1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 661
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    .line 662
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    iget-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    .line 663
    :cond_2
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    .line 664
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method private drawLongPressThumbnails(Landroid/graphics/Canvas;)V
    .locals 8

    .line 201
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxThumbWidth:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    div-int/2addr v0, v1

    .line 202
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxThumbWidth:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 204
    :cond_0
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    if-eq v1, v0, :cond_3

    .line 205
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    .line 206
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->isScreenPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/editor/VideoItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->cancel()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/editor/VideoItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->cancel()V

    .line 211
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mBorder:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 217
    :goto_1
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    if-gt v1, v3, :cond_7

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxThumbWidth:I

    if-gt v2, v3, :cond_7

    .line 218
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    add-int/2addr v3, v2

    .line 219
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxThumbWidth:I

    if-lt v3, v4, :cond_4

    .line 220
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxThumbWidth:I

    .line 223
    :cond_4
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v6, v4, :cond_5

    .line 224
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    if-nez v4, :cond_6

    .line 227
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v2, v0, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 231
    :cond_6
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 232
    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 233
    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 234
    iput v3, v6, Landroid/graphics/Rect;->right:I

    .line 235
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    add-int/2addr v3, v0

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 236
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    iget v7, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    invoke-direct {p0, v4, v3, v7}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->resizeBitmapByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v5, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 239
    :goto_3
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private drawNormalThumbnails(Landroid/graphics/Canvas;)V
    .locals 9

    .line 152
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    .line 153
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightDrawableW:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 156
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mScreenWidth:I

    if-ge v0, v2, :cond_7

    if-lez v1, :cond_7

    if-lt v0, v1, :cond_0

    goto/16 :goto_4

    .line 160
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalMaxThumbWidth:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedDrawableW:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    div-int/2addr v0, v2

    .line 161
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalMaxThumbWidth:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedDrawableW:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v2, v3

    .line 164
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mBorder:I

    add-int/2addr v3, v4

    .line 165
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    if-eq v4, v0, :cond_3

    .line 166
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 167
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->isScreenPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->portraitRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->landscapeRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 174
    :goto_1
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    if-gt v0, v4, :cond_7

    if-gt v2, v1, :cond_7

    .line 175
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    add-int/2addr v4, v2

    if-lt v4, v1, :cond_4

    move v4, v1

    .line 180
    :cond_4
    iget-object v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v7, v5, :cond_5

    .line 181
    iget-object v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_5
    move-object v5, v6

    :goto_2
    if-nez v5, :cond_6

    .line 184
    iget-object v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 188
    :cond_6
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 189
    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 190
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 191
    iput v4, v7, Landroid/graphics/Rect;->right:I

    .line 192
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    add-int/2addr v4, v3

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 193
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    iget v8, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    invoke-direct {p0, v5, v4, v8}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->resizeBitmapByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4, v6, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 196
    :goto_3
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    return-void
.end method

.method private getClipPlayedMoveTime()J
    .locals 3

    .line 338
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 339
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    goto :goto_0

    .line 340
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    if-lt v0, v1, :cond_1

    .line 341
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    .line 343
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLongPlayedMoveTime()J
    .locals 6

    .line 320
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressX:I

    if-gt v0, v1, :cond_0

    .line 321
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressX:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    goto :goto_0

    .line 322
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressX:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxW:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 323
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    .line 325
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPrePlayedX:I

    if-le v0, v1, :cond_2

    .line 326
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPrePlayedX:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxThumbWidth:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    add-long/2addr v0, v2

    goto :goto_1

    .line 330
    :cond_2
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    iget-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPrePlayedX:I

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxThumbWidth:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    :goto_1
    return-wide v0
.end method

.method private getNormalPlayedMoveTime()J
    .locals 3

    .line 307
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    goto :goto_0

    .line 309
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalMaxThumbWidth:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    .line 310
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 311
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalMaxThumbWidth:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    .line 312
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    .line 314
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private resizeBitmapByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 139
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 140
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 141
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 143
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private scrubberEndMove(I)V
    .locals 5

    .line 373
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    .line 374
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    .line 376
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    goto :goto_0

    .line 377
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMinClipW:I

    if-gt p1, v0, :cond_2

    .line 378
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMinClipW:I

    add-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    .line 379
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    .line 381
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->calClipRightTime()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->calClipRightTime()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    .line 388
    :goto_0
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 389
    :goto_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    if-eqz v1, :cond_5

    .line 390
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onClipChanged(ZI)V

    .line 391
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onIsClip(Z)V

    .line 393
    :cond_5
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    .line 394
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    return-void
.end method

.method private scrubberStartMove(I)V
    .locals 5

    .line 348
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    .line 349
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v0

    const-wide/16 v1, 0x0

    if-gt p1, v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    .line 351
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    goto :goto_0

    .line 352
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMinClipW:I

    if-gt p1, v0, :cond_2

    .line 353
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMinClipW:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    .line 354
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    .line 356
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->calClipLeftTime()I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->calClipLeftTime()I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    .line 363
    :goto_0
    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    cmp-long p1, v3, v1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    .line 364
    :goto_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    if-eqz v1, :cond_5

    .line 365
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onClipChanged(ZI)V

    .line 366
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onIsClip(Z)V

    .line 368
    :cond_5
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    .line 369
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancelClip()V
    .locals 2

    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    .line 629
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    .line 630
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClipPlay:Z

    .line 631
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    if-eqz v0, :cond_0

    .line 632
    iget-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    invoke-interface {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onIsClip(Z)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 634
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    .line 635
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    .line 636
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    .line 637
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    .line 638
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 245
    invoke-super {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 246
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getClipLeftTime()I
    .locals 2

    .line 577
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getClipRightTime()I
    .locals 2

    .line 581
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getMax()J
    .locals 2

    .line 614
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawRect(Landroid/graphics/Canvas;)V

    .line 125
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawNormalThumbnails(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawLongPressThumbnails(Landroid/graphics/Canvas;)V

    .line 130
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawClipLeft(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawClipRight(Landroid/graphics/Canvas;)V

    .line 132
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawClipInvisiable(Landroid/graphics/Canvas;)V

    .line 133
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawPlayedBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 87
    invoke-super/range {p0 .. p5}, Lcn/nubia/video/player/nubiaplayer/SeekBarViewBase;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->isScreenPortrait()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/editor/VideoItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/video/editor/VideoItem;->cancel()V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/editor/VideoItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/video/editor/VideoItem;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    if-eq p1, v2, :cond_8

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_8

    return v1

    .line 266
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPressedThumb:I

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->scrubberEndMove(I)V

    goto :goto_1

    .line 286
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->scrubberStartMove(I)V

    goto :goto_1

    .line 268
    :cond_3
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    .line 270
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    if-eqz p1, :cond_4

    .line 271
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getLongPlayedMoveTime()J

    move-result-wide v0

    goto :goto_0

    .line 272
    :cond_4
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    if-eqz p1, :cond_5

    .line 273
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipPlayedMoveTime()J

    move-result-wide v0

    goto :goto_0

    .line 276
    :cond_5
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getNormalPlayedMoveTime()J

    move-result-wide v0

    .line 278
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    if-eqz p1, :cond_6

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    long-to-int v3, v0

    invoke-interface {p1, v3, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onProgressChanged(IZ)V

    .line 280
    :cond_6
    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_7

    .line 281
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    .line 282
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    :cond_7
    :goto_1
    return v2

    .line 295
    :cond_8
    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPressedThumb:I

    .line 296
    iput-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsUserChanged:Z

    .line 297
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressCancel()V

    .line 298
    :cond_9
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getTime(J)J

    .line 299
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    if-eqz p1, :cond_a

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onStopTrackingTouch(I)V

    :cond_a
    return v2

    .line 256
    :cond_b
    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->whichScrubber(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPressedThumb:I

    .line 257
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPressedThumb:I

    if-eq p1, v2, :cond_c

    goto :goto_2

    .line 259
    :cond_c
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsUserChanged:Z

    .line 260
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getTime(J)J

    move-result-wide v0

    .line 261
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    if-eqz p1, :cond_d

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onStartTrackingTouch(I)V

    :cond_d
    :goto_2
    return v2
.end method

.method public setClipIsPlay(Z)V
    .locals 1

    .line 622
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClipPlay:Z

    .line 624
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    return-void
.end method

.method public setListener(Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    return-void
.end method

.method public setMax(I)V
    .locals 4

    int-to-long v0, p1

    .line 607
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    .line 608
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipEndTime:J

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMinClipW:I

    .line 610
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    return-void
.end method

.method public setMediaPath(Ljava/lang/String;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMediaPath:Ljava/lang/String;

    if-eq v0, p1, :cond_4

    .line 590
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMediaPath:Ljava/lang/String;

    .line 591
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->resumeOriginal()V

    const/4 p1, 0x0

    .line 592
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 593
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->isScreenPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 594
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/editor/VideoItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/video/editor/VideoItem;->cancel()V

    goto :goto_0

    .line 596
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/editor/VideoItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/video/editor/VideoItem;->cancel()V

    .line 598
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 599
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    if-eqz p1, :cond_3

    .line 600
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressCancel()V

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    int-to-long v0, p1

    .line 618
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setTime(JJ)V

    return-void
.end method

.method public setSpeedIsLong(Z)V
    .locals 2

    .line 642
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    .line 643
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    if-eqz p1, :cond_0

    .line 644
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    .line 645
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    goto :goto_0

    .line 647
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressCancel()V

    :goto_0
    return-void
.end method

.method public setTime(JJ)V
    .locals 2

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsUserChanged:Z

    .line 549
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-void

    .line 552
    :cond_0
    iput-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mCurrentTime:J

    .line 553
    iput-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    .line 554
    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long p3, p3

    mul-long/2addr p1, p3

    iget-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mTotalTime:J

    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 555
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    .line 556
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsClip:Z

    if-eqz p1, :cond_2

    .line 557
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedDrawableW:I

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    if-lt p1, p2, :cond_1

    .line 558
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    .line 559
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    if-eqz p1, :cond_1

    iget-wide p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipStartTime:J

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onClipPlayEnd(I)V

    .line 561
    :cond_1
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftX:I

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_4

    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipRightX:I

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr p2, p3

    if-gt p1, p2, :cond_4

    .line 563
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    goto :goto_0

    .line 567
    :cond_2
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalMaxThumbWidth:I

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p2, p3

    .line 568
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_3

    .line 569
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalMaxThumbWidth:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    .line 570
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    .line 572
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setWallpaper(Z)V
    .locals 0

    .line 545
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsWallPaper:Z

    return-void
.end method
