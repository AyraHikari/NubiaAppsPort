.class public Lcn/nubia/video/player/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Lcn/nubia/video/player/common/Utils$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/VideoView$ScaleMode;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBookmarker:Lcn/nubia/video/player/common/Bookmarker;

.field private mBufferingUpdateListener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCancelToastRunnable:Ljava/lang/Runnable;

.field private mCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mCurrentTimeMS:I

.field private mDialog:Landroid/app/Dialog;

.field private mDuration:I

.field private mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

.field private mHanlder:Landroid/os/Handler;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

.field private mIsPause:Z

.field private mIsSeeking:Z

.field private mLock:Ljava/lang/Object;

.field private mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

.field private mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

.field private mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field mPlayerActivityIsPaused:Z

.field private mPlayerCount:I

.field private mPlayerType:I

.field mPreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

.field private mReLayoutRunnable:Ljava/lang/Runnable;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

.field private mScreenSize:Landroid/graphics/Point;

.field mSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mToast:Landroid/widget/Toast;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "VideoView"

    .line 48
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    .line 53
    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    .line 56
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    .line 57
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    .line 67
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->mIsPause:Z

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/player/VideoView;->mLock:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mDialog:Landroid/app/Dialog;

    .line 72
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->mIsSeeking:Z

    .line 78
    sget-object v0, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_WideScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

    .line 79
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    .line 231
    new-instance v0, Lcn/nubia/video/player/VideoView$1;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$1;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    .line 242
    new-instance v0, Lcn/nubia/video/player/VideoView$2;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$2;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mPreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    .line 254
    new-instance v0, Lcn/nubia/video/player/VideoView$3;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$3;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    .line 265
    new-instance v0, Lcn/nubia/video/player/VideoView$4;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$4;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    .line 271
    new-instance v0, Lcn/nubia/video/player/VideoView$5;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$5;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    .line 313
    new-instance v0, Lcn/nubia/video/player/VideoView$6;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$6;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mBufferingUpdateListener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

    .line 323
    new-instance v0, Lcn/nubia/video/player/VideoView$7;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$7;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 444
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mHanlder:Landroid/os/Handler;

    .line 445
    new-instance v0, Lcn/nubia/video/player/VideoView$8;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$8;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mReLayoutRunnable:Ljava/lang/Runnable;

    .line 454
    new-instance v0, Lcn/nubia/video/player/VideoView$9;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/VideoView$9;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mCancelToastRunnable:Ljava/lang/Runnable;

    .line 573
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->mPlayerActivityIsPaused:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/player/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "VideoView"

    .line 48
    iput-object p2, p0, Lcn/nubia/video/player/VideoView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    const/4 p3, 0x0

    .line 53
    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    .line 56
    iput p2, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    .line 57
    iput p2, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    .line 67
    iput-boolean p2, p0, Lcn/nubia/video/player/VideoView;->mIsPause:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mLock:Ljava/lang/Object;

    .line 71
    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mDialog:Landroid/app/Dialog;

    .line 72
    iput-boolean p2, p0, Lcn/nubia/video/player/VideoView;->mIsSeeking:Z

    .line 78
    sget-object p3, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_WideScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

    .line 79
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    .line 231
    new-instance p3, Lcn/nubia/video/player/VideoView$1;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$1;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    .line 242
    new-instance p3, Lcn/nubia/video/player/VideoView$2;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$2;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mPreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    .line 254
    new-instance p3, Lcn/nubia/video/player/VideoView$3;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$3;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    .line 265
    new-instance p3, Lcn/nubia/video/player/VideoView$4;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$4;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    .line 271
    new-instance p3, Lcn/nubia/video/player/VideoView$5;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$5;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    .line 313
    new-instance p3, Lcn/nubia/video/player/VideoView$6;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$6;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mBufferingUpdateListener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

    .line 323
    new-instance p3, Lcn/nubia/video/player/VideoView$7;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$7;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 444
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mHanlder:Landroid/os/Handler;

    .line 445
    new-instance p3, Lcn/nubia/video/player/VideoView$8;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$8;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mReLayoutRunnable:Ljava/lang/Runnable;

    .line 454
    new-instance p3, Lcn/nubia/video/player/VideoView$9;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$9;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->mCancelToastRunnable:Ljava/lang/Runnable;

    .line 573
    iput-boolean p2, p0, Lcn/nubia/video/player/VideoView;->mPlayerActivityIsPaused:Z

    .line 93
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcn/nubia/video/player/VideoView;->mPlayerType:I

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mPlayerType:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/video/player/VideoView;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/video/player/VideoView;->openVideo(I)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/video/player/VideoView;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1302(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1402(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1502(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1602(Lcn/nubia/video/player/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1700(Lcn/nubia/video/player/VideoView;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/video/player/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mCurrentTimeMS:I

    return p1
.end method

.method static synthetic access$1900(Lcn/nubia/video/player/VideoView;)Landroid/widget/Toast;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcn/nubia/video/player/VideoView;->mDuration:I

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mDuration:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcn/nubia/video/player/VideoView;->mPlayerCount:I

    return p0
.end method

.method static synthetic access$508(Lcn/nubia/video/player/VideoView;)I
    .locals 2

    .line 47
    iget v0, p0, Lcn/nubia/video/player/VideoView;->mPlayerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/video/player/VideoView;->mPlayerCount:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/video/player/VideoView;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/video/player/VideoView;)Landroid/net/Uri;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/common/IMediaPlayer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/common/Bookmarker;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->mBookmarker:Lcn/nubia/video/player/common/Bookmarker;

    return-object p0
.end method

.method private closeDialog()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 688
    iput-object v1, p0, Lcn/nubia/video/player/VideoView;->mDialog:Landroid/app/Dialog;

    .line 690
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .line 694
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 697
    iput-object v1, p0, Lcn/nubia/video/player/VideoView;->mDialog:Landroid/app/Dialog;

    .line 699
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->mDialog:Landroid/app/Dialog;

    .line 700
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 701
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getScreenSize()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private initVideoView()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->reset()V

    .line 135
    new-instance v0, Lcn/nubia/video/player/common/Bookmarker;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/player/common/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mBookmarker:Lcn/nubia/video/player/common/Bookmarker;

    .line 136
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 137
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->setFocusable(Z)V

    .line 139
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->setFocusableInTouchMode(Z)V

    .line 140
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->requestFocus()Z

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 554
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openVideo(I)V
    .locals 8

    const-string v0, "Unable to open content: "

    .line 195
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 198
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 199
    invoke-direct {p0, v1}, Lcn/nubia/video/player/VideoView;->release(Z)V

    const/16 v2, 0x64

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 201
    :try_start_0
    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    invoke-static {v5, p1, v6}, Lcn/nubia/video/player/common/PlayerManager;->getMediaPlayer(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/player/common/IMediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    .line 202
    invoke-static {}, Lcn/nubia/video/player/common/PlayerManager;->getPlayerMode()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/VideoView;->mPlayerType:I

    .line 203
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mPreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnPreparedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;)V

    .line 204
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnVideoSizeChangedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 205
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnCompletionListener(Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;)V

    .line 206
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnErrorListener(Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;)V

    .line 207
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnInfoListener(Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;)V

    .line 208
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mBufferingUpdateListener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnBufferingUpdateListener(Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 209
    iput v4, p0, Lcn/nubia/video/player/VideoView;->mCurrentBufferPercentage:I

    .line 210
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    iget-object v7, p0, Lcn/nubia/video/player/VideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {p1, v5, v6, v7}, Lcn/nubia/video/player/common/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 211
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v5}, Lcn/nubia/video/player/common/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 212
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Lcn/nubia/video/player/common/IMediaPlayer;->setAudioStreamType(I)V

    .line 213
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1, v1}, Lcn/nubia/video/player/common/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 214
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->prepareAsync()V

    .line 215
    iput v1, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 222
    :try_start_1
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    iput v3, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    .line 224
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1, v0, v2, v4}, Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/player/common/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void

    :catch_1
    move-exception p1

    .line 217
    :try_start_2
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    iput v3, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    .line 219
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1, v0, v2, v4}, Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/player/common/IMediaPlayer;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 227
    :goto_1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 228
    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private relayoutSurface()V
    .locals 1

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->relayout(Z)V

    return-void
.end method

.method private release(Z)V
    .locals 2

    .line 361
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->closeDialog()V

    .line 362
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 365
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->setBookmark()V

    .line 368
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->stop()V

    .line 369
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->reset()V

    .line 370
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->release()V

    const/4 p1, 0x0

    .line 371
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    .line 372
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    const/4 p1, 0x0

    .line 373
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    .line 374
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 375
    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_1
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    .line 146
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    .line 147
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mPlayerType:I

    .line 148
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mPlayerCount:I

    .line 149
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    const/4 v0, 0x4

    .line 150
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->setVisibility(I)V

    return-void
.end method

.method private setBookmark()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 352
    iget v1, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 357
    :cond_1
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mBookmarker:Lcn/nubia/video/player/common/Bookmarker;

    iget-object v2, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v3}, Lcn/nubia/video/player/common/IMediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/video/player/common/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    return-void
