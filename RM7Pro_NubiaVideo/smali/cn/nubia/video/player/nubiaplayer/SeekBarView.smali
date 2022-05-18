.class public Lcn/nubia/video/player/nubiaplayer/SeekBarView;
.super Lcn/nubia/video/player/nubiaplayer/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;
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

.field private mLandscapeItem:Lcn/nubia/video/mediajni/VideoItem;

.field private mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

.field private mLongItem:Lcn/nubia/video/mediajni/VideoItem;

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

.field private mNewScreenOrientation:I

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

.field private mOldScreenOrientation:I

.field private mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

.field private mPortraitItem:Lcn/nubia/video/mediajni/VideoItem;

.field private final portraitRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/video/player/nubiaplayer/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 3
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    const/4 p3, -0x1

    .line 4
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOldScreenOrientation:I

    .line 5
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNewScreenOrientation:I

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    .line 8
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsUserChanged:Z

    .line 9
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

    .line 10
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$c;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$c;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->portraitRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->landscapeRunnable:Ljava/lang/Runnable;

    .line 12
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$e;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$e;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressRunnable:Ljava/lang/Runnable;

    .line 13
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mGesture:Landroid/view/GestureDetector;

    .line 14
    new-instance p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView$a;

    invoke-direct {p1, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$a;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private LongPressCancel()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    .line 2
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    .line 3
    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    invoke-virtual {p0, v1, v2}, Lcn/nubia/video/player/nubiaplayer/e;->getPosition(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->d(ZI)V

    .line 6
    :cond_0
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPrePlayedX:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    .line 8
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongStartTime:J

    .line 9
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongEndTime:J

    .line 10
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressX:I

    .line 11
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mScreenWidth:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxThumbWidth:I

    .line 12
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongItem:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->cancel()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->isLayoutRTLNubia()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->calLongPressTime()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMediaPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/video/player/nubiaplayer/SeekBarView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOldScreenOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/mediajni/VideoItem;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/mediajni/VideoItem;)Lcn/nubia/video/mediajni/VideoItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/mediajni/VideoItem;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/mediajni/VideoItem;

    return-object p0
.end method

.method static synthetic access$802(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/mediajni/VideoItem;)Lcn/nubia/video/mediajni/VideoItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/mediajni/VideoItem;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongItem:Lcn/nubia/video/mediajni/VideoItem;

    return-object p0
.end method

.method static synthetic access$902(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/mediajni/VideoItem;)Lcn/nubia/video/mediajni/VideoItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongItem:Lcn/nubia/video/mediajni/VideoItem;

    return-object p1
.end method

.method private calLongPressTime()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    int-to-long v2, v2

    div-long v2, v0, v2

    .line 3
    iget-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    add-long v6, v4, v2

    iput-wide v6, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongEndTime:J

    cmp-long v6, v6, v0

    if-lez v6, :cond_0

    .line 4
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongEndTime:J

    :cond_0
    sub-long/2addr v4, v2

    .line 5
    iput-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongStartTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gez v2, :cond_3

    .line 6
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongStartTime:J

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    sub-long v4, v0, v2

    iget v6, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iget v7, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    div-int/2addr v6, v7

    int-to-long v6, v6

    div-long/2addr v4, v6

    .line 8
    iget-wide v6, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    add-long v8, v6, v4

    iput-wide v8, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongEndTime:J

    cmp-long v8, v8, v0

    if-lez v8, :cond_2

    .line 9
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongEndTime:J

    :cond_2
    sub-long/2addr v6, v4

    .line 10
    iput-wide v6, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongStartTime:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_3

    .line 11
    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongStartTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method private drawLongPressThumbnails(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxThumbWidth:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    div-int v2, v0, v1

    .line 2
    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 3
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    if-eq v0, v2, :cond_3

    .line 4
    iput v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    .line 5
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->isScreenPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->cancel()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->cancel()V

    .line 8
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 10
    :goto_1
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressNumberOfThumb:I

    if-gt v1, v3, :cond_7

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxThumbWidth:I

    if-gt v2, v3, :cond_7

    .line 11
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    add-int/2addr v4, v2

    if-lt v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    .line 12
    :goto_2
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v6, v4, :cond_5

    .line 13
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_5
    move-object v4, v5

    :goto_3
    if-nez v4, :cond_6

    .line 14
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailHeight:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v2, v0, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 16
    :cond_6
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 18
    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 19
    iput v3, v6, Landroid/graphics/Rect;->right:I

    .line 20
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailHeight:I

    add-int v7, v0, v3

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 21
    iget v7, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    invoke-direct {p0, v4, v7, v3}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->resizeBitmapByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v5, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 22
    :goto_4
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private drawNormalThumbnails(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightDrawableW:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mScreenWidth:I

    if-ge v0, v2, :cond_7

    if-lez v1, :cond_7

    if-lt v0, v1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    add-int v3, v0, v2

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    div-int/2addr v3, v4

    add-int/2addr v0, v2

    .line 5
    rem-int/2addr v0, v4

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v0, v2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mBorder:I

    add-int/2addr v2, v4

    .line 8
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    const/4 v5, 0x0

    if-eq v4, v3, :cond_3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNewScreenOrientation:I

    iget v6, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOldScreenOrientation:I

    if-eq v4, v6, :cond_3

    .line 9
    iput v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 10
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->isScreenPortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iput v5, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOldScreenOrientation:I

    .line 12
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->portraitRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 13
    iput v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOldScreenOrientation:I

    .line 14
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->landscapeRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 15
    :cond_3
    iput v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 16
    :goto_0
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    if-gt v5, v3, :cond_7

    if-gt v0, v1, :cond_7

    .line 17
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    add-int/2addr v3, v0

    if-lt v3, v1, :cond_4

    move v3, v1

    .line 18
    :cond_4
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v7, v4, :cond_5

    .line 19
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_6

    .line 20
    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailHeight:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v0, v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 22
    :cond_6
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 24
    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 25
    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 26
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailHeight:I

    add-int v8, v2, v3

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget v8, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    invoke-direct {p0, v4, v8, v3}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->resizeBitmapByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v6, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 28
    :goto_2
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method private getClipPlayedMoveTime()J
    .locals 4

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int v3, v1, v2

    if-gt v0, v3, :cond_0

    add-int/2addr v1, v2

    .line 2
    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    if-lt v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/e;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLongPlayedMoveTime()J
    .locals 8

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressX:I

    if-gt v0, v1, :cond_0

    .line 2
    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxW:I

    add-int v3, v1, v2

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_1

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 4
    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPrePlayedX:I

    if-le v0, v1, :cond_2

    .line 6
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongEndTime:J

    iget-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongStartTime:J

    sub-long/2addr v2, v4

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v2, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxThumbWidth:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    add-long/2addr v2, v0

    goto :goto_1

    .line 7
    :cond_2
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    iget-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongEndTime:J

    iget-wide v6, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongStartTime:J

    sub-long/2addr v4, v6

    sub-int/2addr v1, v0

    int-to-long v0, v1

    mul-long/2addr v4, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxThumbWidth:I

    int-to-long v0, v0

    div-long/2addr v4, v0

    sub-long/2addr v2, v4

    :goto_1
    return-wide v2
.end method

.method private getNormalPlayedMoveTime()J
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/e;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isLayoutRTLNubia()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private resizeBitmapByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v7, p2

    int-to-float v0, v3

    div-float v0, v7, v0

    int-to-float v1, p3

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 4
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 5
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->isLayoutRTLNubia()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private scrubberEndMove(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 4
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    if-gt p1, v2, :cond_2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr p1, v1

    if-le v0, p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 9
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->calClipRightTime()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->calClipRightTime()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    .line 12
    :goto_0
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 13
    :goto_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    if-eqz v1, :cond_5

    .line 14
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->b(ZI)V

    .line 15
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    invoke-interface {v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->e(Z)V

    .line 16
    :cond_5
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private scrubberStartMove(I)V
    .locals 7

    .line 1
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const-wide/16 v1, 0x0

    if-gt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 4
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    sub-int v0, p1, v0

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v3

    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    if-gt v0, v4, :cond_2

    sub-int/2addr p1, v4

    sub-int/2addr p1, v3

    .line 6
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 9
    iput-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->calClipLeftTime()I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->calClipLeftTime()I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    .line 12
    :goto_0
    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    cmp-long p1, v3, v1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-wide v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    iget-wide v5, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    .line 13
    :goto_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    if-eqz v1, :cond_5

    long-to-int v2, v3

    .line 14
    invoke-interface {v1, v0, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->b(ZI)V

    .line 15
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    invoke-interface {v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->e(Z)V

    .line 16
    :cond_5
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancelClip()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClipPlay:Z

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->e(Z)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    .line 7
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getClipLeftTime()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getClipRightTime()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getMax()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawRect(Landroid/graphics/Canvas;)V

    .line 6
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawNormalThumbnails(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->drawLongPressThumbnails(Landroid/graphics/Canvas;)V

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawClipLeft(Landroid/graphics/Canvas;)V

    .line 10
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawClipRight(Landroid/graphics/Canvas;)V

    .line 11
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawClipInvisiable(Landroid/graphics/Canvas;)V

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->drawPlayedBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcn/nubia/video/player/nubiaplayer/e;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->isScreenPortrait()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 3
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNewScreenOrientation:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 4
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNewScreenOrientation:I

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNewScreenOrientation:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mOldScreenOrientation:I

    if-eq p1, p2, :cond_3

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->isScreenPortrait()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/video/mediajni/VideoItem;->cancel()V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/video/mediajni/VideoItem;->cancel()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_c

    const/4 v1, 0x0

    if-eq p1, v2, :cond_9

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_9

    return v1

    .line 6
    :cond_1
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPressedThumb:I

    if-eq p1, v2, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->scrubberEndMove(I)V

    goto :goto_2

    .line 8
    :cond_3
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->scrubberStartMove(I)V

    goto :goto_2

    .line 9
    :cond_4
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 10
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-eqz p1, :cond_5

    .line 11
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getLongPlayedMoveTime()J

    move-result-wide v0

    goto :goto_1

    .line 12
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz p1, :cond_6

    .line 13
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipPlayedMoveTime()J

    move-result-wide v0

    goto :goto_1

    .line 14
    :cond_6
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getNormalPlayedMoveTime()J

    move-result-wide v0

    .line 15
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    if-eqz p1, :cond_7

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_7

    long-to-int v3, v0

    invoke-interface {p1, v3, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->g(IZ)V

    .line 16
    :cond_7
    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_8

    .line 17
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_2
    return v2

    .line 19
    :cond_9
    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPressedThumb:I

    .line 20
    iput-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsUserChanged:Z

    .line 21
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressCancel()V

    .line 22
    :cond_a
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/e;->getTime(J)J

    .line 23
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    if-eqz p1, :cond_b

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->f(I)V

    :cond_b
    return v2

    .line 24
    :cond_c
    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/e;->whichScrubber(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPressedThumb:I

    if-eq p1, v2, :cond_d

    goto :goto_3

    .line 25
    :cond_d
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsUserChanged:Z

    .line 26
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/e;->getTime(J)J

    move-result-wide v0

    .line 27
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    if-eqz p1, :cond_e

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->a(I)V

    :cond_e
    :goto_3
    return v2
.end method

.method public setClipIsPlay(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClipPlay:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setListener(Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    return-void
.end method

.method public setMax(I)V
    .locals 6

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    .line 2
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipEndTime:J

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mMinClipW:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMediaPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMediaPath:Ljava/lang/String;

    if-eq v0, p1, :cond_4

    .line 2
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mMediaPath:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->resumeOriginal()V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalNumberOfThumb:I

    .line 5
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/e;->isScreenPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPortraitItem:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/video/mediajni/VideoItem;->cancel()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLandscapeItem:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/video/mediajni/VideoItem;->cancel()V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mNormalItems:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-eqz p1, :cond_3

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressCancel()V

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    int-to-long v0, p1

    .line 1
    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setTime(JJ)V

    return-void
.end method

.method public setSpeedIsLong(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->LongPressCancel()V

    :goto_0
    return-void
.end method

.method public setTime(JJ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsUserChanged:Z

    .line 2
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mCurrentTime:J

    .line 4
    iput-wide p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mTotalTime:J

    .line 5
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 7
    iget-boolean p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mIsClip:Z

    if-eqz p3, :cond_2

    .line 8
    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    add-int/2addr p1, p2

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    if-lt p1, p3, :cond_1

    sub-int/2addr p3, p2

    .line 9
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mListener:Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    if-eqz p1, :cond_1

    iget-wide p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipStartTime:J

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->c(I)V

    .line 11
    :cond_1
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftX:I

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_4

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipRightX:I

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedDrawableW:I

    sub-int/2addr p2, p3

    if-gt p1, p2, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 13
    :cond_2
    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    add-int/2addr p3, p2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p3, p2

    if-lt p1, p3, :cond_3

    .line 15
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mNormalMaxThumbWidth:I

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 17
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method