.end method

.method private showReplayToast(I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "***"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcn/nubia/video/player/common/Utils;->stringForTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 672
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v3, p1

    invoke-static {v3, v4}, Lcn/nubia/video/player/common/Utils;->stringForTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 674
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mCancelToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 678
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->mToast:Landroid/widget/Toast;

    .line 680
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mHanlder:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mCancelToastRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 681
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcn/nubia/video/player/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Lcn/nubia/video/player/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcn/nubia/video/player/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public extendScale()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

    sget-object v1, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_FullScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    if-ne v0, v1, :cond_0

    .line 599
    sget-object v0, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_WideScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

    .line 600
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->relayoutSurface()V

    :cond_0
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 547
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 548
    iget v0, p0, Lcn/nubia/video/player/VideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 522
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 505
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFrameInterVal()J
    .locals 5

    .line 661
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0xf4240

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getFrameRate()I

    move-result v0

    int-to-long v3, v0

    div-long v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 630
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getFrameRate()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 618
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getPlaySpeed()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlaySpeedChangeEndTime()I
    .locals 1

    .line 646
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getPlaySpeedChangeEndTime()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlaySpeedChangeStartTime()I
    .locals 1

    .line 642
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getPlaySpeedChangeStartTime()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlayerState()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcn/nubia/video/player/VideoView;->mIsPause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    .line 513
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getRecordTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSlomoSkipCount()I
    .locals 1

    .line 638
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getSlomoSkipCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSlomoVideoType()I
    .locals 1

    .line 626
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getSlomoVideoType()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 609
    iget v0, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    .line 634
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getRotation()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 605
    iget v0, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    return v0
.end method

.method public is30FpsSlomoVideo()Z
    .locals 1

    .line 651
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->is30FpsSlomoVideo()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public is4kVideo()Z
    .locals 4

    .line 655
    iget v0, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    const/16 v1, 0x440

    const/16 v2, 0x780

    if-le v0, v2, :cond_0

    iget v3, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    if-gt v3, v1, :cond_1

    :cond_0
    if-le v0, v1, :cond_2

    iget v0, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    if-le v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInPauseState()Z
    .locals 2

    .line 542
    iget v0, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 537
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 393
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/16 v1, 0x4f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_1

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->onPlayPause()V

    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    .line 406
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 101
    sget-object v0, Lcn/nubia/video/player/VideoView$10;->$SwitchMap$cn$nubia$video$player$VideoView$ScaleMode:[I

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView$ScaleMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 109
    iget v0, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    if-nez v0, :cond_0

    iget v2, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    if-nez v2, :cond_0

    move p1, v1

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v0, p1}, Lcn/nubia/video/player/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 114
    iget p1, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    invoke-static {p1, p2}, Lcn/nubia/video/player/VideoView;->getDefaultSize(II)I

    move-result p1

    .line 115
    iget p2, p0, Lcn/nubia/video/player/VideoView;->mVideoWidth:I

    if-lez p2, :cond_3

    iget v0, p0, Lcn/nubia/video/player/VideoView;->mVideoHeight:I

    if-lez v0, :cond_3

    mul-int v2, p2, p1

    mul-int v3, v1, v0

    if-ge v2, v3, :cond_1

    mul-int/2addr p2, p1

    .line 117
    div-int v1, p2, v0

    goto :goto_0

    :cond_1
    mul-int v2, p2, p1

    mul-int v3, v1, v0

    if-le v2, v3, :cond_3

    mul-int/2addr v0, v1

    .line 119
    div-int p1, v0, p2

    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 104
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 126
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcn/nubia/video/player/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 487
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 488
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->pause()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 491
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mCurrentTimeMS:I

    .line 492
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->resume()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 2

    .line 433
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->pause()V

    const/4 v0, 0x4

    .line 436
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    .line 437
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v1, :cond_0

    .line 438
    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_0
    return-void
.end method

.method public relayout(Z)V
    .locals 2

    .line 576
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->getScreenSize()V

    .line 577
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->mPlayerActivityIsPaused:Z

    .line 578
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 579
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 580
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 581
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {v0, v1, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 583
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->requestLayout()V

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 0

    .line 130
    invoke-static {p1, p2}, Lcn/nubia/video/player/VideoView;->getDefaultSize(II)I

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

    sget-object v1, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_FullScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    if-ne v0, v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcn/nubia/video/player/VideoView;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 466
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mReLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/player/VideoView;->mIsPause:Z

    if-eqz v0, :cond_1

    return-void

    .line 472
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->resume()V

    const/4 v0, 0x3

    .line 474
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    .line 475
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v1, :cond_2

    .line 476
    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_2
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 530
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0, p1}, Lcn/nubia/video/player/common/IMediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setOnNotifyMediaStateListener(Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    return-void
.end method

.method public setPauseState(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->mIsPause:Z

    return-void
.end method

.method public setPlaySpeed(F)Z
    .locals 1

    .line 612
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 614
    :cond_0
    invoke-interface {v0, p1}, Lcn/nubia/video/player/common/IMediaPlayer;->setPlaySpeed(F)Z

    move-result p1

    return p1
.end method

.method public setVideoPath(Ljava/lang/String;I)V
    .locals 0

    .line 160
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p1, v0}, Lcn/nubia/video/player/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    .line 171
    iput-object p2, p0, Lcn/nubia/video/player/VideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 173
    iput p1, p0, Lcn/nubia/video/player/VideoView;->mPlayerCount:I

    return-void
.end method

.method public shrinkScale()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

    sget-object v1, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_FullScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    if-eq v0, v1, :cond_0

    .line 592
    sget-object v0, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_FullScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mScaleMode:Lcn/nubia/video/player/VideoView$ScaleMode;

    .line 593
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->relayoutSurface()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 411
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mBookmarker:Lcn/nubia/video/player/common/Bookmarker;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/common/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v1}, Lcn/nubia/video/player/common/IMediaPlayer;->start()V

    const/4 v1, 0x3

    .line 414
    iput v1, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    .line 415
    iget-object v2, p0, Lcn/nubia/video/player/VideoView;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v2, :cond_0

    .line 416
    invoke-interface {v2, v1}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    .line 419
    :cond_0
    iget v1, p0, Lcn/nubia/video/player/VideoView;->mCurrentTimeMS:I

    if-lez v1, :cond_1

    .line 420
    invoke-virtual {p0, v1}, Lcn/nubia/video/player/VideoView;->seekTo(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/video/player/VideoView;->showReplayToast(I)V

    .line 424
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->seekTo(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->setBookmark()V

    .line 181
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->stop()V

    .line 182
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->reset()V

    .line 183
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcn/nubia/video/player/VideoView;->mCurrentState:I

    .line 186
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->reset()V

    return-void
.end method

.method public supportPlaySpeedShift()Z
    .locals 1

    .line 622
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->supportPlaySpeedShift()Z

    move-result v0

    :goto_0
    return v0
.end method
